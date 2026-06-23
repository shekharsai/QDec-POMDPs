using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System.IO;
using System.Threading;

namespace CPOR_MA
{
    class BranchNode
    {
        public Action action;
        public String childType;
    }

    class CompileNewTPBeforeBT
    {
        public static Dictionary<Constant, ConditionalPlanTreeNode> dictAgentPlanTreeFailure;
        public static List<string> pairOfCommitObsProp  = new List<string>();
        public static Problem augProblem;
        public static Problem originalProblem;
        public static ConditionalPlanTreeNode failedTree;
        public static String propCommitASubtreeUnderTheObservation = "";
        public static String propForceObsASubtreeUnderTheObservation = "";
        public static List<String> listOfCommitsInThisBranch = new List<string>();
        public static bool forcingBranch = false;
        public static List<String> listOfExplicitPredicates = new List<string>();
        public static Dictionary<String, List<StringBuilder>> dListOfExtraPrecOfAction;
        public static int leftTreeSize = 0, rightTreeSize = 0;
        public static string allAgents = "-";
        public static int sameCounter = -1;
        public static CPORMain cPOR_Main = null;
        public static bool multiAgentTeamPlan;

        public static Stopwatch stopWatch = null;
        public static int timeOut = 0;

        public CompileNewTPBeforeBT(Dictionary<Constant, ConditionalPlanTreeNode> dict, int to, Stopwatch sw)
        {
            dictAgentPlanTreeFailure = dict;
            stopWatch = sw;
            timeOut = to;
        }
        
        private static bool PreconditionHolds (Constant agent, int counter, string aStaticBasePath, string benchmarkPath, Action obsAction)
        {
            String newProbLocation = "";            
            if (counter > 0)
            {
                newProbLocation = aStaticBasePath + (counter - 1) + "\\";
            }
            else
            {
                String[] local = aStaticBasePath.Split('\\');
                newProbLocation = benchmarkPath + local[local.Length - 1] + "\\";
            }

            // CPORMain cPOR_Main = new CPORMain();
            string[] asBenchmarks; asBenchmarks = new String[] { agent.ToString() };

            // Update the problem goal in that agents description file            
            StreamReader sr = new StreamReader(newProbLocation + agent + "\\" + "p.pddl");
            string line; line = sr.ReadLine(); string readCompGoal = ""; bool localFlag = false;
            while (line != null)
            {
                if (line.StartsWith("(:init"))
                    break;
                if (line.StartsWith("(:goal") || localFlag)
                {
                    readCompGoal = readCompGoal + line; localFlag = true;
                }                
                line = sr.ReadLine();
            }
            sr.Close();

            bool xx = true;
            // Update the domain file with an extra action in that agents description file
            StreamReader srD = new StreamReader(newProbLocation + agent + "\\" + "d.pddl");
            string lineD; lineD = srD.ReadLine(); localFlag = false;
            string addNewAction = ""; string oldAction = "";
            string addNewPredicate = ""; string oldPredicate = "";
            if (sameCounter != counter)
            {                
                while (lineD != null)
                {
                    xx = false;
                    if (lineD.StartsWith("(:predicates"))
                    {
                        oldPredicate = lineD;
                        addNewPredicate = addNewPredicate + lineD + "\n\t" + "(p-dummy-agnt)";
                    }
                    if (lineD.StartsWith("(:action"))
                    {
                        addNewAction = addNewAction +
                            "(:action dummyPrivateAction \n" +
                            "\t:effect (and (p-dummy-agnt))" +
                            "\n)" + "\n" +
                            lineD;
                        oldAction = lineD;
                        break;
                    }
                    lineD = srD.ReadLine();
                }                
            }
            srD.Close();

            //debug point
            if (xx)
                Console.Write(" ");

            // Make new refined goal conditions: // Poorly done with a temporary fix
            // shashank -- sometimes it sets (and (p-dummy-agnt)(not (= a2 a2 ))(not (= p1-2 p1-1 ))(not (= b2 b2 ))(not (= n0 n0 ))(agent-at a2 p1-2 )(can-observe-b a2 b2 )(phase n0 )(= n0 n0 )))
            String newGoal = "(:goal ";
            foreach (Action act in originalProblem.Domain.Actions)
            {
                if(obsAction.Name.Contains(act.Name))
                {
                    newGoal = newGoal + "(and (p-dummy-agnt)";
                    Formula formula = obsAction.Preconditions;
                    foreach (Predicate p in formula.GetAllPredicates())
                    {
                        Formula localForm = act.Preconditions; bool flag = false;
                        foreach(Predicate pLoc in localForm.GetAllPredicates())
                        {
                            if(pLoc.Name.Equals(p.Name))
                            {
                                flag = true; break;
                            }
                        }
                        if (!flag) continue;
                        string pred = "";
                        if (p.Negation)
                            pred = pred + "(not (";
                        else
                            pred = pred + "(";
                        pred = pred + p.Name + " ";

                        if (p.GetType().ToString().Contains("GroundedPredicate"))
                        {
                            GroundedPredicate pp = (GroundedPredicate)p;
                            foreach (Argument arg in pp.Constants)
                            {
                                if (arg.Type.ToString().Contains("agent"))
                                    pred = pred + agent + " ";
                                else
                                    pred = pred + arg + " ";
                            }
                        }
                        if (p.Negation) pred = pred + "))"; else pred = pred + ")";
                        newGoal = newGoal + pred.ToString();
                    }
                    newGoal = newGoal + "))";
                }
            }

            if (counter > 0)
            {
                string readAll = File.ReadAllText(newProbLocation + "\\" + agent + "\\p.pddl");
                readAll = readAll.Replace(readCompGoal, newGoal);
                File.WriteAllText(newProbLocation + "\\" + agent + "\\p.pddl", readAll);

                if (sameCounter != counter)
                {
                    readAll = File.ReadAllText(newProbLocation + "\\" + agent + "\\d.pddl");
                    readAll = readAll.Replace(oldAction, addNewAction);
                    readAll = readAll.Replace(oldPredicate, addNewPredicate);
                    File.WriteAllText(newProbLocation + "\\" + agent + "\\d.pddl", readAll);
                }                
            }
            else
            {
                string readAll = File.ReadAllText(newProbLocation + agent + "\\p.pddl");
                readAll = readAll.Replace(readCompGoal, newGoal);
                File.WriteAllText(newProbLocation + agent + "\\p.pddl", readAll);
                               
                if (sameCounter != counter)
                {
                    readAll = File.ReadAllText(newProbLocation + agent + "\\d.pddl");
                    readAll = readAll.Replace(oldAction, addNewAction);
                    readAll = readAll.Replace(oldPredicate, addNewPredicate);
                    File.WriteAllText(newProbLocation + agent + "\\d.pddl", readAll);
                }                
            }
            if (sameCounter != counter)
            {
                sameCounter = counter;
            }

            StageTwoPlanPlusProblem stageTwoPlanPlusProblem = cPOR_Main.cpormain(newProbLocation, asBenchmarks, 0, multiAgentTeamPlan, timeOut, stopWatch, false);
            if (stageTwoPlanPlusProblem.conditionalPlanTreeNode == null)
                return false;
            return true;
        }
        
        /// <summary>
        /// Finds out if there is a non-observation action appearing under an observation that cannot 
        /// be made by the agent. The action must not appear in all the branches of that subtree rooted 
        /// under that observation action.
        /// </summary>
        /// <param name="agent"> The agent failed to transform its projected tree to a solution tree</param>
        /// <param name="count"></param>
        /// <param name="aStaticBasePath"></param>
        /// <param name="benchmarkPath"></param>
        /// <param name="failedPlan">A subtree</param>
        /// <param name="indc">Keeps track of the left and right subtrees</param>
        /// <returns>A pair of observation action and the non-observation action </returns>
        private static List<Action> ProblematicPairOfActions(Constant agent, int count, 
            string aStaticBasePath, string benchmarkPath, ConditionalPlanTreeNode failedPlan, int indc, bool icaps19, bool aaai21, bool jair21)
        {            
            int indicatorVariable = indc;
            List<Action> actionsInFirstBranch = new List<Action>();
            List<Action> actionsInSecondBranch = new List<Action>();            
            if (failedPlan == null)
            {
                return null;
            }
            if (failedPlan.Action == null)
            {                
                return new List<Action>();
            }
            if(failedPlan.SingleChild != null)
            {
                if (indc == 1)
                {
                    List<Action> lSingleChild = new List<Action>();
                    lSingleChild = 
                        ProblematicPairOfActions(
                            agent, count, aStaticBasePath, benchmarkPath, failedPlan.SingleChild, 1, icaps19, aaai21, jair21);
                    if(lSingleChild.Count > 0)
                        if (lSingleChild.ElementAt(0).Name.ToString().Contains("observe-"))
                            return lSingleChild;
                    actionsInFirstBranch.AddRange(lSingleChild);
                    actionsInFirstBranch.Add(failedPlan.Action);
                    return actionsInFirstBranch;
                }
                else if (indc == 2)
                {
                    List<Action> lSingleChild = new List<Action>();
                    lSingleChild = 
                        ProblematicPairOfActions(
                            agent, count, aStaticBasePath, benchmarkPath, failedPlan.SingleChild, 2, icaps19, aaai21, jair21);
                    if (lSingleChild.Count > 0)
                        if (lSingleChild.ElementAt(0).Name.ToString().Contains("observe-"))
                            return lSingleChild;
                    actionsInSecondBranch.AddRange(lSingleChild);
                    actionsInSecondBranch.Add(failedPlan.Action);
                    return actionsInSecondBranch;
                }
                else
                {                    
                    return ProblematicPairOfActions(
                        agent, count, aStaticBasePath, benchmarkPath, failedPlan.SingleChild, 0, icaps19, aaai21, jair21);
                }
            }
            if (failedPlan.FalseObservationChild != null)
            {
                List<Action> lLeftChild = ProblematicPairOfActions (
                    agent, count, aStaticBasePath, benchmarkPath, failedPlan.FalseObservationChild, 1, icaps19, aaai21, jair21);
                if(lLeftChild.Count > 0)
                    if (lLeftChild.ElementAt(0).Name.ToString().Contains("observe-"))
                        return lLeftChild;
                actionsInFirstBranch.AddRange(lLeftChild);
            }
            if(failedPlan.TrueObservationChild != null)
            {
                List<Action> lRightChild = ProblematicPairOfActions (
                    agent, count, aStaticBasePath, benchmarkPath, failedPlan.TrueObservationChild, 2, icaps19, aaai21, jair21);
                if(lRightChild.Count > 0)
                    if (lRightChild.ElementAt(0).Name.ToString().Contains("observe-"))
                        return lRightChild;
                actionsInSecondBranch.AddRange(lRightChild);
            }
            if (PreconditionHolds (agent, count, aStaticBasePath, benchmarkPath, failedPlan.Action))
            {
                actionsInFirstBranch.AddRange(actionsInSecondBranch);
                if(aaai21 || icaps19)
                    return new List<Action>();
                else
                    return actionsInFirstBranch;
            }
            else if(failedPlan.Action.Name.Contains("phase-soil") || failedPlan.Action.Name.Contains("phase-box") || failedPlan.Action.Name.Contains("phase-light"))
            {
                if (aaai21 || icaps19)
                    return new List<Action>();
                else
                    throw new Exception("NotImplemented Error!");
            }
            else
            {  
                List<Action> listOfAct = new List<Action>();
                foreach (Action a1 in actionsInFirstBranch)
                {
                    if (a1.Name.Contains("obs-") || a1.Name.Contains("commit-"))
                        continue;
                    bool flag = false;
                    foreach (Action a2 in actionsInSecondBranch)
                    {
                        if (CompareTwoActions(a1,a2))
                        {
                            flag = true; break;
                        }
                    }
                    if (!flag)
                    {
                        listOfAct.Add(failedPlan.Action);
                        listOfAct.Add(a1);
                        return listOfAct;
                    }
                }
                foreach (Action a1 in actionsInSecondBranch)
                {
                    if (a1.Name.Contains("obs-") || a1.Name.Contains("commit-"))
                        continue;
                    bool flag = false;
                    foreach (Action a2 in actionsInFirstBranch)
                    {
                        if (CompareTwoActions(a1,a2))
                        {
                            flag = true; break;
                        }
                    }
                    if (!flag)
                    {
                        listOfAct.Add(failedPlan.Action);
                        listOfAct.Add(a1);
                        return listOfAct;
                    }
                }

                /// We need to restict the whole sub-tree, either left or right
                failedTree = failedPlan;
                leftTreeSize = actionsInFirstBranch.Count; rightTreeSize = actionsInSecondBranch.Count;

                /// We had to return an action list: a dummy list is returned
                List<Action> actList1 = new List<Action>();
                actList1.Add(new Action("observe-force-subtree"));
                return actList1;
            }
        }

