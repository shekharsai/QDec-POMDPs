using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System.IO;
using System.Threading;

namespace CPOR_MA
{
    class CPORMain
    {
        // public static string BASE_PATH = @"D:\research\projects\PDDL";     
        public static string ResultsFile = "Results.txt";
#if DEBUG
        public static bool RedirectShellOutput = true; //shashank
#else
        public static bool RedirectShellOutput = true;
#endif
        public static int MaxTimePerProblem = 500; //minutes
        public static bool UseCLG = false;

        public static Mutex m_mCLGMutex = new Mutex();

        public int ccFailure = 0;

        public bool aSignalingMacro = false;
        public int sBacktrackNumberForMacro = 0;

        //for abstraction
        public HashSet<Action> publicActions = null;
        public HashSet<Action> privateActions = null;
        public HashSet<Predicate> publicPredicates = null;
        public HashSet<Predicate> privatePredicates = null;
        public HashSet<Constant> agentList = new HashSet<Constant>();

        static void TestKReplanner(string sBenchmarkPath, int cAttempts)
        {
            RandomGenerator.Init();
            string sExePath = "BASE_PATH" + @"\PDDL\KReplanner\";

            Parser parser = new Parser();
            Domain domain = parser.ParseDomain(sBenchmarkPath + "d.pddl");
            Problem problem = parser.ParseProblem(sBenchmarkPath + "p.pddl", domain);

            BeliefState bsInitial = problem.GetInitialBelief();

            string sOutput = "";

            DirectoryInfo di = new DirectoryInfo(sBenchmarkPath);
            foreach (FileInfo fi in di.GetFiles())
            {
                if (fi.Name.Contains("k_replanner"))
                    fi.Delete();
            }

            sOutput = problem.Name + "\t" + DateTime.Now;
            DateTime dtBeforeTranslate = DateTime.Now;

            domain.WriteKReplannerDomain(sBenchmarkPath + "d.k_replanner.pddl");

            sOutput += "\t" + (DateTime.Now - dtBeforeTranslate).TotalSeconds;


            int cFailures = 0;
            List<double> lActions = new List<double>();
            List<double> lTimes = new List<double>();

            Console.WriteLine("Done " + problem.Name + " translation");

            for (int i = 1; i <= cAttempts; i++)
            {
                DateTime dtStart = DateTime.Now;
                Debug.WriteLine("++++++++++++++++++++++++++++++++++++++++++++++++++++");
                State sChosen = null;
                Process pKReplanner = new Process();
                pKReplanner.StartInfo.WorkingDirectory = sExePath;
                pKReplanner.StartInfo.FileName = sExePath + "k_replanner.exe";
                pKReplanner.StartInfo.UseShellExecute = false;

                string sProblemName = "p." + i + ".k_replanner.pddl";
                sChosen = problem.WriteKReplannerProblem(sBenchmarkPath + sProblemName, bsInitial);

                pKReplanner.StartInfo.Arguments = //"--no-remove-intermediate-files " + 
                    sBenchmarkPath + "d.k_replanner.pddl " + sBenchmarkPath + sProblemName;

                Debug.WriteLine("Starting KReplanner");
                File.Delete(sBenchmarkPath + "KReplanner.plan.txt");
                if (RedirectShellOutput)
                {
                    pKReplanner.StartInfo.RedirectStandardOutput = true;
                    pKReplanner.OutputDataReceived += new DataReceivedEventHandler(OutputHandler);
                }
                pKReplanner.Start();
                if (RedirectShellOutput)
                {
                    //string sOutput = p.StandardOutput.ReadToEnd();
                    pKReplanner.BeginOutputReadLine();
                }                 /*
                    StreamWriter swOutput = new StreamWriter(sBenchmarkPath + "CLGOutput.txt");
                    swOutput.Write(pCLG.StandardOutput.ReadToEnd());
                    swOutput.Close();                
                 * */
                if (!pKReplanner.WaitForExit(1000 * 60 * 30))//30 minutes max
                {
                    pKReplanner.Kill();
                    cFailures++;
                }
                else if (!File.Exists(sBenchmarkPath + sProblemName + ".plan"))
                {
                    cFailures++;
                }
                else
                {
                    StreamReader sr = new StreamReader(sBenchmarkPath + sProblemName + ".plan");
                    List<string> lPlan = new List<string>();
                    while (!sr.EndOfStream)
                    {
                        string sLine = sr.ReadLine();
                        /*
                        string sParsedLine = sLine.Trim().ToLower().Replace("_", " ").
                            Replace("smell wumpus", "smell_wumpus").Replace("cd ", "cd_").Replace("my file", "my_file")
                            .Replace(" package ", "_package_").Replace(" truck ", "_truck_")
                            //.Replace(" airplane", "_airplane")
                            ;
                        */
                        string sParsedLine = sLine.Trim().Replace("(", "").Replace(")", "");
                        lPlan.Add(sParsedLine);
                    }
                    sr.Close();
                    int cActions = 0;
                    TimeSpan tsTime;
                    DateTime dtBeforeVerification = DateTime.Now;
                    bool bSuccess = true;
                    bSuccess = TestCLGPlan(sBenchmarkPath, domain, problem, lPlan, sChosen, out cActions, out tsTime);
                    if (!bSuccess)
                    {
                        cFailures++;
                        Debug.WriteLine("KReplanner Failed");
                    }
                    else
                    {
                        lActions.Add(cActions);
                        tsTime = dtBeforeVerification - dtStart;
                        lTimes.Add(tsTime.TotalSeconds);
                    }
                }
                Console.WriteLine("Done " + problem.Name + " execution " + i + "/" + cAttempts);
            }

            m_mCLGMutex.WaitOne();
            StreamWriter sw1 = new StreamWriter(sBenchmarkPath + @"..\KReplannerResults.txt", true);
            sw1.Write(sOutput);
            sw1.Close();
            TestBenchmarkThread.WriteResultsToFile(sBenchmarkPath + @"..\KReplannerResults.txt", lActions);
            TestBenchmarkThread.WriteResultsToFile(sBenchmarkPath + @"..\KReplannerResults.txt", lTimes);
            sw1 = new StreamWriter(sBenchmarkPath + @"..\KReplannerResults.txt", true);
            sw1.WriteLine("\t" + cFailures);
            sw1.Close();
            m_mCLGMutex.ReleaseMutex();
            Console.WriteLine("Done " + problem.Name);
        }

        
        static void TestCLG(string sBenchmarkPath, int cAttempts)
        {

            RandomGenerator.Init();
            string sExePath = "BASE_PATH" + @"\PDDL\CLG\";

            Parser parser = new Parser();
            Domain domain = parser.ParseDomain(sBenchmarkPath + "d.pddl");
            Problem problem = parser.ParseProblem(sBenchmarkPath + "p.pddl", domain);
            BeliefState bsInitial = problem.GetInitialBelief();

            string sOutput = "";

            sOutput = problem.Name + "\t" + DateTime.Now;
            DateTime dtBeforeTranslate = DateTime.Now;
            
            Process pCCF2CS = new Process();
            pCCF2CS.StartInfo.WorkingDirectory = sBenchmarkPath;
            pCCF2CS.StartInfo.FileName = sExePath + "ccf2cs";
            pCCF2CS.StartInfo.Arguments = "-t0 -cond -cod -cmr -csl -ckit -ckinl -cminl -cmit -cdisjk0 -cdisjm0 -mac  -cfc -fp -sn d.pddl p.pddl";
            pCCF2CS.StartInfo.UseShellExecute = false;
            if (RedirectShellOutput)
            {
                pCCF2CS.StartInfo.RedirectStandardOutput = true;
                pCCF2CS.OutputDataReceived += new DataReceivedEventHandler(OutputHandler);
            }
            pCCF2CS.Start();
            if (RedirectShellOutput)
            {
                //string sOutput = p.StandardOutput.ReadToEnd();
                pCCF2CS.BeginOutputReadLine();
            } 
            if (!pCCF2CS.WaitForExit(1000 * 60 * 30))//20 minutes max
            {
                pCCF2CS.Kill();
                m_mCLGMutex.WaitOne();
                StreamWriter sw = new StreamWriter(sBenchmarkPath + @"..\CLGResults.txt", true);
                sw.Write(sOutput + "\tcould not translate problem\n");
                sw.Close();
                m_mCLGMutex.ReleaseMutex();
                //throw new Exception("Could not translate problem");
                return;
            }
            
            sOutput += "\t" + (DateTime.Now - dtBeforeTranslate).TotalSeconds;

            int cFailures = 0;
            List<double> lActions = new List<double>();
            List<double> lTimes = new List<double>();

            for (int i = 1; i <= cAttempts; i++)
                File.Delete(sBenchmarkPath + i + ".hs");

            bool bLocalizeDomain = false;
            if (domain.Name.Contains("localize") || domain.Name.Contains("sliding-doors") || domain.Name.Contains("medical") || domain.Name.Contains("RockSample"))
                bLocalizeDomain = true;
            Console.WriteLine("Done " + problem.Name + " translation");

            for (int i = 1; i <= cAttempts; i++)
            {
                DateTime dtStart = DateTime.Now;
                Debug.WriteLine("++++++++++++++++++++++++++++++++++++++++++++++++++++");
                State sChosen = null;
                Process pCLG = new Process();
                pCLG.StartInfo.WorkingDirectory = sBenchmarkPath;
                pCLG.StartInfo.FileName = sExePath + "CLG";
                pCLG.StartInfo.UseShellExecute = false;
                if (bLocalizeDomain)
                {
                    pCLG.StartInfo.Arguments = "-a 1 -f new-p.pddl -o new-d.pddl";
                }
                else
                {
                    pCLG.StartInfo.Arguments = "-a 1 -f new-p.pddl -o new-d.pddl" + " -w " + i + ".hs";
                    sChosen = bsInitial.WriteHiddenState(sBenchmarkPath + i + ".hs", false);
                }

                //pCLG.StartInfo.RedirectStandardOutput = true;
                Debug.WriteLine("Starting CLG");
                File.Delete(sBenchmarkPath + "CLGplan.txt");
                if (RedirectShellOutput)
                {
                    pCLG.StartInfo.RedirectStandardOutput = true;
                    pCLG.OutputDataReceived += new DataReceivedEventHandler(OutputHandler);
                }
                pCLG.Start();
                if (RedirectShellOutput)
                {
                    //string sOutput = p.StandardOutput.ReadToEnd();
                    pCLG.BeginOutputReadLine();
                }                 /*
                    StreamWriter swOutput = new StreamWriter(sBenchmarkPath + "CLGOutput.txt");
                    swOutput.Write(pCLG.StandardOutput.ReadToEnd());
                    swOutput.Close();                
                 * */
                if (!pCLG.WaitForExit(1000 * 60 * 30))//30 minutes max
                {
                    pCLG.Kill();
                    cFailures++;
                }
                else if (!File.Exists(sBenchmarkPath + "CLGplan.txt"))
                {
                    cFailures++;
                }
                else
                {
                    StreamReader sr = new StreamReader(sBenchmarkPath + "CLGplan.txt");
                    List<string> lPlan = new List<string>();
                    sr.ReadLine();//root
                    while (!sr.EndOfStream)
                    {
                        string sLine = sr.ReadLine();
                        string sParsedLine = sLine.Trim().ToLower().Replace("_", " ").
                            Replace("smell wumpus", "smell_wumpus").Replace("cd ", "cd_").Replace("my file", "my_file")
                            .Replace(" package ", "_package_").Replace(" truck ", "_truck_")
                            //.Replace(" airplane", "_airplane")
                            ;
                        lPlan.Add(sParsedLine);
                    }
                    sr.Close();
                    int cActions = 0;
                    TimeSpan tsTime;
                    bool bSuccess = true;
                    if (!bLocalizeDomain)
                        bSuccess = TestCLGPlan(sBenchmarkPath, domain, problem, lPlan, sChosen, out cActions, out tsTime);
                    else
                        cActions = lPlan.Count;
                    if (!bSuccess)
                    {
                        cFailures++;
                        Debug.WriteLine("CLG Failed");
                    }
                    else
                    {
                        lActions.Add(cActions);
                        tsTime = DateTime.Now - dtStart;
                        lTimes.Add(tsTime.TotalSeconds);
                    }
                }
                Console.WriteLine("Done " + problem.Name + " execution " + i + "/" + cAttempts);
            }

            m_mCLGMutex.WaitOne();
            StreamWriter sw1 = new StreamWriter(sBenchmarkPath + @"..\CLGResults.txt", true);
            sw1.Write(sOutput);
            sw1.Close();
            TestBenchmarkThread.WriteResultsToFile(sBenchmarkPath + @"..\CLGResults.txt", lActions);
            TestBenchmarkThread.WriteResultsToFile(sBenchmarkPath + @"..\CLGResults.txt", lTimes);
            sw1 = new StreamWriter(sBenchmarkPath + @"..\CLGResults.txt", true);
            sw1.WriteLine("\t" + cFailures);
            sw1.Close();
            m_mCLGMutex.ReleaseMutex();
            Console.WriteLine("Done " + problem.Name);
        }

