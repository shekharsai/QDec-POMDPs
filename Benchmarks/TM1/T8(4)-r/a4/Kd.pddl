(define (domain Ktablemover-2-a4)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 a4 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 room5 - room
 room6 - room
 room7 - room
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table1 room4) (inroom table2 room1) (inroom table3 room4)
 tag1 - TAG_TYPE ; (inroom table1 room3) (inroom table2 room2) (inroom table3 room3)
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
(can-observe ?a - agent ?t - table)
(init-47d_observe-table_a4_table4_room7 ?dd - dummy)
(immediate-dummy-47d_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-left-47d_observe-table_a4_table4_room7 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-47d_observe-table_a4_table4_room7 ?dd - dummy)
(immediate-dummy-l76_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-l76_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-l5l_observe-table_a2_table2_room2 ?dd - dummy)
(dummy-left-l5l_observe-table_a2_table2_room2 ?dd - dummy)
(pre-5qi_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
(pre-atg_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
(pre-66x_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
(dummy-right-l5l_observe-table_a2_table2_room2 ?dd - dummy)
(pre-tqi_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
(pre-ovv_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
(pre-g4i_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
(immediate-dummy-7ab_observe-table_a2_table3_room4 ?dd - dummy)
(dummy-left-7ab_observe-table_a2_table3_room4 ?dd - dummy)
(dummy-right-7ab_observe-table_a2_table3_room4 ?dd - dummy)
(pre-5bc_joint-lift-table_a3_a4_table4_room6 ?dd - dummy)
(pre-xqx_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
(dummy-right-l76_observe-table_a2_table1_room3 ?dd - dummy)
(pre-zy8_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
(pre-lmx_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
(pre-a0d_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-47d_observe-table_a4_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (init-47d_observe-table_a4_table4_room7 dd) (immediate-dummy-47d_observe-table_a4_table4_room7 dd) (in a4 room7) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-47d_observe-table_a4_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (init-47d_observe-table_a4_table4_room7 dd) (immediate-dummy-47d_observe-table_a4_table4_room7 dd) (in a4 room7) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-47d_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (init-47d_observe-table_a4_table4_room7 dd) (not (dummy-left-47d_observe-table_a4_table4_room7 dd)) (not (dummy-right-47d_observe-table_a4_table4_room7 dd)))
:effect 
(and (immediate-dummy-47d_observe-table_a4_table4_room7 dd))
)
(:action dummy-left-47d_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (init-47d_observe-table_a4_table4_room7 dd) (in a4 room7) (not (inroom table4 room7)) (immediate-dummy-47d_observe-table_a4_table4_room7 dd) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (init-47d_observe-table_a4_table4_room7 dd)) (not (immediate-dummy-47d_observe-table_a4_table4_room7 dd)) (dummy-left-47d_observe-table_a4_table4_room7 dd))
)
(:action dummy-right-47d_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (init-47d_observe-table_a4_table4_room7 dd) (in a4 room7) (inroom table4 room7) (immediate-dummy-47d_observe-table_a4_table4_room7 dd) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (init-47d_observe-table_a4_table4_room7 dd)) (not (immediate-dummy-47d_observe-table_a4_table4_room7 dd)) (dummy-right-47d_observe-table_a4_table4_room7 dd))
)
(:action goal-achieve-left-47d_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-47d_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (Kinroom table4 room7 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-47d_observe-table_a4_table4_room7 dd)))
)
(:action act-l76_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-47d_observe-table_a4_table4_room7 dd) (immediate-dummy-l76_observe-table_a2_table1_room3 dd) (inroom table4 room7) (in a4 room3) (Kinroom table4 room7 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-l76_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-47d_observe-table_a4_table4_room7 dd) (immediate-dummy-l76_observe-table_a2_table1_room3 dd) (inroom table4 room7) (in a4 room3) (Kinroom table4 room7 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-l76_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-47d_observe-table_a4_table4_room7 dd) (inroom table4 room7) (in a4 room3) (not (dummy-left-l76_observe-table_a2_table1_room3 dd)) (not (dummy-right-l76_observe-table_a2_table1_room3 dd)) (Kinroom table4 room7 V_TRUE))
:effect 
(and (immediate-dummy-l76_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-l76_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-47d_observe-table_a4_table4_room7 dd) (inroom table4 room7) (in a4 room3) (not (inroom table1 room3)) (immediate-dummy-l76_observe-table_a2_table1_room3 dd) (Kinroom table4 room7 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-l76_observe-table_a2_table1_room3 dd)) (dummy-left-l76_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-l76_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-47d_observe-table_a4_table4_room7 dd) (inroom table4 room7) (in a4 room3) (inroom table1 room3) (immediate-dummy-l76_observe-table_a2_table1_room3 dd) (Kinroom table4 room7 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-l76_observe-table_a2_table1_room3 dd)) (dummy-right-l76_observe-table_a2_table1_room3 dd))
)
(:action act-l5l_observe-table_a2_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l76_observe-table_a2_table1_room3 dd) (immediate-dummy-l5l_observe-table_a2_table2_room2 dd) (not (inroom table1 room3)) (inroom table4 room7) (in a4 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-l5l_observe-table_a2_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l76_observe-table_a2_table1_room3 dd) (immediate-dummy-l5l_observe-table_a2_table2_room2 dd) (not (inroom table1 room3)) (inroom table4 room7) (in a4 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-l5l_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l76_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (inroom table4 room7) (in a4 room2) (not (dummy-left-l5l_observe-table_a2_table2_room2 dd)) (not (dummy-right-l5l_observe-table_a2_table2_room2 dd)) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (immediate-dummy-l5l_observe-table_a2_table2_room2 dd))
)
(:action dummy-left-l5l_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l76_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (inroom table4 room7) (in a4 room2) (not (inroom table2 room2)) (immediate-dummy-l5l_observe-table_a2_table2_room2 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-l5l_observe-table_a2_table2_room2 dd)) (dummy-left-l5l_observe-table_a2_table2_room2 dd))
)
(:action dummy-right-l5l_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l76_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (inroom table4 room7) (in a4 room2) (inroom table2 room2) (immediate-dummy-l5l_observe-table_a2_table2_room2 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-l5l_observe-table_a2_table2_room2 dd)) (dummy-right-l5l_observe-table_a2_table2_room2 dd))
)
(:action act-5qi_joint-lift-table_a3_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l5l_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (inroom table4 room7) (available a4) (in a4 room7) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (pre-5qi_joint-lift-table_a3_a4_table4_room7 dd) (not (available a4)))
)
(:action act-atg_joint-move-table_a3_a4_table4_room7_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-5qi_joint-lift-table_a3_a4_table4_room7 dd) (in a4 room7))
:effect 
(and (pre-atg_joint-move-table_a3_a4_table4_room7_room6 dd) (not (pre-5qi_joint-lift-table_a3_a4_table4_room7 dd)) (not (in a4 room7)) (in a4 room6))
)
(:action act-66x_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-atg_joint-move-table_a3_a4_table4_room7_room6 dd) (in a4 room6))
:effect 
(and (pre-66x_joint-drop-table_a3_a4_table4_room6 dd) (not (pre-atg_joint-move-table_a3_a4_table4_room7_room6 dd)) (available a4))
)
(:action goal-achieve-66x_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-66x_joint-drop-table_a3_a4_table4_room6 dd))
:effect 
(and (done-goal dd) (not (pre-66x_joint-drop-table_a3_a4_table4_room6 dd)))
)
(:action act-tqi_joint-lift-table_a3_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l5l_observe-table_a2_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (inroom table4 room7) (available a4) (in a4 room7) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (pre-tqi_joint-lift-table_a3_a4_table4_room7 dd) (not (available a4)))
)
(:action act-ovv_joint-move-table_a3_a4_table4_room7_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-tqi_joint-lift-table_a3_a4_table4_room7 dd) (in a4 room7))
:effect 
(and (pre-ovv_joint-move-table_a3_a4_table4_room7_room6 dd) (not (pre-tqi_joint-lift-table_a3_a4_table4_room7 dd)) (not (in a4 room7)) (in a4 room6))
)
(:action act-g4i_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-ovv_joint-move-table_a3_a4_table4_room7_room6 dd) (in a4 room6))
:effect 
(and (pre-g4i_joint-drop-table_a3_a4_table4_room6 dd) (not (pre-ovv_joint-move-table_a3_a4_table4_room7_room6 dd)) (available a4))
)
(:action act-7ab_observe-table_a2_table3_room4-T
:parameters ( ?a - agent)
:precondition 
(and (pre-g4i_joint-drop-table_a3_a4_table4_room6 dd) (immediate-dummy-7ab_observe-table_a2_table3_room4 dd) (in a4 room4) (inroom table3 room4) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_TRUE))
)
(:action act-7ab_observe-table_a2_table3_room4-F
:parameters ( ?a - agent)
:precondition 
(and (pre-g4i_joint-drop-table_a3_a4_table4_room6 dd) (immediate-dummy-7ab_observe-table_a2_table3_room4 dd) (in a4 room4) (not (inroom table3 room4)) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_FALSE))
)
(:action act-dummy-7ab_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-g4i_joint-drop-table_a3_a4_table4_room6 dd) (in a4 room4) (not (dummy-left-7ab_observe-table_a2_table3_room4 dd)) (not (dummy-right-7ab_observe-table_a2_table3_room4 dd)))
:effect 
(and (immediate-dummy-7ab_observe-table_a2_table3_room4 dd))
)
(:action dummy-left-7ab_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (in a4 room4) (not (inroom table3 room4)) (immediate-dummy-7ab_observe-table_a2_table3_room4 dd) (Kinroom table3 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-7ab_observe-table_a2_table3_room4 dd)) (dummy-left-7ab_observe-table_a2_table3_room4 dd))
)
(:action dummy-right-7ab_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (in a4 room4) (inroom table3 room4) (immediate-dummy-7ab_observe-table_a2_table3_room4 dd) (Kinroom table3 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-7ab_observe-table_a2_table3_room4 dd)) (dummy-right-7ab_observe-table_a2_table3_room4 dd))
)
(:action goal-achieve-left-7ab_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7ab_observe-table_a2_table3_room4 dd) (not (inroom table3 room4)) (Kinroom table3 room4 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-7ab_observe-table_a2_table3_room4 dd)))
)
(:action act-5bc_joint-lift-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7ab_observe-table_a2_table3_room4 dd) (inroom table3 room4) (available a4) (in a4 room6) (Kinroom table3 room4 V_TRUE))
:effect 
(and (pre-5bc_joint-lift-table_a3_a4_table4_room6 dd) (not (available a4)))
)
(:action act-xqx_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-5bc_joint-lift-table_a3_a4_table4_room6 dd) (in a4 room6))
:effect 
(and (pre-xqx_joint-drop-table_a3_a4_table4_room6 dd) (not (pre-5bc_joint-lift-table_a3_a4_table4_room6 dd)) (available a4))
)
(:action goal-achieve-xqx_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-xqx_joint-drop-table_a3_a4_table4_room6 dd))
:effect 
(and (done-goal dd) (not (pre-xqx_joint-drop-table_a3_a4_table4_room6 dd)))
)
(:action act-zy8_joint-lift-table_a3_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l76_observe-table_a2_table1_room3 dd) (inroom table1 room3) (inroom table4 room7) (available a4) (in a4 room7) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (pre-zy8_joint-lift-table_a3_a4_table4_room7 dd) (not (available a4)))
)
(:action act-lmx_joint-move-table_a3_a4_table4_room7_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-zy8_joint-lift-table_a3_a4_table4_room7 dd) (in a4 room7))
:effect 
(and (pre-lmx_joint-move-table_a3_a4_table4_room7_room6 dd) (not (pre-zy8_joint-lift-table_a3_a4_table4_room7 dd)) (not (in a4 room7)) (in a4 room6))
)
(:action act-a0d_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-lmx_joint-move-table_a3_a4_table4_room7_room6 dd) (in a4 room6))
:effect 
(and (pre-a0d_joint-drop-table_a3_a4_table4_room6 dd) (not (pre-lmx_joint-move-table_a3_a4_table4_room7_room6 dd)) (available a4))
)
(:action goal-achieve-a0d_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-a0d_joint-drop-table_a3_a4_table4_room6 dd))
:effect 
(and (done-goal dd) (not (pre-a0d_joint-drop-table_a3_a4_table4_room6 dd)))
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