        private static bool CompareTwoActions(Action act, Action actLoc)
        {
            string[] name = act.Name.Split('_');
            string[] nameLocal = actLoc.Name.Split('_');
            if (name.Length != nameLocal.Length)
                return false;
            else
                for (int s = 1; s < name.Length; s++)
                    if (!name[s].Equals(nameLocal[s]))
                        return false;
            return true;
        }

        public static void UpdateTPWhileBacktrack(
            ref CPORMain pCPORMain, Problem origProb, Problem problem, 
            string aStaticBasePath, string aBenchmarkPath, string[] sBenchmark, int counter, bool multiAgentTeam, bool icaps2019, bool aaai21, bool jair21)
        {
            originalProblem = origProb;
            cPOR_Main = pCPORMain;
            multiAgentTeamPlan = false;

            foreach (Constant agt in dictAgentPlanTreeFailure.Keys) 
            {                
                ConditionalPlanTreeNode planFailed = dictAgentPlanTreeFailure[agt];
                bool change = true;
                // change = false;
                UpdateTeamDomainDescription(problem, agt, planFailed, aStaticBasePath, aBenchmarkPath, sBenchmark, counter, ref change, icaps2019, aaai21, jair21);
                if (!change)
                {
                    Console.WriteLine("Copy and run the same problem with a random seed!");                    
                    RepeatSameDomainDescription(problem, aStaticBasePath, aBenchmarkPath, sBenchmark, counter);
                    break;
                }
                UpdateTeamProblemDescription(problem, agt, planFailed, aStaticBasePath, aBenchmarkPath, sBenchmark, counter);                
                break; // one agent at a time - lazy approach
            }
        }

        private static void RepeatSameDomainDescription(Problem problem, string aStaticBasePath, string aBenchmarkPath, string[] sBenchmark, int counter)
        {            
            String deleteDirectoryPath = aStaticBasePath + counter + "\\";
            if (System.IO.Directory.Exists(deleteDirectoryPath))
            {
                System.IO.Directory.Delete(deleteDirectoryPath, true);
            }
            String directoryPath = aStaticBasePath + counter + "\\";            
            if (!System.IO.Directory.Exists(directoryPath))
            {
                System.IO.Directory.CreateDirectory(directoryPath);
            }

            String oldDirectoryPath = "";
            if (counter == 0)
            {
                oldDirectoryPath = aBenchmarkPath + sBenchmark[0] + "\\";
            }
            else
            {
                oldDirectoryPath = aStaticBasePath + (counter - 1) + "\\";
            }
            
            File.Copy(oldDirectoryPath + "d.pddl", directoryPath + "d.pddl", true);
            File.Copy(oldDirectoryPath + "p.pddl", directoryPath + "p.pddl", true);
        }

        private static void 
            UpdateTeamProblemDescription (Problem problem, Constant agent, ConditionalPlanTreeNode failedPlan, 
            string aStaticBasePath, string aBenchmarkPath, string[] sBenchmark, int counter)
        {
            augProblem = problem;
            String rProblemFilePath = aStaticBasePath + counter + "\\" + "p.pddl";
            string path = Path.Combine( rProblemFilePath );
            using( StreamWriter problemUpdate = File.CreateText( path ) )
            {
                problemUpdate.WriteLine("(define");
                problemUpdate.WriteLine("(problem " + problem.Name + ")");
                problemUpdate.WriteLine("(:domain " + problem.Domain.Name + ")");

                StringBuilder goal = new StringBuilder();
                goal.Append("(:goal \t(and ");
                Formula fGoal = problem.Goal;
                HashSet<Predicate> pList = fGoal.GetAllPredicates();
                foreach(Predicate p in pList)
                {
                    goal.AppendLine();
                    goal.Append("\t" + p);
                }
                goal.AppendLine();
                if (!forcingBranch)
                {
                    goal.Append("\t(not " + pairOfCommitObsProp[1] + ")");
                    goal.AppendLine();
                }
                else
                {
                    foreach(String str in listOfCommitsInThisBranch)
                    {
                        goal.Append("\t(not " + str + ")");
                        goal.AppendLine();
                    }
                }
                goal.Append("\t)");
                goal.AppendLine(); 
                goal.Append(")");                
                problemUpdate.WriteLine(goal);

                StringBuilder initState = new StringBuilder();
                initState.Append("(:init (and ");
                initState.AppendLine();
                initState.Append("\t(not " + pairOfCommitObsProp[0] + ")");
                initState.AppendLine();
                if (!forcingBranch)
                {
                    initState.Append("\t(not " + pairOfCommitObsProp[1] + ")");
                    initState.AppendLine();
                }
                else
                {
                    foreach (String str in listOfCommitsInThisBranch)
                    {
                        goal.Append("\t(not " + str + ")");
                        goal.AppendLine();
                    }
                }

                foreach(String str in listOfExplicitPredicates)
                {
                    string strg = str.Split(' ')[0];
                    // String strLoc = str.Replace("\t\r ", "").Replace(" ", "");                    
                    initState.Append("\t(not " + strg + " dd))");
                    initState.AppendLine();
                }
                foreach (GroundedPredicate f in problem.knownPredicates())
                {                    
                    initState.Append("\t" + f);
                    initState.AppendLine();
                }
               
                foreach (Formula f in problem.hiddenFormula())
                {                    
                    initState.Append("\t" + f);
                    initState.AppendLine();
                }
                
                initState.AppendLine();
                initState.Append(")");
                initState.AppendLine();
                initState.Append(")");
                initState.AppendLine();
                initState.Append(")");
                problemUpdate.WriteLine(initState);
            }
        }

        private static Random random = new Random();
        public static string RandomString (int length)
        {
            const string chars = "abcdefghijklmnopqrstuvwxyz0123456789";
            return new string (Enumerable.Repeat(chars, length).Select(s => s[random.Next(s.Length)] ).ToArray());
        }

        private static bool ShouldBeRemoved(List<BranchNode> bNodeList1, List<BranchNode> bNodeList2)
        {
            if (bNodeList1.Count != bNodeList2.Count)
            {
                return false;
            }
            int count = 0;
            for(int i=0; i<bNodeList1.Count; i++)
            {
                String[] name1 = bNodeList1[i].action.Name.Split('_');
                String[] name2 = bNodeList2[i].action.Name.Split('_');
                if (name1.Length != name2.Length)
                {
                    return false;
                }
                for (int k = 1; k < name1.Length; k++)
                {
                    if (!name1[k].Equals(name2[k]))
                    {
                        return false;
                    }
                }
                if (!bNodeList1[i].childType.Equals(bNodeList2[i].childType))
                {
                    count++;
                }
            }
            if (count == 1)
            {
                return true;
            }
            return false;
        }

        private static 
            HashSet<List<BranchNode>> SelectABranch(ConditionalPlanTreeNode node, ref HashSet<List<BranchNode>> listOfBranches)
        {
            HashSet<List<BranchNode>> listOfBranchesLeft = new HashSet<List<BranchNode>>();
            HashSet<List<BranchNode>> listOfBranchesRight = new HashSet<List<BranchNode>>();
            if (node == null)
            {
                return null;
            }
            if(node.SingleChild != null)
            {
                SelectABranch(node.SingleChild, ref listOfBranches);
            }
            if (node.FalseObservationChild != null)
            {
                SelectABranch(node.FalseObservationChild, ref listOfBranchesLeft);
            }
            if (node.TrueObservationChild != null)
            {
                SelectABranch(node.TrueObservationChild, ref listOfBranchesRight);
            }
            if (node.Action != null)
            {
                BranchNode branchNode = new BranchNode();
                branchNode.action = node.Action;
                branchNode.childType = node.childType;

                HashSet<List<BranchNode>> listOfBranchesUpdated = new HashSet<List<BranchNode>>();
                if (listOfBranchesLeft.Count == 0 && listOfBranchesRight.Count == 0)
                {
                    listOfBranchesUpdated = listOfBranches;
                }
                if (listOfBranchesLeft.Count == 0 || listOfBranchesRight.Count == 0)
                {
                    if(listOfBranchesLeft.Count > 0)
                        listOfBranchesUpdated = listOfBranchesLeft;
                    if (listOfBranchesRight.Count > 0)
                        listOfBranchesUpdated = listOfBranchesRight;
                }
                foreach (List<BranchNode> bNodeList1 in listOfBranchesLeft)
                {
                    foreach (List<BranchNode> bNodeList2 in listOfBranchesRight)
                    {
                        if (bNodeList1 == bNodeList2)
                            continue;
                        if (!ShouldBeRemoved(bNodeList1, bNodeList2))
                        {
                            if (!listOfBranchesUpdated.Contains(bNodeList1))
                                listOfBranchesUpdated.Add(bNodeList1);
                            if (!listOfBranchesUpdated.Contains(bNodeList2))
                                listOfBranchesUpdated.Add(bNodeList2);
                        }
                    }
                }

                HashSet<List<BranchNode>> listOfBranchesReturned = new HashSet<List<BranchNode>>();
                List<BranchNode> updateList;
                if(listOfBranchesUpdated.Count == 0)
                {
                    updateList = new List<BranchNode>();
                    updateList.Add(branchNode);
                    listOfBranchesReturned.Add(updateList);
                }
                else
                {
                    foreach (List<BranchNode> bNode in listOfBranchesUpdated)
                    {
                        updateList = new List<BranchNode>();
                        updateList.Add(branchNode);
                        updateList.AddRange(bNode);
                        listOfBranchesReturned.Add(updateList);
                    }
                }
                listOfBranches = listOfBranchesReturned;
            }
            return new HashSet<List<BranchNode>>();
        }