        static void TestCLGII(string sBenchmarkPath, int cAttempts)
        {

            RandomGenerator.Init();
            string sExePath = "BASE_PATH" + @"\PDDL\CLG\";

            Parser parser = new Parser();
            Domain domain = parser.ParseDomain(sBenchmarkPath + "d.pddl");
            Problem problem = parser.ParseProblem(sBenchmarkPath + "p.pddl", domain);
            BeliefState bsInitial = problem.GetInitialBelief();

            StreamWriter sw = new StreamWriter(sBenchmarkPath + @"..\CLGResults.txt", true);
            sw.Write(problem.Name + "\t" + DateTime.Now);
            sw.Close();
            DateTime dtBeforeTranslate = DateTime.Now;

            Process pCCF2CS = new Process();
            pCCF2CS.StartInfo.WorkingDirectory = sBenchmarkPath;
            pCCF2CS.StartInfo.FileName = sExePath + "ccf2cs";
            pCCF2CS.StartInfo.Arguments = "-t0 -cond -cod -cmr -csl -ckit -ckinl -cminl -cmit -cdisjk0 -cdisjm0 -mac  -cfc -fp -sn d.pddl p.pddl";
            pCCF2CS.StartInfo.UseShellExecute = false;
            pCCF2CS.Start();
            if (!pCCF2CS.WaitForExit(1000 * 60 * 20))//20 minutes max
            {
                pCCF2CS.Kill();
                sw = new StreamWriter(sBenchmarkPath + @"..\CLGResults.txt", true);
                sw.Write("\tcould not translate problem\n");
                sw.Close();
                throw new Exception("Could not translate problem");
            }

            sw = new StreamWriter(sBenchmarkPath + @"..\CLGResults.txt", true);
            sw.Write("\t" + (DateTime.Now - dtBeforeTranslate).TotalSeconds);
            sw.Close();

            int cFailures = 0;
            List<double> lActions = new List<double>();
            List<double> lTimes = new List<double>();

            for (int i = 1; i <= cAttempts; i++)
                File.Delete(sBenchmarkPath + i + ".hs");

            bool bLocalizeDomain = false;
            if (domain.Name.Contains("localize") || domain.Name.Contains("sliding-doors") || domain.Name.Contains("medical"))
                bLocalizeDomain = true;
            Console.WriteLine("Done " + domain.Name + " translation");

            for (int i = 1; i <= cAttempts; i++)
            {
                DateTime dtStart = DateTime.Now;
                Debug.WriteLine("++++++++++++++++++++++++++++++++++++++++++++++++++++");
                State sChosen = null;
                Process pCLG = new Process();
                pCLG.StartInfo.WorkingDirectory = sBenchmarkPath;
                pCLG.StartInfo.FileName = sExePath + "CLG";
                pCLG.StartInfo.UseShellExecute = false;
                if (bLocalizeDomain)
                {
                    pCLG.StartInfo.Arguments = "-a 1 -f new-p.pddl -o new-d.pddl";
                }
                else
                {
                    pCLG.StartInfo.Arguments = "-a 1 -f new-p.pddl -o new-d.pddl" + " -w " + i + ".hs";
                    sChosen = bsInitial.WriteHiddenState(sBenchmarkPath + i + ".hs", false);
                }

                //pCLG.StartInfo.RedirectStandardOutput = true;
                Debug.WriteLine("Starting CLG");
                File.Delete(sBenchmarkPath + "CLGplan.txt");
                pCLG.Start();
                /*
                    StreamWriter swOutput = new StreamWriter(sBenchmarkPath + "CLGOutput.txt");
                    swOutput.Write(pCLG.StandardOutput.ReadToEnd());
                    swOutput.Close();                
                 * */
                if (!pCLG.WaitForExit(1000 * 60 * 20))//20 minutes max
                {
                    pCLG.Kill();
                    cFailures++;
                }
                else if (!File.Exists(sBenchmarkPath + "CLGplan.txt"))
                {
                    cFailures++;
                }
                else
                {
                    StreamReader sr = new StreamReader(sBenchmarkPath + "CLGplan.txt");
                    List<string> lPlan = new List<string>();
                    sr.ReadLine();//root
                    while (!sr.EndOfStream)
                    {
                        string sLine = sr.ReadLine();
                        string sParsedLine = sLine.Trim().ToLower().Replace("_", " ").
                            Replace("smell wumpus", "smell_wumpus").Replace("cd ", "cd_").Replace("my file", "my_file")
                            .Replace(" package ", "_package_").Replace(" truck ", "_truck_")
                            //.Replace(" airplane", "_airplane")
                            ;
                        lPlan.Add(sParsedLine);
                    }
                    sr.Close();
                    int cActions = 0;
                    TimeSpan tsTime;
                    bool bSuccess = true;
                    if (!bLocalizeDomain)
                        bSuccess = TestCLGPlan(sBenchmarkPath, domain, problem, lPlan, sChosen, out cActions, out tsTime);
                    else
                        cActions = lPlan.Count;
                    if (!bSuccess)
                    {
                        cFailures++;
                        Debug.WriteLine("CLG Failed");
                    }
                    else
                    {
                        lActions.Add(cActions);
                        tsTime = DateTime.Now - dtStart;
                        lTimes.Add(tsTime.TotalSeconds);
                    }
                }
                Console.WriteLine("Done " + domain.Name + " execution " + i);
            }

            TestBenchmarkThread.WriteResultsToFile(sBenchmarkPath + @"..\CLGResults.txt", lActions);
            TestBenchmarkThread.WriteResultsToFile(sBenchmarkPath + @"..\CLGResults.txt", lTimes);
            sw = new StreamWriter(sBenchmarkPath + @"..\CLGResults.txt", true);
            sw.Write("\t" + cFailures + "\n");
            sw.Close();
            Console.WriteLine("Done " + domain.Name);
        }

