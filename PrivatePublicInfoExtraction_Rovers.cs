using System;
using System.Collections.Generic;

namespace CPOR_MA
{
    public class PrivatePublicInfoExtraction_Rovers
    {
        private static Domain domain = null;
        private static HashSet<Action> getAllPublicActions = null;
        private static HashSet<Action> getAllPrivateActions = null;
        private static HashSet<Action> allActions = null;

        private static HashSet<Predicate> getAllPublicPredicates = null;
        private static HashSet<Predicate> getAllPrivatePredicates = null;
        private static HashSet<Predicate> allPredicate = null;

        public PrivatePublicInfoExtraction_Rovers(Domain dom)
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
            foreach(ParametrizedPredicate p in allPredicate)
            {
                // bool flag = true;
                if ((p.Name.ToLower().StartsWith("at") && !p.Name.ToLower().StartsWith("at-")
                    && !p.Name.ToLower().StartsWith("at_")) 
                    || p.Name.ToLower().Contains("can-") || p.Name.ToLower().Contains("available"))
                    continue;
                else
                    getAllPublicPredicates.Add(p);
                /*
                foreach (Argument arg in p.Parameters)
                {
                    if (arg.Type.ToLower().Equals("agent"))
                    {
                        flag = false;
                    }
                }
                if (flag) getAllPublicPredicates.Add(p);
                */
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
                if (act.Name.ToString().ToLower().Contains("navigate"))
                {
                    continue;
                }
                /*
                if (act.Name.ToString().ToLower().Contains("calibrate"))
                {
                    continue;
                }
                */
                /*if (act.Name.ToString().ToLower().Contains("take-image"))
                {
                    continue;
                }*/

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
