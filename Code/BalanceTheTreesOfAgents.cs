using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System.IO;
using System.Threading;

namespace CPOR_MA
{
    class ComputePrecedingRelationsComparer : IEqualityComparer<ComputePrecedingRelations>
    {
        public bool Equals(ComputePrecedingRelations x, ComputePrecedingRelations y)
        {
            return (
                x.parent.ToLower().Equals(y.parent.ToLower()) 
                &&
                x.child.ToLower().Equals(y.child.ToLower())
                );
        }

        public int GetHashCode(ComputePrecedingRelations obj)
        {
            return (obj.parent + obj.child).ToLower().GetHashCode();
        }
    }

    public class ComputePrecedingRelations
    {
        public string parent;
        public string child;
        public ComputePrecedingRelations(string p, string c)
        {
            parent = p;
            child = c;
        }

        public override bool Equals(object obj)
        {
            return (
                this.parent.ToLower().Equals(((ComputePrecedingRelations)obj).parent.ToLower()) 
                &&
                this.child.ToLower().Equals(((ComputePrecedingRelations)obj).child.ToLower()));
        }

        public override int GetHashCode()
        {
            return (this.parent + this.child).ToLower().GetHashCode();
        }
    }

    public class BalanceTheTreesOfTheAgents
    {
        private static Dictionary<Constant, ConditionalPlanTreeNode> pListOfAgentsAndTheirPlanTrees = null;
        private static Dictionary<Constant, ConditionalPlanTreeNode> pListOfAgentsPlanTreesOut = null;
        private static Problem OrigProblem = null;
        private static HashSet<Constant> agentList = null;
        private static HashSet<Action> privateActions = null;
        private static HashSet<Action> publicActions = null;
        private static HashSet<String> allCollaborativeActions = null;
        private static HashSet<ComputePrecedingRelations> setOfCPR = null;
        private static StageTwoPlanPlusProblem oStageTwoPlanPlusProblem = null;

        /// <summary>
        /// </summary>
        /// <param name="lListOfConstants"></param>
        /// <param name="tree"></param>
        /// <param name="prob"></param>
        /// <param name="prvAct"></param>
        public BalanceTheTreesOfTheAgents (
            HashSet<Constant> lListOfConstants, 
            Dictionary<Constant, ConditionalPlanTreeNode> tree, Problem prob, HashSet<Action> prvAct, HashSet<Action> pubAct, StageTwoPlanPlusProblem stageTwoPlanPlusProblem)
        {
            agentList = lListOfConstants;
            pListOfAgentsAndTheirPlanTrees = tree;
            OrigProblem = prob;
            privateActions = prvAct;
            publicActions = pubAct;
            oStageTwoPlanPlusProblem = stageTwoPlanPlusProblem;
        }

        public static bool ArrangeAgentsPoliciesAsPerTeamPlanActionOrder()
        {
            ConditionalPlanTreeNode teamPlan = oStageTwoPlanPlusProblem.conditionalPlanTreeNode;
            Action aProvider = null;
            Dictionary<String, int> manageObservationsSensedByProvider = new Dictionary<string, int>();
            Dictionary<Constant, Dictionary<String, int>> manageObservationsSensedByProvider_agentwise = new Dictionary<Constant, Dictionary<string, int>>();
            Action aComsumer = null;
            Dictionary<String, int> manageObservationsSensedByConsumer = new Dictionary<string, int>();
            Dictionary<Constant, Dictionary<String, int>> manageObservationsSensedByConsumer_agentwise = new Dictionary<Constant, Dictionary<string, int>>();
            return GoOverEachLevelTeamPlan(
                teamPlan, aProvider, manageObservationsSensedByProvider, manageObservationsSensedByProvider_agentwise, 
                aComsumer, manageObservationsSensedByConsumer, manageObservationsSensedByConsumer_agentwise, publicActions);
        }

