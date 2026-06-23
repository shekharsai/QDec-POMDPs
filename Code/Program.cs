using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System.IO;
using System.Threading;
using UCLouvain.BDDSharp;

namespace CPOR_MA
{
    class Program
    {
        public static string BASE_PATH = @"C:\Users\shekhar\Shashank\PC\Downloads\SDR\offline";
        
        public static string Path;
        public static string childDomainFolder = "";
        private static int sBacktrackNumber = 0;
        private static int sRandomBacktrackNumber = 0;
        private static string aStaticBasePath = "";
        private static Problem origProblem;
        private static bool aSignalingMacro = false;

        private static bool bRandomBacktrackFPS = false;
        private static bool bRandomBacktrackFP = false;

        private static HashSet<Action> publicActions = null;
        private static HashSet<Action> privateActions = null;
        private static HashSet<Predicate> publicPredicates = null;
        private static HashSet<Predicate> privatePredicates = null;
        private static Dictionary<Constant, ConditionalPlanTreeNode> lBalancedConditionalPlanTreeNodes = null;

        public static CPORMain pCPORMainObject = null;
        public static HashSet<Constant> agentList = new HashSet<Constant>();
        public static int maxH = 0;
        public static int maxW = 0;
        public static Stopwatch stopWatch = null;

        public static Stopwatch stopWatch_team = null;

        public static int timeOut = 0;
        
