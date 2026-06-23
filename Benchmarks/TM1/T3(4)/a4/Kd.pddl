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
 tag0 - TAG_TYPE ; (inroom table2 room2) (inroom table3 room3)
 tag1 - TAG_TYPE ; (inroom table2 room1) (inroom table3 room4)
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
(init-hdu_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-hdu_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-hdu_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-gsq_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-gsq_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-a1d_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-a1d_observe-table_a4_table4_room6 ?dd - dummy)
(pre-t15_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
(pre-t71_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
(pre-onh_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-a1d_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-right-gsq_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-p2r_observe-table_a2_table3_room3 ?dd - dummy)
(dummy-left-p2r_observe-table_a2_table3_room3 ?dd - dummy)
(immediate-dummy-2fb_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-left-2fb_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-right-2fb_observe-table_a4_table4_room7 ?dd - dummy)
(pre-dis_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
(pre-26w_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
(pre-kim_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
(dummy-right-p2r_observe-table_a2_table3_room3 ?dd - dummy)
(immediate-dummy-jup_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-jup_observe-table_a4_table4_room6 ?dd - dummy)
(pre-8x1_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
(pre-fxs_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
(pre-3ll_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
(dummy-right-jup_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-right-hdu_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-tdj_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-left-tdj_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-right-tdj_observe-table_a4_table4_room7 ?dd - dummy)
(pre-t79_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
(pre-x1a_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
(pre-1p7_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-hdu_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-hdu_observe-table_a2_table1_room3 dd) (immediate-dummy-hdu_observe-table_a2_table1_room3 dd) (in a4 room3) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-hdu_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-hdu_observe-table_a2_table1_room3 dd) (immediate-dummy-hdu_observe-table_a2_table1_room3 dd) (in a4 room3) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-hdu_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-hdu_observe-table_a2_table1_room3 dd) (not (dummy-left-hdu_observe-table_a2_table1_room3 dd)) (not (dummy-right-hdu_observe-table_a2_table1_room3 dd)))
:effect 
(and (immediate-dummy-hdu_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-hdu_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-hdu_observe-table_a2_table1_room3 dd) (in a4 room3) (not (inroom table1 room3)) (immediate-dummy-hdu_observe-table_a2_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (init-hdu_observe-table_a2_table1_room3 dd)) (not (immediate-dummy-hdu_observe-table_a2_table1_room3 dd)) (dummy-left-hdu_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-hdu_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-hdu_observe-table_a2_table1_room3 dd) (in a4 room3) (inroom table1 room3) (immediate-dummy-hdu_observe-table_a2_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (init-hdu_observe-table_a2_table1_room3 dd)) (not (immediate-dummy-hdu_observe-table_a2_table1_room3 dd)) (dummy-right-hdu_observe-table_a2_table1_room3 dd))
)
(:action act-gsq_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hdu_observe-table_a2_table1_room3 dd) (immediate-dummy-gsq_observe-table_a1_table2_room2 dd) (not (inroom table1 room3)) (in a4 room2) (Kinroom table1 room3 V_FALSE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-gsq_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hdu_observe-table_a2_table1_room3 dd) (immediate-dummy-gsq_observe-table_a1_table2_room2 dd) (not (inroom table1 room3)) (in a4 room2) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-gsq_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hdu_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a4 room2) (not (dummy-left-gsq_observe-table_a1_table2_room2 dd)) (not (dummy-right-gsq_observe-table_a1_table2_room2 dd)) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-gsq_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-gsq_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hdu_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a4 room2) (not (inroom table2 room2)) (immediate-dummy-gsq_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-gsq_observe-table_a1_table2_room2 dd)) (dummy-left-gsq_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-gsq_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hdu_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a4 room2) (inroom table2 room2) (immediate-dummy-gsq_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-gsq_observe-table_a1_table2_room2 dd)) (dummy-right-gsq_observe-table_a1_table2_room2 dd))
)
(:action act-a1d_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gsq_observe-table_a1_table2_room2 dd) (immediate-dummy-a1d_observe-table_a4_table4_room6 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a4 room6) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-a1d_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gsq_observe-table_a1_table2_room2 dd) (immediate-dummy-a1d_observe-table_a4_table4_room6 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a4 room6) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-a1d_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gsq_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a4 room6) (not (dummy-left-a1d_observe-table_a4_table4_room6 dd)) (not (dummy-right-a1d_observe-table_a4_table4_room6 dd)) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-a1d_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-a1d_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gsq_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a4 room6) (not (inroom table4 room6)) (immediate-dummy-a1d_observe-table_a4_table4_room6 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-a1d_observe-table_a4_table4_room6 dd)) (dummy-left-a1d_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-a1d_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gsq_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a4 room6) (inroom table4 room6) (immediate-dummy-a1d_observe-table_a4_table4_room6 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-a1d_observe-table_a4_table4_room6 dd)) (dummy-right-a1d_observe-table_a4_table4_room6 dd))
)
(:action act-t15_joint-lift-table_a3_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a1d_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table2 room2)) (not (inroom table1 room3)) (available a4) (in a4 room7) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-t15_joint-lift-table_a3_a4_table4_room7 dd) (not (available a4)))
)
(:action act-t71_joint-move-table_a3_a4_table4_room7_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-t15_joint-lift-table_a3_a4_table4_room7 dd) (in a4 room7))
:effect 
(and (pre-t71_joint-move-table_a3_a4_table4_room7_room6 dd) (not (pre-t15_joint-lift-table_a3_a4_table4_room7 dd)) (not (in a4 room7)) (in a4 room6))
)
(:action act-onh_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-t71_joint-move-table_a3_a4_table4_room7_room6 dd) (in a4 room6))
:effect 
(and (pre-onh_joint-drop-table_a3_a4_table4_room6 dd) (not (pre-t71_joint-move-table_a3_a4_table4_room7_room6 dd)) (available a4))
)
(:action goal-achieve-onh_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-onh_joint-drop-table_a3_a4_table4_room6 dd))
:effect 
(and (done-goal dd) (not (pre-onh_joint-drop-table_a3_a4_table4_room6 dd)))
)
(:action goal-achieve-right-a1d_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a1d_observe-table_a4_table4_room6 dd) (inroom table4 room6) (not (inroom table2 room2)) (not (inroom table1 room3)) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-a1d_observe-table_a4_table4_room6 dd)))
)
(:action act-p2r_observe-table_a2_table3_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gsq_observe-table_a1_table2_room2 dd) (immediate-dummy-p2r_observe-table_a2_table3_room3 dd) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room3) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table3 room3) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_TRUE))
)
(:action act-p2r_observe-table_a2_table3_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gsq_observe-table_a1_table2_room2 dd) (immediate-dummy-p2r_observe-table_a2_table3_room3 dd) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room3) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table3 room3)) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_FALSE))
)
(:action act-dummy-p2r_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gsq_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room3) (not (dummy-left-p2r_observe-table_a2_table3_room3 dd)) (not (dummy-right-p2r_observe-table_a2_table3_room3 dd)) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-p2r_observe-table_a2_table3_room3 dd))
)
(:action dummy-left-p2r_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gsq_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room3) (not (inroom table3 room3)) (immediate-dummy-p2r_observe-table_a2_table3_room3 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-p2r_observe-table_a2_table3_room3 dd)) (dummy-left-p2r_observe-table_a2_table3_room3 dd))
)
(:action dummy-right-p2r_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gsq_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room3) (inroom table3 room3) (immediate-dummy-p2r_observe-table_a2_table3_room3 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-p2r_observe-table_a2_table3_room3 dd)) (dummy-right-p2r_observe-table_a2_table3_room3 dd))
)
(:action act-2fb_observe-table_a4_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-p2r_observe-table_a2_table3_room3 dd) (immediate-dummy-2fb_observe-table_a4_table4_room7 dd) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room7) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-2fb_observe-table_a4_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-p2r_observe-table_a2_table3_room3 dd) (immediate-dummy-2fb_observe-table_a4_table4_room7 dd) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room7) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-2fb_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-p2r_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room7) (not (dummy-left-2fb_observe-table_a4_table4_room7 dd)) (not (dummy-right-2fb_observe-table_a4_table4_room7 dd)) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-2fb_observe-table_a4_table4_room7 dd))
)
(:action dummy-left-2fb_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-p2r_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room7) (not (inroom table4 room7)) (immediate-dummy-2fb_observe-table_a4_table4_room7 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (immediate-dummy-2fb_observe-table_a4_table4_room7 dd)) (dummy-left-2fb_observe-table_a4_table4_room7 dd))
)
(:action dummy-right-2fb_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-p2r_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room7) (inroom table4 room7) (immediate-dummy-2fb_observe-table_a4_table4_room7 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (immediate-dummy-2fb_observe-table_a4_table4_room7 dd)) (dummy-right-2fb_observe-table_a4_table4_room7 dd))
)
(:action goal-achieve-left-2fb_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2fb_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (Kinroom table4 room7 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-2fb_observe-table_a4_table4_room7 dd)))
)
(:action act-dis_joint-lift-table_a3_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2fb_observe-table_a4_table4_room7 dd) (inroom table4 room7) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (available a4) (in a4 room7) (Kinroom table4 room7 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-dis_joint-lift-table_a3_a4_table4_room7 dd) (not (available a4)))
)
(:action act-26w_joint-move-table_a3_a4_table4_room7_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-dis_joint-lift-table_a3_a4_table4_room7 dd) (in a4 room7))
:effect 
(and (pre-26w_joint-move-table_a3_a4_table4_room7_room6 dd) (not (pre-dis_joint-lift-table_a3_a4_table4_room7 dd)) (not (in a4 room7)) (in a4 room6))
)
(:action act-kim_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-26w_joint-move-table_a3_a4_table4_room7_room6 dd) (in a4 room6))
:effect 
(and (pre-kim_joint-drop-table_a3_a4_table4_room6 dd) (not (pre-26w_joint-move-table_a3_a4_table4_room7_room6 dd)) (available a4))
)
(:action goal-achieve-kim_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-kim_joint-drop-table_a3_a4_table4_room6 dd))
:effect 
(and (done-goal dd) (not (pre-kim_joint-drop-table_a3_a4_table4_room6 dd)))
)
(:action act-jup_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p2r_observe-table_a2_table3_room3 dd) (immediate-dummy-jup_observe-table_a4_table4_room6 dd) (inroom table3 room3) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room6) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-jup_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p2r_observe-table_a2_table3_room3 dd) (immediate-dummy-jup_observe-table_a4_table4_room6 dd) (inroom table3 room3) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room6) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-jup_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p2r_observe-table_a2_table3_room3 dd) (inroom table3 room3) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room6) (not (dummy-left-jup_observe-table_a4_table4_room6 dd)) (not (dummy-right-jup_observe-table_a4_table4_room6 dd)) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-jup_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-jup_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p2r_observe-table_a2_table3_room3 dd) (inroom table3 room3) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room6) (not (inroom table4 room6)) (immediate-dummy-jup_observe-table_a4_table4_room6 dd) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-jup_observe-table_a4_table4_room6 dd)) (dummy-left-jup_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-jup_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p2r_observe-table_a2_table3_room3 dd) (inroom table3 room3) (inroom table2 room2) (not (inroom table1 room3)) (in a4 room6) (inroom table4 room6) (immediate-dummy-jup_observe-table_a4_table4_room6 dd) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-jup_observe-table_a4_table4_room6 dd)) (dummy-right-jup_observe-table_a4_table4_room6 dd))
)
(:action act-8x1_joint-lift-table_a3_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jup_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (inroom table3 room3) (inroom table2 room2) (not (inroom table1 room3)) (available a4) (in a4 room7) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-8x1_joint-lift-table_a3_a4_table4_room7 dd) (not (available a4)))
)
(:action act-fxs_joint-move-table_a3_a4_table4_room7_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-8x1_joint-lift-table_a3_a4_table4_room7 dd) (in a4 room7))
:effect 
(and (pre-fxs_joint-move-table_a3_a4_table4_room7_room6 dd) (not (pre-8x1_joint-lift-table_a3_a4_table4_room7 dd)) (not (in a4 room7)) (in a4 room6))
)
(:action act-3ll_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-fxs_joint-move-table_a3_a4_table4_room7_room6 dd) (in a4 room6))
:effect 
(and (pre-3ll_joint-drop-table_a3_a4_table4_room6 dd) (not (pre-fxs_joint-move-table_a3_a4_table4_room7_room6 dd)) (available a4))
)
(:action goal-achieve-3ll_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-3ll_joint-drop-table_a3_a4_table4_room6 dd))
:effect 
(and (done-goal dd) (not (pre-3ll_joint-drop-table_a3_a4_table4_room6 dd)))
)
(:action goal-achieve-right-jup_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jup_observe-table_a4_table4_room6 dd) (inroom table4 room6) (inroom table3 room3) (inroom table2 room2) (not (inroom table1 room3)) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-jup_observe-table_a4_table4_room6 dd)))
)
(:action act-tdj_observe-table_a4_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hdu_observe-table_a2_table1_room3 dd) (immediate-dummy-tdj_observe-table_a4_table4_room7 dd) (inroom table1 room3) (in a4 room7) (Kinroom table1 room3 V_TRUE) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-tdj_observe-table_a4_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hdu_observe-table_a2_table1_room3 dd) (immediate-dummy-tdj_observe-table_a4_table4_room7 dd) (inroom table1 room3) (in a4 room7) (Kinroom table1 room3 V_TRUE) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-tdj_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hdu_observe-table_a2_table1_room3 dd) (inroom table1 room3) (in a4 room7) (not (dummy-left-tdj_observe-table_a4_table4_room7 dd)) (not (dummy-right-tdj_observe-table_a4_table4_room7 dd)) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-tdj_observe-table_a4_table4_room7 dd))
)
(:action dummy-left-tdj_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hdu_observe-table_a2_table1_room3 dd) (inroom table1 room3) (in a4 room7) (not (inroom table4 room7)) (immediate-dummy-tdj_observe-table_a4_table4_room7 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (immediate-dummy-tdj_observe-table_a4_table4_room7 dd)) (dummy-left-tdj_observe-table_a4_table4_room7 dd))
)
(:action dummy-right-tdj_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hdu_observe-table_a2_table1_room3 dd) (inroom table1 room3) (in a4 room7) (inroom table4 room7) (immediate-dummy-tdj_observe-table_a4_table4_room7 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (immediate-dummy-tdj_observe-table_a4_table4_room7 dd)) (dummy-right-tdj_observe-table_a4_table4_room7 dd))
)
(:action goal-achieve-left-tdj_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-tdj_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (inroom table1 room3) (Kinroom table4 room7 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-tdj_observe-table_a4_table4_room7 dd)))
)
(:action act-t79_joint-lift-table_a3_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-tdj_observe-table_a4_table4_room7 dd) (inroom table4 room7) (inroom table1 room3) (available a4) (in a4 room7) (Kinroom table4 room7 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-t79_joint-lift-table_a3_a4_table4_room7 dd) (not (available a4)))
)
(:action act-x1a_joint-move-table_a3_a4_table4_room7_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-t79_joint-lift-table_a3_a4_table4_room7 dd) (in a4 room7))
:effect 
(and (pre-x1a_joint-move-table_a3_a4_table4_room7_room6 dd) (not (pre-t79_joint-lift-table_a3_a4_table4_room7 dd)) (not (in a4 room7)) (in a4 room6))
)
(:action act-1p7_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-x1a_joint-move-table_a3_a4_table4_room7_room6 dd) (in a4 room6))
:effect 
(and (pre-1p7_joint-drop-table_a3_a4_table4_room6 dd) (not (pre-x1a_joint-move-table_a3_a4_table4_room7_room6 dd)) (available a4))
)
(:action goal-achieve-1p7_joint-drop-table_a3_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-1p7_joint-drop-table_a3_a4_table4_room6 dd))
:effect 
(and (done-goal dd) (not (pre-1p7_joint-drop-table_a3_a4_table4_room6 dd)))
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
