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
 tag0 - TAG_TYPE ; (inroom table2 room1) (inroom table3 room4)
 tag1 - TAG_TYPE ; (inroom table2 room2) (inroom table3 room3)
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
(init-2hy_observe-table_a4_table4_room7 ?dd - dummy)
(immediate-dummy-2hy_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-left-2hy_observe-table_a4_table4_room7 ?dd - dummy)
(immediate-dummy-pno_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-pno_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-6pz_observe-table_a3_table3_room4 ?dd - dummy)
(dummy-left-6pz_observe-table_a3_table3_room4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-6pz_observe-table_a3_table3_room4 ?dd - dummy)
(pre-2v6_joint-lift-table_a3_a4_table3_room4 ?dd - dummy)
(pre-j4l_joint-move-table_a3_a4_table3_room4_room3 ?dd - dummy)
(pre-rmv_joint-drop-table_a3_a4_table3_room3 ?dd - dummy)
(dummy-right-pno_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-right-2hy_observe-table_a4_table4_room7 ?dd - dummy)
(pre-2mj_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
(pre-lrp_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
(pre-u2b_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-2hy_observe-table_a4_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (init-2hy_observe-table_a4_table4_room7 dd) (immediate-dummy-2hy_observe-table_a4_table4_room7 dd) (in a4 room7) (available a4) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-2hy_observe-table_a4_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (init-2hy_observe-table_a4_table4_room7 dd) (immediate-dummy-2hy_observe-table_a4_table4_room7 dd) (in a4 room7) (available a4) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-2hy_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (init-2hy_observe-table_a4_table4_room7 dd) (not (dummy-left-2hy_observe-table_a4_table4_room7 dd)) (not (dummy-right-2hy_observe-table_a4_table4_room7 dd)))
:effect 
(and (immediate-dummy-2hy_observe-table_a4_table4_room7 dd))
)
(:action dummy-left-2hy_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (init-2hy_observe-table_a4_table4_room7 dd) (in a4 room7) (available a4) (not (inroom table4 room7)) (immediate-dummy-2hy_observe-table_a4_table4_room7 dd) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (init-2hy_observe-table_a4_table4_room7 dd)) (not (immediate-dummy-2hy_observe-table_a4_table4_room7 dd)) (dummy-left-2hy_observe-table_a4_table4_room7 dd))
)
(:action dummy-right-2hy_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (init-2hy_observe-table_a4_table4_room7 dd) (in a4 room7) (available a4) (inroom table4 room7) (immediate-dummy-2hy_observe-table_a4_table4_room7 dd) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (init-2hy_observe-table_a4_table4_room7 dd)) (not (immediate-dummy-2hy_observe-table_a4_table4_room7 dd)) (dummy-right-2hy_observe-table_a4_table4_room7 dd))
)
(:action act-pno_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2hy_observe-table_a4_table4_room7 dd) (immediate-dummy-pno_observe-table_a2_table1_room3 dd) (not (inroom table4 room7)) (in a4 room3) (available a4) (Kinroom table4 room7 V_FALSE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-pno_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2hy_observe-table_a4_table4_room7 dd) (immediate-dummy-pno_observe-table_a2_table1_room3 dd) (not (inroom table4 room7)) (in a4 room3) (available a4) (Kinroom table4 room7 V_FALSE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-pno_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2hy_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (in a4 room3) (available a4) (not (dummy-left-pno_observe-table_a2_table1_room3 dd)) (not (dummy-right-pno_observe-table_a2_table1_room3 dd)) (Kinroom table4 room7 V_FALSE))
:effect 
(and (immediate-dummy-pno_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-pno_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2hy_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (in a4 room3) (available a4) (not (inroom table1 room3)) (immediate-dummy-pno_observe-table_a2_table1_room3 dd) (Kinroom table4 room7 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-pno_observe-table_a2_table1_room3 dd)) (dummy-left-pno_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-pno_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2hy_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (in a4 room3) (available a4) (inroom table1 room3) (immediate-dummy-pno_observe-table_a2_table1_room3 dd) (Kinroom table4 room7 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-pno_observe-table_a2_table1_room3 dd)) (dummy-right-pno_observe-table_a2_table1_room3 dd))
)
(:action act-6pz_observe-table_a3_table3_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pno_observe-table_a2_table1_room3 dd) (immediate-dummy-6pz_observe-table_a3_table3_room4 dd) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a4 room4) (available a4) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (inroom table3 room4) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_TRUE))
)
(:action act-6pz_observe-table_a3_table3_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pno_observe-table_a2_table1_room3 dd) (immediate-dummy-6pz_observe-table_a3_table3_room4 dd) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a4 room4) (available a4) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (not (inroom table3 room4)) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_FALSE))
)
(:action act-dummy-6pz_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pno_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a4 room4) (available a4) (not (dummy-left-6pz_observe-table_a3_table3_room4 dd)) (not (dummy-right-6pz_observe-table_a3_table3_room4 dd)) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (immediate-dummy-6pz_observe-table_a3_table3_room4 dd))
)
(:action dummy-left-6pz_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pno_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a4 room4) (available a4) (not (inroom table3 room4)) (immediate-dummy-6pz_observe-table_a3_table3_room4 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (Kinroom table3 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-6pz_observe-table_a3_table3_room4 dd)) (dummy-left-6pz_observe-table_a3_table3_room4 dd))
)
(:action dummy-right-6pz_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pno_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a4 room4) (available a4) (inroom table3 room4) (immediate-dummy-6pz_observe-table_a3_table3_room4 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (Kinroom table3 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-6pz_observe-table_a3_table3_room4 dd)) (dummy-right-6pz_observe-table_a3_table3_room4 dd))
)
(:action goal-achieve-left-6pz_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6pz_observe-table_a3_table3_room4 dd) (not (inroom table3 room4)) (not (inroom table1 room3)) (not (inroom table4 room7)) (Kinroom table3 room4 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-6pz_observe-table_a3_table3_room4 dd)))
)
(:action act-2v6_joint-lift-table_a3_a4_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-6pz_observe-table_a3_table3_room4 dd) (inroom table3 room4) (not (inroom table1 room3)) (not (inroom table4 room7)) (available a4) (in a4 room4) (Kinroom table3 room4 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (pre-2v6_joint-lift-table_a3_a4_table3_room4 dd) (not (available a4)))
)
(:action act-j4l_joint-move-table_a3_a4_table3_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-2v6_joint-lift-table_a3_a4_table3_room4 dd) (in a4 room4))
:effect 
(and (pre-j4l_joint-move-table_a3_a4_table3_room4_room3 dd) (not (pre-2v6_joint-lift-table_a3_a4_table3_room4 dd)) (not (in a4 room4)) (in a4 room3))
)
(:action act-rmv_joint-drop-table_a3_a4_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-j4l_joint-move-table_a3_a4_table3_room4_room3 dd) (in a4 room3))
:effect 
(and (pre-rmv_joint-drop-table_a3_a4_table3_room3 dd) (not (pre-j4l_joint-move-table_a3_a4_table3_room4_room3 dd)) (available a4))
)
(:action goal-achieve-rmv_joint-drop-table_a3_a4_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-rmv_joint-drop-table_a3_a4_table3_room3 dd))
:effect 
(and (done-goal dd) (not (pre-rmv_joint-drop-table_a3_a4_table3_room3 dd)))
)
(:action goal-achieve-right-pno_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pno_observe-table_a2_table1_room3 dd) (inroom table1 room3) (not (inroom table4 room7)) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-pno_observe-table_a2_table1_room3 dd)))
)
(:action act-2mj_joint-lift-table_a3_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2hy_observe-table_a4_table4_room7 dd) (inroom table4 room7) (available a4) (in a4 room7) (Kinroom table4 room7 V_TRUE))
:effect 
(and (pre-2mj_joint-lift-table_a3_a4_table4_room7 dd) (not (available a4)))
)
(:action act-lrp_joint-move-table_a3_a4_table4_room7_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-2mj_joint-lift-table_a3_a4_table4_room7 dd) (in a4 room7))
:effect 
(and (pre-lrp_joint-move-table_a3_a4_table4_room7_room6 dd) (not (pre-2mj_joint-lift-table_a3_a4_table4_room7 dd)) (not (in a4 room7)) (in a4 room6))
)
(:action act-u2b_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-lrp_joint-move-table_a3_a4_table4_room7_room6 dd) (in a4 room6))
:effect 
(and (pre-u2b_joint-drop-table_a3_a4_table4_room6 dd) (not (pre-lrp_joint-move-table_a3_a4_table4_room7_room6 dd)) (available a4))
)
(:action goal-achieve-u2b_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-u2b_joint-drop-table_a3_a4_table4_room6 dd))
:effect 
(and (done-goal dd) (not (pre-u2b_joint-drop-table_a3_a4_table4_room6 dd)))
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