        public static string pathToDeletemacroDomain = null;
        public static void Main(string[] args)
        {   
            StageTwoPlanPlusProblem stageTwoPlanPlusProblem;
            pCPORMainObject = new CPORMain();

            // old benchmark paths
            // string sBenchmarkPath = BASE_PATH + @"\CLG_benchmarks\BP\";
            // string sBenchmarkPath = BASE_PATH + @"\CLG_benchmarks\TM\";
            // string sBenchmarkPath = BASE_PATH + @"\CLG_benchmarks\ROVER\"; 
            // string sBenchmarkPath = BASE_PATH + @"\CLG_benchmarks\HSD17JAN\";

            // journal version: rerun paths
            // check private / public action predicate list in all domains carefully adj, sam-agent, can (recall important issues)
            string sBenchmarkPath = BASE_PATH + @"\CLG_benchmarks\BPNew\";
            // string sBenchmarkPath = BASE_PATH + @"\clg_benchmarks\signaling1\Rovers\";

            DirectoryInfo d = new DirectoryInfo(sBenchmarkPath);
            DirectoryInfo[] allProblems = d.GetDirectories();

            Stopwatch stopwatch = new Stopwatch();
            double totalTimeTaken = 0;

            int count1 = 1;
            foreach (DirectoryInfo dr in allProblems)                
            {                
                for (int icps = 1; icps >= 1; icps--)
                {
                    stopwatch.Restart();
                    // count1 = count1 + 1;

                    //**** which problem instance to run ****//
                    string problemName = dr.Name;

                    //*** NOTE: "multiAgentTeamPlan" must be enabled when signaling is performed ***//            
                    bool multiAgentTeamPlan = false;
                    bool icaps2019 = false;
                    bool aaai21 = false;
                    bool jair21 = false;

                    bool useAbstraction = false;
                    /*if (count1 > 3)
                        useAbstraction = false;*/
                    //*******************************************************************************//
                    //**** set all the flags! ****//
                    if (icps == 0)
                        multiAgentTeamPlan = false;
                    if (icps == 0)
                        icaps2019 = true;
                        // jair21 = true;

                    if (icps == 1)
                        multiAgentTeamPlan = true;
                    if (icps == 1)
                        jair21 = true;
                        // icaps2019 = true;

                    if (icps == 2)
                        multiAgentTeamPlan = true;
                    if (icps == 2)
                        // icaps2019 = true;
                        aaai21 = true;

                    bRandomBacktrackFPS = false;
                    bRandomBacktrackFP = false;

                    aSignalingMacro = false;

                    //**** flags settings done! ****//
                    //******************************************************************************//
                    Dictionary<string, Dictionary<int, float[]>> samplingResultsQDecFPS = new Dictionary<string, Dictionary<int, float[]>>();
                    Dictionary<int, float[]> resultsPerIteration = new Dictionary<int, float[]>();
                    int howManyTimesDoWeRandomlySelectTheInitialState = 1;

                    for (int itrSampling = 0; itrSampling < howManyTimesDoWeRandomlySelectTheInitialState; itrSampling++)
                    {
                        stopWatch = new Stopwatch();
                        stopWatch_team = new Stopwatch();
                        int randomnessCount = new Random().Next(1000);
                        int countRandomCPORCallWithoutAddingConstToTheOriginalProblem = 0;
                        float[] impStatistics = new float[4];
                        bool nextIteration = false;

                        DateTime start = DateTime.Now; TimeSpan timeDiff;
                        stopWatch.Start();
                        sBacktrackNumber = 0; maxH = 0; maxW = 0;

                        /** set time out **/
                        timeOut = 600;

                    Reexecute:
                        Console.WriteLine("\n\nCurrently iteration number " + (itrSampling + 1) + " is going on.");
                        Console.WriteLine("The overall time-lapse in this iteration is: " + (stopWatch.Elapsed.Seconds + stopWatch.Elapsed.Minutes * 60) + " seconds.");
                        Console.WriteLine("The time limit is: " + timeOut + " seconds.");

                        lBalancedConditionalPlanTreeNodes = new Dictionary<Constant, ConditionalPlanTreeNode>();

                        if ((stopWatch.Elapsed.Seconds + stopWatch.Elapsed.Minutes * 60) >= timeOut)
                        {
                            Console.WriteLine("(Program.cs) Time Out!!");
                            Console.WriteLine("The time limit is " + timeOut);
                            continue;
                        }

                        DateTime lastIteration = DateTime.Now;

                        Path = BASE_PATH + @"\PDDL\";
                        Boolean ifProjectionApproach = true;

                        string[] asBenchmarks = null;

                        if (sBacktrackNumber == 0 && sRandomBacktrackNumber == 0)
                        {
                            asBenchmarks = new string[] { problemName };
                            aStaticBasePath = sBenchmarkPath + asBenchmarks[0] + "\\" + asBenchmarks[0];
                            pathToDeletemacroDomain = sBenchmarkPath + asBenchmarks[0];
                        }
                        else if (sBacktrackNumber > 0)
                        {
                            asBenchmarks = new string[] { problemName + "\\" + problemName + (sBacktrackNumber - 1) };
                        }
                        else if (sRandomBacktrackNumber > 0)
                        {
                            asBenchmarks = new string[] { problemName };
                            aStaticBasePath = sBenchmarkPath + asBenchmarks[0] + "\\" + asBenchmarks[0];
                            pathToDeletemacroDomain = sBenchmarkPath + asBenchmarks[0];
                        }

                        /** Save each compressed tree for which the dedicated agent has failed to plan. **/
                        Dictionary<Constant, ConditionalPlanTreeNode> agentFailedPlanTrees = new Dictionary<Constant, ConditionalPlanTreeNode>();

                        Problem problemCopy = null;
                        DateTime eachItrStart = DateTime.Now;

                        /** A call to CPOR (the underlying planner of QDec-FP/S) **/
                        Console.WriteLine("\nSolving the current team problem - " + problemName);

                        pCPORMainObject.aSignalingMacro = aSignalingMacro;
                        pCPORMainObject.sBacktrackNumberForMacro = sBacktrackNumber;
                
                        /** new sets of variables only for abstraction **/
                        pCPORMainObject.privateActions = privateActions;
                        pCPORMainObject.privatePredicates = privatePredicates;
                        pCPORMainObject.publicActions = publicActions;
                        pCPORMainObject.publicPredicates = publicPredicates;
                        pCPORMainObject.agentList = agentList;
                        stageTwoPlanPlusProblem = pCPORMainObject.cpormain(sBenchmarkPath, asBenchmarks, randomnessCount, multiAgentTeamPlan, timeOut, stopWatch, useAbstraction);


                        /*continue;*/

                        /** Print the current team plan - under those assumptions. **/
                        Console.WriteLine("\nThe original plan tree!\n");

                        stopwatch.Stop();
                        totalTimeTaken += stopwatch.ElapsedMilliseconds;

                        StringBuilder sb = new StringBuilder();
                        ProjectionOfSATree.RecPrint(stageTwoPlanPlusProblem.conditionalPlanTreeNode, 0, "", ref sb);
                        Console.Write(sb);
                        Console.WriteLine();
                        Console.WriteLine("Team plan width = " + ProjectionOfSATree.GetTheNumbeofLeaves(stageTwoPlanPlusProblem.conditionalPlanTreeNode));
                        Console.WriteLine("Team plan height = " + ProjectionOfSATree.GetDepthOfTree(stageTwoPlanPlusProblem.conditionalPlanTreeNode));


                        // Console.WriteLine("time " + (DateTime.Now - lastIteration)); 
                        // Environment.Exit(0);

                        // when CPOR fails to find a legal team-plan, run CPOR again
                        if (stageTwoPlanPlusProblem.conditionalPlanTreeNode == null)
                        {
                            if (countRandomCPORCallWithoutAddingConstToTheOriginalProblem++ >= 10)
                            {
                                timeDiff = DateTime.Now - start;
                                Console.WriteLine("Did not find a team solution even after 10 calls to CPOR");
                                Console.WriteLine("\nOverall time taken: " + timeDiff.TotalMilliseconds);
                                continue; // leads to the next iteration
                            }
                            goto Reexecute;
                        }

                        Problem problem = stageTwoPlanPlusProblem.problem;

                        /** To ensure backtrack, a copy of the original problem is solved **/
                        problemCopy = problem;
                        if (sBacktrackNumber == 0)
                        {
                            GenerateNecessaryPrivatePublicInfo(problem);
                        }

                        if (ifProjectionApproach)
                        {
                            ProjectionOfSATree projectionOfSATree = new ProjectionOfSATree(origProblem);
                            List<string> succ = new List<string>();

                            foreach (Constant agt in agentList)
                            {
                                /* To handle signaling agents */
                                bool transmitterAgent = false;
                                bool receiverAgent = false;

                                ConditionalPlanTreeNode
                                    shrunkAgtPlanTree = ProjectionOfSATree.DoAgentWiseProjection(privateActions,
                                    publicActions, stageTwoPlanPlusProblem.conditionalPlanTreeNode, agt, agentList, ref transmitterAgent, ref receiverAgent);

                                /** Required to write each agent's domain and problem files. **/
                                if (!(shrunkAgtPlanTree.ToString().Equals(")goal") && (shrunkAgtPlanTree.Action == null)))
                                {
                                    childDomainFolder = sBenchmarkPath + asBenchmarks[0];
                                    CompiletoSANew compilationToSingleAgent = new CompiletoSANew(agt, origProblem);

                                    CompiletoSANew.
                                        GenerateAgentWiseAugmentedDomains(
                                        origProblem, agt, agentList, shrunkAgtPlanTree, publicActions, publicPredicates, childDomainFolder);

                                    CompiletoSANew.
                                        generateAgentWiseAugmentedProblem(
                                        origProblem, shrunkAgtPlanTree, agt, publicActions, childDomainFolder, transmitterAgent, receiverAgent, aSignalingMacro);

                                    Console.WriteLine("\nPlanning for " + agt);
                                    Console.WriteLine("Please wait!");

                                    // if(agt.ToString().Equals("a2") || agt.ToString().Equals("a3"))
                                    // Thread.Sleep(40000);

                                    /** One call to CPOR for each agent **/
                                    string str = agt.ToString() + "-";
                                    str += RunFactoredIndividualDomain(childDomainFolder, agt, sBacktrackNumber);
                                    succ.Add(str);

                                    if (str.Contains("failure"))
                                    {
                                        agentFailedPlanTrees[agt] = shrunkAgtPlanTree;
                                    }

                                    if (str.ToString().Contains("timeout"))
                                    {
                                        nextIteration = true;
                                        break;
                                    }
                                }
                                else
                                {
                                    Console.WriteLine("An empty plan for " + agt.ToString());
                                    string str = agt.ToString() + "-";
                                    str += "success";
                                    succ.Add(str);
                                }
                            }
                            foreach (String str in succ)
                            {
                                if (!str.Contains("success"))
                                {
                                    Console.WriteLine("\n" + str.Split('-')[0] + " has failed to plan!\n");
                                }
                            }
                        }

                        if (nextIteration)
                        {
                            Console.WriteLine("(TimeOut) terminating the current execution, start the next iteration");
                            continue;
                        }

                        timeDiff = DateTime.Now - lastIteration;
                        Console.WriteLine("\nOverall time taken (for the last execution): " + timeDiff.TotalMilliseconds);
                        Console.WriteLine("The last backtrack was: " + sBacktrackNumber);


                        // need to discuss it with Nitsan
                        if (agentFailedPlanTrees.Count > 0 && !bRandomBacktrackFPS && !bRandomBacktrackFP)
                        {
                            CompileNewTPBeforeBT update = new CompileNewTPBeforeBT(agentFailedPlanTrees, timeOut, stopWatch);
                            CompileNewTPBeforeBT.UpdateTPWhileBacktrack(ref pCPORMainObject,
                                origProblem, problemCopy, aStaticBasePath, sBenchmarkPath, asBenchmarks, sBacktrackNumber, multiAgentTeamPlan, icaps2019, aaai21, jair21);
                            sBacktrackNumber++;
                            goto Reexecute;
                        }
                        else if (agentFailedPlanTrees.Count > 0 && bRandomBacktrackFP && bRandomBacktrackFPS)
                        {
                            Console.WriteLine("Random: samples random states, and rerun!");
                            sRandomBacktrackNumber++;
                            goto Reexecute;
                        }
                        else if (agentFailedPlanTrees.Count > 0 && !bRandomBacktrackFP && bRandomBacktrackFPS) 
                        {   
                            // only suitable for QDec-FP
                            CompileNewTPBeforeBT update = new CompileNewTPBeforeBT(agentFailedPlanTrees, timeOut, stopWatch);
                            CompileNewTPBeforeBT.UpdateTPWhileBacktrack(ref pCPORMainObject,
                                origProblem, problemCopy, aStaticBasePath, sBenchmarkPath, asBenchmarks, sBacktrackNumber, multiAgentTeamPlan, icaps2019, aaai21, jair21);
                            sBacktrackNumber++;
                            goto Reexecute;
                        }

                        Console.WriteLine("Maximum width = " + maxW);
                        Console.WriteLine("Maximum height = " + maxH);


                        /** Balance the solution trees obtained, it's conceptually not required now. **/
                        Console.WriteLine("\n\nNow transforming projected trees to solution trees!");
                        BalanceTheTreesOfTheAgents balanceTreesOfAgents =
                            new BalanceTheTreesOfTheAgents(agentList, lBalancedConditionalPlanTreeNodes, origProblem, privateActions, publicActions, stageTwoPlanPlusProblem);
                        bool balanced = BalanceTheTreesOfTheAgents.CanIndependentTreesBeBalancedForJAs();
                        if (balanced)
                            Console.WriteLine("Valid joint solution tree found!");

                        // Console.WriteLine("\nTrees are balanced now (" + balanced.ToString().ToUpper() +")");
                        Console.WriteLine("\nTotal number of backtracks: " + (sBacktrackNumber + sRandomBacktrackNumber));
                        timeDiff = DateTime.Now - start;
                        Console.WriteLine("\nOverall time taken (including all the backtracks): " + timeDiff.TotalMilliseconds);
                        Console.WriteLine();

                        // revert back to the original domain 
                        if (aSignalingMacro && false) 
                        {
                            string sPath = pathToDeletemacroDomain + @"\";
                            string originalDomain = "d.pddl";
                            if (File.Exists(sPath + originalDomain))
                                File.Delete(sPath + originalDomain);
                            FileInfo oldOriginalDomainFile = new FileInfo(sPath + "d-without-signaling.pddl");
                            oldOriginalDomainFile.MoveTo(sPath + originalDomain);
                        }

                        // store all the important statistics
                        impStatistics[0] = maxW;
                        impStatistics[1] = maxH;
                        impStatistics[2] = (float)timeDiff.TotalMilliseconds;
                        impStatistics[3] = sBacktrackNumber + sRandomBacktrackNumber;
                        resultsPerIteration[itrSampling] = impStatistics;
                        // resultsAllIterations.Add(resultsPerIteration);
                    }

                    /** not in use currently **/
                    samplingResultsQDecFPS[problemName] = resultsPerIteration;
                    if (jair21)
                        CreateExcelSheet(resultsPerIteration, sBenchmarkPath + problemName + "\\" + problemName + count1.ToString() +"-FPS-jair21.csv");
                    else if (aaai21)
                        CreateExcelSheet(resultsPerIteration, sBenchmarkPath + problemName + "\\" + problemName + count1.ToString() + "-FPS.csv");
                    else
                        CreateExcelSheet(resultsPerIteration, sBenchmarkPath + problemName + "\\" + problemName + count1.ToString() +  "-FP.csv");

                    /** statistics **/
                    Console.WriteLine("Compute the average statistics after " + howManyTimesDoWeRandomlySelectTheInitialState + " iterations: ");
                    float maxWidth = 0;
                    float maxHeight = 0;
                    float totalTime = 0;
                    float nBacktrack = 0;
                    int count = 0;

                    foreach (int key in resultsPerIteration.Keys)
                    {
                        /// need to check this condition
                        if (resultsPerIteration[key][0] == 0 && resultsPerIteration[key][1] == 0)
                            continue;

                        count++;
                        maxWidth += resultsPerIteration[key][0];
                        maxHeight += resultsPerIteration[key][1];
                        totalTime += resultsPerIteration[key][2];
                        nBacktrack += resultsPerIteration[key][3];
                    }

                    //Console.WriteLine("Average max width = " + maxWidth / count);
                    //Console.WriteLine("Average max height = " + maxHeight / count);
                    //Console.WriteLine("Average time = " + totalTime / count);
                    //Console.WriteLine("Average #backtracks = " + nBacktrack / count);
                    //Environment.Exit(0);

                    Console.WriteLine("total time " + totalTimeTaken / 3);
                }
            }
        }
        public static void CreateExcelSheet(Dictionary<int, float[]> statAfterNiterations, string path)
        {            
            StringBuilder sb = new StringBuilder();            
            String csv = String.Join(",", statAfterNiterations.Select(d => d.Key));
            sb.Append(csv + Environment.NewLine);

            //We will take every string by element position
            String csv1 = String.Join(",",
                   statAfterNiterations.Select(d => string.Join(",", d.Value.First())));
            sb.Append(csv1 + Environment.NewLine);

            String csv2 = String.Join(",",
                   statAfterNiterations.Select(d => string.Join(",", d.Value.Skip(1).Take(1))));
            sb.Append(csv2 + Environment.NewLine);

            String csv3 = String.Join(",",
                 statAfterNiterations.Select(d => string.Join(",", d.Value.Skip(2).Take(1))));            
            sb.Append(csv3 + Environment.NewLine);

            String csv4 = String.Join(",",
                 statAfterNiterations.Select(d => string.Join(",", d.Value.Skip(3).Take(1))));
            sb.Append(csv4);

            //Write the file
            System.IO.File.WriteAllText(path, sb.ToString());
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="childDomainFolder"></param>
        /// <param name="agt"></param>
        /// <param name="sBacktrackNumber"></param>
        /// <returns></returns>
        public static string RunFactoredIndividualDomain(String childDomainFolder, Constant agt, int sBacktrackNumber)
        {
            string sBenchmarkPath = childDomainFolder + "\\";
            Path = BASE_PATH + @"\PDDL\";
            pCPORMainObject = new CPORMain();

            /// The original problem and domain
            string[] asBenchmarks = { agt.ToString() };

            // Thread.Sleep(60000);

            /// Single agent plan tree received for original problem using cpor   
            bool multiAgentTeamPlan = false;
            StageTwoPlanPlusProblem childPlanTree 
                = pCPORMainObject.cpormain(sBenchmarkPath, asBenchmarks, sBacktrackNumber, multiAgentTeamPlan, timeOut, stopWatch, false);
            
            /*
            Console.WriteLine("\nPlan tree for " + agt.ToString());
            StringBuilder sb = new StringBuilder();
            ProjectionOfSATree.RecPrint(childPlanTree.conditionalPlanTreeNode, 0, "", ref sb);
            Console.Write(sb);
            */

            int size = ProjectionOfSATree.GetTheNumbeofLeaves(childPlanTree.conditionalPlanTreeNode);
            int depth = ProjectionOfSATree.GetDepthOfTree(childPlanTree.conditionalPlanTreeNode);            

            Console.WriteLine("\nWidth: " + size);
            Console.WriteLine("Height (before balancing): " + depth);

            if (size > maxW)
                maxW = size;
            if (depth > maxH)
                maxH = depth;

            if (childPlanTree.timeOut)
                return "timeout";

            if (childPlanTree.conditionalPlanTreeNode == null)
            {
                return "failure-" + size + "-" + depth;
            }
            else
            {
                lBalancedConditionalPlanTreeNodes.Add(agt, childPlanTree.conditionalPlanTreeNode);
                return "success-" + size + "-" + depth;
            }
        }
        
        /// <summary>
        /// Generates lists of public and private actions and predicates
        /// </summary>
        /// <param name="problem"></param>
        public static void GenerateNecessaryPrivatePublicInfo(Problem problem)
        {
            if (sBacktrackNumber == 0)
            {
                if (problem.Domain.Name.ToLower().Equals("rover"))
                {
                    origProblem = problem;
                    PrivatePublicInfoExtraction_Rovers infoExtraction = new PrivatePublicInfoExtraction_Rovers(origProblem.Domain);
                    publicPredicates = PrivatePublicInfoExtraction_Rovers.GetAllPublicPredicates();
                    privatePredicates = PrivatePublicInfoExtraction_Rovers.GetAllPrivatePredicates();
                    publicActions = PrivatePublicInfoExtraction_Rovers.GetAllPublicActions();
                    privateActions = PrivatePublicInfoExtraction_Rovers.GetAllPrivateActions();

                }
                else
                {
                    origProblem = problem;
                    PrivatePublicInfoExtraction infoExtraction = new PrivatePublicInfoExtraction(origProblem.Domain);
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
        }
    }
}


/**
 * Some ugly FIXES in the code to allow signalling.
 * 
 * 1. Remember that all agents have certainty about the bulb's status in their 
 * initial state. Fix is that manually add uncertainty about bulbs' status
 * 
 * 2. Now current fixes allow us to have effects of an observation action. But since the code is based on 
 * ICAPS'19 approach, currently I have disabled the effect of the observation action and manually passed 
 * '(phase n0)' to maintain consistency. 
 * A signal action will disable it anyway. So no other action would be allowed in the middle.
 * 
 * 3. An action name should not match or (substring) of any other action names.
 * 
 * 4. If there is only signal action without observe - remove (not (phase n0)) from its effect
 * 
 * 5. Whatever is the domain, make sure that its public and private iformation is 
 * added carefully, by hand.
 * 
 * 6. I cannot backtrack with current format of signalling. Why? Explain 'B3TX2-2-working-9' when multi-obs is 
 * allowed, this is not solvable if multi-obs is not allowed signalling. I have a proper explanation.
 *  
 * **/