        private static void ForceThisBranch (List<BranchNode> branch, ref List<String> lOfExtraPredicates,
            ref Dictionary<String, List<StringBuilder>> listOfExtraPrecOfActionForSubTree, ref List<StringBuilder> updatedActions)
        {
            /** In this branch the first action will aways be an observation action while the last one would be for sure a 
             ** non-observation action **/            
            for(int i=0; i<branch.Count; i++)
            {
                if(!branch[i].action.Name.Contains("observe-"))
                {
                    listOfCommitsInThisBranch.Add("(c-p-st-" + 
                        branch[i].action.Name.ToString().Split('_')[1] + "-" + branch[i].action.Name.ToString().Split('_')[0] + " dd)");
                    lOfExtraPredicates.Add("(c-p-st-" +
                        branch[i].action.Name.ToString().Split('_')[1] + "-" + branch[i].action.Name.ToString().Split('_')[0] + " ?dd - dummy)");
                }
            }

            for (int i=0; i<branch.Count; i++)
            {
                BranchNode node = branch[i];
                Action curr = node.action;
                StringBuilder newAction; 
                List<String> newPredicates; 

                if (i==0) // Always an observation action, the root cause of failure!
                {
                    foreach (ParametrizedAction act in augProblem.Domain.Actions)
                    {                        
                        String preLocal = ""; String preMain = "";
                        if (act.Name.ToString().Equals(curr.Name.ToString().Split('_')[1]))
                        {                            
                            newAction = new StringBuilder();
                            newPredicates = new List<String>();
                            newAction.Append("(:action " + act.Name.ToString() + "-" + curr.Name.Split('_')[0]);
                            newAction.AppendLine();
                            newAction.Append("\t:parameters (");

                            String[] paramList = failedTree.Action.Name.Split('_');
                            for (int ar = 0; ar < act.Parameters.Count; ar++)
                            {
                                newAction.Append(act.Parameters[ar] + " - " + act.Parameters[ar].Type + " ");
                                preMain = preMain + "(not (= " + act.Parameters[ar] + " " + paramList[ar + 2] + "))";
                                preLocal = preLocal + "(= " + act.Parameters[ar] + " " + paramList[ar + 2] + ")";
                            }
                            newAction.Append(")"); newAction.AppendLine();
                            preLocal = preLocal + 
                                "(obsr-" + curr.Name.ToString().Split('_')[1] + "-" + curr.Name.ToString().Split('_')[0] + " dd)";
                            newAction.Append("\t:precondition (and ");
                            newAction.AppendLine(); 
                            newAction.Append("\t\t" + preLocal);
                            if (act.Preconditions.ToString().Contains("(or") || act.Preconditions.ToString().Contains("(when"))
                            {
                                foreach (Formula f in act.Preconditions.GetAllOperands())
                                {
                                    String p1 = f.ToString().Replace("\n", "").Replace("\t", "");
                                    newAction.AppendLine();
                                    newAction.Append("\t\t" + p1.ToString());
                                }
                            }
                            else
                            {
                                foreach (Predicate f in act.Preconditions.GetAllPredicates())
                                {
                                    newAction.Append(f.ToString());
                                }
                            }
                            newAction.AppendLine();
                            newAction.Append("\t)");
                            newAction.AppendLine();

                            if (act.Observe != null)
                            {
                                newAction.Append("\t:observe ");
                                foreach (Predicate p in act.Observe.GetAllPredicates())
                                {
                                    newAction.Append(p);
                                }
                                newAction.AppendLine();
                                newAction.Append(")");
                            }

                            /** Add current set of precondition that would appear in the main action **/
                            List<StringBuilder> lExistingPrecond;
                            listOfExtraPrecOfActionForSubTree.TryGetValue(act.Name.ToString(), out lExistingPrecond);
                            if (lExistingPrecond == null)
                                lExistingPrecond = new List<StringBuilder>();

                            // Just to make it symmetric to other
                            StringBuilder lPreMainAction = new StringBuilder();
                            lPreMainAction.Append(preMain);
                            lExistingPrecond.Add(lPreMainAction);
                            if (listOfExtraPrecOfActionForSubTree.ContainsKey(act.Name.ToString()))
                                listOfExtraPrecOfActionForSubTree[act.Name.ToString()] = lExistingPrecond;
                            else
                                listOfExtraPrecOfActionForSubTree.Add(act.Name.ToString(), lExistingPrecond);
                            updatedActions.Add(newAction);
                            lOfExtraPredicates.AddRange(newPredicates);
                            break;
                        }
                    }                    
                }
                else if (i==branch.Count-1) /** Must be a public action **/
                {
                    /** Two new dummy actions **/
                    StringBuilder commitThisPubAction = new StringBuilder();
                    commitThisPubAction.Append("(:action commit-" + RandomString(5) + "-" + curr.Name.Split('_')[0]);
                    commitThisPubAction.AppendLine();
                    commitThisPubAction.Append("\t:parameters (?a - agent)");
                    commitThisPubAction.AppendLine();
                    commitThisPubAction.Append("\t:precondition (and (not ");
                    commitThisPubAction.Append(propForceObsASubtreeUnderTheObservation);
                    commitThisPubAction.Append(") )");
                    commitThisPubAction.AppendLine();
                    commitThisPubAction.Append("\t:effect (and ");
                    commitThisPubAction.Append(
                        "(c-p-st-" + curr.Name.ToString().Split('_')[1] + "-" + curr.Name.ToString().Split('_')[0] + " dd)");
                    commitThisPubAction.Append(")");
                    commitThisPubAction.AppendLine();
                    commitThisPubAction.Append(")");
                    updatedActions.Add(commitThisPubAction);

                    foreach (ParametrizedAction act in augProblem.Domain.Actions)
                    {
                        if (act.Name.ToString().Equals(curr.Name.ToString().Split('_')[1]))
                        {                            
                            newPredicates = new List<String>();
                            newAction = new StringBuilder();
                            newAction.Append("(:action " + act.Name.ToString() + "-" + RandomString(4));
                            newAction.AppendLine();
                            string childType = node.childType;
                            newAction.Append("\t:parameters (");
                            String[] paramArray = curr.Name.ToString().Split('_');
                            StringBuilder localPrecond = new StringBuilder();
                            StringBuilder lPreMainAction = new StringBuilder();
                            localPrecond.Append("\t\t");
                            for (int arg = 0; arg < act.Parameters.Count; arg++)
                            {
                                newAction.Append(" " + act.Parameters[arg].ToString() + " - " + act.Parameters[arg].Type);
                                localPrecond.Append("(= " + act.Parameters[arg].ToString() + " " + paramArray[arg + 2] + ")");
                                lPreMainAction.Append("(not (= " + act.Parameters[arg].ToString() + " " + paramArray[arg + 2] + "))");
                            }
                                                        
                            bool includeDummy = true;
                            foreach (Argument arg in act.Parameters)
                                if (arg.Type.ToLower().Equals("dummy"))
                                    includeDummy = false;
                            if (includeDummy)
                                newAction.Append(" ?dd - dummy");
                            newAction.Append(")");
                            newAction.AppendLine();

                            localPrecond.Append(
                                "(c-p-st-" + curr.Name.ToString().Split('_')[1] + "-" + curr.Name.ToString().Split('_')[0] + " ?dd)");
                            newAction.Append("\t:precondition (and ");
                            newAction.AppendLine();
                            
                            newAction.Append(localPrecond);
                            foreach (Formula f in act.Preconditions.GetAllOperands())
                            {
                                String p1 = f.ToString().Replace("\n", "").Replace("\t", "");
                                newAction.AppendLine();
                                newAction.Append("\t\t" + p1);                                
                            }
                            newAction.AppendLine();
                            newAction.Append("\t)");
                            newAction.AppendLine();
                            newAction.Append("\t:effect (and ");
                            foreach (Formula f in act.Effects.GetAllOperands())
                            {
                                String p1 = f.ToString().Replace("\n", "").Replace("\t","");
                                newAction.AppendLine();
                                newAction.Append( "\t\t" + p1.ToString());
                            }
                            newAction.AppendLine();
                            newAction.Append("\t\t(when " + 
                                "(c-p-st-" + curr.Name.ToString().Split('_')[1] + "-" + curr.Name.ToString().Split('_')[0] + " ?dd)");
                            newAction.Append("(not " +
                                "(c-p-st-" + curr.Name.ToString().Split('_')[1] + "-" + curr.Name.ToString().Split('_')[0] + " ?dd)" + ")");

                            newAction.Append(")");
                            newAction.AppendLine();
                            newAction.Append("\t)");
                            newAction.AppendLine();
                            newAction.Append(")");

                            /** Add current set of precondition that would appear in the main action **/
                            List<StringBuilder> lExistingPrecond;
                            listOfExtraPrecOfActionForSubTree.TryGetValue(act.Name.ToString(), out lExistingPrecond);
                            if (lExistingPrecond == null)
                                lExistingPrecond = new List<StringBuilder>();
                            lExistingPrecond.Add(lPreMainAction);
                            if (listOfExtraPrecOfActionForSubTree.ContainsKey(act.Name.ToString()))
                                listOfExtraPrecOfActionForSubTree[act.Name.ToString()] = lExistingPrecond;
                            else
                                listOfExtraPrecOfActionForSubTree.Add(act.Name.ToString(), lExistingPrecond);
                            updatedActions.Add(newAction);
                            lOfExtraPredicates.AddRange(newPredicates);
                            break;
                        }
                    }
                }
                else /** Could be any intermediate action: observation or public **/
                {
                    if (curr.Observe == null) 
                    {
                        /** Two new dummy actions **/
                        StringBuilder commitThisPubAction = new StringBuilder();
                        commitThisPubAction.Append("(:action commit-" + RandomString(5) + "-" + curr.Name.Split('_')[0]);
                        commitThisPubAction.AppendLine();
                        commitThisPubAction.Append("\t:parameters (?a - agent)");
                        commitThisPubAction.AppendLine();
                        commitThisPubAction.Append("\t:precondition (and (not ");
                        commitThisPubAction.Append(propForceObsASubtreeUnderTheObservation);
                        commitThisPubAction.Append(") )");
                        commitThisPubAction.AppendLine();
                        commitThisPubAction.Append("\t:effect (and ");
                        commitThisPubAction.Append(
                            "(c-p-st-" + curr.Name.ToString().Split('_')[1] + "-" + curr.Name.ToString().Split('_')[0] + " dd)");
                        commitThisPubAction.Append(")");
                        commitThisPubAction.AppendLine();
                        commitThisPubAction.Append(")");
                        updatedActions.Add(commitThisPubAction);

                        newAction = new StringBuilder();
                        newPredicates = new List<String>();
                        foreach (ParametrizedAction act in augProblem.Domain.Actions)
                        {
                            if (act.Name.ToString().Equals(curr.Name.ToString().Split('_')[1]))
                            {
                                newAction = new StringBuilder();
                                newAction.Append("(:action " + act.Name.ToString() + "-" + RandomString(4));
                                newAction.AppendLine();
                                string childType = node.childType;
                                newAction.Append("\t:parameters (");
                                String[] paramArray = curr.Name.ToString().Split('_');
                                StringBuilder localPrecond = new StringBuilder();
                                StringBuilder lPreMainAction = new StringBuilder();
                                localPrecond.Append("\t\t");
                                for (int arg = 0; arg < act.Parameters.Count; arg++)
                                {
                                    newAction.Append(" " + act.Parameters[arg].ToString() + " - " + act.Parameters[arg].Type);
                                    localPrecond.Append("(= " + act.Parameters[arg].ToString() + " " + paramArray[arg + 2] + ")");
                                    lPreMainAction.Append("(not (= " + act.Parameters[arg].ToString() + " " + paramArray[arg + 2] + "))");
                                }
                                
                                bool includeDummy = true;
                                foreach (Argument arg in act.Parameters)
                                    if (arg.Type.ToLower().Equals("dummy"))
                                        includeDummy = false;
                                if (includeDummy)
                                    newAction.Append(" ?dd - dummy");
                                newAction.Append(")");
                                newAction.AppendLine();
                                localPrecond.Append(
                                    "(c-p-st-" + curr.Name.ToString().Split('_')[1] + "-" + curr.Name.ToString().Split('_')[0] + " ?dd)");
                                newAction.Append("\t:precondition (and ");
                                newAction.AppendLine();
                                newAction.Append(localPrecond);

                                foreach (Formula f in act.Preconditions.GetAllOperands())
                                {
                                    String p1 = f.ToString().Replace("\n", "").Replace("\t", "");
                                    newAction.AppendLine();
                                    newAction.Append("\t\t" + p1);
                                }
                                newAction.AppendLine();
                                newAction.Append("\t)"); newAction.AppendLine();
                                newAction.Append("\t:effect (and ");
                                foreach (Formula f in act.Effects.GetAllOperands())
                                {
                                    newAction.AppendLine();
                                    newAction.Append("\t\t"+f.ToString());
                                }

                                newAction.AppendLine();
                                newAction.Append("\t\t(when ");
                                newAction.Append("(c-p-st-" + curr.Name.ToString().Split('_')[1] + "-" + curr.Name.ToString().Split('_')[0] + " ?dd)");
                                newAction.Append("(not " + 
                                    "(c-p-st-" + curr.Name.ToString().Split('_')[1] + "-" + curr.Name.ToString().Split('_')[0] + " ?dd)" + ")");
                                newAction.Append(")");                                                              
                                newAction.AppendLine();
                                newAction.Append("\t)");
                                newAction.AppendLine();
                                newAction.Append(")");

                                /** Add current set of precondition that would appear in the main action **/
                                List<StringBuilder> lExistingPrecond;
                                listOfExtraPrecOfActionForSubTree.TryGetValue(act.Name.ToString(), out lExistingPrecond);
                                if (lExistingPrecond == null)
                                    lExistingPrecond = new List<StringBuilder>();
                                lExistingPrecond.Add(lPreMainAction);
                                if (listOfExtraPrecOfActionForSubTree.ContainsKey(act.Name.ToString()))
                                    listOfExtraPrecOfActionForSubTree[act.Name.ToString()] = lExistingPrecond;
                                else
                                    listOfExtraPrecOfActionForSubTree.Add(act.Name.ToString(), lExistingPrecond);
                                updatedActions.Add(newAction);
                                lOfExtraPredicates.AddRange(newPredicates);
                                break;
                            }
                        }
                    }
                    else
                    {
                        newAction = new StringBuilder();
                        newPredicates = new List<String>();
                        String whichChild;
                        if (branch[i + 1].childType.Equals("left"))
                            whichChild = "right";
                        else
                            whichChild = "left";

                        newAction.Append("(:action " + "dummy-" + whichChild + "-" + RandomString(4));
                        newAction.AppendLine();
                        newAction.Append("\t:parameters (?dd - dummy)");
                        newAction.AppendLine();
                        newAction.Append("\t:precondition (and ");
                        if (whichChild.Equals("left"))
                            newAction.Append(" (not" + curr.Observe + ")");
                        else
                            newAction.Append(" " + curr.Observe);
                        newAction.Append(")");
                        newAction.AppendLine();
                        newAction.Append("\t:effect (and ");
                        newAction.AppendLine();
                        newAction.Append("\t\t" + "(dummy-prop ?dd)");

                        // Count #non-obs actions below this, to allow for right constraints
                        int countNoOfNObsAction = 0;
                        for (int k = i + 1; k < branch.Count; k++)
                            if (branch[k].action.Observe == null)
                                countNoOfNObsAction++;
                        for (int k = listOfCommitsInThisBranch.Count - 1; countNoOfNObsAction > 0; k--, countNoOfNObsAction--)
                        {
                            newAction.AppendLine();
                            newAction.Append("\t\t" + "(when ");
                            newAction.Append(listOfCommitsInThisBranch.ElementAt(k));

                            newAction.Append("(not ");
                            newAction.Append(listOfCommitsInThisBranch.ElementAt(k));
                            newAction.Append("))");
                        }                        
                        newAction.AppendLine();
                        newAction.Append("\t)");
                        newAction.AppendLine();
                        newAction.Append(")");
                        updatedActions.Add(newAction); 
                    }
                }
            }
        }