        static bool TestCLGPlan(string sPath, Domain domain, Problem problem, List<string> lPlan, State sChosen,
            out int cActions, out TimeSpan tsTime)
        {
            DateTime dtStart = DateTime.Now;
            BeliefState bsInitial = problem.GetInitialBelief();
            bsInitial.UnderlyingEnvironmentState = sChosen;
            PartiallySpecifiedState pssCurrent = bsInitial.GetPartiallySpecifiedState(), pssNext = null;
            Formula fObserved = null;
            cActions = 0;
            foreach (string sAction in lPlan)
            {
                TimeSpan ts = DateTime.Now - dtStart;
                //if (ts.TotalMinutes > MaxTimePerProblem)
                //    throw new Exception("Execution taking too long");
                Debug.WriteLine((int)(ts.TotalMinutes) + "," + cActions + ") " + domain.Name + ", executing action " + sAction);
                Action a = domain.GroundActionByName(sAction.Split(' '));
                if (a.Observe != null)
                {
                    Predicate pObserve = ((PredicateFormula)a.Observe).Predicate;
                    if (pssCurrent.Observed.Contains(pObserve) || pssCurrent.Observed.Contains(pObserve.Negate()))
                        continue;
                }
                pssNext = pssCurrent.Apply(a, out fObserved);
                if (fObserved != null)
                {
                    
                    Debug.WriteLine(domain.Name + ", observed " + fObserved);
                }
                if (pssNext == null)
                {
                    Debug.WriteLine(domain.Name + ", cannot execute " + sAction);
                    break;
                }
                cActions++;
                pssCurrent = pssNext;                
            }
            tsTime = DateTime.Now - dtStart;
            if (pssCurrent.IsGoalState())
                Debug.WriteLine("Plan succeeded!");
            Debug.WriteLine("*******************************************************************************");
            return pssCurrent.IsGoalState();
        }

        /*
        static List<string> Plan(string sPath, BeliefState bsCurrent, out State sChosen)
        {
            sChosen = bsCurrent.WriteTaggedDomainAndProblem(sPath + "Kd.pddl", sPath + "Kp.pddl");
            File.Delete(sPath + "plan.txt");
            foreach (Process pFF in Process.GetProcesses())
            {
                if (pFF.ProcessName.ToLower().Contains("ff.exe"))
                    pFF.Kill();
            }
            Process p = new Process();
            p.StartInfo.WorkingDirectory = sPath;
            p.StartInfo.FileName = BASE_PATH + @"\PDDL\ff.exe";
            p.StartInfo.Arguments = "-o Kd.pddl -f Kp.pddl";
            p.StartInfo.UseShellExecute = false;
            p.Start();
            if (!p.WaitForExit(1000 * 60 * 2))//2 minutes max
                return null;
            StreamReader sr = new StreamReader(sPath + "plan.txt");
            List<string> lPlan = new List<string>();
            while (!sr.EndOfStream)
                lPlan.Add(sr.ReadLine().Trim().ToLower());
            sr.Close();
            return lPlan;
        }
        */
        private static void OutputHandler(object sendingProcess,  DataReceivedEventArgs outLine)
        {
            //do nothing - not interested in the output
            //Console.WriteLine(outLine.Data);
        }

        static int g_cObservations = 0, g_cUnexpectedObservations = 0, g_cGlobalActions = 0;
        
        public void WriteKnowledgeDomain(Domain domain, Problem problem, int iIteration)
        {
            string sPath = @"C:\Users\shekhar\Downloads\SDR\offline\tempss";
            // = BASE_PATH + @"\PDDL\IPPC-domains\" + domain.Name + @"\" + problem.Name + @"\" + SDRPlanner.TagsCount + @"\";
            if (!Directory.Exists(sPath))
                Directory.CreateDirectory(sPath);
            Debug.WriteLine(domain.Name + "." + problem.Name + "." + SDRPlanner.TagsCount + "." + iIteration);
            //BeliefState.AddAllKnownToGiven = true;
            //SDRPlanner.AddTagRefutationToGoal = true;
            BeliefState bsInitial = problem.GetInitialBelief();
            State s = bsInitial.ChooseState(true);
            PartiallySpecifiedState pssCurrent = bsInitial.GetPartiallySpecifiedState();
            RandomGenerator.Init();
            int cTags = 0;
            MemoryStream msModels;
            State sChosen = 
                pssCurrent.WriteTaggedDomainAndProblem(sPath + "Kd." + iIteration + ".pddl",
                sPath + "Kp." + iIteration + ".pddl", out cTags, out msModels);
        }
        
        static bool Equals(List<string> l1, List<string> l2)
        {
            if (l1.Count != l2.Count)
                return false;
            int i = 0;
            for (i = 0; i < l1.Count; i++)
            {
                if (l1[i] != l2[i])
                    return false;
            }
            return true;
        }

        class TestBenchmarkThread
        {
            public string BenchmarkPath { get; set; }
            public string Benchmark { get; set; }
            public int Trials { get; set; }
            public bool WriteResults { get; set; }

            private static Mutex m_mWriteToFile = new Mutex();

            public TestBenchmarkThread(string sBenchmarkPath, string sBenchmark, int cTrials, bool bWriteResults)
            {
                BenchmarkPath = sBenchmarkPath;
                Benchmark = sBenchmark;
                Trials = cTrials;
                WriteResults = bWriteResults;
            }

            public StageTwoPlanPlusProblem Run(bool multiAgentTeamPlan)
            {
                if (UseCLG)
                {
                    TestCLG(BenchmarkPath + Benchmark + "\\", Trials);
                    return null;
                }
                else
                {
                    // need to check for CLG
                    return TestBenchmark(BenchmarkPath, Benchmark, Trials, WriteResults, multiAgentTeamPlan);
                }
            }

            public static StageTwoPlanPlusProblem TestBenchmark(
                string sBenchmarkPath, string sBenchmark, int cTrials, bool bWriteResults, bool multiAgentTeamPlan)
            {
                StringWriter sw = new StringWriter();
                List<double> lTime = new List<double>();
                List<double> lActions = new List<double>();
                List<double> lPlanning = new List<double>();
                List<double> lObservations = new List<double>();
                int cFailure = 0;
                StageTwoPlanPlusProblem stageTwoPlanPlusProblem = null;
                try
                {
                    string sPath = sBenchmarkPath + sBenchmark + @"\";
                    Parser parser = new Parser();
                    Domain domain = parser.ParseDomain(sPath + "d.pddl");
                    Debug.WriteLine("Reading domain and problem");
                    Problem problem = parser.ParseProblem(sPath + "p.pddl", domain);
                    //domain.GroundAllActions(problem);
                    
                    //domain.Actions = domain.GroundAllActions(problem);
                    Debug.WriteLine("Done reading domain and problem");
                    DateTime dtStart = DateTime.Now;
                    //domain.WriteKnowledgeDomain(sPath + "Kd.pddl", problem);
                    DateTime dtEnd = DateTime.Now;
                    //Debug.WriteLine("Done writing knowledge translation. Time = " + (dtEnd - dtStart).TotalSeconds);
                    
                    //sw.WriteLine();
                    sw.Write(sBenchmark + "\t" + DateTime.Now + "\t" +
                            (dtEnd - dtStart).TotalSeconds + "\t" + SDRPlanner.TagsCount);

                    for (int i = 0; i < cTrials; i++)
                    {
                        // int cActions = 0, cPlanning = 0;
                        // TimeSpan tsTime;
                        // OnlineReplanning(sPath, 
                        //              domain, problem, out cActions, out cPlanning, out tsTime);

                        // WriteKnowledgeDomain(domain, problem, i);
                        // continue;
                                                
                        DateTime dtStartTask = DateTime.Now;

                        SDRPlanner sdr = new SDRPlanner(sPath, domain, problem, multiAgentTeamPlan);

                        // Thread t = new Thread(sdr.Start);  
                        
                        /**
                        Random waitTime = new Random();
                        int seconds = waitTime.Next(3 * 1000, 17 * 1000);
                        Console.WriteLine(seconds);
                        **/

                        RandomGenerator.Init(DateTime.Now.Second);

                        Thread t = new Thread(() => { stageTwoPlanPlusProblem = sdr.Start(); });
                                                
                        t.Name = "OfflinePlanningData " + domain.Name;

                        t.Start();

                        bool bFailed = false;
                        if (!t.Join(new TimeSpan(0, MaxTimePerProblem, 0))) //t.Join();                        
                        {
                            // if (!t.Join(100))
                            t.Abort();
                            t.Join();

                            cFailure++;
                            bFailed = true;
                        }

                        sdr.TerminateFFPRocesses(t);

                        SDRPlanner.ExecutionData data = sdr.Data;

                        if (data.Failure)
                        {
                            cFailure++;
                            bFailed = true;
                        }
                        else
                        {
                            lActions.Add(data.Actions);
                            lPlanning.Add(data.Planning);
                            lTime.Add(data.Time.TotalSeconds);
                            lObservations.Add(data.Observations);
                        }
                        sw.Write(i + ": " + data.Actions + "\t" + data.Planning + "\t" + data.Time.TotalSeconds);
                        Console.WriteLine(sBenchmark + ", " + i + "/" + cTrials + ", " + Math.Round((DateTime.Now - dtStartTask).TotalMinutes) + ", failed? " + bFailed);
                        }
                }
                catch (Exception e)
                {
                    //sw.Write(e.Message);
                    Console.WriteLine(e);
                }
                if (bWriteResults)
                {
                    m_mWriteToFile.WaitOne();
                    StreamWriter swFile = new StreamWriter(sBenchmarkPath + ResultsFile, true);
                    //swFile.Write(sw.ToString());
                    swFile.Write(sBenchmark + "\t" + SDRPlanner.TagsCount);
                    swFile.Close();
                    WriteResultsToFile(sBenchmarkPath + ResultsFile, lActions);
                    WriteResultsToFile(sBenchmarkPath + ResultsFile, lPlanning);
                    WriteResultsToFile(sBenchmarkPath + ResultsFile, lObservations);
                    WriteResultsToFile(sBenchmarkPath + ResultsFile, lTime);
                    swFile = new StreamWriter(sBenchmarkPath + ResultsFile, true);
                    swFile.WriteLine("\t" + cFailure);
                    swFile.Close();
                    m_mWriteToFile.ReleaseMutex();
                }
                return stageTwoPlanPlusProblem;
            }

