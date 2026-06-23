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
 tag0 - TAG_TYPE ; (inroom table1 room4) (inroom table3 room1)
 tag1 - TAG_TYPE ; (not (inroom table1 room4)) (not (inroom table3 room1))
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
(c-p-joint-drop-table-5b9 ?dd - dummy)
(Kc-p-joint-drop-table-5b9 ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-5b9 ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-5b9 ?dd - dummy)
(Kobserve-joint-drop-table-5b9 ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-5b9 ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-k6y ?dd - dummy)
(Kc-p-joint-drop-table-k6y ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-k6y ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-k6y ?dd - dummy)
(Kobserve-joint-drop-table-k6y ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-k6y ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-lyv ?dd - dummy)
(Kc-p-joint-drop-table-lyv ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-lyv ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-lyv ?dd - dummy)
(Kobserve-joint-drop-table-lyv ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-lyv ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-w7f ?dd - dummy)
(Kc-p-joint-drop-table-w7f ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-w7f ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-w7f ?dd - dummy)
(Kobserve-joint-drop-table-w7f ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-w7f ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-x26 ?dd - dummy)
(Kc-p-joint-drop-table-x26 ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-x26 ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-x26 ?dd - dummy)
(Kobserve-joint-drop-table-x26 ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-x26 ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-5aw ?dd - dummy)
(Kc-p-joint-drop-table-5aw ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-5aw ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-5aw ?dd - dummy)
(Kobserve-joint-drop-table-5aw ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-5aw ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-lift-table-f2p ?dd - dummy)
(Kc-p-joint-lift-table-f2p ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-lift-table-f2p ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-lift-table-f2p ?dd - dummy)
(Kobserve-joint-lift-table-f2p ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-lift-table-f2p ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-eyk ?dd - dummy)
(Kc-p-joint-drop-table-eyk ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-eyk ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-eyk ?dd - dummy)
(Kobserve-joint-drop-table-eyk ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-eyk ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-5hh ?dd - dummy)
(Kc-p-joint-drop-table-5hh ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-5hh ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-5hh ?dd - dummy)
(Kobserve-joint-drop-table-5hh ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-5hh ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-lift-table-hhv ?dd - dummy)
(Kc-p-joint-lift-table-hhv ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-lift-table-hhv ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-lift-table-hhv ?dd - dummy)
(Kobserve-joint-lift-table-hhv ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-lift-table-hhv ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-mynv-2mx ?dd - dummy)
(Kc-p-joint-drop-table-mynv-2mx ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-mynv-2mx ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-mynv-2mx ?dd - dummy)
(Kobserve-joint-drop-table-mynv-2mx ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-mynv-2mx ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-ruq ?dd - dummy)
(Kc-p-joint-drop-table-ruq ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-ruq ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-ruq ?dd - dummy)
(Kobserve-joint-drop-table-ruq ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-ruq ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-kpa ?dd - dummy)
(Kc-p-joint-drop-table-kpa ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-kpa ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-kpa ?dd - dummy)
(Kobserve-joint-drop-table-kpa ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-kpa ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-rjm ?dd - dummy)
(Kc-p-joint-drop-table-rjm ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-rjm ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-rjm ?dd - dummy)
(Kobserve-joint-drop-table-rjm ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-rjm ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-6qd ?dd - dummy)
(Kc-p-joint-drop-table-6qd ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-6qd ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-6qd ?dd - dummy)
(Kobserve-joint-drop-table-6qd ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-6qd ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-drop-table-ausj-iut ?dd - dummy)
(Kc-p-joint-drop-table-ausj-iut ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-drop-table-ausj-iut ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-drop-table-ausj-iut ?dd - dummy)
(Kobserve-joint-drop-table-ausj-iut ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-drop-table-ausj-iut ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KNot ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT)
(Observed ?AGENT_PARAM - AGENT)
)