        private static void ForceABranchUnderTheObservation (Problem problem, StreamWriter domainUpdate)
        {
            forcingBranch = true;
            if (failedTree == null) {
                Console.WriteLine("No need to force anything!");
                return;
            }

            Console.WriteLine("\nThe failed tree is:");
            StringBuilder sb = new StringBuilder();
            ProjectionOfSATree.RecPrint(failedTree, 0, "", ref sb);
            Console.Write(sb); Console.WriteLine();

            HashSet<List<BranchNode>> listOfUniqueBranches = new HashSet<List<BranchNode>>();
            SelectABranch(failedTree, ref listOfUniqueBranches);

            Random rand = new Random();            
            List<BranchNode> optedBranch = listOfUniqueBranches.ElementAt(rand.Next(0, listOfUniqueBranches.Count));
            Console.WriteLine("\nThe selected branch is:");
            foreach (BranchNode bn in optedBranch) {
                Console.Write(bn.action.Name + " ->> ");
            }
            Console.WriteLine();

            /** Shashank: this can be improved, move to a hashset **/
            StringBuilder listOfMainPredicates = new StringBuilder();
            List<String> listOfExtraPredicates = new List<string>();
            bool ifHasThedummyPred = false;
            foreach (ParametrizedPredicate pred in problem.Domain.Predicates)
            {
                if (pred.Name.Equals("dummy-prop"))
                    ifHasThedummyPred = true;
                listOfMainPredicates.Append("\t" + pred.getPredicate());
                listOfMainPredicates.AppendLine();
            }

            StringBuilder mainDummyObsAction = new StringBuilder();
            mainDummyObsAction.Append("(:action obs-" + RandomString(5) + allAgents);
            mainDummyObsAction.AppendLine();
            mainDummyObsAction.Append("\t:parameters (?a - agent)");
            mainDummyObsAction.AppendLine();
            mainDummyObsAction.Append("\t:precondition (and ");
            mainDummyObsAction.Append("(not (obsr-" + 
                optedBranch[0].action.Name.ToString().Split('_')[1] + "-" + optedBranch[0].action.Name.ToString().Split('_')[0] + " dd))");
            mainDummyObsAction.Append(")");
            mainDummyObsAction.AppendLine();
            propForceObsASubtreeUnderTheObservation = "(obsr-" +
                optedBranch[0].action.Name.ToString().Split('_')[1] + "-" + optedBranch[0].action.Name.ToString().Split('_')[0] + " dd)";
            mainDummyObsAction.Append("\t:effect (and ");
            mainDummyObsAction.Append("(obsr-" + 
                optedBranch[0].action.Name.ToString().Split('_')[1] + "-" + optedBranch[0].action.Name.ToString().Split('_')[0] + " dd)");
            mainDummyObsAction.Append(")");
            mainDummyObsAction.AppendLine();
            mainDummyObsAction.Append(")");

            pairOfCommitObsProp = new List<string>();
            pairOfCommitObsProp.Add("(obsr-" +
                optedBranch[0].action.Name.ToString().Split('_')[1] + "-" + optedBranch[0].action.Name.ToString().Split('_')[0] + " dd)");
            pairOfCommitObsProp.Add("(c-p-st-" +
                optedBranch[0].action.Name.ToString().Split('_')[1] + "-" + optedBranch[0].action.Name.ToString().Split('_')[0] + " dd)");

            dListOfExtraPrecOfAction = new Dictionary<string, List<StringBuilder>>();
            foreach(ParametrizedAction act in augProblem.Domain.Actions)
            {
                List<StringBuilder> l = new List<StringBuilder>();
                dListOfExtraPrecOfAction.Add(act.Name.ToString(), l);
            }                       

            List<StringBuilder> listOfUpdatedActions = new List<StringBuilder>();
            // listOfUpdatedActions.Add(mainCommitAction);
            listOfUpdatedActions.Add(mainDummyObsAction);

            // Older policy would constrain a subtree - NOT Sound!
            // ForceThisSubtree(subTree, ref listOfExtraPredicates, ref dListOfExtraPrecOfAction, ref listOfUpdatedActions);
            ForceThisBranch(optedBranch, ref listOfExtraPredicates, ref dListOfExtraPrecOfAction, ref listOfUpdatedActions);

            listOfExplicitPredicates = listOfExtraPredicates;
            domainUpdate.WriteLine("(:predicates ");
            domainUpdate.WriteLine(listOfMainPredicates);

            HashSet<String> uniqueExtraPredicates = new HashSet<string>();
            foreach(String str in listOfExplicitPredicates)
            {                
                uniqueExtraPredicates.Add(str);
            }
            foreach (String str in uniqueExtraPredicates)
            {
                domainUpdate.WriteLine("\t" + str);
            }
            domainUpdate.WriteLine("\t" + "(obsr-" +
                failedTree.Action.Name.ToString().Split('_')[1] + "-" + failedTree.Action.Name.ToString().Split('_')[0] + " ?dd - dummy)");
            domainUpdate.WriteLine("\t" + "(c-p-st-" +
                failedTree.Action.Name.ToString().Split('_')[1] + "-" + failedTree.Action.Name.ToString().Split('_')[0] + " ?dd - dummy)");

            // purpose? well all has to be changed
            if(!ifHasThedummyPred)
                domainUpdate.WriteLine("\t(dummy-prop ?dd - dummy)");
            domainUpdate.WriteLine(")");

            /** Write the remaining part of the domain: **/
            foreach(StringBuilder act in listOfUpdatedActions)
            {
                domainUpdate.WriteLine(act);                
            }
            domainUpdate.WriteLine("\n");
            foreach(ParametrizedAction act in augProblem.Domain.Actions)
            {   
                domainUpdate.WriteLine("(:action " + act.Name.ToString());
                domainUpdate.Write("\t:parameters (");
                foreach(Argument arg in act.Parameters)
                {
                    domainUpdate.Write(arg + " - " + arg.Type + " ");
                }
                domainUpdate.Write(")"); domainUpdate.WriteLine();
                domainUpdate.WriteLine("\t:precondition (and ");

                Formula cfPreconditions = (Formula)act.Preconditions;
                if (cfPreconditions is PredicateFormula)
                    domainUpdate.WriteLine("\t\t" + cfPreconditions.ToString().Trim('\t').Trim('\n'));
                else if (cfPreconditions is CompoundFormula)
                {
                    CompoundFormula cf = (CompoundFormula)cfPreconditions; 
                    if (cf.Operator == "and")
                    {
                        foreach (Formula f in act.Preconditions.GetAllOperands())
                        {
                            domainUpdate.WriteLine("\t\t" + f.ToString().Trim('\n').Trim('\t'));
                        }
                    }
                    else if (cf.Operator == "when")
                        domainUpdate.WriteLine("\t\t" + cfPreconditions.ToString().Trim('\t').Trim('\n'));
                    else if (cf.Operator == "or")
                        domainUpdate.WriteLine("\t\t" + cfPreconditions.ToString().Trim('\t').Trim('\n'));
                    else
                        throw new NotImplementedException();
                }
                else
                    throw new NotImplementedException();

                List<StringBuilder> extraList;
                dListOfExtraPrecOfAction.TryGetValue(act.Name, out extraList);
                if (extraList != null)
                {
                    foreach (StringBuilder extraPrecond in extraList)
                    {
                        domainUpdate.WriteLine("\t\t(or " + extraPrecond + ")");
                    }
                }                
                domainUpdate.WriteLine("\t)");
                if (act.Observe != null)
                {
                    domainUpdate.Write("\t:observe ");
                    foreach (Predicate p in act.Observe.GetAllPredicates())
                    {
                        domainUpdate.Write("\t\t" + p);
                    }
                    domainUpdate.WriteLine();
                }
                else if (act.Effects != null)
                {
                    domainUpdate.WriteLine("\t:effect (and ");

                    Formula cfEffect = (Formula)act.Effects;
                    if (cfEffect is PredicateFormula)
                        domainUpdate.WriteLine("\t\t" + cfEffect.ToString().Trim('\t').Trim('\n'));
                    else if (cfEffect is CompoundFormula)
                    {
                        CompoundFormula cf = (CompoundFormula) cfEffect;
                        if (cf.Operator == "and")
                        {
                            foreach (Formula f in act.Effects.GetAllOperands())
                            {
                                domainUpdate.WriteLine("\t\t" + f.ToString().Trim('\n').Trim('\t'));
                            }
                        }
                        else if (cf.Operator == "when")
                            domainUpdate.WriteLine("\t\t" + cfEffect.ToString().Trim('\t').Trim('\n'));
                        else if (cf.Operator == "or")
                            domainUpdate.WriteLine("\t\t" + cfEffect.ToString().Trim('\t').Trim('\n'));
                        else
                            throw new NotImplementedException();
                    }
                    else
                        throw new NotImplementedException();

                    domainUpdate.WriteLine("\t)");
                }
                else
                    throw new NotImplementedException();

                domainUpdate.WriteLine(")"); 
            }
            domainUpdate.WriteLine(")");
        }

