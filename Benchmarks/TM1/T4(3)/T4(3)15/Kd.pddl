(define (domain Ktablemover-2)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 a1 - agent
 a2 - agent
 a3 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table1 room4) (inroom table2 room1) (inroom table3 room1)
 tag1 - TAG_TYPE ; (not (inroom table1 room4)) (not (inroom table2 room1)) (not (inroom table3 room1))
 V_TRUE - VALUE_TYPE
 V_FALSE - VALUE_TYPE
)

(:predicates
(lifting ?a - agent ?t - table)
(Klifting ?a - agent ?t - table ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenlifting ?a - agent ?t - table ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(inroom ?t - table ?r - room)
(Kinroom ?t - table ?r - room ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGiveninroom ?t - table ?r - room ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(in ?a - agent ?r - room)
(Kin ?a - agent ?r - room ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenin ?a - agent ?r - room ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(connected ?r1 - room ?r2 - room)
(available ?a - agent)
(Kavailable ?a - agent ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenavailable ?a - agent ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(same-agent ?a1 - agent ?a2 - agent)
(can-observe ?a - agent ?t - table)
(c-p-joint-drop-table-pm5 ?dd - dummy)
(Kc-p-joint-drop-table-pm5 ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-pm5 ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-pm5 ?dd - dummy)
(Kobserve-joint-drop-table-pm5 ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-pm5 ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-yrg ?dd - dummy)
(Kc-p-joint-drop-table-yrg ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-yrg ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-yrg ?dd - dummy)
(Kobserve-joint-drop-table-yrg ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-yrg ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-w5a ?dd - dummy)
(Kc-p-joint-drop-table-w5a ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-w5a ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-w5a ?dd - dummy)
(Kobserve-joint-drop-table-w5a ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-w5a ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-s0o ?dd - dummy)
(Kc-p-joint-drop-table-s0o ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-s0o ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-s0o ?dd - dummy)
(Kobserve-joint-drop-table-s0o ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-s0o ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-8se ?dd - dummy)
(Kc-p-joint-drop-table-8se ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-8se ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-8se ?dd - dummy)
(Kobserve-joint-drop-table-8se ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-8se ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-gl6 ?dd - dummy)
(Kc-p-joint-drop-table-gl6 ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-gl6 ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-gl6 ?dd - dummy)
(Kobserve-joint-drop-table-gl6 ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-gl6 ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-cuq ?dd - dummy)
(Kc-p-joint-drop-table-cuq ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-cuq ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-cuq ?dd - dummy)
(Kobserve-joint-drop-table-cuq ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-cuq ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-vml ?dd - dummy)
(Kc-p-joint-drop-table-vml ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-vml ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-vml ?dd - dummy)
(Kobserve-joint-drop-table-vml ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-vml ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KNot ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT)
(Observed ?AGENT_PARAM - AGENT)
)

(:action observe-table-gv2-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (= ?a a3) (= ?t table3) (= ?i room2) (observe-joint-drop-table-pm5 dd) (in ?a ?i) (can-observe ?a ?t) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-gv2-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (= ?a a3) (= ?t table3) (= ?i room2) (observe-joint-drop-table-pm5 dd) (in ?a ?i) (can-observe ?a ?t) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-g1j-qxz-ezt-5ea-2z7-vfu-1mh-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-vml dd) (observe-joint-drop-table-cuq dd) (observe-joint-drop-table-gl6 dd) (observe-joint-drop-table-8se dd) (observe-joint-drop-table-s0o dd) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-g1j-qxz-ezt-5ea-2z7-vfu-1mh-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-vml dd) (observe-joint-drop-table-cuq dd) (observe-joint-drop-table-gl6 dd) (observe-joint-drop-table-8se dd) (observe-joint-drop-table-s0o dd) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-g1j-qxz-ezt-5ea-2z7-vfu-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-cuq dd) (observe-joint-drop-table-gl6 dd) (observe-joint-drop-table-8se dd) (observe-joint-drop-table-s0o dd) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-g1j-qxz-ezt-5ea-2z7-vfu-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-cuq dd) (observe-joint-drop-table-gl6 dd) (observe-joint-drop-table-8se dd) (observe-joint-drop-table-s0o dd) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-g1j-qxz-ezt-5ea-2z7-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-gl6 dd) (observe-joint-drop-table-8se dd) (observe-joint-drop-table-s0o dd) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-g1j-qxz-ezt-5ea-2z7-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-gl6 dd) (observe-joint-drop-table-8se dd) (observe-joint-drop-table-s0o dd) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-g1j-qxz-ezt-5ea-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-8se dd) (observe-joint-drop-table-s0o dd) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-g1j-qxz-ezt-5ea-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-8se dd) (observe-joint-drop-table-s0o dd) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-g1j-qxz-ezt-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-s0o dd) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-g1j-qxz-ezt-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-s0o dd) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-g1j-qxz-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-g1j-qxz-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-w5a dd) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-g1j-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-g1j-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-yrg dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(in ?a ?i) (can-observe ?a ?t) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect (and 
	(not (in ?a ?r1)) 
	(in ?a ?r2) 
)
)
(:action joint-move-table
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?r2 - room)
:precondition 
(and (lifting ?a1 ?t) (lifting ?a2 ?t) (in ?a1 ?r1) (in ?a2 ?r1) (not (same-agent ?a1 ?a2)) (connected ?r1 ?r2))
:effect (and 
	(not (in ?a1 ?r1)) 
	(in ?a1 ?r2) 
	(not (in ?a2 ?r1)) 
	(in ?a2 ?r2) 
)
)
(:action joint-lift-table
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room)
:precondition 
(and (available ?a1) (in ?a1 ?r1) (available ?a2) (in ?a2 ?r1) (not (same-agent ?a1 ?a2)) (inroom ?t ?r1) (Kinroom ?t ?r1 ?a1 V_TRUE) (Kinroom ?t ?r1 ?a2 V_TRUE))
:effect (and 
	(lifting ?a1 ?t) 
	(not (available ?a1)) 
	(lifting ?a2 ?t) 
	(not (available ?a2)) 
	(not (inroom ?t ?r1)) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_FALSE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_TRUE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_FALSE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_TRUE)))
)
)
(:action joint-drop-table
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room)
:precondition 
(and 
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t) (lifting ?a2 ?t) (not (same-agent ?a1 ?a2)))
:effect (and 
	(not (lifting ?a1 ?t)) 
	(not (lifting ?a2 ?t)) 
	(inroom ?t ?r1) 
	(available ?a1) 
	(available ?a2) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_FALSE)))
)
)
(:action joint-drop-table-yggx
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a3) (= ?t table1) (= ?r1 room4) (c-p-joint-drop-table-vml ?dd) 
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t) (lifting ?a2 ?t) (not (same-agent ?a1 ?a2)))
:effect (and 
	(not (lifting ?a1 ?t)) 
	(not (lifting ?a2 ?t)) 
	(inroom ?t ?r1) 
	(available ?a1) 
	(available ?a2) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_FALSE)))
	(when (c-p-joint-drop-table-vml ?dd) (not (c-p-joint-drop-table-vml ?dd))) 
	(when (c-p-joint-drop-table-vml ?dd) 	(and (Kc-p-joint-drop-table-vml ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-vml ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-vml ?dd) 	(and (Kc-p-joint-drop-table-vml ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-vml ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-3j4tn-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-vml dd)))
:effect (and 
	(c-p-joint-drop-table-vml dd) 
)
)
(:action obs-65v6d-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-vml dd)))
:effect (and 
	(observe-joint-drop-table-vml dd) 
)
)
(:action joint-drop-table-xwrh
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a3) (= ?a2 a1) (= ?t table3) (= ?r1 room2) (c-p-joint-drop-table-cuq ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t) (lifting ?a2 ?t) (not (same-agent ?a1 ?a2)))
:effect (and 
	(not (lifting ?a1 ?t)) 
	(not (lifting ?a2 ?t)) 
	(inroom ?t ?r1) 
	(available ?a1) 
	(available ?a2) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_FALSE)))
	(when (c-p-joint-drop-table-cuq ?dd) (not (c-p-joint-drop-table-cuq ?dd))) 
	(when (c-p-joint-drop-table-cuq ?dd) 	(and (Kc-p-joint-drop-table-cuq ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-cuq ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-cuq ?dd) 	(and (Kc-p-joint-drop-table-cuq ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-cuq ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-g1ifc-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-cuq dd)))
:effect (and 
	(c-p-joint-drop-table-cuq dd) 
)
)
(:action obs-njp35-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-cuq dd)))
:effect (and 
	(observe-joint-drop-table-cuq dd) 
)
)
(:action joint-drop-table-qkh1
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a2) (= ?t table2) (= ?r1 room1) (c-p-joint-drop-table-gl6 ?dd) 
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t) (lifting ?a2 ?t) (not (same-agent ?a1 ?a2)))
:effect (and 
	(not (lifting ?a1 ?t)) 
	(not (lifting ?a2 ?t)) 
	(inroom ?t ?r1) 
	(available ?a1) 
	(available ?a2) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_FALSE)))
	(when (c-p-joint-drop-table-gl6 ?dd) (not (c-p-joint-drop-table-gl6 ?dd))) 
	(when (c-p-joint-drop-table-gl6 ?dd) 	(and (Kc-p-joint-drop-table-gl6 ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-gl6 ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-gl6 ?dd) 	(and (Kc-p-joint-drop-table-gl6 ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-gl6 ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-8oo6p-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-gl6 dd)))
:effect (and 
	(c-p-joint-drop-table-gl6 dd) 
)
)
(:action obs-nd7z4-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-gl6 dd)))
:effect (and 
	(observe-joint-drop-table-gl6 dd) 
)
)
(:action joint-drop-table-aav0
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a3) (= ?a2 a1) (= ?t table2) (= ?r1 room1) (c-p-joint-drop-table-8se ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t) (lifting ?a2 ?t) (not (same-agent ?a1 ?a2)))
:effect (and 
	(not (lifting ?a1 ?t)) 
	(not (lifting ?a2 ?t)) 
	(inroom ?t ?r1) 
	(available ?a1) 
	(available ?a2) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_FALSE)))
	(when (c-p-joint-drop-table-8se ?dd) (not (c-p-joint-drop-table-8se ?dd))) 
	(when (c-p-joint-drop-table-8se ?dd) 	(and (Kc-p-joint-drop-table-8se ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-8se ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-8se ?dd) 	(and (Kc-p-joint-drop-table-8se ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-8se ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-b0htd-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-8se dd)))
:effect (and 
	(c-p-joint-drop-table-8se dd) 
)
)
(:action obs-54ji7-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-8se dd)))
:effect (and 
	(observe-joint-drop-table-8se dd) 
)
)
(:action joint-drop-table-p2ba
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a3) (= ?t table2) (= ?r1 room1) (c-p-joint-drop-table-s0o ?dd) 
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t) (lifting ?a2 ?t) (not (same-agent ?a1 ?a2)))
:effect (and 
	(not (lifting ?a1 ?t)) 
	(not (lifting ?a2 ?t)) 
	(inroom ?t ?r1) 
	(available ?a1) 
	(available ?a2) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_FALSE)))
	(when (c-p-joint-drop-table-s0o ?dd) (not (c-p-joint-drop-table-s0o ?dd))) 
	(when (c-p-joint-drop-table-s0o ?dd) 	(and (Kc-p-joint-drop-table-s0o ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-s0o ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-s0o ?dd) 	(and (Kc-p-joint-drop-table-s0o ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-s0o ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-7bgl3-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-s0o dd)))
:effect (and 
	(c-p-joint-drop-table-s0o dd) 
)
)
(:action obs-uy49l-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-s0o dd)))
:effect (and 
	(observe-joint-drop-table-s0o dd) 
)
)
(:action joint-drop-table-fqgg
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a2) (= ?a2 a1) (= ?t table1) (= ?r1 room4) (c-p-joint-drop-table-w5a ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t) (lifting ?a2 ?t) (not (same-agent ?a1 ?a2)))
:effect (and 
	(not (lifting ?a1 ?t)) 
	(not (lifting ?a2 ?t)) 
	(inroom ?t ?r1) 
	(available ?a1) 
	(available ?a2) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_FALSE)))
	(when (c-p-joint-drop-table-w5a ?dd) (not (c-p-joint-drop-table-w5a ?dd))) 
	(when (c-p-joint-drop-table-w5a ?dd) 	(and (Kc-p-joint-drop-table-w5a ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-w5a ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-w5a ?dd) 	(and (Kc-p-joint-drop-table-w5a ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-w5a ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-cfcig-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-w5a dd)))
:effect (and 
	(c-p-joint-drop-table-w5a dd) 
)
)
(:action obs-xelfa-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-w5a dd)))
:effect (and 
	(observe-joint-drop-table-w5a dd) 
)
)
(:action joint-drop-table-gx8l
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a3) (= ?t table3) (= ?r1 room2) (c-p-joint-drop-table-yrg ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t) (lifting ?a2 ?t) (not (same-agent ?a1 ?a2)))
:effect (and 
	(not (lifting ?a1 ?t)) 
	(not (lifting ?a2 ?t)) 
	(inroom ?t ?r1) 
	(available ?a1) 
	(available ?a2) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_FALSE)))
	(when (c-p-joint-drop-table-yrg ?dd) (not (c-p-joint-drop-table-yrg ?dd))) 
	(when (c-p-joint-drop-table-yrg ?dd) 	(and (Kc-p-joint-drop-table-yrg ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-yrg ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-yrg ?dd) 	(and (Kc-p-joint-drop-table-yrg ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-yrg ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-dep4z-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-yrg dd)))
:effect (and 
	(c-p-joint-drop-table-yrg dd) 
)
)
(:action obs-qna96-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-yrg dd)))
:effect (and 
	(observe-joint-drop-table-yrg dd) 
)
)
(:action joint-drop-table-fzq9
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a2) (= ?t table1) (= ?r1 room4) (c-p-joint-drop-table-pm5 ?dd) (in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t) (lifting ?a2 ?t) (not (same-agent ?a1 ?a2)))
:effect (and 
	(not (lifting ?a1 ?t)) 
	(not (lifting ?a2 ?t)) 
	(inroom ?t ?r1) 
	(available ?a1) 
	(available ?a2) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_FALSE)))
	(when (c-p-joint-drop-table-pm5 ?dd) (not (c-p-joint-drop-table-pm5 ?dd))) 
	(when (c-p-joint-drop-table-pm5 ?dd) 	(and (Kc-p-joint-drop-table-pm5 ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-pm5 ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-pm5 ?dd) 	(and (Kc-p-joint-drop-table-pm5 ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-pm5 ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-1bxna-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-pm5 dd)))
:effect (and 
	(c-p-joint-drop-table-pm5 dd) 
)
)
(:action obs-kb6pl-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-pm5 dd)))
:effect (and 
	(observe-joint-drop-table-pm5 dd) 
)
)
(:action Merge-inroom
:parameters ( ?t - table ?r - room ?V_PARAM - VALUE_TYPE ?AGENT_PARAM - AGENT)
:precondition 
(and (not (Kinroom ?t ?r ?AGENT_PARAM ?V_PARAM)) (Observed ?AGENT_PARAM) 
	(or (KGiveninroom ?t ?r tag0 ?AGENT_PARAM ?V_PARAM) (KNot tag0 ?AGENT_PARAM))
	(or (KGiveninroom ?t ?r tag1 ?AGENT_PARAM ?V_PARAM) (KNot tag1 ?AGENT_PARAM)))
:effect 
(and (Kinroom ?t ?r ?AGENT_PARAM ?V_PARAM))
)

(:action RefuteT-inroom
:parameters ( ?t - table ?r - room ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT)
:precondition 
(and (Observed ?AGENT_PARAM) (not (KNot ?TAG_PARAM ?AGENT_PARAM)) (KGiveninroom ?t ?r ?TAG_PARAM ?AGENT_PARAM V_TRUE) (Kinroom ?t ?r ?AGENT_PARAM V_FALSE) (not (inroom ?t ?r)))
:effect 
(and (KNot ?TAG_PARAM ?AGENT_PARAM))
)

(:action RefuteF-inroom
:parameters ( ?t - table ?r - room ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT)
:precondition 
(and (Observed ?AGENT_PARAM) (not (KNot ?TAG_PARAM ?AGENT_PARAM)) (KGiveninroom ?t ?r ?TAG_PARAM ?AGENT_PARAM V_FALSE) (Kinroom ?t ?r ?AGENT_PARAM V_TRUE) (inroom ?t ?r))
:effect 
(and (KNot ?TAG_PARAM ?AGENT_PARAM))
)

)