(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4-8g4-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-ausj-iut dd) (observe-joint-drop-table-6qd dd) (observe-joint-drop-table-rjm dd) (observe-joint-drop-table-kpa dd) (observe-joint-drop-table-ruq dd) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4-8g4-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-ausj-iut dd) (observe-joint-drop-table-6qd dd) (observe-joint-drop-table-rjm dd) (observe-joint-drop-table-kpa dd) (observe-joint-drop-table-ruq dd) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-6qd dd) (observe-joint-drop-table-rjm dd) (observe-joint-drop-table-kpa dd) (observe-joint-drop-table-ruq dd) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-6qd dd) (observe-joint-drop-table-rjm dd) (observe-joint-drop-table-kpa dd) (observe-joint-drop-table-ruq dd) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-rjm dd) (observe-joint-drop-table-kpa dd) (observe-joint-drop-table-ruq dd) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-rjm dd) (observe-joint-drop-table-kpa dd) (observe-joint-drop-table-ruq dd) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-kpa dd) (observe-joint-drop-table-ruq dd) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-kpa dd) (observe-joint-drop-table-ruq dd) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-ruq dd) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-ruq dd) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-lift-table-hhv dd) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-us5-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-5hh dd) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-cpw-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-lift-table-f2p dd) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-u0y-xsp-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-lyv dd) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-hit-u0y-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-u0y-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-k6y dd) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-hit-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-hit-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(= ?a a3) (= ?t table3) (= ?i room1) (observe-joint-drop-table-5b9 dd) (in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-1c3-34a-yia-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (= ?a a3) (= ?t table3) (= ?i room2) (observe-joint-drop-table-mynv-2mx dd) (observe-joint-drop-table-5aw dd) (observe-joint-drop-table-w7f dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-1c3-34a-yia-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (= ?a a3) (= ?t table3) (= ?i room2) (observe-joint-drop-table-mynv-2mx dd) (observe-joint-drop-table-5aw dd) (observe-joint-drop-table-w7f dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-1c3-34a-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(= ?a a3) (= ?t table3) (= ?i room2) (observe-joint-drop-table-5aw dd) (observe-joint-drop-table-w7f dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-1c3-34a-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(= ?a a3) (= ?t table3) (= ?i room2) (observe-joint-drop-table-5aw dd) (observe-joint-drop-table-w7f dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-1c3-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(= ?a a3) (= ?t table3) (= ?i room2) (observe-joint-drop-table-w7f dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-1c3-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))(= ?a a3) (= ?t table3) (= ?i room2) (observe-joint-drop-table-w7f dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-gak-2vy-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (= ?a a2) (= ?t table3) (= ?i room2) (observe-joint-drop-table-eyk dd) (observe-joint-drop-table-x26 dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-gak-2vy-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and (= ?a a2) (= ?t table3) (= ?i room2) (observe-joint-drop-table-eyk dd) (observe-joint-drop-table-x26 dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-gak-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a2)) (not (= ?t table3)) (not (= ?i room2)))(= ?a a2) (= ?t table3) (= ?i room2) (observe-joint-drop-table-x26 dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-gak-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a2)) (not (= ?t table3)) (not (= ?i room2)))(= ?a a2) (= ?t table3) (= ?i room2) (observe-joint-drop-table-x26 dd) 
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-table-T
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a2)) (not (= ?t table3)) (not (= ?i room2)))
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (inroom ?t ?i) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
:effect 
(and (Kinroom ?t ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-table-F
:parameters ( ?a - agent ?t - table ?i - room)
:precondition 
(and 
	(or (not (= ?a a2)) (not (= ?t table3)) (not (= ?i room2)))
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
	(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))(in ?a ?i) (can-observe ?a ?t) (available ?a) (not (inroom ?t ?i)) (not (Kinroom ?t ?i ?a V_TRUE)) (not (Kinroom ?t ?i ?a V_FALSE)))
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
(and 
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))(available ?a1) (in ?a1 ?r1) (available ?a2) (in ?a2 ?r1) (not (same-agent ?a1 ?a2)) (inroom ?t ?r1) (Kinroom ?t ?r1 ?a1 V_TRUE) (Kinroom ?t ?r1 ?a2 V_TRUE))
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
(:action joint-lift-table-27ek
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a3) (= ?a2 a1) (= ?t table3) (= ?r1 room2) (c-p-joint-lift-table-hhv ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))(available ?a1) (in ?a1 ?r1) (available ?a2) (in ?a2 ?r1) (not (same-agent ?a1 ?a2)) (inroom ?t ?r1) (Kinroom ?t ?r1 ?a1 V_TRUE) (Kinroom ?t ?r1 ?a2 V_TRUE))
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
	(when (c-p-joint-lift-table-hhv ?dd) (not (c-p-joint-lift-table-hhv ?dd))) 
	(when (c-p-joint-lift-table-hhv ?dd) 	(and (Kc-p-joint-lift-table-hhv ?dd ?a1 V_FALSE) (not (Kc-p-joint-lift-table-hhv ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-lift-table-hhv ?dd) 	(and (Kc-p-joint-lift-table-hhv ?dd ?a2 V_FALSE) (not (Kc-p-joint-lift-table-hhv ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-zqawc-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-lift-table-hhv dd)))
:effect (and 
	(c-p-joint-lift-table-hhv dd) 
)
)
(:action obs-uwz53-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-lift-table-hhv dd)))
:effect (and 
	(observe-joint-lift-table-hhv dd) 
)
)
(:action joint-lift-table-gtk6
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a3) (= ?t table3) (= ?r1 room2) (c-p-joint-lift-table-f2p ?dd) (available ?a1) (in ?a1 ?r1) (available ?a2) (in ?a2 ?r1) (not (same-agent ?a1 ?a2)) (inroom ?t ?r1) (Kinroom ?t ?r1 ?a1 V_TRUE) (Kinroom ?t ?r1 ?a2 V_TRUE))
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
	(when (c-p-joint-lift-table-f2p ?dd) (not (c-p-joint-lift-table-f2p ?dd))) 
	(when (c-p-joint-lift-table-f2p ?dd) 	(and (Kc-p-joint-lift-table-f2p ?dd ?a1 V_FALSE) (not (Kc-p-joint-lift-table-f2p ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-lift-table-f2p ?dd) 	(and (Kc-p-joint-lift-table-f2p ?dd ?a2 V_FALSE) (not (Kc-p-joint-lift-table-f2p ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-iaor2-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-lift-table-f2p dd)))
:effect (and 
	(c-p-joint-lift-table-f2p dd) 
)
)
(:action obs-ufsut-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-lift-table-f2p dd)))
:effect (and 
	(observe-joint-lift-table-f2p dd) 
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
(and 
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room3)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
(:action joint-drop-table-svaw
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a2) (= ?a2 a1) (= ?t table1) (= ?r1 room4) (c-p-joint-drop-table-6qd ?dd) 
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room3)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-6qd ?dd) (not (c-p-joint-drop-table-6qd ?dd))) 
	(when (c-p-joint-drop-table-6qd ?dd) 	(and (Kc-p-joint-drop-table-6qd ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-6qd ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-6qd ?dd) 	(and (Kc-p-joint-drop-table-6qd ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-6qd ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-sm2bp-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-6qd dd)))
:effect (and 
	(c-p-joint-drop-table-6qd dd) 
)
)
(:action obs-48v34-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-6qd dd)))
:effect (and 
	(observe-joint-drop-table-6qd dd) 
)
)
(:action joint-drop-table-6xq5
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a3) (= ?a2 a1) (= ?t table1) (= ?r1 room4) (c-p-joint-drop-table-rjm ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room3)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-rjm ?dd) (not (c-p-joint-drop-table-rjm ?dd))) 
	(when (c-p-joint-drop-table-rjm ?dd) 	(and (Kc-p-joint-drop-table-rjm ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-rjm ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-rjm ?dd) 	(and (Kc-p-joint-drop-table-rjm ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-rjm ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-2nbtl-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-rjm dd)))
:effect (and 
	(c-p-joint-drop-table-rjm dd) 
)
)
(:action obs-gcwir-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-rjm dd)))
:effect (and 
	(observe-joint-drop-table-rjm dd) 
)
)
(:action joint-drop-table-89b9
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a2) (= ?t table2) (= ?r1 room3) (c-p-joint-drop-table-kpa ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-kpa ?dd) (not (c-p-joint-drop-table-kpa ?dd))) 
	(when (c-p-joint-drop-table-kpa ?dd) 	(and (Kc-p-joint-drop-table-kpa ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-kpa ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-kpa ?dd) 	(and (Kc-p-joint-drop-table-kpa ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-kpa ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-5b3z0-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-kpa dd)))
:effect (and 
	(c-p-joint-drop-table-kpa dd) 
)
)
(:action obs-m2epb-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-kpa dd)))
:effect (and 
	(observe-joint-drop-table-kpa dd) 
)
)
(:action joint-drop-table-utjq
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a2) (= ?t table2) (= ?r1 room2) (c-p-joint-drop-table-ruq ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-ruq ?dd) (not (c-p-joint-drop-table-ruq ?dd))) 
	(when (c-p-joint-drop-table-ruq ?dd) 	(and (Kc-p-joint-drop-table-ruq ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-ruq ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-ruq ?dd) 	(and (Kc-p-joint-drop-table-ruq ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-ruq ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-xjucl-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-ruq dd)))
:effect (and 
	(c-p-joint-drop-table-ruq dd) 
)
)
(:action obs-a18q1-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-ruq dd)))
:effect (and 
	(observe-joint-drop-table-ruq dd) 
)
)
(:action joint-drop-table-obty
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a2) (= ?t table1) (= ?r1 room4) (c-p-joint-drop-table-5hh ?dd) 
	(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-5hh ?dd) (not (c-p-joint-drop-table-5hh ?dd))) 
	(when (c-p-joint-drop-table-5hh ?dd) 	(and (Kc-p-joint-drop-table-5hh ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-5hh ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-5hh ?dd) 	(and (Kc-p-joint-drop-table-5hh ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-5hh ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-y05nu-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-5hh dd)))
:effect (and 
	(c-p-joint-drop-table-5hh dd) 
)
)
(:action obs-menct-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-5hh dd)))
:effect (and 
	(observe-joint-drop-table-5hh dd) 
)
)
(:action joint-drop-table-af5n
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a2) (= ?a2 a1) (= ?t table2) (= ?r1 room1) (c-p-joint-drop-table-eyk ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-eyk ?dd) (not (c-p-joint-drop-table-eyk ?dd))) 
	(when (c-p-joint-drop-table-eyk ?dd) 	(and (Kc-p-joint-drop-table-eyk ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-eyk ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-eyk ?dd) 	(and (Kc-p-joint-drop-table-eyk ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-eyk ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-302m9-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-eyk dd)))
:effect (and 
	(c-p-joint-drop-table-eyk dd) 
)
)
(:action obs-pkrpq-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-eyk dd)))
:effect (and 
	(observe-joint-drop-table-eyk dd) 
)
)
(:action joint-drop-table-ausj
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and 
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)) (not (= ?dd dd)))(= ?a1 a1) (= ?a2 a3) (= ?t table1) (= ?r1 room4) (c-p-joint-drop-table-5aw ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-5aw ?dd) (not (c-p-joint-drop-table-5aw ?dd))) 
	(when (c-p-joint-drop-table-5aw ?dd) 	(and (Kc-p-joint-drop-table-5aw ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-5aw ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-5aw ?dd) 	(and (Kc-p-joint-drop-table-5aw ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-5aw ?dd ?a2 V_TRUE)))) 
)
)
(:action joint-drop-table-ausj-26xs
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a3) (= ?t table1) (= ?r1 room4) (= ?dd dd) (c-p-joint-drop-table-ausj-iut ?dd) (c-p-joint-drop-table-5aw ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-ausj-iut ?dd) (not (c-p-joint-drop-table-ausj-iut ?dd))) 
	(when (c-p-joint-drop-table-ausj-iut ?dd) 	(and (Kc-p-joint-drop-table-ausj-iut ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-ausj-iut ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-ausj-iut ?dd) 	(and (Kc-p-joint-drop-table-ausj-iut ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-ausj-iut ?dd ?a2 V_TRUE)))) 
	(when (c-p-joint-drop-table-5aw ?dd) (not (c-p-joint-drop-table-5aw ?dd))) 
	(when (c-p-joint-drop-table-5aw ?dd) 	(and (Kc-p-joint-drop-table-5aw ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-5aw ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-5aw ?dd) 	(and (Kc-p-joint-drop-table-5aw ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-5aw ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-3tfyt-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-ausj-iut dd)))
:effect (and 
	(c-p-joint-drop-table-ausj-iut dd) 
)
)
(:action obs-5gczo-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-ausj-iut dd)))
:effect (and 
	(observe-joint-drop-table-ausj-iut dd) 
)
)
(:action commit-2j9a1-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-5aw dd)))
:effect (and 
	(c-p-joint-drop-table-5aw dd) 
)
)
(:action obs-88qpx-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-5aw dd)))
:effect (and 
	(observe-joint-drop-table-5aw dd) 
)
)
(:action joint-drop-table-qfas
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a2) (= ?t table2) (= ?r1 room1) (c-p-joint-drop-table-x26 ?dd) 
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-x26 ?dd) (not (c-p-joint-drop-table-x26 ?dd))) 
	(when (c-p-joint-drop-table-x26 ?dd) 	(and (Kc-p-joint-drop-table-x26 ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-x26 ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-x26 ?dd) 	(and (Kc-p-joint-drop-table-x26 ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-x26 ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-eeob6-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-x26 dd)))
:effect (and 
	(c-p-joint-drop-table-x26 dd) 
)
)
(:action obs-4jmor-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-x26 dd)))
:effect (and 
	(observe-joint-drop-table-x26 dd) 
)
)
(:action joint-drop-table-u69e
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a3) (= ?a2 a1) (= ?t table3) (= ?r1 room2) (c-p-joint-drop-table-w7f ?dd) 
	(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-w7f ?dd) (not (c-p-joint-drop-table-w7f ?dd))) 
	(when (c-p-joint-drop-table-w7f ?dd) 	(and (Kc-p-joint-drop-table-w7f ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-w7f ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-w7f ?dd) 	(and (Kc-p-joint-drop-table-w7f ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-w7f ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-0ih37-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-w7f dd)))
:effect (and 
	(c-p-joint-drop-table-w7f dd) 
)
)
(:action obs-szd0p-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-w7f dd)))
:effect (and 
	(observe-joint-drop-table-w7f dd) 
)
)
(:action joint-drop-table-qeba
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a3) (= ?a2 a1) (= ?t table2) (= ?r1 room1) (c-p-joint-drop-table-lyv ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-lyv ?dd) (not (c-p-joint-drop-table-lyv ?dd))) 
	(when (c-p-joint-drop-table-lyv ?dd) 	(and (Kc-p-joint-drop-table-lyv ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-lyv ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-lyv ?dd) 	(and (Kc-p-joint-drop-table-lyv ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-lyv ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-a9q5x-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-lyv dd)))
:effect (and 
	(c-p-joint-drop-table-lyv dd) 
)
)
(:action obs-2djx8-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-lyv dd)))
:effect (and 
	(observe-joint-drop-table-lyv dd) 
)
)
(:action joint-drop-table-mynv
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and 
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)) (not (= ?dd dd)))(= ?a1 a1) (= ?a2 a3) (= ?t table3) (= ?r1 room2) (c-p-joint-drop-table-k6y ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-k6y ?dd) (not (c-p-joint-drop-table-k6y ?dd))) 
	(when (c-p-joint-drop-table-k6y ?dd) 	(and (Kc-p-joint-drop-table-k6y ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-k6y ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-k6y ?dd) 	(and (Kc-p-joint-drop-table-k6y ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-k6y ?dd ?a2 V_TRUE)))) 
)
)
(:action joint-drop-table-mynv-t4v1
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a3) (= ?t table3) (= ?r1 room2) (= ?dd dd) (c-p-joint-drop-table-mynv-2mx ?dd) (c-p-joint-drop-table-k6y ?dd) 
	(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))(in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-mynv-2mx ?dd) (not (c-p-joint-drop-table-mynv-2mx ?dd))) 
	(when (c-p-joint-drop-table-mynv-2mx ?dd) 	(and (Kc-p-joint-drop-table-mynv-2mx ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-mynv-2mx ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-mynv-2mx ?dd) 	(and (Kc-p-joint-drop-table-mynv-2mx ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-mynv-2mx ?dd ?a2 V_TRUE)))) 
	(when (c-p-joint-drop-table-k6y ?dd) (not (c-p-joint-drop-table-k6y ?dd))) 
	(when (c-p-joint-drop-table-k6y ?dd) 	(and (Kc-p-joint-drop-table-k6y ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-k6y ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-k6y ?dd) 	(and (Kc-p-joint-drop-table-k6y ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-k6y ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-v8d1a-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-mynv-2mx dd)))
:effect (and 
	(c-p-joint-drop-table-mynv-2mx dd) 
)
)
(:action obs-r33xx-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-mynv-2mx dd)))
:effect (and 
	(observe-joint-drop-table-mynv-2mx dd) 
)
)
(:action commit-tqhu7-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-k6y dd)))
:effect (and 
	(c-p-joint-drop-table-k6y dd) 
)
)
(:action obs-1dyyx-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-k6y dd)))
:effect (and 
	(observe-joint-drop-table-k6y dd) 
)
)
(:action joint-drop-table-9o7d
:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy)
:precondition 
(and (= ?a1 a1) (= ?a2 a3) (= ?t table2) (= ?r1 room1) (c-p-joint-drop-table-5b9 ?dd) (in ?a1 ?r1) (in ?a2 ?r1) (lifting ?a1 ?t ?r1) (lifting ?a2 ?t ?r1) (not (same-agent ?a1 ?a2)))
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
	(when (c-p-joint-drop-table-5b9 ?dd) (not (c-p-joint-drop-table-5b9 ?dd))) 
	(when (c-p-joint-drop-table-5b9 ?dd) 	(and (Kc-p-joint-drop-table-5b9 ?dd ?a1 V_FALSE) (not (Kc-p-joint-drop-table-5b9 ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-drop-table-5b9 ?dd) 	(and (Kc-p-joint-drop-table-5b9 ?dd ?a2 V_FALSE) (not (Kc-p-joint-drop-table-5b9 ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-g324g-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-5b9 dd)))
:effect (and 
	(c-p-joint-drop-table-5b9 dd) 
)
)
(:action obs-84jm4-a1-a2-a3
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-drop-table-5b9 dd)))
:effect (and 
	(observe-joint-drop-table-5b9 dd) 
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