        private static void ForceThisSubtree (ConditionalPlanTreeNode subTree, ref List<String> lOfExtraPredicates,
            ref Dictionary<String, List<StringBuilder>> listOfExtraPrecOfActionForSubTree, ref List<StringBuilder> updatedActions)
        {
            List<String> newPredicates;
            List<StringBuilder> listOfUpdatedActions;
            Dictionary<String, List<StringBuilder>> localListOfExtraPrecOfAction;
            if (subTree == null)
            {
                newPredicates = new List<String>();
                listOfUpdatedActions = new List<StringBuilder>();
                localListOfExtraPrecOfAction = new Dictionary<String, List<StringBuilder>>();
                lOfExtraPredicates = newPredicates; updatedActions = listOfUpdatedActions;
                listOfExtraPrecOfActionForSubTree = localListOfExtraPrecOfAction;
                return;
            }

            if (subTree.SingleChild != null)
            {
                newPredicates = new List<String>();
                listOfUpdatedActions = new List<StringBuilder>();
                localListOfExtraPrecOfAction = new Dictionary<String, List<StringBuilder>>();
                ForceThisSubtree (subTree.SingleChild, ref newPredicates, ref localListOfExtraPrecOfAction, ref listOfUpdatedActions);

                lOfExtraPredicates.AddRange(newPredicates); updatedActions.AddRange(listOfUpdatedActions);

                foreach (KeyValuePair<String, List<StringBuilder>> kvp in localListOfExtraPrecOfAction)
                {
                    List<StringBuilder> loc = new List<StringBuilder>();
                    List<StringBuilder> loc1 = new List<StringBuilder>();
                    listOfExtraPrecOfActionForSubTree.TryGetValue(kvp.Key, out loc);
                    if (loc == null)
                        loc = new List<StringBuilder>();
                    loc1 = kvp.Value;
                    foreach (StringBuilder str in loc1)
                        loc.Add(str);
                    if (listOfExtraPrecOfActionForSubTree.ContainsKey(kvp.Key))
                        listOfExtraPrecOfActionForSubTree[kvp.Key] = loc;
                    else
                        listOfExtraPrecOfActionForSubTree.Add(kvp.Key, loc);
                }
            }

            if (subTree.FalseObservationChild != null)
            {
                newPredicates = new List<String>();
                listOfUpdatedActions = new List<StringBuilder>();
                localListOfExtraPrecOfAction = new Dictionary<String, List<StringBuilder>>();
                ForceThisSubtree(
                    subTree.FalseObservationChild, ref newPredicates, ref localListOfExtraPrecOfAction, ref listOfUpdatedActions);

                lOfExtraPredicates.AddRange(newPredicates); updatedActions.AddRange(listOfUpdatedActions);
                foreach (KeyValuePair<String, List<StringBuilder>> kvp in localListOfExtraPrecOfAction)
                {
                    List<StringBuilder> loc;
                    List<StringBuilder> loc1 = new List<StringBuilder>();
                    listOfExtraPrecOfActionForSubTree.TryGetValue(kvp.Key, out loc);
                    if(loc == null)
                        loc = new List<StringBuilder>();
                    loc1 = kvp.Value;
                    foreach (StringBuilder str in loc1)
                        loc.Add(str);
                    if (listOfExtraPrecOfActionForSubTree.ContainsKey(kvp.Key))
                        listOfExtraPrecOfActionForSubTree[kvp.Key] = loc;
                    else
                        listOfExtraPrecOfActionForSubTree.Add(kvp.Key, loc);
                }
            }

            if (subTree.TrueObservationChild != null)
            {
                newPredicates = new List<String>();
                listOfUpdatedActions = new List<StringBuilder>();
                localListOfExtraPrecOfAction = new Dictionary<String, List<StringBuilder>>();
                ForceThisSubtree(
                    subTree.TrueObservationChild, ref newPredicates, ref localListOfExtraPrecOfAction, ref listOfUpdatedActions);

                lOfExtraPredicates.AddRange(newPredicates); updatedActions.AddRange(listOfUpdatedActions);
                foreach (KeyValuePair<String, List<StringBuilder>> kvp in localListOfExtraPrecOfAction)
                {
                    List<StringBuilder> loc = new List<StringBuilder>();
                    List<StringBuilder> loc1 = new List<StringBuilder>();
                    listOfExtraPrecOfActionForSubTree.TryGetValue(kvp.Key, out loc);
                    if (loc == null)
                        loc = new List<StringBuilder>();
                    loc1 = kvp.Value;
                    foreach (StringBuilder str in loc1)
                        loc.Add(str);
                    if (listOfExtraPrecOfActionForSubTree.ContainsKey(kvp.Key))
                        listOfExtraPrecOfActionForSubTree[kvp.Key] = loc;
                    else
                        listOfExtraPrecOfActionForSubTree.Add(kvp.Key, loc);
                }
            }
            if (subTree.Action == null)
            {
                newPredicates = new List<String>();
                listOfUpdatedActions = new List<StringBuilder>();
                localListOfExtraPrecOfAction = new Dictionary<String, List<StringBuilder>>();

                // Create a new goal action: pending
                if (subTree.ToString().Contains(")goal"))
                {
                    StringBuilder newAction = new StringBuilder();
                    newAction.Append("(:action " + "goal-leaf-" + RandomString(5));
                    newAction.AppendLine();
                    newAction.Append("\t:parameters (?a - agent)"); newAction.AppendLine();
                    newAction.Append("\t:precondition (and " +
                        "(" + subTree.childType + "-" + subTree.SingleParent.Action.Name.ToString() + " dd)");
                    newAction.Append(propCommitASubtreeUnderTheObservation);
                    
                    newAction.Append(propForceObsASubtreeUnderTheObservation);
                    newAction.Append(")");
                    newAction.AppendLine();
                    newAction.Append("\t:effect (and ");
                    newAction.Append("(need-for-single-when dd)");
                    newPredicates.Add("(need-for-single-when ?dd - dummy)");
                    newAction.AppendLine();
                    newAction.Append("\t\t(when (and ");
                    newAction.Append("(" + subTree.childType + "-" + subTree.SingleParent.Action.Name.ToString() + " dd)");
                    newAction.Append(propCommitASubtreeUnderTheObservation);                    
                    newAction.Append(")");
                    newAction.Append("(not " + propCommitASubtreeUnderTheObservation + ") ))");
                    newAction.AppendLine();
                    newAction.Append(")");
                    listOfUpdatedActions.Add(newAction);
                }
                lOfExtraPredicates = newPredicates; updatedActions = listOfUpdatedActions;
                listOfExtraPrecOfActionForSubTree = localListOfExtraPrecOfAction;
                return;
            }

            newPredicates = new List<String>();
            listOfUpdatedActions = new List<StringBuilder>();
            localListOfExtraPrecOfAction = new Dictionary<String, List<StringBuilder>>();

            // subTree.Action will be either a regular or an observation action?
            if (subTree.Action.Name.ToString().Contains("observe-"))
            {
                Action curr = subTree.Action;
                StringBuilder newAction;
                foreach (ParametrizedAction act in augProblem.Domain.Actions)
                {
                    if (act.Name.ToString().Equals(curr.Name.ToString().Split('_')[1]))
                    {
                        newAction = new StringBuilder(); newAction.AppendLine();
                        newAction.Append("(:action " + act.Name.ToString() + "-" + RandomString(4));
                        newAction.AppendLine(); string childType = subTree.childType;

                        newAction.Append("\t:parameters (");
                        StringBuilder paramsForLeftandRight = new StringBuilder();
                        paramsForLeftandRight.Append("\t:parameters (");
                        String[] paramArray = curr.Name.ToString().Split('_');
                        StringBuilder localPrecond = new StringBuilder();
                        StringBuilder lPreMainAction = new StringBuilder();

                        for (int a = 0; a < act.Parameters.Count; a++)
                        {
                            newAction.Append(" " + act.Parameters[a].ToString() + " - " + act.Parameters[a].Type);
                            paramsForLeftandRight.Append(" " + act.Parameters[a].ToString() + " - " + act.Parameters[a].Type);
                            localPrecond.Append("(= " + act.Parameters[a].ToString() + " " + paramArray[a + 2] + ")");
                            lPreMainAction.Append("(not (= " + act.Parameters[a].ToString() + " " + paramArray[a + 2] + "))");
                        }
                        localPrecond.Append("(" + childType + "-" + subTree.SingleParent.Action.Name.ToString() + " dd)");
                        localPrecond.AppendLine();
                        
                        lPreMainAction.Append("(not " + propForceObsASubtreeUnderTheObservation + ")");
                        paramsForLeftandRight.Append(")");
                        newAction.Append(")"); newAction.AppendLine();
                        newAction.Append("\t:precondition (and "); newAction.AppendLine();
                        newAction.Append("\t\t" + propCommitASubtreeUnderTheObservation); newAction.AppendLine();
                        newAction.Append("\t\t" + propForceObsASubtreeUnderTheObservation); newAction.AppendLine();
                        newAction.Append("\t\t" + localPrecond); 
                        foreach (Formula f in act.Preconditions.GetAllOperands())
                        {
                            newAction.Append("\t\t" + f.ToString()); newAction.AppendLine();
                        }
                        newAction.Append("\t)"); newAction.AppendLine();
                        newAction.Append("\t:observe ");
                        foreach (Predicate f in act.Observe.GetAllPredicates())
                        {
                            newAction.Append(f.ToString());
                        }
                        newAction.AppendLine();
                        newAction.Append(")");
                        newAction.AppendLine();
                        // add two dummy actions left and right
                        StringBuilder newActionLeft = new StringBuilder();
                        newActionLeft.Append("(:action left-" + RandomString(6));
                        newActionLeft.AppendLine();
                        newActionLeft.Append(paramsForLeftandRight);
                        newActionLeft.AppendLine();
                        newActionLeft.Append("\t:precondition (and ");
                        foreach (Predicate f in act.Observe.GetAllPredicates())
                        {
                            newActionLeft.Append("(not " + f.ToString() + ")");
                        }
                        newActionLeft.Append(localPrecond);
                        //newActionLeft.Append("(" + childType + "-" + subTree.SingleParent.Action.Name.ToString() + ")");
                        newActionLeft.Append("\t)"); newActionLeft.AppendLine();
                        newActionLeft.Append("\t:effect (and ");
                        newActionLeft.Append(
                            "(not (" + childType + "-" + subTree.SingleParent.Action.Name.ToString() + " dd))");
                        newActionLeft.Append("(left-" + curr.Name.ToString() + " dd)");
                        //newPredicates.AppendLine();
                        newPredicates.Add("(" + childType + "-" + subTree.SingleParent.Action.Name.ToString() + " ?dd - dummy)");
                        newPredicates.Add("(left-" + curr.Name.ToString() + " ?dd - dummy)");
                        newActionLeft.Append(")"); newActionLeft.AppendLine();
                        newActionLeft.Append(")"); newActionLeft.AppendLine();

                        StringBuilder newActionRight = new StringBuilder();
                        newActionRight.Append("(:action right-" + RandomString(6));
                        newActionRight.AppendLine();
                        newActionRight.Append(paramsForLeftandRight);
                        newActionRight.AppendLine();
                        newActionRight.Append("\t:precondition (and ");
                        foreach (Predicate f in act.Observe.GetAllPredicates())
                        {
                            newActionRight.Append(f.ToString());
                        }
                        newActionRight.Append(localPrecond);
                        //newActionRight.Append("(" + childType + "-" + subTree.SingleParent.Action.Name.ToString() + ")");
                        newActionRight.Append("\t)"); newActionRight.AppendLine();
                        newActionRight.Append("\t:effect (and ");
                        newActionRight.Append(
                            "(not (" + childType + "-" + subTree.SingleParent.Action.Name.ToString() + " dd))");
                        newActionRight.Append("(right-" + curr.Name.ToString() + " dd)");
                        newPredicates.Add("(" + childType + "-" + subTree.SingleParent.Action.Name.ToString() + " ?dd - dummy)");                        
                        newPredicates.Add("(right-" + curr.Name.ToString() + " ?dd - dummy)");
                        newActionRight.Append(")"); newActionRight.AppendLine();
                        newActionRight.Append(")"); newActionRight.AppendLine();

                        // Add current set of precondition that would appear in the main action
                        List<StringBuilder> lExistingPrecond;
                        listOfExtraPrecOfActionForSubTree.TryGetValue(act.Name.ToString(), out lExistingPrecond);
                        if(lExistingPrecond == null)
                            lExistingPrecond = new List<StringBuilder>();
                        lExistingPrecond.Add(lPreMainAction);
                        if (listOfExtraPrecOfActionForSubTree.ContainsKey(act.Name.ToString()))
                            listOfExtraPrecOfActionForSubTree[act.Name.ToString()] = lExistingPrecond;
                        else                            
                            listOfExtraPrecOfActionForSubTree.Add(act.Name.ToString(), lExistingPrecond);
                        updatedActions.Add(newAction);
                        updatedActions.Add(newActionLeft);
                        updatedActions.Add(newActionRight);
                        lOfExtraPredicates.AddRange(newPredicates);
                        break;
                    }
                }
            }
            else
            {
                Action curr = subTree.Action;
                StringBuilder newAction;
                foreach (ParametrizedAction act in augProblem.Domain.Actions)
                {
                    if (act.Name.ToString().Equals(curr.Name.ToString().Split('_')[1]))
                    {
                        newAction = new StringBuilder();
                        newAction.Append("(:action " + act.Name.ToString() + "-" + RandomString(4));
                        newAction.AppendLine();
                        string childType = subTree.childType;
                        newAction.Append("\t:parameters (");
                        String[] paramArray = curr.Name.ToString().Split('_');
                        StringBuilder localPrecond = new StringBuilder();
                        StringBuilder lPreMainAction = new StringBuilder();
                        localPrecond.Append("\t\t");
                        for (int arg = 0; arg < act.Parameters.Count; arg++)
                        {
                            newAction.Append(" " + act.Parameters[arg].ToString() + " - " + act.Parameters[arg].Type);
                            localPrecond.Append("(= " + act.Parameters[arg].ToString() + " " + paramArray[arg + 2] + ")");
                            lPreMainAction.Append("(not (= " + act.Parameters[arg].ToString() + " " + paramArray[arg + 2] + "))");
                        }
                        localPrecond.Append("(" + childType + "-" + subTree.SingleParent.Action.Name.ToString() + " dd)");
                        //PreMainAction.Append(
                        //"(not (" + childType + "-" + subTree.SingleParent.Action.Name.ToString() + "))");
                        lPreMainAction.Append("(not " + propForceObsASubtreeUnderTheObservation + ")");

                        newAction.Append(")");
                        newAction.AppendLine();
                        newAction.Append("\t:precondition (and ");
                        newAction.AppendLine();
                        newAction.Append("\t\t" + propCommitASubtreeUnderTheObservation);
                        newAction.AppendLine();
                        newAction.Append("\t\t" + propForceObsASubtreeUnderTheObservation);
                        newAction.AppendLine();
                        newAction.Append(localPrecond);
                        newAction.AppendLine();
                        foreach (Formula f in act.Preconditions.GetAllOperands())
                        {
                            newAction.Append("\t\t" + f); newAction.AppendLine();
                        }
                        newAction.Append("\t)"); newAction.AppendLine();
                        newAction.Append("\t:effect (and ");
                        foreach (Formula f in act.Effects.GetAllOperands())
                        {
                            newAction.Append(f.ToString());
                        }
                        if (!curr.Name.Contains(")goal"))
                        {
                            newAction.Append("(center-" + curr.Name.ToString() + " dd)");
                            //newPredicates.AppendLine();
                            newPredicates.Add("(center-" + curr.Name.ToString() + " ?dd - dummy)");
                            newAction.AppendLine();
                            newAction.Append("\t\t(when (and " +
                                propCommitASubtreeUnderTheObservation +
                                " (" + childType + "-" + subTree.SingleParent.Action.Name.ToString() + " dd))");
                            newAction.Append("(not ("
                                + childType + "-" + subTree.SingleParent.Action.Name.ToString() + " dd)) )");
                        }
                        else
                        {
                            newAction.Append("\t\t(when (and " +
                                propCommitASubtreeUnderTheObservation +
                                " (" + childType + "-" + subTree.Action.Name.ToString() + " dd))");
                            newAction.Append("(not " + propCommitASubtreeUnderTheObservation + " dd) )");
                        }
                        newAction.Append(" )");
                        newAction.AppendLine(); newAction.Append(")");

                        // Add current set of precondition that would appear in the main action
                        List<StringBuilder> lExistingPrecond;
                        listOfExtraPrecOfActionForSubTree.TryGetValue(act.Name.ToString(), out lExistingPrecond);
                        if(lExistingPrecond == null)
                            lExistingPrecond = new List<StringBuilder>();
                        lExistingPrecond.Add(lPreMainAction);
                        if (listOfExtraPrecOfActionForSubTree.ContainsKey(act.Name.ToString()))
                            listOfExtraPrecOfActionForSubTree[act.Name.ToString()] = lExistingPrecond;
                        else
                            listOfExtraPrecOfActionForSubTree.Add(act.Name.ToString(), lExistingPrecond);
                        updatedActions.Add(newAction);
                        lOfExtraPredicates.AddRange(newPredicates);
                        break;
                    }
                }
            }
        }

