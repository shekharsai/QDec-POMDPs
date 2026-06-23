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
 tag0 - TAG_TYPE ; (inroom table2 room1) (inroom table3 room2) (inroom table4 room2)
 tag1 - TAG_TYPE ; (inroom table2 room2) (inroom table3 room1) (inroom table4 room1)
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
(init-7ox_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-7ox_observe-table_a2_table5_room3 ?dd - dummy)
(dummy-left-7ox_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-at2_observe-table_a5_table1_room4 ?dd - dummy)
(dummy-left-at2_observe-table_a5_table1_room4 ?dd - dummy)
(pre-k0u_joint-lift-table_a4_a5_table1_room3 ?dd - dummy)
(pre-4yx_joint-move-table_a4_a5_table1_room3_room4 ?dd - dummy)
(pre-2g0_joint-drop-table_a4_a5_table1_room4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-at2_observe-table_a5_table1_room4 ?dd - dummy)
(dummy-right-7ox_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-kh6_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-kh6_observe-table_a2_table1_room3 ?dd - dummy)
(pre-zuq_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-79o_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-ojq_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-kh6_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-lb7_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-lb7_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-2il_observe-table_a1_table3_room2 ?dd - dummy)
(dummy-left-2il_observe-table_a1_table3_room2 ?dd - dummy)
(pre-qfj_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-hz6_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-zh4_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(pre-06l_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-tft_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-t3a_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-2il_observe-table_a1_table3_room2 ?dd - dummy)
(immediate-dummy-lcv_observe-table_a3_table4_room1 ?dd - dummy)
(dummy-left-lcv_observe-table_a3_table4_room1 ?dd - dummy)
(pre-29o_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-jwj_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-m8z_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(pre-xcq_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-llb_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-qds_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(dummy-right-lcv_observe-table_a3_table4_room1 ?dd - dummy)
(pre-a9n_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-whd_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-c5e_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(pre-61i_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-6qf_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-0yf_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-lb7_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-58d_observe-table_a3_table4_room1 ?dd - dummy)
(dummy-left-58d_observe-table_a3_table4_room1 ?dd - dummy)
(pre-wmi_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-ec3_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-5h3_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(pre-rc0_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-rld_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-hg2_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(dummy-right-58d_observe-table_a3_table4_room1 ?dd - dummy)
(pre-lg0_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-fpg_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-r0v_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(pre-lvx_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-5ve_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-pnx_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-7ox_observe-table_a2_table5_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-7ox_observe-table_a2_table5_room3 dd) (immediate-dummy-7ox_observe-table_a2_table5_room3 dd) (in a4 room3) (available a4) (inroom table5 room3) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_TRUE))
)
(:action act-7ox_observe-table_a2_table5_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-7ox_observe-table_a2_table5_room3 dd) (immediate-dummy-7ox_observe-table_a2_table5_room3 dd) (in a4 room3) (available a4) (not (inroom table5 room3)) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_FALSE))
)
(:action act-dummy-7ox_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-7ox_observe-table_a2_table5_room3 dd) (not (dummy-left-7ox_observe-table_a2_table5_room3 dd)) (not (dummy-right-7ox_observe-table_a2_table5_room3 dd)))
:effect 
(and (immediate-dummy-7ox_observe-table_a2_table5_room3 dd))
)
(:action dummy-left-7ox_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-7ox_observe-table_a2_table5_room3 dd) (in a4 room3) (available a4) (not (inroom table5 room3)) (immediate-dummy-7ox_observe-table_a2_table5_room3 dd) (Kinroom table5 room3 V_FALSE))
:effect 
(and (not (init-7ox_observe-table_a2_table5_room3 dd)) (not (immediate-dummy-7ox_observe-table_a2_table5_room3 dd)) (dummy-left-7ox_observe-table_a2_table5_room3 dd))
)
(:action dummy-right-7ox_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-7ox_observe-table_a2_table5_room3 dd) (in a4 room3) (available a4) (inroom table5 room3) (immediate-dummy-7ox_observe-table_a2_table5_room3 dd) (Kinroom table5 room3 V_TRUE))
:effect 
(and (not (init-7ox_observe-table_a2_table5_room3 dd)) (not (immediate-dummy-7ox_observe-table_a2_table5_room3 dd)) (dummy-right-7ox_observe-table_a2_table5_room3 dd))
)
(:action act-at2_observe-table_a5_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7ox_observe-table_a2_table5_room3 dd) (immediate-dummy-at2_observe-table_a5_table1_room4 dd) (not (inroom table5 room3)) (in a4 room4) (available a4) (Kinroom table5 room3 V_FALSE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-at2_observe-table_a5_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7ox_observe-table_a2_table5_room3 dd) (immediate-dummy-at2_observe-table_a5_table1_room4 dd) (not (inroom table5 room3)) (in a4 room4) (available a4) (Kinroom table5 room3 V_FALSE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-at2_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7ox_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a4 room4) (available a4) (not (dummy-left-at2_observe-table_a5_table1_room4 dd)) (not (dummy-right-at2_observe-table_a5_table1_room4 dd)) (Kinroom table5 room3 V_FALSE))
:effect 
(and (immediate-dummy-at2_observe-table_a5_table1_room4 dd))
)
(:action dummy-left-at2_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7ox_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a4 room4) (available a4) (not (inroom table1 room4)) (immediate-dummy-at2_observe-table_a5_table1_room4 dd) (Kinroom table5 room3 V_FALSE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-at2_observe-table_a5_table1_room4 dd)) (dummy-left-at2_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-at2_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7ox_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a4 room4) (available a4) (inroom table1 room4) (immediate-dummy-at2_observe-table_a5_table1_room4 dd) (Kinroom table5 room3 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-at2_observe-table_a5_table1_room4 dd)) (dummy-right-at2_observe-table_a5_table1_room4 dd))
)
(:action act-k0u_joint-lift-table_a4_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-at2_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table5 room3)) (available a4) (in a4 room3) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (pre-k0u_joint-lift-table_a4_a5_table1_room3 dd) (not (available a4)))
)
(:action act-4yx_joint-move-table_a4_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-k0u_joint-lift-table_a4_a5_table1_room3 dd) (in a4 room3))
:effect 
(and (pre-4yx_joint-move-table_a4_a5_table1_room3_room4 dd) (not (pre-k0u_joint-lift-table_a4_a5_table1_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-2g0_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-4yx_joint-move-table_a4_a5_table1_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-2g0_joint-drop-table_a4_a5_table1_room4 dd) (not (pre-4yx_joint-move-table_a4_a5_table1_room3_room4 dd)) (available a4))
)
(:action goal-achieve-2g0_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-2g0_joint-drop-table_a4_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-2g0_joint-drop-table_a4_a5_table1_room4 dd)))
)
(:action goal-achieve-right-at2_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-at2_observe-table_a5_table1_room4 dd) (inroom table1 room4) (not (inroom table5 room3)) (Kinroom table1 room4 V_TRUE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-at2_observe-table_a5_table1_room4 dd)))
)
(:action act-kh6_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7ox_observe-table_a2_table5_room3 dd) (immediate-dummy-kh6_observe-table_a2_table1_room3 dd) (inroom table5 room3) (in a4 room3) (available a4) (Kinroom table5 room3 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-kh6_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7ox_observe-table_a2_table5_room3 dd) (immediate-dummy-kh6_observe-table_a2_table1_room3 dd) (inroom table5 room3) (in a4 room3) (available a4) (Kinroom table5 room3 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-kh6_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7ox_observe-table_a2_table5_room3 dd) (inroom table5 room3) (in a4 room3) (available a4) (not (dummy-left-kh6_observe-table_a2_table1_room3 dd)) (not (dummy-right-kh6_observe-table_a2_table1_room3 dd)) (Kinroom table5 room3 V_TRUE))
:effect 
(and (immediate-dummy-kh6_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-kh6_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7ox_observe-table_a2_table5_room3 dd) (inroom table5 room3) (in a4 room3) (available a4) (not (inroom table1 room3)) (immediate-dummy-kh6_observe-table_a2_table1_room3 dd) (Kinroom table5 room3 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-kh6_observe-table_a2_table1_room3 dd)) (dummy-left-kh6_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-kh6_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7ox_observe-table_a2_table5_room3 dd) (inroom table5 room3) (in a4 room3) (available a4) (inroom table1 room3) (immediate-dummy-kh6_observe-table_a2_table1_room3 dd) (Kinroom table5 room3 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-kh6_observe-table_a2_table1_room3 dd)) (dummy-right-kh6_observe-table_a2_table1_room3 dd))
)
(:action act-zuq_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kh6_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (inroom table5 room3) (available a4) (in a4 room3) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (pre-zuq_joint-lift-table_a2_a4_table5_room3 dd) (not (available a4)))
)
(:action act-79o_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-zuq_joint-lift-table_a2_a4_table5_room3 dd) (in a4 room3))
:effect 
(and (pre-79o_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-zuq_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-ojq_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-79o_joint-move-table_a2_a4_table5_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-ojq_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-79o_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a4))
)
(:action goal-achieve-ojq_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ojq_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-ojq_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-lb7_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kh6_observe-table_a2_table1_room3 dd) (immediate-dummy-lb7_observe-table_a3_table2_room1 dd) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-lb7_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kh6_observe-table_a2_table1_room3 dd) (immediate-dummy-lb7_observe-table_a3_table2_room1 dd) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-lb7_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kh6_observe-table_a2_table1_room3 dd) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (not (dummy-left-lb7_observe-table_a3_table2_room1 dd)) (not (dummy-right-lb7_observe-table_a3_table2_room1 dd)) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (immediate-dummy-lb7_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-lb7_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kh6_observe-table_a2_table1_room3 dd) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (not (inroom table2 room1)) (immediate-dummy-lb7_observe-table_a3_table2_room1 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-lb7_observe-table_a3_table2_room1 dd)) (dummy-left-lb7_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-lb7_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kh6_observe-table_a2_table1_room3 dd) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (inroom table2 room1) (immediate-dummy-lb7_observe-table_a3_table2_room1 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-lb7_observe-table_a3_table2_room1 dd)) (dummy-right-lb7_observe-table_a3_table2_room1 dd))
)
(:action act-2il_observe-table_a1_table3_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-lb7_observe-table_a3_table2_room1 dd) (immediate-dummy-2il_observe-table_a1_table3_room2 dd) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (in a4 room2) (available a4) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (inroom table3 room2) (not (Kinroom table3 room2 V_TRUE)) (not (Kinroom table3 room2 V_FALSE)))
:effect 
(and (Kinroom table3 room2 V_TRUE))
)
(:action act-2il_observe-table_a1_table3_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-lb7_observe-table_a3_table2_room1 dd) (immediate-dummy-2il_observe-table_a1_table3_room2 dd) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (in a4 room2) (available a4) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (not (inroom table3 room2)) (not (Kinroom table3 room2 V_TRUE)) (not (Kinroom table3 room2 V_FALSE)))
:effect 
(and (Kinroom table3 room2 V_FALSE))
)
(:action act-dummy-2il_observe-table_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-lb7_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (in a4 room2) (available a4) (not (dummy-left-2il_observe-table_a1_table3_room2 dd)) (not (dummy-right-2il_observe-table_a1_table3_room2 dd)) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (immediate-dummy-2il_observe-table_a1_table3_room2 dd))
)
(:action dummy-left-2il_observe-table_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-lb7_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (in a4 room2) (available a4) (not (inroom table3 room2)) (immediate-dummy-2il_observe-table_a1_table3_room2 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (Kinroom table3 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-2il_observe-table_a1_table3_room2 dd)) (dummy-left-2il_observe-table_a1_table3_room2 dd))
)
(:action dummy-right-2il_observe-table_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-lb7_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (in a4 room2) (available a4) (inroom table3 room2) (immediate-dummy-2il_observe-table_a1_table3_room2 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (Kinroom table3 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-2il_observe-table_a1_table3_room2 dd)) (dummy-right-2il_observe-table_a1_table3_room2 dd))
)
(:action act-qfj_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2il_observe-table_a1_table3_room2 dd) (not (inroom table3 room2)) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (available a4) (in a4 room3) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (pre-qfj_joint-lift-table_a2_a4_table1_room3 dd) (not (available a4)))
)
(:action act-hz6_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-qfj_joint-lift-table_a2_a4_table1_room3 dd) (in a4 room3))
:effect 
(and (pre-hz6_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-qfj_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-zh4_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-hz6_joint-move-table_a2_a4_table1_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-zh4_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-hz6_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a4))
)
(:action act-06l_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-zh4_joint-drop-table_a2_a4_table1_room4 dd) (available a4) (in a4 room3))
:effect 
(and (pre-06l_joint-lift-table_a2_a4_table5_room3 dd) (not (pre-zh4_joint-drop-table_a2_a4_table1_room4 dd)) (not (available a4)))
)
(:action act-tft_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-06l_joint-lift-table_a2_a4_table5_room3 dd) (in a4 room3))
:effect 
(and (pre-tft_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-06l_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-t3a_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-tft_joint-move-table_a2_a4_table5_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-t3a_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-tft_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a4))
)
(:action goal-achieve-t3a_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-t3a_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-t3a_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-lcv_observe-table_a3_table4_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2il_observe-table_a1_table3_room2 dd) (immediate-dummy-lcv_observe-table_a3_table4_room1 dd) (inroom table3 room2) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (inroom table4 room1) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_TRUE))
)
(:action act-lcv_observe-table_a3_table4_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2il_observe-table_a1_table3_room2 dd) (immediate-dummy-lcv_observe-table_a3_table4_room1 dd) (inroom table3 room2) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (not (inroom table4 room1)) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_FALSE))
)
(:action act-dummy-lcv_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2il_observe-table_a1_table3_room2 dd) (inroom table3 room2) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (not (dummy-left-lcv_observe-table_a3_table4_room1 dd)) (not (dummy-right-lcv_observe-table_a3_table4_room1 dd)) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (immediate-dummy-lcv_observe-table_a3_table4_room1 dd))
)
(:action dummy-left-lcv_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2il_observe-table_a1_table3_room2 dd) (inroom table3 room2) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (not (inroom table4 room1)) (immediate-dummy-lcv_observe-table_a3_table4_room1 dd) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (Kinroom table4 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-lcv_observe-table_a3_table4_room1 dd)) (dummy-left-lcv_observe-table_a3_table4_room1 dd))
)
(:action dummy-right-lcv_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2il_observe-table_a1_table3_room2 dd) (inroom table3 room2) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (inroom table4 room1) (immediate-dummy-lcv_observe-table_a3_table4_room1 dd) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (Kinroom table4 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-lcv_observe-table_a3_table4_room1 dd)) (dummy-right-lcv_observe-table_a3_table4_room1 dd))
)
(:action act-29o_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-lcv_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (inroom table3 room2) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (available a4) (in a4 room3) (Kinroom table4 room1 V_FALSE) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (pre-29o_joint-lift-table_a2_a4_table5_room3 dd) (not (available a4)))
)
(:action act-jwj_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-29o_joint-lift-table_a2_a4_table5_room3 dd) (in a4 room3))
:effect 
(and (pre-jwj_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-29o_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-m8z_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-jwj_joint-move-table_a2_a4_table5_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-m8z_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-jwj_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a4))
)
(:action act-xcq_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-m8z_joint-drop-table_a2_a4_table5_room4 dd) (available a4) (in a4 room3))
:effect 
(and (pre-xcq_joint-lift-table_a2_a4_table1_room3 dd) (not (pre-m8z_joint-drop-table_a2_a4_table5_room4 dd)) (not (available a4)))
)
(:action act-llb_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-xcq_joint-lift-table_a2_a4_table1_room3 dd) (in a4 room3))
:effect 
(and (pre-llb_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-xcq_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-qds_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-llb_joint-move-table_a2_a4_table1_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-qds_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-llb_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a4))
)
(:action goal-achieve-qds_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-qds_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-qds_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-a9n_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lcv_observe-table_a3_table4_room1 dd) (inroom table4 room1) (inroom table3 room2) (not (inroom table2 room1)) (inroom table1 room3) (inroom table5 room3) (available a4) (in a4 room3) (Kinroom table4 room1 V_TRUE) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (pre-a9n_joint-lift-table_a2_a4_table1_room3 dd) (not (available a4)))
)
(:action act-whd_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-a9n_joint-lift-table_a2_a4_table1_room3 dd) (in a4 room3))
:effect 
(and (pre-whd_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-a9n_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-c5e_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-whd_joint-move-table_a2_a4_table1_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-c5e_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-whd_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a4))
)
(:action act-61i_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-c5e_joint-drop-table_a2_a4_table1_room4 dd) (available a4) (in a4 room3))
:effect 
(and (pre-61i_joint-lift-table_a2_a4_table5_room3 dd) (not (pre-c5e_joint-drop-table_a2_a4_table1_room4 dd)) (not (available a4)))
)
(:action act-6qf_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-61i_joint-lift-table_a2_a4_table5_room3 dd) (in a4 room3))
:effect 
(and (pre-6qf_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-61i_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-0yf_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-6qf_joint-move-table_a2_a4_table5_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-0yf_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-6qf_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a4))
)
(:action goal-achieve-0yf_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-0yf_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-0yf_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-58d_observe-table_a3_table4_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lb7_observe-table_a3_table2_room1 dd) (immediate-dummy-58d_observe-table_a3_table4_room1 dd) (inroom table2 room1) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (inroom table4 room1) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_TRUE))
)
(:action act-58d_observe-table_a3_table4_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lb7_observe-table_a3_table2_room1 dd) (immediate-dummy-58d_observe-table_a3_table4_room1 dd) (inroom table2 room1) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (not (inroom table4 room1)) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_FALSE))
)
(:action act-dummy-58d_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lb7_observe-table_a3_table2_room1 dd) (inroom table2 room1) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (not (dummy-left-58d_observe-table_a3_table4_room1 dd)) (not (dummy-right-58d_observe-table_a3_table4_room1 dd)) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (immediate-dummy-58d_observe-table_a3_table4_room1 dd))
)
(:action dummy-left-58d_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lb7_observe-table_a3_table2_room1 dd) (inroom table2 room1) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (not (inroom table4 room1)) (immediate-dummy-58d_observe-table_a3_table4_room1 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (Kinroom table4 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-58d_observe-table_a3_table4_room1 dd)) (dummy-left-58d_observe-table_a3_table4_room1 dd))
)
(:action dummy-right-58d_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lb7_observe-table_a3_table2_room1 dd) (inroom table2 room1) (inroom table1 room3) (inroom table5 room3) (in a4 room1) (available a4) (inroom table4 room1) (immediate-dummy-58d_observe-table_a3_table4_room1 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE) (Kinroom table4 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-58d_observe-table_a3_table4_room1 dd)) (dummy-right-58d_observe-table_a3_table4_room1 dd))
)
(:action act-wmi_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-58d_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (inroom table2 room1) (inroom table1 room3) (inroom table5 room3) (available a4) (in a4 room3) (Kinroom table4 room1 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (pre-wmi_joint-lift-table_a2_a4_table5_room3 dd) (not (available a4)))
)
(:action act-ec3_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-wmi_joint-lift-table_a2_a4_table5_room3 dd) (in a4 room3))
:effect 
(and (pre-ec3_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-wmi_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-5h3_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ec3_joint-move-table_a2_a4_table5_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-5h3_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-ec3_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a4))
)
(:action act-rc0_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-5h3_joint-drop-table_a2_a4_table5_room4 dd) (available a4) (in a4 room3))
:effect 
(and (pre-rc0_joint-lift-table_a2_a4_table1_room3 dd) (not (pre-5h3_joint-drop-table_a2_a4_table5_room4 dd)) (not (available a4)))
)
(:action act-rld_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-rc0_joint-lift-table_a2_a4_table1_room3 dd) (in a4 room3))
:effect 
(and (pre-rld_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-rc0_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-hg2_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-rld_joint-move-table_a2_a4_table1_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-hg2_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-rld_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a4))
)
(:action goal-achieve-hg2_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-hg2_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-hg2_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-lg0_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-58d_observe-table_a3_table4_room1 dd) (inroom table4 room1) (inroom table2 room1) (inroom table1 room3) (inroom table5 room3) (available a4) (in a4 room3) (Kinroom table4 room1 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (pre-lg0_joint-lift-table_a2_a4_table1_room3 dd) (not (available a4)))
)
(:action act-fpg_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-lg0_joint-lift-table_a2_a4_table1_room3 dd) (in a4 room3))
:effect 
(and (pre-fpg_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-lg0_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-r0v_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-fpg_joint-move-table_a2_a4_table1_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-r0v_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-fpg_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a4))
)
(:action act-lvx_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-r0v_joint-drop-table_a2_a4_table1_room4 dd) (available a4) (in a4 room3))
:effect 
(and (pre-lvx_joint-lift-table_a2_a4_table5_room3 dd) (not (pre-r0v_joint-drop-table_a2_a4_table1_room4 dd)) (not (available a4)))
)
(:action act-5ve_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-lvx_joint-lift-table_a2_a4_table5_room3 dd) (in a4 room3))
:effect 
(and (pre-5ve_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-lvx_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a4 room3)) (in a4 room4))
)
(:action act-pnx_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-5ve_joint-move-table_a2_a4_table5_room3_room4 dd) (in a4 room4))
:effect 
(and (pre-pnx_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-5ve_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a4))
)
(:action goal-achieve-pnx_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-pnx_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-pnx_joint-drop-table_a2_a4_table5_room4 dd)))
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