        private static bool LevelWhenProviderIsaJointAction(Dictionary<Constant, ConditionalPlanTreeNode> pListOfAgentsAndTheirPlanTrees,
            Action prov, Dictionary<String, int> mObsOfPro, Action consumerAct, Dictionary<String, int> mObsOfConsumer)
        {
            Constant agtType_1 = null;
            Constant agtType_2 = null;

            foreach (String str in prov.Name.ToLower().Split('_'))
            {
                foreach (Constant c in agentList)
                {
                    if (c.ToString().ToLower().Equals(str.ToLower()))
                    {
                        if (agtType_1 == null)
                            agtType_1 = c;
                        else
                            agtType_2 = c;
                    }
                }
            }

            // to level up the joint action - if producer is a JA
            // param whichLevelItFinalizedTheProvider justifies the level for the two agents' policies
            ConditionalPlanTreeNode ptAgt1 = new ConditionalPlanTreeNode();
            ConditionalPlanTreeNode ptAgt2 = new ConditionalPlanTreeNode();
            int whichLevelItFinalizedTheProvider = IfItIsAJointActionAlignAgentsPoliciesWRTitFirst(agtType_1, agtType_2, prov, mObsOfPro, ref ptAgt1, ref ptAgt2);

            if (whichLevelItFinalizedTheProvider > 0)
                pListOfAgentsPlanTreesOut[agtType_1] = ptAgt1;
            if (agtType_2 != null && whichLevelItFinalizedTheProvider > 0)
                pListOfAgentsPlanTreesOut[agtType_2] = ptAgt2;
            return true;
        }
        private static bool SoundOrderingsForProviderAndConsumerCombo(Dictionary<Constant, ConditionalPlanTreeNode> pListOfAgentsAndTheirPlanTrees, 
            Action prov, Dictionary<String, int> mObsOfPro, Action consumerAct, Dictionary<String, int> mObsOfConsumer)
        {
            Constant agtType_1 = null;
            Constant agtType_2 = null;
            Constant agtType_3 = null;
            Constant agtType_4 = null;

            foreach (String str in prov.Name.ToLower().Split('_'))
            {
                foreach (Constant c in agentList)
                {
                    if (c.ToString().ToLower().Equals(str.ToLower()))
                    {
                        if (agtType_1 == null)
                            agtType_1 = c;
                        else
                            agtType_2 = c;
                    }
                }
            }

            // to level up the joint action - if producer is a JA
            // param whichLevelItFinalizedTheProvider justifies the level for the two agents' policies
            ConditionalPlanTreeNode ptAgt1 = new ConditionalPlanTreeNode();
            ConditionalPlanTreeNode ptAgt2 = new ConditionalPlanTreeNode();
            int whichLevelItFinalizedTheProvider = IfItIsAJointActionAlignAgentsPoliciesWRTitFirst(agtType_1, agtType_2, prov, mObsOfPro, ref ptAgt1, ref ptAgt2);
            
            if(whichLevelItFinalizedTheProvider > 0)
                pListOfAgentsPlanTreesOut[agtType_1] = ptAgt1;
            if(agtType_2 != null && whichLevelItFinalizedTheProvider > 0)
                pListOfAgentsPlanTreesOut[agtType_2] = ptAgt2;

            // PrintTheBalancedAndLeveledPlanTrees();
            foreach (String str in consumerAct.Name.ToLower().Split('_'))
            {
                foreach (Constant c in agentList)
                    if (c.ToString().ToLower().Equals(str.ToLower()))
                    {
                        if (agtType_3 == null)
                            agtType_3 = c;
                        else
                            agtType_4 = c;
                    }
            }

            int currentLevel = 0;
            if (agtType_3 != null)
            {
                ConditionalPlanTreeNode cptn = pListOfAgentsPlanTreesOut[agtType_3];
                ConditionalPlanTreeNode newTree = new ConditionalPlanTreeNode();
                AlignIndividualAgentPolicyTrees(whichLevelItFinalizedTheProvider, ref currentLevel, consumerAct, mObsOfConsumer, cptn, ref newTree);
                pListOfAgentsPlanTreesOut[agtType_3] = newTree;
                // PrintTheBalancedAndLeveledPlanTrees();
            }
            if (agtType_4 != null)
            {
                ConditionalPlanTreeNode cptn = pListOfAgentsPlanTreesOut[agtType_4];
                ConditionalPlanTreeNode newTree = new ConditionalPlanTreeNode();
                AlignIndividualAgentPolicyTrees(whichLevelItFinalizedTheProvider, ref currentLevel, consumerAct, mObsOfConsumer, cptn, ref newTree);
                pListOfAgentsPlanTreesOut[agtType_4] = newTree;
                // PrintTheBalancedAndLeveledPlanTrees();
            }
            
            if (agtType_3 != null && agtType_4 != null)
            {
                ptAgt1 = new ConditionalPlanTreeNode();
                ptAgt2 = new ConditionalPlanTreeNode();
                
                IfItIsAJointActionAlignAgentsPoliciesWRTitFirst(agtType_3, agtType_4, consumerAct, mObsOfConsumer, ref ptAgt1, ref ptAgt2);
                pListOfAgentsPlanTreesOut[agtType_3] = ptAgt1;
                pListOfAgentsPlanTreesOut[agtType_4] = ptAgt2;
                // PrintTheBalancedAndLeveledPlanTrees();
            }
            return true;
        }

        private static ConditionalPlanTreeNode AlignIndividualAgentPolicyTrees(int threshouldLevel, ref int currLevel, Action consumer,
            Dictionary<String, int> mObsOfConsumer, ConditionalPlanTreeNode planTreeAgent, ref ConditionalPlanTreeNode newTree)
        {
            if (planTreeAgent == null)
                throw new NotImplementedException();

            int locCurrentLevel = currLevel;
            if (planTreeAgent.Action != null)
            {
                if (consumer.Name.ToLower().Equals(TrimLastElement(planTreeAgent.Action.Name.ToLower().Split('_'))) && threshouldLevel > locCurrentLevel)
                {
                    ConditionalPlanTreeNode balanced = new ConditionalPlanTreeNode(); 
                    ConditionalPlanTreeNode addNOOPs = new ConditionalPlanTreeNode();
                    AddNoops(threshouldLevel - currLevel, ref addNOOPs);
                    AppendSubTree(planTreeAgent, addNOOPs, ref balanced);
                    newTree = balanced;
                    return newTree;
                }
                else
                {
                    newTree.Action = planTreeAgent.Action;
                }
            }
            
            if(planTreeAgent.SingleChild != null)
            {
                ConditionalPlanTreeNode newTreeSC = new ConditionalPlanTreeNode();
                ConditionalPlanTreeNode singleCPTN = planTreeAgent.SingleChild;
                locCurrentLevel++;
                AlignIndividualAgentPolicyTrees(threshouldLevel, ref locCurrentLevel, consumer, mObsOfConsumer, singleCPTN, ref newTreeSC);
                newTree.SingleChild = newTreeSC;
            }

            if (planTreeAgent.FalseObservationChild != null)
            {
                string key = planTreeAgent.Action.Observe.ToString().ToLower();
                bool keyExists = mObsOfConsumer.ContainsKey(key);
                if (keyExists)
                {
                    if (mObsOfConsumer[key] == -1)
                    {
                        locCurrentLevel++;
                        ConditionalPlanTreeNode leftCPTN = planTreeAgent.FalseObservationChild;
                        ConditionalPlanTreeNode newTreeLeft = new ConditionalPlanTreeNode();
                        AlignIndividualAgentPolicyTrees(threshouldLevel, ref locCurrentLevel, consumer, mObsOfConsumer, leftCPTN, ref newTreeLeft);
                        newTree.FalseObservationChild = newTreeLeft;
                    }
                    else
                    {
                        newTree.FalseObservationChild = planTreeAgent.FalseObservationChild;
                    }
                }
                else
                {
                    newTree.FalseObservationChild = planTreeAgent.FalseObservationChild;
                }
            }
            if (planTreeAgent.TrueObservationChild != null)
            {
                string key = planTreeAgent.Action.Observe.ToString().ToLower();
                bool keyExists = mObsOfConsumer.ContainsKey(key);
                if (keyExists)
                {
                    if (mObsOfConsumer[key] == 1)
                    {
                        locCurrentLevel++;
                        ConditionalPlanTreeNode rightCPTN = planTreeAgent.TrueObservationChild;
                        ConditionalPlanTreeNode newTreeRight = new ConditionalPlanTreeNode();
                        AlignIndividualAgentPolicyTrees(threshouldLevel, ref locCurrentLevel, consumer, mObsOfConsumer, rightCPTN, ref newTreeRight);
                        newTree.TrueObservationChild = newTreeRight;
                    }
                    else
                    {
                        newTree.TrueObservationChild = planTreeAgent.TrueObservationChild;
                    }
                }
                else
                {
                    newTree.TrueObservationChild = planTreeAgent.TrueObservationChild;
                }
            }
            return new ConditionalPlanTreeNode();
        }