            public static void WriteResultsToFile(string sFile, List<double> l)
            {
                double dAvg = 0.0, dMax = 0.0, dStdev = 0.0;
                foreach (double x in l)
                {
                    dAvg += x;
                    if (x > dMax)
                        dMax = x;
                }
                dAvg /= l.Count;
                foreach (double x in l)
                {
                    dStdev += (x - dAvg) * (x - dAvg);
                }
                dStdev /= l.Count;
                dStdev = Math.Sqrt(dStdev);
                StreamWriter sw = new StreamWriter(sFile, true);
                sw.Write("\t" + dAvg + "\t" + dStdev + "\t" + dMax);
                sw.Close();
            }
        }

        static StageTwoPlanPlusProblem TestBenchmark(
            string sBenchmarkPath, string sBenchmark, int cTrials, bool bWriteResults, bool bSeparateThread, bool multiAgentTeamPlan)
        {
            TestBenchmarkThread tbt = new TestBenchmarkThread(sBenchmarkPath, sBenchmark, cTrials, bWriteResults);
            StageTwoPlanPlusProblem stageTwoPlanPlusProblem = null;
            if (!bSeparateThread)
            {
                stageTwoPlanPlusProblem = tbt.Run(multiAgentTeamPlan);
                return stageTwoPlanPlusProblem;
            }
            else
            {
                Thread t = new Thread(() => { stageTwoPlanPlusProblem = tbt.Run(multiAgentTeamPlan);});
                t.Name = "TestBenchmark " + sBenchmark;
                t.Start();
                return stageTwoPlanPlusProblem;
            }
        }

        static StageTwoPlanPlusProblem TestAll(string sBenchmarkPath, string[] asBenchmarks, int cTrials, bool bMultiThread, bool multiAgentTeamPlan)
        {
            int cMaxThreads = 3;
            Thread[] aThreads = new Thread[cMaxThreads];
            /*
            foreach (string sBenchmark in asBenchmarks)
            {
                try
                {
                    TestBenchmark(sBenchmarkPath, sBenchmark, cTrials, true, true);
                }
                catch (Exception e)
                {
                }
            }
            **/
            // original code is below in comments when it returns thread
            int i = 0;
            StageTwoPlanPlusProblem stageTwoPlanPlusProblem = null;
            while (i < cMaxThreads && i < asBenchmarks.Length)
            {
                stageTwoPlanPlusProblem = TestBenchmark(sBenchmarkPath, asBenchmarks[i], cTrials, true, bMultiThread, multiAgentTeamPlan);
                i++;
            }
            while (i < asBenchmarks.Length)
            {
                for (int j = 0; j < cMaxThreads; j++)
                {
                    if (aThreads[j] == null || aThreads[j].Join(1000))
                    {
                        stageTwoPlanPlusProblem = TestBenchmark(sBenchmarkPath, asBenchmarks[i], cTrials, true, bMultiThread, multiAgentTeamPlan);
                        i++;
                        break;
                    }
                }
            }
            foreach (Thread t in aThreads)
                if (t != null)
                    t.Join();

            /**
            int i = 0;
            while (i < cMaxThreads && i < asBenchmarks.Length)
            {
                aThreads[i] = TestBenchmark(sBenchmarkPath, asBenchmarks[i], cTrials, true, bMultiThread);
                i++;
            }
            while (i < asBenchmarks.Length)
            {
                for (int j = 0 ; j < cMaxThreads ; j++)
                {
                    if (aThreads[j] == null || aThreads[j].Join(1000))
                    {
                        aThreads[j] = TestBenchmark(sBenchmarkPath, asBenchmarks[i], cTrials, true, bMultiThread);
                        i++;
                        break;
                    }
                }
            }
            foreach (Thread t in aThreads)
                if( t != null )
                    t.Join();
            **/

            return stageTwoPlanPlusProblem;
        }
        static void TestAll(string sBenchmarkPath, string[] asBenchmarks, int cTrials, int cTags)
        {
            foreach (string sBenchmark in asBenchmarks)
            {
                try
                {
                    SDRPlanner.TagsCount = cTags;
                    if (cTags == -1)
                    {
                        if (sBenchmark.ToLower().StartsWith("wumpus"))
                            SDRPlanner.TagsCount = 5;
                        else
                            SDRPlanner.TagsCount = 3;
                    }
                    /*
                    if (sBenchmark.ToLower().StartsWith("medpks"))
                        BeliefState.AddAllKnownToGiven = true;
                    else
                        BeliefState.AddAllKnownToGiven = false;
                    */
                    SDRPlanner.AddAllKnownToGiven = true;

                    TestBenchmark(sBenchmarkPath, sBenchmark, cTrials, true, true, true);

                    Debug.WriteLine(g_cUnexpectedObservations + "/" + g_cObservations + "/" + g_cGlobalActions);
                    g_cUnexpectedObservations = 0;
                    g_cObservations = 0;
                    g_cGlobalActions = 0;
                }
                catch (Exception e)
                {
                }
            }
        }
        static void TestDoors(string sBenchmarkPath, int cSize)
        {
            Doors mm = new Doors(cSize, 0);
            string sBenchmark = mm.Name;
            mm.WriteDomain(sBenchmarkPath + sBenchmark);
            mm.WriteProblem(sBenchmarkPath + sBenchmark);
            SDRPlanner.TagsCount = 5;
            SDRPlanner.AddTagRefutationToGoal = false;
            //BeliefState.AddAllKnownToGiven = true;
            //TestCLG(sBenchmarkPath + sBenchmark + "\\", 2);
            SDRPlanner.SDR_OBS = false;
            SDRPlanner.AddTagRefutationToGoal = false;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
            SDRPlanner.AddTagRefutationToGoal = true;
            TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false, true);
            //SDR_OBS = true;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
        }