        private static void UpdateTeamDomainDescription(
            Problem problem, Constant agent, ConditionalPlanTreeNode failedPlan, 
            string aStaticBasePath, string aBenchmarkPath, string[] sBenchmark, int counter, ref bool change, bool icaps2019, bool aaai21, bool jair21)
        {
            augProblem = problem;
            if (counter > 3)
            {                
                String deleteDirectoryPath = aStaticBasePath + (counter - 2) + "\\";
                if (System.IO.Directory.Exists(deleteDirectoryPath)) 
                {
                    System.IO.Directory.Delete(deleteDirectoryPath, true);
                }
            }

            String directoryPath = aStaticBasePath + counter + "\\";
            if (!System.IO.Directory.Exists(directoryPath))
            {
                System.IO.Directory.CreateDirectory(directoryPath);
            }
            
            String rDomainFilePath = aStaticBasePath + counter + "\\" + "d.pddl" ;                        
            string path = Path.Combine(rDomainFilePath);
            using (StreamWriter domainUpdate = File.CreateText(path))
            {
                domainUpdate.WriteLine("(define");
                domainUpdate.WriteLine("(domain " + problem.Domain.Name + ")");
                domainUpdate.Write("(:types");
                bool flag = false;
                foreach (string t in problem.Domain.Types)
                {
                    domainUpdate.Write(" " + t);
                    if (t.Equals("dummy"))
                        flag = true;
                }
                if (!flag)
                {
                    domainUpdate.Write(" " + "dummy");
                }

                domainUpdate.WriteLine(")");
                domainUpdate.WriteLine("(:constants");
                foreach (Constant c in problem.Domain.Constants)
                    domainUpdate.WriteLine("\t" + c + " - " + c.Type);
                if (!flag)
                    domainUpdate.WriteLine("\t" + "dd" + " - " + "dummy");
                domainUpdate.WriteLine(")");

                /** To find asymmetric branch/action: most simple case first.
                 * It should be more sophisticated such that it finds out which particular observation failed. */
                Console.Write(""); 
                sameCounter = -1;
                List<Action> culpritActions = new List<Action>();
                if ( !jair21 )
                    culpritActions = ProblematicPairOfActions(agent, counter, aStaticBasePath, aBenchmarkPath, failedPlan, 0, icaps2019, aaai21, jair21);

                /** A temperory solution: need to change once I get time, maybe after the submission **/
                List<Constant> listOFConst = problem.Domain.Constants;
                // culpritActions = ProblematicPairOfActions(agent, counter, aStaticBasePath, aBenchmarkPath, failedPlan, 0, icaps2019, aaai21, jair21);
                if (counter == 0)
                {
                    allAgents = "-";
                    List<String> agentList = new List<string>();
                    for (int c = 0; c < listOFConst.Count; c++)
                        if (listOFConst[c].Type.ToString().Equals("agent"))                        
                            agentList.Add(listOFConst[c].ToString());
                    for (int i = 0; i < agentList.Count; i++)
                        if (i == 0)
                            allAgents += agentList[i];
                        else if (i == agentList.Count - 1)
                            allAgents += "-" + agentList[i];
                        else
                            allAgents += "-" + agentList[i];
                } 

                /** Approach captured uptil ICAPS2019 **/
                if ((aaai21 || icaps2019) && culpritActions.Count != 2)
                {
                    change = false;
                    return;
                }
                if (!aaai21 && jair21 && culpritActions.Count != 2)
                {
                    change = false;
                    return;
                }
                
                // only when signaling exp were run... currently at which obs the system fails it does not observe properly
                // for each agent when the goal is set, it is set as per phase - original actions
                // backtracking addresses no constraints or domain augumentation - purely random
                if (!aaai21 && jair21 && culpritActions.Count == 2)
                {
                    change = false;
                    return;
                }

                /** Backtracking improvements - it is done post the ICAPS2019 acceptance **/
                if (culpritActions.Count != 2)
                {
                    Console.WriteLine("Augmenting the domain to force a subtree : " + agent);
                    ForceABranchUnderTheObservation(problem, domainUpdate);                    
                    return;
                }
                if (!(culpritActions.ElementAt(0).Name.Contains("observe-")))
                {
                    Console.WriteLine("Did not fail to observe a proposition, agent - " + agent);
                    Console.WriteLine("The problem lies somewhere else!");
                    Environment.Exit(0);
                }

                Console.WriteLine("\nThe observation " + agent +" cannot make is: " + culpritActions[0].Name);
                Console.WriteLine("If executes, " +
                    agent + " will have to execute " + culpritActions[1].Name + " in each leaf rooted with it");
                Console.WriteLine();

                StringBuilder listOfPredicates = new StringBuilder();
                listOfPredicates.Append("(:predicates");
                listOfPredicates.AppendLine();
                foreach (ParametrizedPredicate pred in problem.Domain.Predicates)
                {
                    listOfPredicates.Append("\t" + pred.getPredicate());
                    listOfPredicates.AppendLine();
                }

                List<StringBuilder> listOfUpdatedActions = new List<StringBuilder>();
                foreach (ParametrizedAction act in problem.Domain.Actions)
                {
                    // Action culpritActions[0] is the observation action
                    // Action culpritActions[1] is the action needed to be forced on both side
                    if (culpritActions[1].Name.Split('_')[1].ToString().Equals(act.Name.ToString()))
                    {
                        StringBuilder currAct = new StringBuilder();
                        StringBuilder currActAgentCopy = new StringBuilder();
                        StringBuilder currActAgentObs = new StringBuilder();
                        StringBuilder currActAgentCommit = new StringBuilder();

                        currAct.Append("(:action " + act.Name);
                        currActAgentCopy.Append("(:action " + act.Name + "-" + RandomString(4));
                        currAct.AppendLine();
                        currActAgentCopy.AppendLine();
                        currAct.Append("\t:parameters (");
                        currActAgentCopy.Append("\t:parameters (");

                        String[] brkAction = culpritActions[1].Name.ToString().Split('_');
                        foreach (Parameter param1 in act.Parameters)
                        {
                            currAct.Append(" " + param1 + " - " + param1.Type);
                            currActAgentCopy.Append(" " + param1 + " - " + param1.Type);
                        }
                        
                        bool includeDummy = true;
                        foreach (Argument arg in act.Parameters)
                            if (arg.Type.ToLower().Equals("dummy"))
                                includeDummy = false;
                        if (includeDummy)
                            currActAgentCopy.Append(" ?dd - dummy");

                        currAct.Append(" )");
                        currActAgentCopy.Append(" )");
                        currAct.AppendLine();
                        currActAgentCopy.AppendLine();
                        currAct.Append("\t:precondition (and ");
                        currActAgentCopy.Append("\t:precondition (and ");

                        List<Parameter> paramList = act.Parameters;
                        string[] parameterList = culpritActions[1].Name.ToString().Split('_');
                        currAct.AppendLine();
                        currActAgentCopy.AppendLine();
                        currAct.Append("\t\t(or ");
                        currActAgentCopy.Append("\t\t");
                        for (int s = 0; s < paramList.Count; s++)
                        {
                            currAct.Append("(not (= " +
                                paramList.ElementAt(s).ToString() + " " + parameterList.ElementAt(s + 2) + "))");
                            currActAgentCopy.Append("(= " +
                                paramList.ElementAt(s).ToString() + " " + parameterList.ElementAt(s + 2) + ")");
                        }
                        // currAct.Append("(not (observe-" + act.Name + "-" + culpritActions[1].Name.ToString().Split('_')[0] + " dd))");
                        currAct.Append(")");

                        listOfPredicates.
                            Append("\t(c-p-" + act.Name + "-" + culpritActions[1].Name.ToString().Split('_')[0] + " ?dd - dummy)");
                        listOfPredicates.AppendLine();
                        listOfPredicates.
                            Append("\t(observe-" + act.Name + "-" + culpritActions[1].Name.ToString().Split('_')[0] + " ?dd - dummy)");
                        listOfPredicates.AppendLine();

                        pairOfCommitObsProp = new List<string>();
                        pairOfCommitObsProp.
                            Add("(observe-" + act.Name + "-" + culpritActions[1].Name.ToString().Split('_')[0] + " dd)");
                        pairOfCommitObsProp.
                            Add("(c-p-" + act.Name + "-" + culpritActions[1].Name.ToString().Split('_')[0] + " dd)");

                        currActAgentCopy.Append("(c-p-" + act.Name + "-" + culpritActions[1].Name.ToString().Split('_')[0] + " ?dd)");
                        // currActAgentCopy.Append("(observe-" + act.Name + "-" + culpritActions[1].Name.ToString().Split('_')[0] + " dd)");

                        // Formula f = act.Preconditions;
                        string[] param = culpritActions[1].Name.ToString().Split('_');                        

                        // temporary fix: when an action has OR condition
                        if (act.Preconditions.ToString().Contains("or"))
                        {
                            List<Formula> lFormulas = act.Preconditions.GetAllOperands();
                            foreach (Formula p in lFormulas)
                            {
                                String p1 = p.ToString().Replace("\n", "");
                                currAct.AppendLine(); currActAgentCopy.AppendLine();
                                currAct.Append("\t\t" + p1.ToString());
                                currActAgentCopy.Append("\t\t" + p1.ToString());                                
                            }
                        }
                        else
                        {
                            HashSet<Predicate> allPredicates = act.Preconditions.GetAllPredicates();
                            foreach (Predicate p in allPredicates)
                            {
                                String p1 = p.ToString().Replace("\n", "");
                                currAct.AppendLine(); currActAgentCopy.AppendLine();
                                currAct.Append("\t\t" + p1.ToString());
                                currActAgentCopy.Append("\t\t" + p1.ToString());
                            }
                        }
                        currAct.AppendLine();
                        currActAgentCopy.AppendLine();
                        currAct.Append("\t)");
                        currActAgentCopy.Append("\t)");
                        currAct.AppendLine();
                        currActAgentCopy.AppendLine();

                        // add action effect
                        if (act.Effects != null)
                        {
                            currAct.Append("\t:effect (and ");
                            currActAgentCopy.Append("\t:effect (and ");
                            currActAgentCopy.Append("(when " +
                                "(c-p-" + act.Name + "-" + culpritActions[1].Name.ToString().Split('_')[0] + " ?dd)" +
                                " (not (c-p-" + act.Name + "-" + culpritActions[1].Name.ToString().Split('_')[0] + " ?dd)) )");

                            List<Formula> d = act.Effects.GetAllOperands();
                            foreach (Formula f in d)
                            {
                                String p1 = f.ToString().Replace("\n", "");
                                currAct.AppendLine(); currActAgentCopy.AppendLine();
                                currAct.Append("\t\t" + p1.ToString());
                                currActAgentCopy.Append("\t\t" + p1.ToString());
                            }
                            currAct.Append(")");
                            currActAgentCopy.Append(")");
                            currAct.AppendLine();
                            currActAgentCopy.AppendLine();
                            currAct.Append(")");
                            currActAgentCopy.Append(")");
                        }

                        // add observation predicates, is it required?
                        if (act.Observe != null)
                        {
                            currAct.Append("\t:observe ");
                            HashSet<Predicate> allPredicates = act.Observe.GetAllPredicates();
                            foreach (object p in allPredicates)
                            {
                                currAct.Append(p.ToString() + " ");
                            }
                            currAct.AppendLine();
                            currAct.Append(")");
                        }

                        // Two new actions dummy-p + obs-force
                        currActAgentCommit.Append("(:action commit" + "-" + RandomString(5) + allAgents);
                        currActAgentCommit.AppendLine();
                        currActAgentCommit.Append("\t:parameters (?a - agent ?n0 - number)");
                        currActAgentCommit.AppendLine();
                        currActAgentCommit.Append("\t:precondition (and (not ");
                        currActAgentCommit.Append("(observe-" + culpritActions[1].Name.ToString().Split('_')[1] + "-" +
                                culpritActions[1].Name.ToString().Split('_')[0] + " dd)");
                        currActAgentCommit.Append(")");

                        /*
                        currActAgentCommit.Append("(phase ?n0)");
                        currActAgentCommit.Append("(= ?n0 n0)"); // shashank - newly added on Aug 22 2024                        
                        
                        */ // -- commented for other benchmarks, used only for signaling.

                        currActAgentCommit.Append(")");

                        currActAgentCommit.AppendLine();
                        currActAgentCommit.Append("\t:effect (and ");
                        currActAgentCommit.
                            Append("(c-p-" + act.Name + "-" + culpritActions[1].Name.ToString().Split('_')[0] + " dd)");
                        currActAgentCommit.Append(")");
                        currActAgentCommit.AppendLine();
                        currActAgentCommit.Append(")");

                        currActAgentObs.
                            Append("(:action obs" + "-" + RandomString(5) + allAgents);
                        currActAgentObs.AppendLine();
                        currActAgentObs.Append("\t:parameters (?a - agent ?n0 - number)");
                        currActAgentObs.AppendLine();

                        currActAgentObs.Append("\t:precondition (and ");
                        currActAgentObs.
                            Append("(not (observe-" + culpritActions[1].Name.ToString().Split('_')[1] + "-" +
                                culpritActions[1].Name.ToString().Split('_')[0] + " dd))");

                        /*
                        currActAgentObs.Append("(phase ?n0)");
                        currActAgentObs.Append("(= ?n0 n0)"); // shashank - newly added on Aug 22 2024  
                        */
                        currActAgentObs.Append(")");
                        currActAgentObs.AppendLine();

                        currActAgentObs.Append("\t:effect (and ");
                        currActAgentObs.
                            Append("(observe-" + culpritActions[1].Name.ToString().Split('_')[1] + "-" +
                                culpritActions[1].Name.ToString().Split('_')[0] + " dd)");
                        currActAgentObs.Append(")");
                        currActAgentObs.AppendLine();
                        currActAgentObs.Append(")");

                        listOfUpdatedActions.Add(currAct);
                        listOfUpdatedActions.Add(currActAgentCopy);
                        listOfUpdatedActions.Add(currActAgentCommit);
                        listOfUpdatedActions.Add(currActAgentObs);
                    }
                    else
                    {
                        String name = culpritActions[0].Name.Split('_')[1];
                        if (act.Name.ToString().Contains("observe-") && name.Equals(act.Name))
                        {
                            StringBuilder realObs = new StringBuilder();
                            StringBuilder copyObs = new StringBuilder();
                            realObs.Append("(:action " + act.Name);
                            copyObs.Append("(:action " + act.Name + "-" + culpritActions[0].Name.Split('_')[0]);
                            realObs.AppendLine(); copyObs.AppendLine();
                            realObs.Append("\t:parameters ("); copyObs.Append("\t:parameters (");
                            foreach (Parameter param in act.Parameters)
                            {
                                realObs.Append(" " + param + " - " + param.Type);
                                copyObs.Append(" " + param + " - " + param.Type);
                            }
                            realObs.Append(" )"); copyObs.Append(" )");
                            realObs.AppendLine(); copyObs.AppendLine();

                            realObs.Append("\t:precondition (and "); realObs.AppendLine();
                            copyObs.Append("\t:precondition (and "); copyObs.AppendLine();
                            realObs.Append("\t\t(or "); copyObs.Append("\t\t");
                            String[] paramList = culpritActions[0].Name.ToString().Split('_');
                            for (int p = 0; p < act.Parameters.Count; p++)
                            {
                                realObs.Append("(not (= " + act.Parameters[p] + " " + paramList[p + 2] + "))");
                                copyObs.Append("(= " + act.Parameters[p] + " " + paramList[p + 2] + ")");
                            }
                            realObs.Append(")"); realObs.AppendLine();

                            copyObs.Append("(observe-" + culpritActions[1].Name.ToString().Split('_')[1] + "-" +
                                culpritActions[1].Name.ToString().Split('_')[0] + " dd)");
                            copyObs.AppendLine();


                            Formula f1 = act.Preconditions;
                            if (f1.ToString().Contains("(or"))
                            {
                                foreach (Formula p in act.Preconditions.GetAllOperands())
                                {
                                    String p1 = p.ToString().Replace("\n", "");
                                    realObs.Append("\t\t" + p1.ToString()); realObs.AppendLine();
                                    copyObs.Append("\t\t" + p1.ToString()); copyObs.AppendLine();
                                }
                            }
                            else
                            {
                                foreach (Predicate p in act.Preconditions.GetAllPredicates())
                                {
                                    realObs.Append("\t\t" + p); realObs.AppendLine();
                                    copyObs.Append("\t\t" + p); copyObs.AppendLine();
                                }
                            }
                            realObs.Append("\t)"); copyObs.Append("\t)");
                            realObs.AppendLine(); copyObs.AppendLine();

                            realObs.Append("\t:observe ");
                            HashSet<Predicate> allPredicates = act.Observe.GetAllPredicates();
                            foreach (object p in allPredicates)
                            {
                                realObs.Append(p.ToString() + " ");
                            }
                            realObs.AppendLine();

                            // added effects - 
                            if (act.Effects != null)
                            {
                                realObs.Append("\t:effect (and ");
                                Formula f_eff = act.Effects;
                                realObs.AppendLine();
                                foreach (Predicate p in f_eff.GetAllPredicates())
                                {
                                    realObs.Append("\t\t" + p); realObs.AppendLine();                                   
                                }
                                realObs.Append("\t)");
                                realObs.AppendLine();
                            }
                            realObs.Append(")");

                            copyObs.Append("\t:observe ");
                            foreach (object p in allPredicates)
                            {
                                copyObs.Append(p.ToString() + " ");
                            }
                            copyObs.AppendLine();
                            copyObs.Append(")");
                            listOfUpdatedActions.Add(copyObs);
                            listOfUpdatedActions.Add(realObs);
                        }
                        else if (act.Name.ToString().Contains("observe-"))
                        {
                            StringBuilder currAct = new StringBuilder();
                            currAct.Append("(:action " + act.Name);
                            currAct.AppendLine();
                            currAct.Append("\t:parameters (");
                            foreach (Parameter param in act.Parameters)
                            {
                                currAct.Append(" " + param + " - " + param.Type);
                            }
                            currAct.Append(" )");
                            currAct.AppendLine();
                            currAct.Append("\t:precondition (and ");
                            Formula f = act.Preconditions;
                            currAct.AppendLine();
                            if (f.ToString().Contains("(or"))
                            {
                                foreach (Formula p in act.Preconditions.GetAllOperands())
                                {
                                    String p1 = p.ToString().Replace("\n", "");
                                    currAct.Append("\t\t" + p1.ToString()); currAct.AppendLine();
                                }
                            }
                            else
                            {
                                foreach (Predicate p in f.GetAllPredicates())
                                {
                                    currAct.Append("\t\t" + p); currAct.AppendLine();
                                }
                            }
                            currAct.Append("\t)");
                            currAct.AppendLine();

                            if (act.Observe != null)
                            {
                                currAct.Append("\t:observe ");
                                // temporary fix: when an action has when clause
                                if (act.Observe.ToString().Contains("when"))
                                {
                                    List<Formula> lFormulas = act.Observe.GetAllOperands();
                                    foreach (Formula p in lFormulas)
                                    {
                                        String p1 = p.ToString().Replace("\n", "");
                                        currAct.Append(p1.ToString() + " ");
                                    }
                                }
                                else
                                {
                                    HashSet<Predicate> allPredicates = act.Observe.GetAllPredicates();
                                    foreach (Predicate p in allPredicates)
                                    {
                                        currAct.Append(p.ToString() + " ");
                                    }
                                }
                                currAct.AppendLine();
                                // currAct.Append(")");
                            }
                            if(act.Effects != null)
                            {
                                currAct.Append("\t:effect (and ");
                                Formula f_eff = act.Effects;
                                currAct.AppendLine();
                                if (f_eff.ToString().Contains("(or"))
                                {
                                    foreach (Formula p in act.Effects.GetAllOperands())
                                    {
                                        String p1 = p.ToString().Replace("\n", "");
                                        currAct.Append("\t\t" + p1.ToString()); currAct.AppendLine();
                                    }
                                }
                                else
                                {
                                    foreach (Predicate p in f_eff.GetAllPredicates())
                                    {
                                        currAct.Append("\t\t" + p); currAct.AppendLine();
                                    }
                                }
                                currAct.Append("\t)");
                                currAct.AppendLine();                                
                            }
                            currAct.Append(")");
                            listOfUpdatedActions.Add(currAct);
                        }
                        else
                        {
                            StringBuilder currAct = new StringBuilder();
                            currAct.Append("(:action " + act.Name);
                            currAct.AppendLine();
                            currAct.Append("\t:parameters (");
                            foreach (Parameter param in act.Parameters)
                            {
                                currAct.Append(" " + param + " - " + param.Type);
                            }
                            currAct.Append(" )");
                            currAct.AppendLine();
                            currAct.Append("\t:precondition (and ");
                            Formula f = act.Preconditions;
                            currAct.AppendLine();
                            if (f.ToString().Contains("(or"))
                            {
                                foreach (Formula p in act.Preconditions.GetAllOperands())
                                {
                                    String p1 = p.ToString().Replace("\n", "");
                                    currAct.Append("\t\t" + p1.ToString()); currAct.AppendLine();
                                }
                            }
                            else
                            {
                                foreach (Predicate p in f.GetAllPredicates())
                                {
                                    currAct.Append("\t\t" + p); currAct.AppendLine();
                                }
                            }
                            currAct.Append("\t)");
                            currAct.AppendLine();

                            // add effect predicates
                            if (act.Effects != null)
                            {
                                currAct.Append("\t:effect (and ");
                                currAct.Append("\n\t\t" + act.Effects);                                
                                /*
                                // temporary fix: when an action has when clause
                                if (act.Effects.ToString().Contains("when"))
                                {
                                    List<Formula> lFormulas = act.Effects.GetAllOperands();
                                    foreach (Formula p in lFormulas)
                                    {
                                        HashSet<Predicate> allPredicates = act.Effects.GetAllPredicates();
                                        String p1 = p.ToString().Replace("\n", "");
                                        currAct.AppendLine();
                                        Console.WriteLine(act.Effects);
                                        currAct.Append("\t\t" + p1.ToString());                                        
                                    }
                                    // HashSet<Predicate> allPredicates = act.Effects.GetAllPredicates();
                                }
                                else
                                {
                                    HashSet<Predicate> allPredicates = act.Effects.GetAllPredicates();
                                    foreach (Predicate p in allPredicates)
                                    {
                                        currAct.Append(p.ToString() + " ");
                                    }
                                }
                                */

                                currAct.Append(" )");
                                currAct.AppendLine();
                                currAct.Append(")");
                            }
                            listOfUpdatedActions.Add(currAct);
                        }
                    }
                }

                // Just to capture all the newly added predicates
                listOfPredicates.Append(")");
                domainUpdate.WriteLine(listOfPredicates);
                foreach (StringBuilder act in listOfUpdatedActions)
                {
                    domainUpdate.WriteLine(act);
                }
                domainUpdate.WriteLine(")");
            }           
        }
    }
}