        private static int IfItIsAJointActionAlignAgentsPoliciesWRTitFirst(Constant agtType_1, Constant agtType_2,
            Action providerAction, Dictionary<String, int> mObsOfPro, ref ConditionalPlanTreeNode agtType_1_pt, ref ConditionalPlanTreeNode agtType_2_pt)
        {
            int count1 = 0;
            int count2 = 0;
            count1 = AtWhichLevelThisActionAppearsFollowingTheOBShistory(ref count1, providerAction, mObsOfPro, pListOfAgentsPlanTreesOut[agtType_1]);
            if(agtType_2 != null)
                count2 = AtWhichLevelThisActionAppearsFollowingTheOBShistory(ref count2, providerAction, mObsOfPro, pListOfAgentsPlanTreesOut[agtType_2]);

            int currLevel = 0;
            if ((count1 > count2) && agtType_2 != null)
            {
                // alignIndividualConsumerAgentPlanTrees(whichLevelItFinalizedTheProvider, ref currentLevel, consumerAct, mObsOfConsumer, cptn, ref newTree);
                // agtType_2_pt = AppendNoOPsToAlignTheAction(count1 - count2, ref currLevel, providerAction, mObsOfPro, ref agtType_2_pt);
                ConditionalPlanTreeNode cptn = pListOfAgentsPlanTreesOut[agtType_2];
                AlignIndividualAgentPolicyTrees(count1-1, ref currLevel, providerAction, mObsOfPro, cptn, ref agtType_2_pt);
                agtType_1_pt = pListOfAgentsPlanTreesOut[agtType_1];
                return count1;
            }
            else if((count2 > count1) && agtType_2 != null)
            {
                ConditionalPlanTreeNode cptn = pListOfAgentsPlanTreesOut[agtType_1];
                AlignIndividualAgentPolicyTrees(count2-1, ref currLevel, providerAction, mObsOfPro, cptn, ref agtType_1_pt);
                agtType_2_pt = pListOfAgentsPlanTreesOut[agtType_2];
                return count2;
            }

            if (count1 == count2 && count2 != 0)
            {
                agtType_1_pt = pListOfAgentsPlanTreesOut[agtType_1];
                agtType_2_pt = pListOfAgentsPlanTreesOut[agtType_2];
            }

            if (agtType_2 == null)
                agtType_1_pt = pListOfAgentsPlanTreesOut[agtType_1];

            return count1;
        }
        private static ConditionalPlanTreeNode AppendNoOPsToAlignTheAction (int howManyNOPs, ref int currLevel, Action prov, Dictionary<String, int> mObsOfPro, ref ConditionalPlanTreeNode planTreeAgent)
        {
            while (planTreeAgent.SingleChild != null)
            {
                if (planTreeAgent.Action != null)
                {
                    currLevel++;                    
                    if (prov.Name.ToLower().Equals(TrimLastElement(planTreeAgent.Action.Name.ToLower().Split('_'))))
                    {
                        ConditionalPlanTreeNode localParent = planTreeAgent.SingleParent;
                        ConditionalPlanTreeNode localChild = planTreeAgent;
                        ConditionalPlanTreeNode addNOOPs = new ConditionalPlanTreeNode();
                        AddNoops(howManyNOPs, ref addNOOPs);
                        localParent.SingleChild = addNOOPs;
                        localParent.SingleChild = localChild;
                        return localParent;
                    }
                    planTreeAgent = planTreeAgent.SingleChild;
                }
            }
            if (planTreeAgent.FalseObservationChild != null)
            {
                if (mObsOfPro[planTreeAgent.Action.Observe.ToString().ToLower()] == -1)
                {
                    int locCount = currLevel++;
                    ConditionalPlanTreeNode leftTree = new ConditionalPlanTreeNode();
                    AppendNoOPsToAlignTheAction(howManyNOPs, ref locCount, prov, mObsOfPro, ref leftTree);
                    return leftTree;
                }
            }

            if (planTreeAgent.TrueObservationChild != null)
            {
                if (mObsOfPro[planTreeAgent.Action.Observe.ToString().ToLower()] == 1)
                {
                    int locCount = currLevel++;
                    ConditionalPlanTreeNode rightTree = planTreeAgent.TrueObservationChild;
                    AppendNoOPsToAlignTheAction(howManyNOPs, ref locCount, prov, mObsOfPro, ref rightTree);
                    return rightTree;
                }
            }
            return new ConditionalPlanTreeNode();
        }

