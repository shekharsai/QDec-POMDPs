using System;
using System.Collections.Generic;

namespace CPOR_MA
{
    public class PrivatePublicInfoExtraction
    {
        private static Domain domain = null;
        private static HashSet<Action> getAllPublicActions = null;
        private static HashSet<Action> getAllPrivateActions = null;
        private static HashSet<Action> allActions = null;

        private static HashSet<Predicate> getAllPublicPredicates = null;
        private static HashSet<Predicate> getAllPrivatePredicates = null;
        private static HashSet<Predicate> allPredicate = null;

        public PrivatePublicInfoExtraction(Domain dom)
        {
            domain = dom;
            allPredicate = new HashSet<Predicate>();
            allActions = new HashSet<Action>();
            foreach (Predicate pre in domain.Predicates) 
            {
                allPredicate.Add(pre);
            }
            foreach (Action act in domain.Actions)
            {
                allActions.Add(act);
            }
        }

        public static HashSet<Predicate> GetAllPublicPredicates()
        {
            getAllPublicPredicates = new HashSet<Predicate>();            
            for (int i=0; i<domain.Actions.Count; i++)
            {
                Action actOrg = domain.Actions[i];
                Formula precond = actOrg.Preconditions;
                foreach (Predicate pred in precond.GetAllPredicates())
                {                    
                    /// some hard coded rules
                    string domName = domain.Name.ToLower();

                    ParametrizedPredicate pPred = (ParametrizedPredicate)pred;
                    
                    //signaling:
                    if (pPred.ToString().Contains("can-"))
                        continue;

                    bool x3 = false;
                    foreach (Argument arg in pPred.GetAllArgument())
                    {
                        if (
                            ( arg.Type.ToLower().Equals("table") && domName.Contains("table") ) 
                            || 
                            ( 
                                ( arg.Type.ToLower().Equals("box") || arg.Type.ToLower().Equals("bulb") )
                                    && domName.Contains("box")
                            )
                        )
                        {
                            getAllPublicPredicates.Add(pred);
                            x3 = true;
                        }
                    }
                    if (x3) continue;

                    x3 = false;
                    pPred = (ParametrizedPredicate) pred;
                    foreach (Argument arg in pPred.GetAllArgument())
                    {
                        if (
                            arg.Type.ToLower().Equals("agent") || arg.Type.ToLower().Equals("number"))
                        {
                            x3 = true; break;
                        }
                    }
                    if (x3)
                        continue;

                    bool pubPred = false;
                    for (int j = 0; j < domain.Actions.Count; j++)
                    {
                        if (i == j)
                            continue;
                        Action act = domain.Actions[j];
                        Formula form = null;
                        if (act.Effects != null)
                            form = act.Effects;
                        else if (act.Observe != null)
                            form = act.Observe;

                        foreach (Predicate p in form.GetAllPredicates())
                        {
                            bool x1 = false, x2 = true;
                            if (p.Name.Equals(pred.Name))
                            {
                                x1 = true;
                            }
                            if (!x1)
                                continue;                            
                            else
                            {
                                ParametrizedPredicate pp = (ParametrizedPredicate)p;                                
                                int count = 0;                                
                                foreach (Argument arg in pp.GetAllArgument())
                                {
                                    if (!arg.Type.ToLower().Equals(pPred.GetAllArgument()[count++].Type.ToLower()))
                                    {
                                        x2 = false; break;
                                    }
                                }
                            }
                            if (x2)
                            {
                                pubPred = true; break;
                            }
                        }                        
                        if (pubPred) break;
                    }
                    if (pubPred) getAllPublicPredicates.Add(pred);
                }
            }            
            return getAllPublicPredicates;
        }

        public static HashSet<Predicate> GetAllPrivatePredicates()
        {
            getAllPrivatePredicates = new HashSet<Predicate>();
            foreach (Predicate pre in allPredicate)
            {
                bool add = true;
                foreach (Predicate p in getAllPublicPredicates)
                    if (pre.Name.ToLower().Equals(p.Name.ToLower()))
                        add = false;

                if (add) getAllPrivatePredicates.Add(pre);
            }                        
            return getAllPrivatePredicates;
        }

        public static HashSet<Action> GetAllPublicActions()
        {
            getAllPublicActions = new HashSet<Action>();            
            foreach(Action act in allActions)
            {
                if (act.Name.ToString().ToLower().Contains("fly-") || act.Name.ToString().ToLower().Contains("drive-"))
                {
                    getAllPublicActions.Add(act); continue;
                }
                if (act.Name.ToString().ToLower().Contains("observe-") )
                {
                    getAllPublicActions.Add(act); continue;
                }

                if (act.Name.ToString().ToLower().Contains("move-agent"))
                {
                    continue;
                }

                bool isPublic = false;
                Formula formula = act.Preconditions;
                foreach (Predicate pred in formula.GetAllPredicates())
                {
                    foreach (Predicate p in getAllPublicPredicates)
                    {
                        if (pred.Name.ToLower().Equals(p.Name.ToLower()))
                        {
                            isPublic = true; break;
                        }                        
                    }
                    if (isPublic) break;
                }
                if (isPublic)
                {
                    getAllPublicActions.Add(act); continue;
                }

                if (act.Effects != null)
                    formula = act.Effects;
                else if (act.Observe != null)
                    formula = act.Observe;
                foreach (Predicate pred in formula.GetAllPredicates())
                {
                    foreach (Predicate p in getAllPublicPredicates)
                    {
                        if (pred.Name.ToLower().Equals(p.Name.ToLower()))
                        {
                            isPublic = true; break;
                        }
                    }
                    if (isPublic) break;
                }
                if (isPublic)
                {
                    getAllPublicActions.Add(act); 
                }
            }
            return getAllPublicActions;
        }

        public static HashSet<Action> GetAllPrivateActions()
        {
            getAllPrivateActions = new HashSet<Action>();            
            foreach (Action act in allActions)
            {
                bool pub = false;
                foreach (Action a in getAllPublicActions)
                {
                    if (act.Name.ToLower().Equals(a.Name.ToLower()))
                    {
                        pub = true; break;
                    }
                }
                if (!pub) getAllPrivateActions.Add(act);
            }
            return getAllPrivateActions;
        }
    }
}
