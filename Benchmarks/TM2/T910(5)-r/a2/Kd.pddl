(define (domain Ktablemover-2-a2)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 a2 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 room5 - room
 room6 - room
 room7 - room
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table2 room1) (inroom table3 room6) (inroom table4 room7)
 tag1 - TAG_TYPE ; (inroom table2 room2) (inroom table3 room5) (inroom table4 room6)
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
(can-observe ?a - agent ?t - table)
(init-y5n_observe-table_a5_table1_room4 ?dd - dummy)
(immediate-dummy-y5n_observe-table_a5_table1_room4 ?dd - dummy)
(dummy-left-y5n_observe-table_a5_table1_room4 ?dd - dummy)
(pre-hcu_joint-lift-table_a2_a5_table1_room3 ?dd - dummy)
(pre-wyu_joint-move-table_a2_a5_table1_room3_room4 ?dd - dummy)
(pre-j4e_joint-drop-table_a2_a5_table1_room4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-y5n_observe-table_a5_table1_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-y5n_observe-table_a5_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (init-y5n_observe-table_a5_table1_room4 dd) (immediate-dummy-y5n_observe-table_a5_table1_room4 dd) (in a2 room4) (available a2) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-y5n_observe-table_a5_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (init-y5n_observe-table_a5_table1_room4 dd) (immediate-dummy-y5n_observe-table_a5_table1_room4 dd) (in a2 room4) (available a2) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-y5n_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (init-y5n_observe-table_a5_table1_room4 dd) (not (dummy-left-y5n_observe-table_a5_table1_room4 dd)) (not (dummy-right-y5n_observe-table_a5_table1_room4 dd)))
:effect 
(and (immediate-dummy-y5n_observe-table_a5_table1_room4 dd))
)
(:action dummy-left-y5n_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (init-y5n_observe-table_a5_table1_room4 dd) (in a2 room4) (available a2) (not (inroom table1 room4)) (immediate-dummy-y5n_observe-table_a5_table1_room4 dd) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (init-y5n_observe-table_a5_table1_room4 dd)) (not (immediate-dummy-y5n_observe-table_a5_table1_room4 dd)) (dummy-left-y5n_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-y5n_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (init-y5n_observe-table_a5_table1_room4 dd) (in a2 room4) (available a2) (inroom table1 room4) (immediate-dummy-y5n_observe-table_a5_table1_room4 dd) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (init-y5n_observe-table_a5_table1_room4 dd)) (not (immediate-dummy-y5n_observe-table_a5_table1_room4 dd)) (dummy-right-y5n_observe-table_a5_table1_room4 dd))
)
(:action act-hcu_joint-lift-table_a2_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y5n_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (available a2) (in a2 room3) (Kinroom table1 room4 V_FALSE))
:effect 
(and (pre-hcu_joint-lift-table_a2_a5_table1_room3 dd) (not (available a2)))
)
(:action act-wyu_joint-move-table_a2_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-hcu_joint-lift-table_a2_a5_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-wyu_joint-move-table_a2_a5_table1_room3_room4 dd) (not (pre-hcu_joint-lift-table_a2_a5_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-j4e_joint-drop-table_a2_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-wyu_joint-move-table_a2_a5_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-j4e_joint-drop-table_a2_a5_table1_room4 dd) (not (pre-wyu_joint-move-table_a2_a5_table1_room3_room4 dd)) (available a2))
)
(:action goal-achieve-j4e_joint-drop-table_a2_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-j4e_joint-drop-table_a2_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-j4e_joint-drop-table_a2_a5_table1_room4 dd)))
)
(:action goal-achieve-right-y5n_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y5n_observe-table_a5_table1_room4 dd) (inroom table1 room4) (Kinroom table1 room4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-y5n_observe-table_a5_table1_room4 dd)))
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
