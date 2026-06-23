(define (domain Ktablemover-2-a3)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 a3 - agent
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
(lifting ?a - agent ?t - table ?r - room)
(inroom ?t - table ?r - room)
(Kinroom ?t - table ?r - room ?V_PARAM - VALUE_TYPE)
(KGiveninroom ?t - table ?r - room ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(in ?a - agent ?r - room)
(connected ?r1 - room ?r2 - room)
(available ?a - agent)
(can-observe ?a1 - agent ?table - table)
(init-v9a_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-v9a_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-v9a_observe-table_a3_table2_room1 ?dd - dummy)
(pre-l6d_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-oj1_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-ojm_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-v9a_observe-table_a3_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-v9a_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (init-v9a_observe-table_a3_table2_room1 dd) (immediate-dummy-v9a_observe-table_a3_table2_room1 dd) (in a3 room1) (available a3) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-v9a_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (init-v9a_observe-table_a3_table2_room1 dd) (immediate-dummy-v9a_observe-table_a3_table2_room1 dd) (in a3 room1) (available a3) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-v9a_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-v9a_observe-table_a3_table2_room1 dd) (not (dummy-left-v9a_observe-table_a3_table2_room1 dd)) (not (dummy-right-v9a_observe-table_a3_table2_room1 dd)))
:effect 
(and (immediate-dummy-v9a_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-v9a_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-v9a_observe-table_a3_table2_room1 dd) (in a3 room1) (available a3) (not (inroom table2 room1)) (immediate-dummy-v9a_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (init-v9a_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-v9a_observe-table_a3_table2_room1 dd)) (dummy-left-v9a_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-v9a_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-v9a_observe-table_a3_table2_room1 dd) (in a3 room1) (available a3) (inroom table2 room1) (immediate-dummy-v9a_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (init-v9a_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-v9a_observe-table_a3_table2_room1 dd)) (dummy-right-v9a_observe-table_a3_table2_room1 dd))
)
(:action act-l6d_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-v9a_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (available a3) (in a3 room2) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-l6d_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-oj1_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-l6d_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-oj1_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-l6d_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-ojm_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-oj1_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-ojm_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-oj1_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-ojm_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ojm_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-ojm_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-v9a_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-v9a_observe-table_a3_table2_room1 dd) (inroom table2 room1) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-v9a_observe-table_a3_table2_room1 dd)))
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