        static void TestMasterMind(string sBenchmarkPath, int cColors, int cPegs)
        {
            MasterMind mm = new MasterMind(cColors, cPegs, 0);
            string sBenchmark = mm.Name;
            mm.WriteDomain(sBenchmarkPath + sBenchmark);
            mm.WriteProblem(sBenchmarkPath + sBenchmark);
            SDRPlanner.TagsCount = 6;
            SDRPlanner.AddTagRefutationToGoal = false;
            //BeliefState.AddAllKnownToGiven = true;
            //TestCLG(sBenchmarkPath + sBenchmark + "\\", 2);
            SDRPlanner.SDR_OBS = false;
            SDRPlanner.AddTagRefutationToGoal = false;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
            SDRPlanner.AddTagRefutationToGoal = true;
            TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false, true);
            //SDR_OBS = true;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
        }

        static void TestRockSample(string sBenchmarkPath, int iSize, int cRocks)
        {
            RockSample mm = new RockSample(iSize, cRocks, 0);
            string sBenchmark = mm.Name;
            mm.WriteDomain(sBenchmarkPath + sBenchmark);
            mm.WriteProblem(sBenchmarkPath + sBenchmark);
            //for (int cTags = 2; cTags <= 4; cTags++)
            {
                SDRPlanner.TagsCount = 20;
                //BeliefState.AddAllKnownToGiven = true;
                //TestCLG(sBenchmarkPath + sBenchmark + "\\", 10);
                SDRPlanner.SDR_OBS = false;
                TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false, true);
            }
            //SDRPlanner.AddTagRefutationToGoal = true;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
            //SDR_OBS = true;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
        }


        static void TestElevators(string sBenchmarkPath, int cFloors, int cPeople)
        {
            /*
            RockSample mm = new RockSample(iSize, cRocks, 0);
            string sBenchmark = mm.Name;
            mm.WriteDomain(sBenchmarkPath + sBenchmark);
            mm.WriteProblem(sBenchmarkPath + sBenchmark);
            for (int cTags = 2; cTags <= 4; cTags++)
            {
                SDRPlanner.TagsCount = 2;
                //BeliefState.AddAllKnownToGiven = true;
                //TestCLG(sBenchmarkPath + sBenchmark + "\\", 10);
                SDRPlanner.SDR_OBS = false;
                TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
            }
             * */
            //SDRPlanner.AddTagRefutationToGoal = true;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
            //SDR_OBS = true;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
        }

        static void TestCanadianTravelingSalesPerson(string sBenchmarkPath, int iLength, int iWidth, int iSensingCost)
        {
            CanadianTravelingSalesPerson ctsp = new CanadianTravelingSalesPerson(iLength, iWidth, iSensingCost);
            string sBenchmark = ctsp.Name;
            ctsp.WriteDomain(sBenchmarkPath + sBenchmark);
            ctsp.WriteProblem(sBenchmarkPath + sBenchmark);
            SDRPlanner.TagsCount = 4;
            //BeliefState.AddAllKnownToGiven = true;
            //TestCLG(sBenchmarkPath + sBenchmark + "\\", 10);
            SDRPlanner.SDR_OBS = false;
            SDRPlanner.AddTagRefutationToGoal = false;
            TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false, true);
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
            //SDR_OBS = true;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
        }

        static void TestOmelette(string sBenchmarkPath, int cRequiredEggs)
        {
            Omelette o = new Omelette(cRequiredEggs);
            string sBenchmark = o.Name;
            o.WriteDomain(sBenchmarkPath + sBenchmark);
            o.WriteProblem(sBenchmarkPath + sBenchmark);
            SDRPlanner.TagsCount = 3;
            //BeliefState.AddAllKnownToGiven = true;
            //TestCLG(sBenchmarkPath + sBenchmark + "\\", 10);
            SDRPlanner.SDR_OBS = false;
            SDRPlanner.AddTagRefutationToGoal = true;
            TestBenchmark(sBenchmarkPath, sBenchmark, 1, true, false, true);
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
            //SDR_OBS = true;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
        }

        static void TestCatchInvaders(string sBenchmarkPath, int iSize, int cInvaders)
        {
            CatchtInvaders mm = new CatchtInvaders(iSize, cInvaders);
            string sBenchmark = mm.Name;
            mm.WriteDomain(sBenchmarkPath + sBenchmark);
            mm.WriteProblem(sBenchmarkPath + sBenchmark);
            SDRPlanner.TagsCount = 5;
            SDRPlanner.AddTagRefutationToGoal = true;
            SDRPlanner.AddAllKnownToGiven = false;
            //TestCLG(sBenchmarkPath + sBenchmark + "\\", 2);
            TestBenchmark(sBenchmarkPath, sBenchmark, 10, false, false, true);
        }
        static void TestWumpus(string sBenchmarkPath, int iSize)
        {
            SDRPlanner.AddAllKnownToGiven = true;
            //WumpusDomain mm = new WumpusDomain(iSize, 0, false, true);
            WumpusDomain mm = new WumpusDomain(iSize, false);
            string sBenchmark = mm.Name;
            mm.WriteDomain(sBenchmarkPath + sBenchmark);
            mm.WriteProblem(sBenchmarkPath + sBenchmark);
            SDRPlanner.TagsCount = 2;
            SDRPlanner.AddTagRefutationToGoal = false;
            //BeliefState.AddAllKnownToGiven = true;
            //TestCLG(sBenchmarkPath + sBenchmark + "\\", 2);
            TestBenchmark(sBenchmarkPath, sBenchmark, 5, false, false, true);
        }
        static void TestLargeWumpus(string sBenchmarkPath, int iSize)
        {
            double dDensity = 0.05;
            SDRPlanner.AddAllKnownToGiven = true;
            LargeWumpusDomain mm = new LargeWumpusDomain(iSize);
            LargeWumpusDomain.PitCount = (int)(dDensity * iSize * iSize);
            LargeWumpusDomain.WumpusCount = (int)(dDensity * iSize * iSize);
            string sBenchmark = mm.Name;
            mm.WriteDomain(sBenchmarkPath + sBenchmark);
            mm.WriteProblem(sBenchmarkPath + sBenchmark);
            SDRPlanner.TagsCount = 2;
            SDRPlanner.AddTagRefutationToGoal = false;
            //BeliefState.AddAllKnownToGiven = true;
            //TestCLG(sBenchmarkPath + sBenchmark + "\\", 2);
            TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false, true);
        }
        static void TestBattleship(string sBenchmarkPath, int iSize)
        {
            SDRPlanner.AddAllKnownToGiven = true;
            Battleship bs = new Battleship(iSize * 10);
            string sBenchmark = bs.Name;
            bs.WriteDomain(sBenchmarkPath + sBenchmark);
            bs.WriteProblem(sBenchmarkPath + sBenchmark);
            SDRPlanner.TagsCount = 2;
            SDRPlanner.AddTagRefutationToGoal = false;
            //BeliefState.AddAllKnownToGiven = true;
            //TestCLG(sBenchmarkPath + sBenchmark + "\\", 2);
            TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false, true);
        }
        static void TestMineSweeper(string sBenchmarkPath, int iSize)
        {
            SDRPlanner.AddAllKnownToGiven = true;
            MineSweeper ms = new MineSweeper(iSize);
            string sBenchmark = ms.Name;
            ms.WriteDomain(sBenchmarkPath + sBenchmark);
            ms.WriteProblem(sBenchmarkPath + sBenchmark);
            SDRPlanner.TagsCount = 2;
            SDRPlanner.AddTagRefutationToGoal = false;
            //BeliefState.AddAllKnownToGiven = true;
            //TestCLG(sBenchmarkPath + sBenchmark + "\\", 2);
            TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false, true);
        }

        static void TestBoxes(string sBenchmarkPath, string sDomainFile)
        {
            BoxDomain bd = new BoxDomain(sBenchmarkPath + "\\Boxes\\" + sDomainFile);
            string sBenchmark = bd.Name;
            bd.WriteDomain(sBenchmarkPath + sBenchmark);
            bd.WriteProblem(sBenchmarkPath + sBenchmark);
            SDRPlanner.TagsCount = 2;
            //Domain.MAX_OPTIONS = 2;
            //BeliefState.AddAllKnownToGiven = true;
            //TestCLG(sBenchmarkPath + sBenchmark + "\\", 10);
            SDRPlanner.SDR_OBS = false;
            SDRPlanner.AddTagRefutationToGoal = true;
            TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false, true);
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
            //SDR_OBS = true;
            //TestBenchmark(sBenchmarkPath, sBenchmark, 25, true, false);
        }

        // shashank generte signaling macros
        public List<Action> DomainAugWithSignalingMacro(Domain dOld)
        {
            List<Action> lMacroActions = new List<Action>();
            foreach (Action act in dOld.Actions)
            {
                foreach (Action act_loc in dOld.Actions)
                {
                    if(act.ID != act_loc.ID && act.Observe != null && act_loc.Observe != null)
                    {
                        HashSet<Predicate> pToSignal = act.Observe.GetAllPredicates();
                        HashSet<Predicate> pViaSign = act_loc.Observe.GetAllPredicates();

                        ParametrizedPredicate p = null;
                        ParametrizedPredicate q = null;

                        // currently expecting only one observation variable
                        if (pToSignal.Count > 1 || pViaSign.Count > 1)
                            throw new NotImplementedException();

                        else
                        {
                            foreach (Predicate x in pToSignal)
                                p = (ParametrizedPredicate) x;

                            foreach (Predicate x in pViaSign)
                                q = (ParametrizedPredicate) x;
                        }
                        if(ReturnPossibleMacros(act, act_loc, p, q, dOld).Count > 0)
                            lMacroActions.AddRange(ReturnPossibleMacros(act, act_loc, p, q, dOld));
                    }
                }
            }
            return lMacroActions;
        }

        public List<Action> ReturnPossibleMacros(
            Action provider, Action consumer, ParametrizedPredicate p, ParametrizedPredicate q, Domain d)
        {
            List<Action> listControllingActions = new List<Action>();
            foreach (Action act in d.Actions)
            {
                if (! act.Name.ToLower().Contains("change")) 
                    continue;
                if (act.Observe == null && act.Effects != null)
                {
                    HashSet<Predicate> effectList = act.Effects.GetAllPredicates();
                    foreach(ParametrizedPredicate pLoc in effectList)
                    {
                        if (pLoc.Name.ToLower().Equals(q.Name.ToLower()))
                            if (pLoc.Parameters.Count() == q.Parameters.Count())
                                listControllingActions.Add(act);
                            else
                                throw new NotImplementedException();
                    }
                }
                else if (act.Observe != null && act.Effects != null)
                    throw new NotImplementedException();
            }

            // define a new macro for each controlling action
            List<Action> lMacroActions = new List<Action>();
            foreach(Action act in listControllingActions)
            {
                ParametrizedAction macroAct = new ParametrizedAction("signaling-macro-" + act.Name);
                HashSet<Parameter> lParam = new HashSet<Parameter>();

                foreach (Parameter pp in ((ParametrizedAction) provider).Parameters)
                    if (!pp.Type.ToLower().Equals("agent")) 
                        lParam.Add(pp);

                foreach (Parameter pp in ((ParametrizedAction)consumer).Parameters)
                    if (!pp.Type.ToLower().Equals("agent"))
                        lParam.Add(pp);
                    
                foreach (Parameter pp in ((ParametrizedAction) act).Parameters)
                    if (!pp.Type.ToLower().Equals("agent"))
                        lParam.Add(pp);

                Argument arAgt1 = new Argument("agent", "?a1");
                Argument arAgt2 = new Argument("agent", "?a2");

                // biuld preconditions
                HashSet<Predicate> lPrecond = new HashSet<Predicate>();
                lPrecond.UnionWith(CreateListOfPredicateForMacro(provider, arAgt1, true));
                lPrecond.UnionWith(CreateListOfPredicateForMacro(act, arAgt1, false));
                lPrecond.UnionWith(CreateListOfPredicateForMacro(consumer, arAgt2, false));                                
                CompoundFormula completePrecond = new CompoundFormula("and");
                foreach (Predicate pp in lPrecond)
                    completePrecond.AddOperand(pp);

                // build effects
                CompoundFormula effect = new CompoundFormula("and");

                ParametrizedPredicate pN = new ParametrizedPredicate("phase");
                Argument ar = new Argument("number", "n0");
                pN.AddParameter(ar);
                // effect.AddOperand(pN);
                
                CompoundFormula whenEffect = new CompoundFormula("when");
                whenEffect.AddOperand(p);
                whenEffect.AddOperand(q);
                effect.AddOperand(whenEffect);               

                macroAct.AddParameter(new Parameter("agent", "?a1"));
                macroAct.AddParameter(new Parameter("agent", "?a2"));
                foreach (Parameter p1 in lParam)
                    macroAct.AddParameter(p1);
                macroAct.Preconditions = completePrecond;
                macroAct.Effects = effect;
                lMacroActions.Add(macroAct);
            }
            return lMacroActions;
        }

        private HashSet<Predicate> CreateListOfPredicateForMacro(Action act, Argument arg1, bool con)
        {
            HashSet<Predicate> precond = new HashSet<Predicate>();

            foreach (Predicate pr in act.Preconditions.GetAllPredicates())
            {
                ParametrizedPredicate newP = new ParametrizedPredicate(pr.Name);

                // to add (not (can-observe-b ?a2 ?b))
                bool toAdd = false;
                foreach (Argument arg in ((ParametrizedPredicate)pr).GetAllArgument())
                {
                    if (arg.Type.ToLower().Equals("agent"))
                    {                        
                        newP.AddParameter(arg1);
                    }
                    else
                        newP.AddParameter(arg);

                    if (arg.Type.ToLower().Equals("box") || arg.Type.ToLower().Equals("table"))
                        toAdd = true;
                }
                if (pr.Negation)
                    precond.Add(newP.Negate());
                else
                    precond.Add(newP);
                 
                if(toAdd && con)
                {
                    newP = new ParametrizedPredicate(pr.Name);
                    foreach (Argument arg in ((ParametrizedPredicate)pr).GetAllArgument())
                    {
                        if (arg.Type.ToLower().Equals("agent"))
                        {
                            Argument arAgt2 = new Argument("agent", "?a2");
                            newP.AddParameter(arAgt2);
                        }
                        else
                            newP.AddParameter(arg);
                    }
                    precond.Add(newP.Negate());
                }
            }            
            return precond;
        }

        /// <summary> 
        /// Generates lists of public and private actions and predicates
        /// </summary>
        /// <param name="problem"></param>
        public void GenerateNecessaryPrivatePublicInfo(Problem problem)
        {
            if (problem.Domain.Name.ToLower().Equals("rover"))
            {                
                PrivatePublicInfoExtraction_Rovers infoExtraction = new PrivatePublicInfoExtraction_Rovers(problem.Domain);
                publicPredicates = PrivatePublicInfoExtraction_Rovers.GetAllPublicPredicates();
                privatePredicates = PrivatePublicInfoExtraction_Rovers.GetAllPrivatePredicates();
                publicActions = PrivatePublicInfoExtraction_Rovers.GetAllPublicActions();
                privateActions = PrivatePublicInfoExtraction_Rovers.GetAllPrivateActions();

            }
            else
            {                
                PrivatePublicInfoExtraction infoExtraction = new PrivatePublicInfoExtraction(problem.Domain);
                publicPredicates = PrivatePublicInfoExtraction.GetAllPublicPredicates();
                privatePredicates = PrivatePublicInfoExtraction.GetAllPrivatePredicates();
                publicActions = PrivatePublicInfoExtraction.GetAllPublicActions();
                privateActions = PrivatePublicInfoExtraction.GetAllPrivateActions();
            }

            foreach (Constant agt in problem.Domain.Constants)
            {
                if (agt.Type.Equals("agent"))
                {
                    agentList.Add(agt);
                }
            }
        }

        /// <summary>
        /// generatenew domain and problem, as per abstraction
        /// </summary>
        /// <param name="sPath"></param>
        /// <param name="problem"></param>
        /// <returns></returns>
        public bool GenerateAbstractDomainProblemDescriptions(String sPath, Problem problem)
        {
            String tempAbsPath = sPath;
            try
            {
                if (!Directory.Exists(tempAbsPath))
                {                 
                    DirectoryInfo di = Directory.CreateDirectory(tempAbsPath);
                }
            }
            catch (IOException ioex)
            {
                Console.WriteLine(ioex.Message);
            }

            ////* Create an abstract domain *////
            StringBuilder newDomain = null;
            Domain domain = problem.Domain;
            using (StreamWriter sw = new StreamWriter(tempAbsPath + "\\d.pddl"))
            {
                newDomain = new StringBuilder();
                newDomain.Append("(define (domain " + domain.Name + ")");
                newDomain.AppendLine();
                newDomain.Append("(:types ");
                foreach (string s in domain.Types) {
                    newDomain.Append(s + " ");
                }
                newDomain.Append(")");
                newDomain.AppendLine();
                newDomain.Append("(:constants ");
                newDomain.AppendLine();
                foreach (Constant c in domain.Constants) {                    
                    newDomain.Append("  " + c.ToString() + " - " + c.Type.ToString() + "\n");
                }
                newDomain.Append(")");
                newDomain.AppendLine();
                newDomain.Append("(:predicates \n");
                foreach (ParametrizedPredicate p in domain.Predicates)
                {
                    newDomain.Append("\t" + "(" + p.Name);
                    foreach(Argument arg in p.GetAllArgument())
                    {
                        newDomain.Append(" " + arg.Name + " - " + arg.Type.ToString());
                    }
                    newDomain.Append(")" + "\n");
                }
                newDomain.Append(")");
                newDomain.AppendLine();

                foreach (ParametrizedAction a in domain.Actions)
                {
                    bool dontConsiderThisAct = false;
                    foreach(Action pri in privateActions)
                    {
                        if (a.Name.ToLower().ToString().Equals(pri.Name.ToLower().ToString()))
                        {
                            dontConsiderThisAct = true; break;
                        }
                        if (dontConsiderThisAct) break;
                    }
                    if (dontConsiderThisAct) continue;
                    else
                    {
                        String publicAction = "\n";
                        publicAction += "(:action ";
                        publicAction += a.Name.ToString() + "\n\t";
                        publicAction += ":parameters (";
                        foreach (Argument arg in a.Parameters)
                            publicAction += arg + " - " + arg.Type.ToString() + " ";
                        publicAction += ")";

                        String actionPrecond = "";                        
                        Formula f = (Formula) a.Preconditions;

                        List<Formula> lPred = f.GetAllOperands();
                        HashSet<Predicate> hsPre = f.GetAllPredicates();
                        if(lPred.Count == 0 && hsPre.Count !=0)
                        {
                            // abstraction // recall what to change: public/private predicate
                            foreach(Predicate fLoc in hsPre)
                            {
                                if (
                                        fLoc.ToString().ToLower().Contains("same")
                                        || fLoc.ToString().ToLower().Contains("adj") 
                                        || fLoc.ToString().ToLower().Contains("have_image")
                                        || fLoc.ToString().ToLower().Contains("have-image")
                                        || fLoc.ToString().ToLower().Contains("have-rock-analysis")
                                        || fLoc.ToString().ToLower().Contains("have_rock_analysis")
                                        || fLoc.ToString().ToLower().Contains("have-soil-analysis")
                                        || fLoc.ToString().ToLower().Contains("have_soil_analysis")
                                    )
                                    actionPrecond += fLoc;
                                else if (fLoc.ToString().ToLower().Contains(" dd"))
                                    actionPrecond += fLoc;
                                else if ( !(fLoc is ParametrizedPredicate))
                                    actionPrecond += fLoc;
                                else
                                {
                                    bool privatePred = false;
                                    ParametrizedPredicate fLocp = (ParametrizedPredicate)fLoc;
                                    foreach (ParametrizedPredicate pp in privatePredicates)
                                    {
                                        if (pp.GetAllArgument().Count != fLocp.GetAllArgument().Count)
                                            continue;
                                        else if (!pp.Name.ToLower().Equals(fLocp.Name.ToString().ToLower()))
                                            continue;
                                        List<Argument> lArgProp1 = pp.GetAllArgument();
                                        List<Argument> lArgProp2 = fLocp.GetAllArgument();
                                        for (int i = 0; i < lArgProp1.Count; i++)
                                        {
                                            if (!lArgProp1[i].Type.ToString().ToLower().Equals(lArgProp2[i].Type.ToString().ToLower()))
                                            {
                                                privatePred = false;
                                                break;
                                            }
                                            privatePred = true;
                                        }
                                    }
                                    if (privatePred) continue;
                                    else
                                    {
                                        actionPrecond += fLoc;
                                    }
                                }
                            }
                        }
                        else if (lPred.Count == 0 && f.ToString().Length > 0)                            
                            actionPrecond = f.ToString();
                        foreach (Formula fLoc in lPred)
                        {
                            if (fLoc.GetAllPredicates().Count > 1)
                                actionPrecond += fLoc;
                            else
                            {
                                // abstraction // recall what to change: public/private predicate
                                if  (
                                        fLoc.ToString().ToLower().Contains("same")
                                        || fLoc.ToString().ToLower().Contains("adj") || fLoc.ToString().ToLower().Contains("connected")
                                        || fLoc.ToString().ToLower().Contains("have_image")
                                        || fLoc.ToString().ToLower().Contains("have-image")
                                        || fLoc.ToString().ToLower().Contains("have-rock-analysis")
                                        || fLoc.ToString().ToLower().Contains("have_rock_analysis")
                                        || fLoc.ToString().ToLower().Contains("have-soil-analysis")
                                        || fLoc.ToString().ToLower().Contains("have_soil_analysis")
                                    )
                                    actionPrecond += fLoc;
                                else if (fLoc.ToString().ToLower().Contains(" dd"))
                                    actionPrecond += fLoc;
                                else
                                {
                                    bool privatePred = false;
                                    HashSet<Predicate> lp = fLoc.GetAllPredicates();
                                    foreach (ParametrizedPredicate p in lp)                                        
                                    {
                                        foreach (ParametrizedPredicate pp in privatePredicates)
                                        {
                                            if (pp.GetAllArgument().Count != p.GetAllArgument().Count)
                                                continue;
                                            else if (!pp.Name.ToLower().Equals(p.Name.ToString().ToLower()))
                                                continue;
                                            List<Argument> lArgProp1 = pp.GetAllArgument();
                                            List<Argument> lArgProp2 = p.GetAllArgument();
                                            for (int i=0; i<lArgProp1.Count; i++)
                                            {
                                                if (!lArgProp1[i].Type.ToString().ToLower().Equals(lArgProp2[i].Type.ToString().ToLower()))
                                                {
                                                    privatePred = false;
                                                    break;
                                                }
                                                privatePred = true; 
                                            }
                                        }
                                        if (privatePred) break;
                                    }
                                    if (privatePred) continue;
                                    else
                                    {
                                        actionPrecond += fLoc;
                                    }
                                }
                            }
                        }
                        if(actionPrecond.Length > 0)
                            publicAction += "\n\t:precondition (and " + actionPrecond + ")";

                        ////// add effect /////
                        String actionEffect = "";
                        if (a.Effects != null)
                        {   
                            f = a.Effects;
                            lPred = f.GetAllOperands();
                            HashSet<Predicate> hsEff = f.GetAllPredicates();
                            if (lPred.Count == 0 && hsEff.Count != 0)
                            {
                                // abstraction // recall what to change: public/private predicate
                                foreach (Predicate fLoc in hsEff)
                                {
                                    if (
                                            fLoc.ToString().ToLower().Contains("same")
                                            || fLoc.ToString().ToLower().Contains("adj") || fLoc.ToString().ToLower().Contains("connected")
                                            || fLoc.ToString().ToLower().Contains("have_image")
                                            || fLoc.ToString().ToLower().Contains("have-image")
                                            || fLoc.ToString().ToLower().Contains("have-rock-analysis")
                                            || fLoc.ToString().ToLower().Contains("have_rock_analysis")
                                            || fLoc.ToString().ToLower().Contains("have-soil-analysis")
                                            || fLoc.ToString().ToLower().Contains("have_soil_analysis")
                                        )
                                        actionEffect += fLoc;
                                    else if (fLoc.ToString().ToLower().Contains(" dd"))
                                        actionEffect += fLoc;
                                    else if (!(fLoc is ParametrizedPredicate))
                                        actionEffect += fLoc;
                                    else
                                    {
                                        bool privatePred = false;
                                        ParametrizedPredicate fLocp = (ParametrizedPredicate)fLoc;
                                        foreach (ParametrizedPredicate pp in privatePredicates)
                                        {
                                            if (pp.GetAllArgument().Count != fLocp.GetAllArgument().Count)
                                                continue;
                                            else if (!pp.Name.ToLower().Equals(fLocp.Name.ToString().ToLower()))
                                                continue;
                                            List<Argument> lArgProp1 = pp.GetAllArgument();
                                            List<Argument> lArgProp2 = fLocp.GetAllArgument();
                                            for (int i = 0; i < lArgProp1.Count; i++)
                                            {
                                                if (!lArgProp1[i].Type.ToString().ToLower().Equals(lArgProp2[i].Type.ToString().ToLower()))
                                                {
                                                    privatePred = false;
                                                    break;
                                                }
                                                privatePred = true;
                                            }
                                        }
                                        if (privatePred) continue;
                                        else
                                        {
                                            actionEffect += fLoc;
                                        }
                                    }
                                }
                            }
                            else if (lPred.Count == 0 && f.ToString().Length > 0)
                                actionEffect = f.ToString();
                            foreach (Formula fLoc in lPred)
                            {
                                if (fLoc.GetAllPredicates().Count > 1)
                                    actionEffect += fLoc;
                                else
                                {                                    
                                    bool privatePred = false;
                                    HashSet<Predicate> lp = fLoc.GetAllPredicates();
                                    foreach (ParametrizedPredicate p in lp)
                                    {
                                        if (p.ToString().ToLower().Contains("have_image") || p.ToString().ToLower().Contains("have-image")
                                            || fLoc.ToString().ToLower().Contains("have-rock-analysis")
                                            || fLoc.ToString().ToLower().Contains("have_rock_analysis")
                                            || fLoc.ToString().ToLower().Contains("have-soil-analysis")
                                            || fLoc.ToString().ToLower().Contains("have_soil_analysis")
                                        )
                                            break;
                                        foreach (ParametrizedPredicate pp in privatePredicates)
                                        {
                                            if (pp.GetAllArgument().Count != p.GetAllArgument().Count)
                                                continue;
                                            else if (!pp.Name.ToLower().Equals(p.Name.ToString().ToLower()))
                                                continue;
                                            List<Argument> lArgProp1 = pp.GetAllArgument();
                                            List<Argument> lArgProp2 = p.GetAllArgument();
                                            for (int i = 0; i < lArgProp1.Count; i++)
                                            {
                                                if (!lArgProp1[i].Type.ToString().ToLower().Equals(lArgProp2[i].Type.ToString().ToLower()))
                                                {
                                                    privatePred = false;
                                                    break;
                                                }
                                                privatePred = true;
                                            }
                                        }
                                        if (privatePred) break;
                                    }
                                    if (privatePred) continue;
                                    else
                                    {
                                        actionEffect += fLoc;
                                    }                                    
                                }
                            }                            
                        }
                        if (actionEffect.Length > 0)
                            publicAction += "\n\t:effect (and " + actionEffect + ")";

                        ////// observe : considering it observes a public variable /////
                        if (a.Observe != null)
                        {                            
                            publicAction += "\n\t:observe ";
                            f = a.Observe;
                            foreach (Predicate fLoc in f.GetAllPredicates())
                            {                               
                                // if there are more than one variable to observe or private: change this code
                                publicAction += fLoc;
                            }                                                        
                        }
                        //
                        // Console.WriteLine(publicAction);
                        //
                        newDomain.Append(publicAction);
                        newDomain.Append("\n)");
                    }
                }
                newDomain.Append("\n)");
                // Console.WriteLine("\n" + newDomain);
                sw.WriteLine(newDomain.ToString());
                sw.Close();
            }
            return true;
        }

        // domain.GroundAllActions(problem, publicActions, privateActions);
        public void ComputeToralPublicAndPrivateActions(
            string benchmarkPath, string benchMark, Domain domain, Problem problem, HashSet<Action> publicActions, HashSet<Action> privateActions)
        {
            int nPubActions = 0, nPrivActions = 0;
            domain.GroundAllActions(problem, publicActions, privateActions, out nPubActions, out nPrivActions);

            // Build CSV path
            string csvPath = Path.Combine(benchmarkPath, "Benchmark_ActionCounts.csv");

            bool fileExists = File.Exists(csvPath);

            using (var writer = new StreamWriter(csvPath, append: true))
            {
                // Write header if creating file for the first time
                if (!fileExists)
                {
                    writer.WriteLine("Benchmark,PublicActions,PrivateActions");
                }

                // Use problem name or file name as instance identifier
                string instanceName = Path.GetFileNameWithoutExtension(problem.Name ?? benchMark);

                // Write entry
                writer.WriteLine($"{benchMark},{nPubActions},{nPrivActions}");
            }
            // Environment.Exit(0);
        }

        public StageTwoPlanPlusProblem cpormain(
            String sBenchmarkPath, String[] asBenchmarks, int cFailures, bool multiAgentTeamPlan, int timeOut, Stopwatch sWatch, bool useAbstraction)
        {  
            SDRPlanner.TagsCount = 2;
            SDRPlanner.AddAllKnownToGiven = false;
            SDRPlanner.AddTagRefutationToGoal = false;

            /** set by shashank, for iterative backtracks **/
            SDRPlanner.MultiAgent = multiAgentTeamPlan;
            SDRPlanner.timeOut = timeOut;
            SDRPlanner.stopWatch = sWatch;

            SDRPlanner.SDR_OBS = false;
            Debug.AutoFlush = true;
            
            DateTime startTime = DateTime.Now;

            string sPath = sBenchmarkPath + asBenchmarks[0] + @"\";

            Parser parser = new Parser();
            Debug.WriteLine("Reading domain and problem");

            Domain domain = parser.ParseDomain(sPath + "d.pddl");
            Domain.MultiAgent = multiAgentTeamPlan;

            // automatic generation of signaling macros. Not tested properly.
            if (aSignalingMacro && sBacktrackNumberForMacro == 0 && false)
            {
                List<Action> newMacroActionsToAugTheDomain = DomainAugWithSignalingMacro(domain);

                // Save the old domain and write a new domain with macros and continue the execution from here
                string originalDomain = "d-without-signaling.pddl";
                if (File.Exists(sPath + originalDomain))
                    File.Delete(sPath + originalDomain);
                FileInfo oldOriginalDomainFile = new FileInfo(sPath + "d.pddl");
                oldOriginalDomainFile.MoveTo(sPath + originalDomain);

                foreach (Action a1 in newMacroActionsToAugTheDomain)
                {
                    domain.AddAction(a1);
                }

                // Save this new domain for the furure usage
                using (StreamWriter sw = new StreamWriter(sPath + "d.pddl"))
                {
                    StringBuilder newDomain = new StringBuilder();
                    newDomain.Append("(define (domain " + domain.Name + ")");
                    newDomain.AppendLine();
                    newDomain.Append("(:types ");
                    foreach (string s in domain.Types)
                        newDomain.Append(s + " ");
                    newDomain.Append(")");
                    newDomain.AppendLine();
                    newDomain.Append("(:constants ");
                    newDomain.AppendLine();
                    foreach (Constant c in domain.Constants)
                        newDomain.Append(c.ToString() + " - " + c.Type + "\n");
                    newDomain.Append(")");
                    newDomain.AppendLine();
                    newDomain.Append("(:predicates \n");
                    foreach (Predicate p in domain.Predicates)
                        newDomain.Append("\t" + p.ToString() + "\n");
                    newDomain.Append(")");
                    newDomain.AppendLine();

                    foreach (Action a in domain.Actions)
                    {
                        newDomain.Append(a.ToString());
                        newDomain.AppendLine();
                    }
                    newDomain.Append(")");

                    sw.WriteLine(newDomain.ToString());
                }
            }  
            
            Problem problem = parser.ParseProblem(sPath + "p.pddl", domain);

            /** To perform abstraction, we need to create both domain and problem files from scratch. **/
            if (sBacktrackNumberForMacro == 0 && useAbstraction)
            {
                GenerateNecessaryPrivatePublicInfo(problem);
            }
                        
            string dNewSpecificationsPath = sPath + "absTemp"; 
            Domain domain_abs = null;
            Problem problem_abs = null;
            if (useAbstraction)
            {
                if (GenerateAbstractDomainProblemDescriptions(dNewSpecificationsPath, problem))
                {
                    Console.WriteLine("Generated a new abstract domain!");
                    /** for now we will not create a new problem file **/
                }
                else
                {
                    throw new Exception("Error in abstraction");
                }
                domain_abs = parser.ParseDomain(dNewSpecificationsPath + "//" + "d.pddl");
                problem_abs = parser.ParseProblem(sPath + "p.pddl", domain_abs);
            }
            /**------------------------------------------------------**/

            this.ccFailure = cFailures;
            int seed = (int) DateTime.Now.Ticks;

            // compute total private and public actions
            // ComputeToralPublicAndPrivateActions(sBenchmarkPath, asBenchmarks[0], domain, problem, publicActions, privateActions);
            // return null;

            SDRPlanner sdr = null;
            if (useAbstraction)
                sdr = new SDRPlanner(sPath, domain_abs, problem_abs, multiAgentTeamPlan);
            else
                sdr = new SDRPlanner(sPath, domain, problem, multiAgentTeamPlan);
            RandomGenerator.Init(ccFailure * seed);

            StageTwoPlanPlusProblem stageTwoPlanPlusProblem = sdr.Start();

            // Console.WriteLine(stageTwoPlanPlusProblem.conditionalPlanTreeNode);

            // StageTwoPlanPlusProblem stageTwoPlanPlusProblem = TestAll(sBenchmarkPath, asBenchmarks, 1, false, multiAgentTeamPlan);
            // Console.WriteLine(stageTwoPlanPlusProblem.conditionalPlanTreeNode);
            double totalTime = DateTime.Now.Subtract(startTime).TotalSeconds;

            // StreamWriter swTime = new StreamWriter(@"D:\Privacy Preserving\Offline CP Regression\Output\newV.txt", true);
            StreamWriter swTime = new StreamWriter(@"C:\Users\shekhar\Shashank\PC\Downloads\SDR\offline\temp\newV.txt", true);
            swTime.WriteLine(totalTime);
            swTime.Close();

            // SDRPlanner.TagsCount = 6;
            // TestAll(sBenchmarkPath, asBenchmarks, 10, true);
            // SDRPlanner.TagsCount = 8;
            // TestAll(sBenchmarkPath, asBenchmarks, 10, true);

            /**
            int[] acTags = { 2, 4, 6, 8, 10, 12, 14, 16, 18, 20 };
            foreach (int cTags in acTags)
            {
                MaxTimePerProblem = cTags * 2;
                SDRPlanner.TagsCount = cTags;
                SDRPlanner.AddTagRefutationToGoal = false;
                TestAll(sBenchmarkPath, asBenchmarks, 25, true);
                SDRPlanner.AddTagRefutationToGoal = true;
                TestAll(sBenchmarkPath, asBenchmarks, 25, true);
            }
            **/

            // Console.WriteLine("Done, press enter to exit");
            // Console.ReadLine();

            if(useAbstraction)
                updatePlanTreeWithImpChanges(ref stageTwoPlanPlusProblem, problem);

            return stageTwoPlanPlusProblem;            
        }

        public void updatePlanTreeWithImpChanges(ref StageTwoPlanPlusProblem stageTwoPlanPlusProblem, Problem probOrig)
        {
            stageTwoPlanPlusProblem.problem = probOrig;
            stageTwoPlanPlusProblem.conditionalPlanTreeNode = addPreconditionToTheObservationActions(stageTwoPlanPlusProblem.conditionalPlanTreeNode, probOrig.Domain);
        }

        public ConditionalPlanTreeNode addPreconditionToTheObservationActions(ConditionalPlanTreeNode node, Domain d)
        {
            if(node == null)
            {
                return null;
            }            
            if(node.Action != null)
            {
                if(node.Action.Observe != null)
                {
                    Action updatedObsAct = GroundActionByName(node.Action.Name.Split('_'), d);
                    node.Action = updatedObsAct;
                }
            }
            if (node.SingleChild != null)
            {
                node.SingleChild = addPreconditionToTheObservationActions(node.SingleChild, d);
            }
            if (node.FalseObservationChild != null)
            {
                node.FalseObservationChild = addPreconditionToTheObservationActions(node.FalseObservationChild, d);
            }
            if (node.TrueObservationChild != null)
            {
                node.TrueObservationChild = addPreconditionToTheObservationActions(node.TrueObservationChild, d);
            }
            return node;
        }

        public Action GroundActionByName(string[] asAction, Domain d)
        {
            string sActionName = asAction[0];
            Action a = d.GetActionByName(sActionName);
            if (!(a is ParametrizedAction))
                return a;
            ParametrizedAction pa = (ParametrizedAction)a;
            Dictionary<string, Constant> dBindings = GetBindings(pa, asAction);

            Formula fGroundedPreconditions = null;
            if (pa.Preconditions != null)
                fGroundedPreconditions = pa.Preconditions.Ground(dBindings);
            else if (pa.Effects != null)
                pa.Effects.Ground(dBindings);
            else if (pa.Observe != null)
                pa.Observe.Ground(dBindings);
            string sName = pa.Name;
            foreach (Parameter p in pa.Parameters)
                sName += "_" + dBindings[p.Name].Name;
            Action aGrounded = new Action(sName);
            aGrounded.Preconditions = fGroundedPreconditions;
            if (pa.Effects != null)
                aGrounded.SetEffects(pa.Effects.Ground(dBindings));
            if (pa.Observe != null)
                aGrounded.Observe = pa.Observe.Ground(dBindings);
            return aGrounded;
        }

        private Dictionary<string, Constant> GetBindings(ParametrizedAction pa, string[] asAction)
        {
            if (pa.Parameters.Count > asAction.Length - 1) // last parameter can be the tag of a KW action
                return null;
            Dictionary<string, Constant> dBindings = new Dictionary<string, Constant>();
            for (int iParameter = 0; iParameter < pa.Parameters.Count; iParameter++)
            {
                dBindings[pa.Parameters[iParameter].Name] = new Constant(pa.Parameters[iParameter].Type, asAction[iParameter + 1]);
            }
            return dBindings;
        }
    }
}