        public static string TrimLastElement(string[] arr)
        {
            string[] arr1 = arr.Take(arr.Length - 1).ToArray();
            string newStr = "";
            for(int s= 0; s < arr1.Length - 1; s++)
                newStr += arr1[s] + "_";

            if ((arr1.Length - 1) < 0) // for no-operation
                return newStr;

            return newStr + arr1[arr1.Length-1];
        }

        private static int 
            AtWhichLevelThisActionAppearsFollowingTheOBShistory(ref int count, Action prov, Dictionary<String, int> mObsOfPro, ConditionalPlanTreeNode agtType_1_pt)
        {
            int locCount = count;
            while (agtType_1_pt.SingleChild != null)
            {
                if (agtType_1_pt.Action != null)
                {
                    locCount = locCount + 1;
                    string crudeActionName = TrimLastElement(agtType_1_pt.Action.Name.ToLower().Split('_'));
                    if (prov.Name.ToLower().Equals(crudeActionName))
                    {
                        return locCount;
                    }
                    agtType_1_pt = agtType_1_pt.SingleChild;
                }
            }
            if(agtType_1_pt.FalseObservationChild != null)
            {
                string key = agtType_1_pt.Action.Observe.ToString().ToLower();
                bool keyExists = mObsOfPro.ContainsKey(key);
                if (keyExists)
                {
                    if (mObsOfPro[key] == -1)
                    {
                        locCount = locCount + 1;
                        return AtWhichLevelThisActionAppearsFollowingTheOBShistory(ref locCount, prov, mObsOfPro, agtType_1_pt.FalseObservationChild);
                    }
                }
            }

            if (agtType_1_pt.TrueObservationChild != null)
            {
                string key = agtType_1_pt.Action.Observe.ToString().ToLower();
                bool keyExists = mObsOfPro.ContainsKey(key);
                if (keyExists)
                {
                    if (mObsOfPro[key] == 1)
                    {
                        locCount = locCount + 1;
                        return AtWhichLevelThisActionAppearsFollowingTheOBShistory(ref locCount, prov, mObsOfPro, agtType_1_pt.TrueObservationChild);
                    }
                }
            }
            return locCount;
        }

        private static bool GoOverEachLevelTeamPlan(ConditionalPlanTreeNode teamPlan,
            Action prov, Dictionary<String, int> mObsOfPro, 
            Dictionary<Constant, Dictionary<String, int>> mObsOfPro_agentwise,
            Action cons, Dictionary<String, int> mObsOfCons, Dictionary<Constant, Dictionary<String, int>> mObsOfCons_agentwise, HashSet<Action> publicActions)
        {
            Action aProvider = prov;
            Dictionary<String, int> manageObservationsSensedByProvider = mObsOfPro;
            Dictionary<Constant, Dictionary<String, int>> manageObservationsSensedByProvider_agentwise = mObsOfPro_agentwise;
            Action aComsumer = cons;
            Dictionary<String, int> manageObservationsSensedByConsumer = mObsOfCons;
            Dictionary<Constant, Dictionary<String, int>> manageObservationsSensedByConsumer_agentwise = mObsOfCons_agentwise;
            bool success = true;

            while (teamPlan.SingleChild != null)
            {
                if (teamPlan.Action != null)
                {
                    foreach (Action pubAct in publicActions)
                    {
                        if (teamPlan.Action.Name.Split('_')[0].ToLower().Equals(pubAct.Name.ToLower()))
                        {
                            if (aProvider != null)
                            {
                                aComsumer = teamPlan.Action;

                                // Console.WriteLine("stop!");
                                // Console.WriteLine(aProvider.Name);
                                // Console.WriteLine(aComsumer.Name);
                                success = SoundOrderingsForProviderAndConsumerCombo(
                                    pListOfAgentsAndTheirPlanTrees, aProvider, manageObservationsSensedByProvider, aComsumer, manageObservationsSensedByConsumer);
                                
                                /** consumer becomes the new provider, also takes its conditions **/
                                aProvider = aComsumer;
                                manageObservationsSensedByProvider = new Dictionary<string, int>();
                                foreach (KeyValuePair<string, int> kv in manageObservationsSensedByConsumer)
                                    manageObservationsSensedByProvider.Add(kv.Key, kv.Value);
                                aComsumer = null;                                
                                // PrintTheBalancedAndLeveledPlanTrees();
                                // Console.Write("");
                            }
                            else
                            {
                                aProvider = teamPlan.Action;
                                // Console.WriteLine(aProvider.Name);
                                // in case the first action is a joint action
                                success = LevelWhenProviderIsaJointAction(
                                    pListOfAgentsAndTheirPlanTrees, aProvider, manageObservationsSensedByProvider, aComsumer, manageObservationsSensedByConsumer);
                                // PrintTheBalancedAndLeveledPlanTrees();
                                // Console.Write("");
                            }
                        }
                    }
                }
                teamPlan = teamPlan.SingleChild;
            }

            if (teamPlan.FalseObservationChild != null)
            {
                if (teamPlan.Action.Observe.GetAllPredicates().Count > 1)
                    throw new NotImplementedException();

                // local copies of observations
                Dictionary<String, int> manageObservationsSensedByProviderFalse = new Dictionary<string, int>();
                foreach (KeyValuePair<String, int> kv in mObsOfPro)
                    manageObservationsSensedByProviderFalse.Add(kv.Key, kv.Value);
                Dictionary<String, int> manageObservationsSensedByConsumerFalse = new Dictionary<string, int>();
                foreach (KeyValuePair<String, int> kv in mObsOfCons)
                    manageObservationsSensedByConsumerFalse.Add(kv.Key, kv.Value);

                if (aProvider == null && teamPlan.TrueObservationChild != null)
                {
                    manageObservationsSensedByProviderFalse.Add(teamPlan.Action.Observe.ToString(), -1);
                    manageObservationsSensedByConsumerFalse.Add(teamPlan.Action.Observe.ToString(), -1);
                }
                else if (aProvider != null && aComsumer == null && teamPlan.TrueObservationChild != null)
                {
                    manageObservationsSensedByConsumerFalse.Add(teamPlan.Action.Observe.ToString(), -1);
                }
                else
                {
                    Console.WriteLine("not Implemented Exception!");
                }
                GoOverEachLevelTeamPlan(teamPlan.FalseObservationChild, aProvider, manageObservationsSensedByProviderFalse, null, 
                    aComsumer, manageObservationsSensedByConsumerFalse, null, publicActions);
            }

            if (teamPlan.TrueObservationChild != null)
            {
                if (teamPlan.Action.Observe.GetAllPredicates().Count > 1)
                    throw new NotImplementedException();

                // local copies of observations
                Dictionary<String, int> manageObservationsSensedByProviderTrue = new Dictionary<string, int>();
                foreach (KeyValuePair<String, int> kv in mObsOfPro)
                    manageObservationsSensedByProviderTrue.Add(kv.Key, kv.Value);
                Dictionary<String, int> manageObservationsSensedByConsumerTrue = new Dictionary<string, int>();
                foreach (KeyValuePair<String, int> kv in mObsOfCons)
                    manageObservationsSensedByConsumerTrue.Add(kv.Key, kv.Value);

                if (aProvider == null && teamPlan.FalseObservationChild != null)
                {
                    manageObservationsSensedByProviderTrue.Add(teamPlan.Action.Observe.ToString(), 1);
                    manageObservationsSensedByConsumerTrue.Add(teamPlan.Action.Observe.ToString(), 1);
                }
                else if (aProvider != null && aComsumer == null && teamPlan.FalseObservationChild != null)
                {
                    manageObservationsSensedByConsumerTrue.Add(teamPlan.Action.Observe.ToString(), 1);
                }
                else
                {
                    Console.WriteLine("not Implemented Exception!");
                }
                GoOverEachLevelTeamPlan(teamPlan.TrueObservationChild, aProvider, manageObservationsSensedByProviderTrue, null, 
                    aComsumer, manageObservationsSensedByConsumerTrue, null, publicActions);
            }
            return success;
        }

