(define (domain Ktablemover-2)
(:requirements :strips :typing)
(:types agent table room TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 a1 - agent
 a2 - agent
 a3 - agent
 a4 - agent
 a5 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 room5 - room
 room6 - room
 room7 - room
 tag0 - TAG_TYPE ; (inroom table2 room2) (inroom table1 room3) (inroom table4 room7) (inroom table3 room5)
 tag1 - TAG_TYPE ; (not (inroom table2 room2)) (not (inroom table1 room3)) (not (inroom table4 room7)) (not (inroom table3 room5))
 V_TRUE - VALUE_TYPE
 V_FALSE - VALUE_TYPE
)

(:predicates
(lifting ?a - agent ?t - table ?r - room)
(Klifting ?a - agent ?t - table ?r - room ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenlifting ?a - agent ?t - table ?r - room ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
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
(KNot ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT)
(Observed ?AGENT_PARAM - AGENT)
)

(:action observe-table-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (in ?a ?i) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (in ?a ?i) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
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
(:action joint-lift-table
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room)
:precondition 
(and (available ?a1) (in ?a1 ?r1) (available ?a2) (in ?a2 ?r1) (not (same-agent ?a1 ?a2)) (inroom ?t ?r1) (Kinroom ?t ?r1 ?a1 V_TRUE) (Kinroom ?t ?r1 ?a2 V_TRUE))
:effect (and 
	(lifting ?a1 ?t ?r1) 
	(not (available ?a1)) 
	(lifting ?a2 ?t ?r1) 
	(not (available ?a2)) 
	(not (inroom ?t ?r1)) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_FALSE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_TRUE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_FALSE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_TRUE)))
)
)
(:action joint-move-table
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?r2 - room)
:precondition 
(and (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (in ?a1 ?r1) (in ?a2 ?r1) (not (same-agent ?a1 ?a2)) (connected ?r1 ?r2))
:effect (and 
	(not (in ?a1 ?r1)) 
	(in ?a1 ?r2) 
	(not (in ?a2 ?r1)) 
	(in ?a2 ?r2) 
	(not (lifting ?a1 ?t ?r1)) 
	(not (lifting ?a2 ?t ?r1)) 
	(lifting ?a1 ?t ?r2) 
	(lifting ?a2 ?t ?r2) 
)
)
(:action joint-drop-table
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room)
:precondition 
(and (in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
:effect (and 
	(inroom ?t ?r1) 
	(available ?a1) 
	(available ?a2) 
	(not (lifting ?a1 ?t ?r1)) 
	(not (lifting ?a2 ?t ?r1)) 
	(forall (?a1 - agent) (Kinroom ?t ?r1 ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kinroom ?t ?r1 ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kinroom ?t ?r1 ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kinroom ?t ?r1 ?a2 V_FALSE)))
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
