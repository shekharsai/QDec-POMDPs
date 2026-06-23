(define (domain Ktablemover-2-a4)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 table5 - table
 a4 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 dd - dummy
 tag0 - TAG_TYPE ; (not (inroom table1 room3)) (inroom table1 room4) (not (inroom table2 room2)) (inroom table2 room1) (not (inroom table3 room1)) (inroom table3 room2) (not (inroom table4 room1)) (inroom table4 room2) (not (inroom table5 room4)) (inroom table5 room3)
 tag1 - TAG_TYPE ; (inroom table1 room3) (not (inroom table1 room4)) (inroom table2 room2) (not (inroom table2 room1)) (inroom table3 room1) (not (inroom table3 room2)) (inroom table4 room1) (not (inroom table4 room2)) (inroom table5 room4) (not (inroom table5 room3))
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
(init-7e0_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-7e0_observe-table_a2_table5_room3 ?dd - dummy)
(dummy-left-7e0_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-8vd_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-8vd_observe-table_a2_table1_room3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-8vd_observe-table_a2_table1_room3 ?dd - dummy)
(pre-mgj_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-5a3_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-xh9_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(dummy-right-7e0_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-tuw_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-tuw_observe-table_a2_table1_room3 ?dd - dummy)
(pre-xpb_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-qop_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-6ae_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-tuw_observe-table_a2_table1_room3 ?dd - dummy)
(pre-xcg_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-vtf_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-li3_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(pre-xsi_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-hct_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-vt2_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-7e0_observe-table_a2_table5_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-7e0_observe-table_a2_table5_room3 dd) (immediate-dummy-7e0_observe-table_a2_table5_room3 dd) (in a4 room3) (inroom table5 room3) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_TRUE))
)
(:action act-7e0_observe-table_a2_table5_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-7e0_observe-table_a2_table5_room3 dd) (immediate-dummy-7e0_observe-table_a2_table5_room3 dd) (in a4 room3) (not (inroom table5 room3)) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_FALSE))
)
(:action act-dummy-7e0_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-7e0_observe-table_a2_table5_room3 dd) (not (dummy-left-7e0_observe-table_a2_table5_room3 dd)) (not (dummy-right-7e0_observe-table_a2_table5_room3 dd)))
:effect 
(and (immediate-dummy-7e0_observe-table_a2_table5_room3 dd))
)
(:action dummy-left-7e0_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-7e0_observe-table_a2_table5_room3 dd) (in a4 room3) (not (inroom table5 room3)) (immediate-dummy-7e0_observe-table_a2_table5_room3 dd) (Kinroom table5 room3 V_FALSE))
:effect 
(and (not (init-7e0_observe-table_a2_table5_room3 dd)) (not (immediate-dummy-7e0_observe-table_a2_table5_room3 dd)) (dummy-left-7e0_observe-table_a2_table5_room3 dd))
)
(:action dummy-right-7e0_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-7e0_observe-table_a2_table5_room3 dd) (in a4 room3) (inroom table5 room3) (immediate-dummy-7e0_observe-table_a2_table5_room3 dd) (Kinroom table5 room3 V_TRUE))
:effect 
(and (not (init-7e0_observe-table_a2_table5_room3 dd)) (not (immediate-dummy-7e0_observe-table_a2_table5_room3 dd)) (dummy-right-7e0_observe-table_a2_table5_room3 dd))
)
(:action act-8vd_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7e0_observe-table_a2_table5_room3 dd) (immediate-dummy-8vd_observe-table_a2_table1_room3 dd) (not (inroom table5 room3)) (in a4 room3) (Kinroom table5 room3 V_FALSE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-8vd_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7e0_observe-table_a2_table5_room3 dd) (immediate-dummy-8vd_observe-table_a2_table1_room3 dd) (not (inroom table5 room3)) (in a4 room3) (Kinroom table5 room3 V_FALSE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-8vd_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7e0_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a4 room3) (not (dummy-left-8vd_observe-table_a2_table1_room3 dd)) (not (dummy-right-8vd_observe-table_a2_table1_room3 dd)) (Kinroom table5 room3 V_FALSE))
:effect 
(and (immediate-dummy-8vd_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-8vd_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7e0_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a4 room3) (not (inroom table1 room3)) (immediate-dummy-8vd_observe-table_a2_table1_room3 dd) (Kinroom table5 room3 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-8vd_observe-table_a2_table1_room3 dd)) (dummy-left-8vd_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-8vd_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7e0_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a4 room3) (inroom table1 room3) (immediate-dummy-8vd_observe-table_a2_table1_room3 dd) (Kinroom table5 room3 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-8vd_observe-table_a2_table1_room3 dd)) (dummy-right-8vd_observe-table_a2_table1_room3 dd))
)
(:action goal-achieve-left-8vd_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-8vd_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table5 room3)) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-8vd_observe-table_a2_table1_room3 dd)))
)
(:action act-mgj_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-8vd_observe-table_a2_table1_room3 dd) (inroom table1 room3) (not (inroom table5 room3)) (available a4) (in a4 room3) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (pre-mgj_joint-lift-table_a2_a4_table1_room3 dd) (not (available a4)))
)
(:action act-5a3_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-mgj_joint-lift-table_a2_a4_table1_room3 dd) (in a4 room3))
:effect 
(and (pre-5a3_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-mgj_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-xh9_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-5a3_joint-move-table_a2_a4_table1_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-xh9_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-5a3_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a4))
)
(:action goal-achieve-xh9_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-xh9_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-xh9_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-tuw_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7e0_observe-table_a2_table5_room3 dd) (immediate-dummy-tuw_observe-table_a2_table1_room3 dd) (inroom table5 room3) (in a4 room3) (Kinroom table5 room3 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-tuw_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7e0_observe-table_a2_table5_room3 dd) (immediate-dummy-tuw_observe-table_a2_table1_room3 dd) (inroom table5 room3) (in a4 room3) (Kinroom table5 room3 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-tuw_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7e0_observe-table_a2_table5_room3 dd) (inroom table5 room3) (in a4 room3) (not (dummy-left-tuw_observe-table_a2_table1_room3 dd)) (not (dummy-right-tuw_observe-table_a2_table1_room3 dd)) (Kinroom table5 room3 V_TRUE))
:effect 
(and (immediate-dummy-tuw_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-tuw_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7e0_observe-table_a2_table5_room3 dd) (inroom table5 room3) (in a4 room3) (not (inroom table1 room3)) (immediate-dummy-tuw_observe-table_a2_table1_room3 dd) (Kinroom table5 room3 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-tuw_observe-table_a2_table1_room3 dd)) (dummy-left-tuw_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-tuw_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7e0_observe-table_a2_table5_room3 dd) (inroom table5 room3) (in a4 room3) (inroom table1 room3) (immediate-dummy-tuw_observe-table_a2_table1_room3 dd) (Kinroom table5 room3 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-tuw_observe-table_a2_table1_room3 dd)) (dummy-right-tuw_observe-table_a2_table1_room3 dd))
)
(:action act-xpb_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-tuw_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (inroom table5 room3) (available a4) (in a4 room3) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (pre-xpb_joint-lift-table_a2_a4_table5_room3 dd) (not (available a4)))
)
(:action act-qop_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-xpb_joint-lift-table_a2_a4_table5_room3 dd) (in a4 room3))
:effect 
(and (pre-qop_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-xpb_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-6ae_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-qop_joint-move-table_a2_a4_table5_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-6ae_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-qop_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a4))
)
(:action goal-achieve-6ae_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-6ae_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-6ae_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-xcg_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-tuw_observe-table_a2_table1_room3 dd) (inroom table1 room3) (inroom table5 room3) (available a4) (in a4 room3) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (pre-xcg_joint-lift-table_a2_a4_table1_room3 dd) (not (available a4)))
)
(:action act-vtf_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-xcg_joint-lift-table_a2_a4_table1_room3 dd) (in a4 room3))
:effect 
(and (pre-vtf_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-xcg_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-li3_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-vtf_joint-move-table_a2_a4_table1_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-li3_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-vtf_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a4))
)
(:action act-xsi_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-li3_joint-drop-table_a2_a4_table1_room4 dd) (available a4) (in a4 room3))
:effect 
(and (pre-xsi_joint-lift-table_a2_a4_table5_room3 dd) (not (pre-li3_joint-drop-table_a2_a4_table1_room4 dd)) (not (available a4)))
)
(:action act-hct_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-xsi_joint-lift-table_a2_a4_table5_room3 dd) (in a4 room3))
:effect 
(and (pre-hct_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-xsi_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-vt2_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-hct_joint-move-table_a2_a4_table5_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-vt2_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-hct_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a4))
)
(:action goal-achieve-vt2_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-vt2_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-vt2_joint-drop-table_a2_a4_table5_room4 dd)))
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