        /// <summary>
        /// True or false depending on whether the trees can be balanced
        /// </summary>
        /// <returns></returns>
        public static Boolean CanIndependentTreesBeBalancedForJAs()
        {       
            pListOfAgentsPlanTreesOut = new Dictionary<Constant, ConditionalPlanTreeNode>();
            Console.WriteLine();
            allCollaborativeActions = new HashSet<string>();            
            foreach (KeyValuePair<Constant, ConditionalPlanTreeNode> KeyValue in pListOfAgentsAndTheirPlanTrees)
            {
                ConditionalPlanTreeNode outTree = new ConditionalPlanTreeNode();
                RemoveAuxiliaryTextAndActions(KeyValue.Value, ref outTree);

                //* Variable pListOfAgentsPlanTreesOut contains agents' plans without auxiliary text *//
                //* Had appended it in the action names to make them unique. *//
                pListOfAgentsPlanTreesOut.Add(KeyValue.Key, outTree);

                //** print all the plans as they are: actions appear the way they are modeled in the original domain. **//
                Console.WriteLine("Before balancing, the plan tree for agent - " + KeyValue.Key);
                StringBuilder sb = new StringBuilder();
                ProjectionOfSATree.RecPrint(outTree, 0, "", ref sb);
                Console.WriteLine(sb);

                // UniqueJointActions(outTree, ref allCollaborativeActions);
            }

            if (!BalanceTheTreesOfTheAgents.ArrangeAgentsPoliciesAsPerTeamPlanActionOrder())
                return false;
            else
                PrintTheBalancedAndLeveledPlanTrees();

            return true;
            // return BalanceTheSubtrees(pListOfAgentsPlanTreesOut);
        }

