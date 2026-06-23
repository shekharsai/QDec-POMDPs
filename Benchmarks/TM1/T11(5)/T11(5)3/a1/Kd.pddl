(define (domain Ktablemover-2-a1)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 a1 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 room5 - room
 room6 - room
 room7 - room
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table1 room3) (inroom table3 room5) (inroom table4 room6)
 tag1 - TAG_TYPE ; (inroom table1 room4) (inroom table3 room6) (inroom table4 room7)
 V_TRUE - VALUE_TYPE
 V_FALSE - VALUE_TYPE
)

(:predicates
(lifting ?a - agent ?t - table)
(inroom ?t - table ?r - room)
(Kinroom ?t - table ?r - room ?V_PARAM - VALUE_TYPE)
(KGiveninroom ?t - table ?r - room ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(in ?a - agent ?r - room)
(connected ?r1 - room ?r2 - room)
(available ?a - agent)
(can-observe ?a1 - agent ?table - table)
(init-b5m_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-b5m_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-b5m_observe-table_a3_table2_room1 ?dd - dummy)
(pre-bwg_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-n15_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-h2r_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-b5m_observe-table_a3_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-b5m_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (init-b5m_observe-table_a3_table2_room1 dd) (immediate-dummy-b5m_observe-table_a3_table2_room1 dd) (in a1 room1) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-b5m_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (init-b5m_observe-table_a3_table2_room1 dd) (immediate-dummy-b5m_observe-table_a3_table2_room1 dd) (in a1 room1) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-b5m_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-b5m_observe-table_a3_table2_room1 dd) (not (dummy-left-b5m_observe-table_a3_table2_room1 dd)) (not (dummy-right-b5m_observe-table_a3_table2_room1 dd)))
:effect 
(and (immediate-dummy-b5m_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-b5m_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-b5m_observe-table_a3_table2_room1 dd) (in a1 room1) (not (inroom table2 room1)) (immediate-dummy-b5m_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (init-b5m_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-b5m_observe-table_a3_table2_room1 dd)) (dummy-left-b5m_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-b5m_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-b5m_observe-table_a3_table2_room1 dd) (in a1 room1) (inroom table2 room1) (immediate-dummy-b5m_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (init-b5m_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-b5m_observe-table_a3_table2_room1 dd)) (dummy-right-b5m_observe-table_a3_table2_room1 dd))
)
(:action act-bwg_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b5m_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (available a1) (in a1 room2) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-bwg_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-n15_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-bwg_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-n15_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-bwg_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-h2r_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-n15_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-h2r_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-n15_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-h2r_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-h2r_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-h2r_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-b5m_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b5m_observe-table_a3_table2_room1 dd) (inroom table2 room1) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-b5m_observe-table_a3_table2_room1 dd)))
)
(:action Merge-inroom
:parameters ( ?t - table ?r - room ?V_PARAM - VALUE_TYPE)
:precondition 
(and (not (Kinroom ?t ?r ?V_PARAM)) 
	(or (KGiveninroom ?t ?r tag0 ?V_PARAM) (KNot tag0))
	(or (KGiveninroom ?t ?r tag1 ?V_PARAM) (KNot tag1)))
:effect 
(and (Kinroom ?t ?r ?V_PARAM))
)

(:action RefuteT-inroom
:parameters ( ?t - table ?r - room ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGiveninroom ?t ?r ?TAG_PARAM V_TRUE) (Kinroom ?t ?r V_TRUE) (not (inroom ?t ?r)))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action RefuteF-inroom
:parameters ( ?t - table ?r - room ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGiveninroom ?t ?r ?TAG_PARAM V_FALSE) (Kinroom ?t ?r V_TRUE) (inroom ?t ?r))
:effect 
(and (KNot ?TAG_PARAM))
)

)
