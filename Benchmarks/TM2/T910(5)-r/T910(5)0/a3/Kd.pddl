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
 tag0 - TAG_TYPE ; (inroom table3 room5) (inroom table4 room6)
 tag1 - TAG_TYPE ; (inroom table3 room6) (inroom table4 room7)
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
(init-2an_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-2an_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-2an_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-b67_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-b67_observe-table_a3_table2_room1 ?dd - dummy)
(pre-rws_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-pmb_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-xgq_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-b67_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-right-2an_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-ud8_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-ud8_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-right-ud8_observe-table_a1_table2_room2 ?dd - dummy)
(pre-iu6_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-b7n_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-5mq_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-2an_observe-table_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-2an_observe-table_a4_table1_room3 dd) (immediate-dummy-2an_observe-table_a4_table1_room3 dd) (in a3 room3) (available a3) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-2an_observe-table_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-2an_observe-table_a4_table1_room3 dd) (immediate-dummy-2an_observe-table_a4_table1_room3 dd) (in a3 room3) (available a3) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-2an_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-2an_observe-table_a4_table1_room3 dd) (not (dummy-left-2an_observe-table_a4_table1_room3 dd)) (not (dummy-right-2an_observe-table_a4_table1_room3 dd)))
:effect 
(and (immediate-dummy-2an_observe-table_a4_table1_room3 dd))
)
(:action dummy-left-2an_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-2an_observe-table_a4_table1_room3 dd) (in a3 room3) (available a3) (not (inroom table1 room3)) (immediate-dummy-2an_observe-table_a4_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (init-2an_observe-table_a4_table1_room3 dd)) (not (immediate-dummy-2an_observe-table_a4_table1_room3 dd)) (dummy-left-2an_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-2an_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-2an_observe-table_a4_table1_room3 dd) (in a3 room3) (available a3) (inroom table1 room3) (immediate-dummy-2an_observe-table_a4_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (init-2an_observe-table_a4_table1_room3 dd)) (not (immediate-dummy-2an_observe-table_a4_table1_room3 dd)) (dummy-right-2an_observe-table_a4_table1_room3 dd))
)
(:action act-b67_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2an_observe-table_a4_table1_room3 dd) (immediate-dummy-b67_observe-table_a3_table2_room1 dd) (not (inroom table1 room3)) (in a3 room1) (available a3) (Kinroom table1 room3 V_FALSE) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-b67_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2an_observe-table_a4_table1_room3 dd) (immediate-dummy-b67_observe-table_a3_table2_room1 dd) (not (inroom table1 room3)) (in a3 room1) (available a3) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-b67_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2an_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a3 room1) (available a3) (not (dummy-left-b67_observe-table_a3_table2_room1 dd)) (not (dummy-right-b67_observe-table_a3_table2_room1 dd)) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-b67_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-b67_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2an_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a3 room1) (available a3) (not (inroom table2 room1)) (immediate-dummy-b67_observe-table_a3_table2_room1 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-b67_observe-table_a3_table2_room1 dd)) (dummy-left-b67_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-b67_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2an_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a3 room1) (available a3) (inroom table2 room1) (immediate-dummy-b67_observe-table_a3_table2_room1 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-b67_observe-table_a3_table2_room1 dd)) (dummy-right-b67_observe-table_a3_table2_room1 dd))
)
(:action act-rws_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b67_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (not (inroom table1 room3)) (available a3) (in a3 room2) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-rws_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-pmb_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-rws_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-pmb_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-rws_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-xgq_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-pmb_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-xgq_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-pmb_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-xgq_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-xgq_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-xgq_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-b67_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b67_observe-table_a3_table2_room1 dd) (inroom table2 room1) (not (inroom table1 room3)) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-b67_observe-table_a3_table2_room1 dd)))
)
(:action act-ud8_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2an_observe-table_a4_table1_room3 dd) (immediate-dummy-ud8_observe-table_a1_table2_room2 dd) (inroom table1 room3) (in a3 room2) (available a3) (Kinroom table1 room3 V_TRUE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-ud8_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2an_observe-table_a4_table1_room3 dd) (immediate-dummy-ud8_observe-table_a1_table2_room2 dd) (inroom table1 room3) (in a3 room2) (available a3) (Kinroom table1 room3 V_TRUE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-ud8_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2an_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a3 room2) (available a3) (not (dummy-left-ud8_observe-table_a1_table2_room2 dd)) (not (dummy-right-ud8_observe-table_a1_table2_room2 dd)) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-ud8_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-ud8_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2an_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a3 room2) (available a3) (not (inroom table2 room2)) (immediate-dummy-ud8_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-ud8_observe-table_a1_table2_room2 dd)) (dummy-left-ud8_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-ud8_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2an_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a3 room2) (available a3) (inroom table2 room2) (immediate-dummy-ud8_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-ud8_observe-table_a1_table2_room2 dd)) (dummy-right-ud8_observe-table_a1_table2_room2 dd))
)
(:action goal-achieve-left-ud8_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ud8_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-ud8_observe-table_a1_table2_room2 dd)))
)
(:action act-iu6_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ud8_observe-table_a1_table2_room2 dd) (inroom table2 room2) (inroom table1 room3) (available a3) (in a3 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-iu6_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-b7n_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-iu6_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-b7n_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-iu6_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-5mq_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-b7n_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-5mq_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-b7n_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-5mq_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-5mq_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-5mq_joint-drop-table_a1_a3_table2_room1 dd)))
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