        /// <summary>
        /// Prints all the trees if they are possible to balance
        /// </summary>
        /// <param name="keyValuePairs"></param>
        /// <returns> T\F </returns>
        public static Boolean BalanceTheSubtrees(Dictionary<Constant, ConditionalPlanTreeNode> pListOfAgentsAndTheirPlanTrees)
        {
            setOfCPR = new HashSet<ComputePrecedingRelations>(new ComputePrecedingRelationsComparer());
            foreach (KeyValuePair<Constant, ConditionalPlanTreeNode> keyValue in pListOfAgentsAndTheirPlanTrees)
            {
                Constant agt = keyValue.Key;
                ConditionalPlanTreeNode planTree = keyValue.Value;                
                MethodToComputeAllPrecedingRelations(planTree, ref setOfCPR);
                if (AreThePrecedingRelationsConflicting(setOfCPR))
                {
                    return false;
                }
            }

            while (allCollaborativeActions.Count > 0)
            {
                /// step:1
                Dictionary<string, HashSet<int>> dictActionIndexing = new Dictionary<string, HashSet<int>>();
                GenerateIndexingForCollActions(pListOfAgentsAndTheirPlanTrees, ref dictActionIndexing);

                /// step 2: compute the max index
                int maxIndex = 0;
                foreach(KeyValuePair<string, HashSet<int>> keyValue in dictActionIndexing)
                {
                    foreach(int index in keyValue.Value)
                    {
                        if (maxIndex < index)
                        {
                            maxIndex = index;
                        }
                    }
                }

                /// step: 3 (run a for loop)
                /// shashank - change: index <= maxIndex; earlier index < maxIndex;
                string nextActionToArrange = "";
                int maxActionIndex = 0;
                for (int index = 1; index <= maxIndex; index++)
                {
                    HashSet<string> relevantAct = new HashSet<string>();
                    foreach(string pa in allCollaborativeActions)
                    {
                        HashSet<int> set;
                        dictActionIndexing.TryGetValue(pa, out set);
                        if (set.Count > 0)
                        {
                            if (set.Contains(index))
                            {
                                relevantAct.Add(pa);
                            }
                        }
                    }
                    
                    foreach(string str in relevantAct)
                    {
                        bool choose = true;
                        foreach(ComputePrecedingRelations cpr in setOfCPR)
                        {
                            if (cpr.child.Equals(str))
                            {
                                choose = false;
                                break;
                            }
                        }
                        if (choose)
                        {
                            nextActionToArrange = str;
                            HashSet<int> set;
                            dictActionIndexing.TryGetValue(str, out set);
                            maxActionIndex = set.Max();
                            break;
                        }
                        if (choose) break;
                    }
                }

                /// step: 4 rearrange the trees
                Dictionary<Constant, ConditionalPlanTreeNode> copyList = new Dictionary<Constant, ConditionalPlanTreeNode>();
                RearrangeThisActionInAllIndPlanTress(
                    ref copyList, nextActionToArrange, maxActionIndex, ref pListOfAgentsAndTheirPlanTrees);
                pListOfAgentsAndTheirPlanTrees = copyList;

                /// step: 5 remove old data
                allCollaborativeActions.Remove(nextActionToArrange);
                HashSet<ComputePrecedingRelations> setOfRefinedCPR = new HashSet<ComputePrecedingRelations>();
                foreach(ComputePrecedingRelations cpr in setOfCPR)
                {
                    if(cpr.child.Equals(nextActionToArrange) || cpr.parent.Equals(nextActionToArrange))
                    {
                        Console.Write("");
                    }
                    else
                        setOfRefinedCPR.Add(cpr);
                }
                setOfCPR = setOfRefinedCPR;
            }

            /// Print the balanced plan trees
            /*int maxWidth = 0, maxHeight = 0;
            foreach (KeyValuePair<Constant, ConditionalPlanTreeNode> kv in pListOfAgentsAndTheirPlanTrees)
            {
                int size = ProjectionOfSATree.GetLeafCount(kv.Value);
                int depth = ProjectionOfSATree.GetDepthOfTree(kv.Value);
                if (size > maxWidth) maxWidth = size;
                if (depth > maxHeight) maxHeight = depth;

                Console.WriteLine("\nExecutable Plan Tree for " + kv.Key);
                StringBuilder sb = new StringBuilder();
                ProjectionOfSATree.RecPrint(kv.Value, 0, "", ref sb);
                Console.Write(sb);

            }
            Console.WriteLine("\n\nOverall Maximum Tree Width: " + maxWidth);
            Console.WriteLine("Overall Maximum Tree Height: " + maxHeight);*/
            
            PrintTheBalancedAndLeveledPlanTrees();

            return true;
        }

        private static void PrintTheBalancedAndLeveledPlanTrees()
        {
            int maxWidth = 0, maxHeight = 0;
            foreach (KeyValuePair<Constant, ConditionalPlanTreeNode> kv in pListOfAgentsPlanTreesOut)
            {
                int size = ProjectionOfSATree.GetTheNumbeofLeaves(kv.Value);
                int depth = ProjectionOfSATree.GetDepthOfTree(kv.Value);
                if (size > maxWidth) maxWidth = size;
                if (depth > maxHeight) maxHeight = depth;

                Console.WriteLine("\nExecutable Plan Tree for " + kv.Key);
                StringBuilder sb = new StringBuilder();
                ProjectionOfSATree.RecPrint(kv.Value, 0, "", ref sb);
                Console.Write(sb);

            }
            Console.WriteLine("\n\nOverall Maximum Tree Width: " + maxWidth);
            Console.WriteLine("Overall Maximum Tree Height: " + maxHeight);
        }

        private static 
            void RearrangeThisActionInAllIndPlanTress (ref Dictionary<Constant, ConditionalPlanTreeNode> copyList,
            string nextActionToArrange, int maxActionIndex, ref Dictionary<Constant, ConditionalPlanTreeNode> pList)
        {
            foreach(KeyValuePair<Constant, ConditionalPlanTreeNode> kv in pList)
            {
                ConditionalPlanTreeNode newTree = new ConditionalPlanTreeNode();
                BalanceThisTree(kv.Value, nextActionToArrange, maxActionIndex, 1, ref newTree);
                copyList.Add(kv.Key, newTree);
            }
        }

        private static ConditionalPlanTreeNode AddNoops(int difference, ref ConditionalPlanTreeNode noops)
        {
            if (difference == 0)
            {
                return noops;
            }
            else
            {
                ConditionalPlanTreeNode cpln = new ConditionalPlanTreeNode(); 
                noops.Action = new Action("no-operation");
                noops.SingleChild = AddNoops(difference - 1, ref cpln);
            }
            return noops;
        }

        private static ConditionalPlanTreeNode AppendSubTree(
            ConditionalPlanTreeNode root, ConditionalPlanTreeNode noop, ref ConditionalPlanTreeNode outT)
        {
            if(noop.Action != null)
            {
                outT.Action = noop.Action;
            }
            if(noop.SingleChild != null)
            {
                ConditionalPlanTreeNode cptn = new ConditionalPlanTreeNode();
                outT.SingleChild =  AppendSubTree(root, noop.SingleChild, ref cptn);
            }
            if(noop.Action == null && noop != null)
            {
                outT = root;
            }
            return outT;
        }

        private static ConditionalPlanTreeNode BalanceThisTree (ConditionalPlanTreeNode root,
            string nextActionToArrange, int maxActionIndex, int currentIndex, ref ConditionalPlanTreeNode newTree)
        {
            if(root == null)
            {
                throw new NotImplementedException("*");
            }
            if(root.Action != null)
            {
                if(root.Action.Name.Contains(nextActionToArrange))
                {
                    if (maxActionIndex == currentIndex)
                    {
                        newTree.Action = root.Action;                         
                    }
                    else
                    {
                        ConditionalPlanTreeNode noop = new ConditionalPlanTreeNode();
                        ConditionalPlanTreeNode balanced = new ConditionalPlanTreeNode();
                        AddNoops(maxActionIndex - currentIndex, ref noop);
                        AppendSubTree(root, noop, ref balanced);
                        newTree = balanced;
                        return balanced;
                    }
                }
                else
                {
                    newTree.Action = root.Action;
                }
            }
            if (root.SingleChild != null)
            {
                ConditionalPlanTreeNode sc = new ConditionalPlanTreeNode();
                BalanceThisTree(root.SingleChild, nextActionToArrange, maxActionIndex, currentIndex + 1, ref sc);
                newTree.SingleChild = sc;
            }
            if (root.FalseObservationChild != null)
            {
                ConditionalPlanTreeNode sc = new ConditionalPlanTreeNode();
                BalanceThisTree(root.FalseObservationChild, nextActionToArrange, maxActionIndex, currentIndex + 1, ref sc);
                newTree.FalseObservationChild = sc;
            }
            if (root.TrueObservationChild != null)
            {
                ConditionalPlanTreeNode sc = new ConditionalPlanTreeNode();
                BalanceThisTree(root.TrueObservationChild, nextActionToArrange, maxActionIndex, currentIndex + 1, ref sc);
                newTree.TrueObservationChild = sc;
            }
            return new ConditionalPlanTreeNode();
        }

        private static void GenerateIndexingForCollActions (Dictionary<Constant, 
            ConditionalPlanTreeNode> pListOfAgentsAndTheirPlanTrees, ref Dictionary<string, HashSet<int>> dict)
        {
            foreach (KeyValuePair< Constant, ConditionalPlanTreeNode> keyValue in pListOfAgentsAndTheirPlanTrees)
            {
                GenerateIndexing(keyValue.Value, ref dict, 1);   
            }            
        }

        private static 
            void GenerateIndexing(ConditionalPlanTreeNode root, ref Dictionary<string, HashSet<int>> dict, int index)
        {
            if (root == null)
            {
                throw new NotImplementedException("*");
            }
            if(root.SingleChild != null)
            {
                GenerateIndexing(root.SingleChild, ref dict, index+1);
            }
            if (root.FalseObservationChild != null)
            {
                GenerateIndexing(root.FalseObservationChild, ref dict, index+1);
            }
            if (root.TrueObservationChild != null)
            {
                GenerateIndexing(root.TrueObservationChild, ref dict, index+1);
            }
            if(root.Action != null)
            {
                foreach(string pa in allCollaborativeActions)
                {
                    if(root.Action.Name.Contains(pa))
                    {
                        HashSet<int> set; 
                        dict.TryGetValue(pa, out set);
                        if (dict.ContainsKey(pa))
                        {
                            set.Add(index);
                            dict.Remove(pa);
                            dict.Add(pa, set);
                        }
                        else
                        {
                            set = new HashSet<int>();
                            set.Add(index);
                            dict.Add(pa, set);
                        }
                    }
                }
            }
        }

        private static bool AreThePrecedingRelationsConflicting(HashSet<ComputePrecedingRelations> setOfCPR)
        {
            foreach(ComputePrecedingRelations cprFirst in setOfCPR)
            {
                foreach (ComputePrecedingRelations cprSec in setOfCPR)
                {
                    if(!cprFirst.Equals(cprSec))
                    {
                        if (cprFirst.parent.Equals(cprSec.child) && cprFirst.child.Equals(cprSec.parent))
                            return true;
                    }
                }
            }
            return false;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="node"></param>
        /// <param name="setOfCPreRel"></param>
        /// <returns></returns>
        private static List<string> 
            MethodToComputeAllPrecedingRelations(ConditionalPlanTreeNode node, ref HashSet<ComputePrecedingRelations> setOfCPreRel)
        {
            List<string> preRelSingleChild = new List<string>();
            List<string> preRelFalseObsChild = new List<string>();
            List<string> preRelTrueObsChild = new List<string>(); 
            if (node == null)
            {
                throw new NotImplementedException("**");
            }
            if(node.SingleChild != null)
            {
                preRelSingleChild = MethodToComputeAllPrecedingRelations(node.SingleChild, ref setOfCPreRel);
            }
            if (node.FalseObservationChild != null)
            {
                preRelFalseObsChild = MethodToComputeAllPrecedingRelations(node.FalseObservationChild, ref setOfCPreRel);
            }
            if (node.TrueObservationChild != null)
            {
                preRelTrueObsChild = MethodToComputeAllPrecedingRelations(node.TrueObservationChild, ref setOfCPreRel);
            }
            if (node.Action != null)
            {
                List<string> allActionsUnderThisSubtree = new List<string>();
                foreach (string pubAct in allCollaborativeActions)
                {
                    if (node.Action.Name.Contains(pubAct))
                    {
                        allActionsUnderThisSubtree.Add(pubAct);
                        foreach (string chld in preRelSingleChild)
                        {
                            ComputePrecedingRelations relation = new ComputePrecedingRelations(pubAct, chld);
                            setOfCPreRel.Add(relation);
                            if(AreThePrecedingRelationsConflicting(setOfCPreRel))
                            {
                                Console.Write("");
                            }
                        }
                        foreach (string chld in preRelFalseObsChild)
                        {
                            ComputePrecedingRelations relation = new ComputePrecedingRelations(pubAct, chld);
                            setOfCPreRel.Add(relation);
                            if (AreThePrecedingRelationsConflicting(setOfCPreRel))
                            {
                                Console.Write("");
                            }
                        }
                        foreach (string chld in preRelTrueObsChild)
                        {
                            ComputePrecedingRelations relation = new ComputePrecedingRelations(pubAct, chld);
                            setOfCPreRel.Add(relation);
                            if (AreThePrecedingRelationsConflicting(setOfCPreRel))
                            {
                                Console.Write("");
                            }
                        }
                    }
                    /// could have used braek; later
                }
                foreach (string chld in preRelSingleChild)
                {
                    allActionsUnderThisSubtree.Add(chld);
                }
                foreach (string chld in preRelFalseObsChild)
                {
                    allActionsUnderThisSubtree.Add(chld);
                }
                foreach (string chld in preRelTrueObsChild)
                {
                    allActionsUnderThisSubtree.Add(chld);
                }
                return allActionsUnderThisSubtree;
            }
            return new List<string>();
        }

        /// <summary>
        /// Goes over all the nodes in the plan tree and fetches unique interacting actions
        /// </summary>
        /// <param name="node"> Final solution tree for an agent </param>
        /// <param name="uniqueJointActions"> ref: set of unique interacting actions </param>
        /// <returns> Set of interacting actions </returns>
        public static 
            HashSet<String> UniqueJointActions(ConditionalPlanTreeNode node, ref HashSet<String> uniqueJointActions)
        {
            if (node == null)
            {
                return null;
            }
            if (node.SingleChild != null)
            {
                UniqueJointActions(node.SingleChild, ref uniqueJointActions);
            }
            if (node.FalseObservationChild != null)
            {
                UniqueJointActions(node.FalseObservationChild, ref uniqueJointActions);
            }
            if (node.TrueObservationChild != null)
            {
                UniqueJointActions(node.TrueObservationChild, ref uniqueJointActions);
            }
            if (node.Action != null)
            {
                /// Since in all the domains, the interaction would be happenning among 
                /// the agents' actions only as per the schemas of collaborative actions. 
                /// I will give a better way to check this, when? Meanwhile:
                if (node.Action.Name.Contains("joint-")) 
                {
                    String[] splitName = node.Action.Name.Split('_');
                    string jointActname = "";
                    for (int i = 0; i < splitName.Length - 1; i++)
                    {
                        if (i < splitName.Length - 2)
                            jointActname = jointActname + splitName[i] + "_";
                        else
                            jointActname = jointActname + splitName[i];
                    }
                    uniqueJointActions.Add(jointActname);
                }
            }
            return uniqueJointActions;
        }

        /// <summary>
        /// Did you have actions with different names such that the name of an action is not a substring of any other
        /// actions' name
        /// Removes all the tricks: extra actions (note that I had to give different names as CPOR cannot accept 
        /// two actions with same names with different sets of parameters).
        /// </summary>
        /// <param name="node"></param>
        /// <param name="nodeOut"></param>
        /// <returns></returns>
        public static ConditionalPlanTreeNode
            RemoveAuxiliaryTextAndActions(ConditionalPlanTreeNode node, ref ConditionalPlanTreeNode nodeOut)
        {
            ConditionalPlanTreeNode n1 = new ConditionalPlanTreeNode();
            if (node == null)
            {
                return null;
            }
            if (node.Action == null)
            {
                return null;
            }
            if (node.Action != null)
            {
                while (node.Action != null)
                {
                    string actOrgName = node.Action.Name.ToString();
                    if (!actOrgName.Contains("dummy-") && !actOrgName.Contains("obs-") && !actOrgName.Contains("goal-achieve"))
                    {
                        String[] actionSplit = actOrgName.ToString().Split('_');
                        String actionName = "";
                        foreach (Action ac in OrigProblem.Domain.Actions)
                        {
                            if (actionSplit[1].Contains(ac.Name) && !actionSplit[1].Equals(ac.Name))
                            {
                                String[] nameSplit = actionSplit[1].Split('-');
                                string nName = nameSplit[0];
                                for (int i = 1; i < nameSplit.Length - 1; i++)
                                {
                                    if (!nName.ToLower().Equals(ac.Name.ToLower()))
                                        nName += "-" + nameSplit[i];
                                    else
                                        break;
                                }
                                
                                /*
                                for (int i = 1; i < nameSplit.Length - 1; i++)
                                {
                                    foreach (Argument ar in OrigProblem.Domain.Constants)
                                    {
                                        if (ar.ToString().Equals(nameSplit[i]))
                                        {
                                            nName = nName + "-" + nameSplit[i];
                                        }
                                    }
                                }
                                */

                                actionSplit[1] = nName;
                                
                                // throw new NotImplementedException("Joint-push and joint-push-x7h - ERROR!!");
                            }
                        }
                        for (int i = 1; i < actionSplit.Length; i++)
                        {
                            if (i < actionSplit.Length - 1)
                            {
                                actionName = actionName + actionSplit[i] + "_";
                            }
                            else
                            {
                                actionName = actionName + actionSplit[i];
                            }
                        }
                        foreach (Action acti in privateActions)
                        {
                            if (acti.Name.Equals(actionSplit[0]))
                            {
                                actionName = actOrgName;
                            }
                        }
                        Action act = new Action(actionName);
                        act.Preconditions = node.Action.Preconditions;
                        act.Effects = node.Action.Effects;
                        act.Observe = node.Action.Observe;
                        nodeOut.Action = act;
                        break;
                    }
                    else
                        node = node.SingleChild;
                }
            }
            if (node.SingleChild != null)
            {
                n1 = new ConditionalPlanTreeNode();
                nodeOut.SingleChild = RemoveAuxiliaryTextAndActions(node.SingleChild, ref n1);
            }
            if (node.FalseObservationChild != null)
            {
                n1 = new ConditionalPlanTreeNode();
                nodeOut.FalseObservationChild = RemoveAuxiliaryTextAndActions(node.FalseObservationChild, ref n1);
            }
            if (node.TrueObservationChild != null)
            {
                n1 = new ConditionalPlanTreeNode();
                nodeOut.TrueObservationChild = RemoveAuxiliaryTextAndActions(node.TrueObservationChild, ref n1);
            }
            return nodeOut;
        }
    }
}
