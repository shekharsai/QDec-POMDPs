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
 tag0 - TAG_TYPE ; (inroom table3 room4)
 tag1 - TAG_TYPE ; (inroom table3 room3)
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
(init-7eu_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-7eu_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-7eu_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-j1y_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-j1y_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-aox_observe-table_a2_table3_room3 ?dd - dummy)
(dummy-left-aox_observe-table_a2_table3_room3 ?dd - dummy)
(immediate-dummy-ktf_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-ktf_observe-table_a4_table4_room6 ?dd - dummy)
(pre-dvj_joint-lift-table_a1_a2_table3_room4 ?dd - dummy)
(pre-t42_joint-move-table_a1_a2_table3_room4_room3 ?dd - dummy)
(pre-n14_joint-drop-table_a1_a2_table3_room3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-ktf_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-right-aox_observe-table_a2_table3_room3 ?dd - dummy)
(dummy-right-j1y_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-nor_observe-table_a2_table3_room3 ?dd - dummy)
(dummy-left-nor_observe-table_a2_table3_room3 ?dd - dummy)
(immediate-dummy-y26_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-left-y26_observe-table_a4_table4_room7 ?dd - dummy)
(pre-h78_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-cz2_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-uim_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(dummy-right-y26_observe-table_a4_table4_room7 ?dd - dummy)
(pre-mew_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-uu2_joint-move-table_a1_a2_table2_room2_room3 ?dd - dummy)
(pre-y3d_joint-move-table_a1_a2_table2_room3_room4 ?dd - dummy)
(pre-1ij_joint-move-table_a1_a2_table2_room4_room3 ?dd - dummy)
(pre-sqm_joint-move-table_a1_a2_table2_room3_room4 ?dd - dummy)
(pre-tbp_joint-drop-table_a1_a2_table2_room4 ?dd - dummy)
(pre-cuz_joint-lift-table_a1_a2_table3_room4 ?dd - dummy)
(pre-dv8_joint-move-table_a1_a2_table3_room4_room3 ?dd - dummy)
(pre-22r_joint-drop-table_a1_a2_table3_room3 ?dd - dummy)
(pre-zi4_joint-lift-table_a1_a2_table2_room4 ?dd - dummy)
(pre-ntn_joint-move-table_a1_a2_table2_room4_room3 ?dd - dummy)
(pre-7g0_joint-move-table_a1_a2_table2_room3_room2 ?dd - dummy)
(pre-g3g_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-cyv_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(dummy-right-nor_observe-table_a2_table3_room3 ?dd - dummy)
(pre-n6u_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-wzr_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-vtx_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(dummy-right-7eu_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-nry_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-nry_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-xjs_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-left-xjs_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-right-xjs_observe-table_a4_table4_room7 ?dd - dummy)
(immediate-dummy-y11_observe-table_a1_table3_room4 ?dd - dummy)
(dummy-left-y11_observe-table_a1_table3_room4 ?dd - dummy)
(pre-k9u_joint-lift-table_a1_a2_table1_room3 ?dd - dummy)
(pre-joy_joint-move-table_a1_a2_table1_room3_room4 ?dd - dummy)
(pre-6vj_joint-drop-table_a1_a2_table1_room4 ?dd - dummy)
(dummy-right-y11_observe-table_a1_table3_room4 ?dd - dummy)
(pre-vni_joint-lift-table_a1_a2_table3_room4 ?dd - dummy)
(pre-ia5_joint-move-table_a1_a2_table3_room4_room3 ?dd - dummy)
(pre-dzy_joint-drop-table_a1_a2_table3_room3 ?dd - dummy)
(pre-ogd_joint-lift-table_a1_a2_table1_room3 ?dd - dummy)
(pre-adz_joint-move-table_a1_a2_table1_room3_room4 ?dd - dummy)
(pre-gab_joint-drop-table_a1_a2_table1_room4 ?dd - dummy)
(dummy-right-nry_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-zk7_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-left-zk7_observe-table_a4_table4_room7 ?dd - dummy)
(pre-hrb_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-p1y_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-aes_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-zk7_observe-table_a4_table4_room7 ?dd - dummy)
(immediate-dummy-5zd_observe-table_a2_table3_room4 ?dd - dummy)
(dummy-left-5zd_observe-table_a2_table3_room4 ?dd - dummy)
(pre-iaf_joint-lift-table_a1_a2_table1_room3 ?dd - dummy)
(pre-pfr_joint-move-table_a1_a2_table1_room3_room4 ?dd - dummy)
(pre-2tt_joint-drop-table_a1_a2_table1_room4 ?dd - dummy)
(pre-4kv_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-xk6_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-5co_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(dummy-right-5zd_observe-table_a2_table3_room4 ?dd - dummy)
(pre-xhl_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-ln5_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-h2i_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-7eu_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-7eu_observe-table_a2_table1_room3 dd) (immediate-dummy-7eu_observe-table_a2_table1_room3 dd) (in a1 room3) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-7eu_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-7eu_observe-table_a2_table1_room3 dd) (immediate-dummy-7eu_observe-table_a2_table1_room3 dd) (in a1 room3) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-7eu_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-7eu_observe-table_a2_table1_room3 dd) (not (dummy-left-7eu_observe-table_a2_table1_room3 dd)) (not (dummy-right-7eu_observe-table_a2_table1_room3 dd)))
:effect 
(and (immediate-dummy-7eu_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-7eu_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-7eu_observe-table_a2_table1_room3 dd) (in a1 room3) (not (inroom table1 room3)) (immediate-dummy-7eu_observe-table_a2_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (init-7eu_observe-table_a2_table1_room3 dd)) (not (immediate-dummy-7eu_observe-table_a2_table1_room3 dd)) (dummy-left-7eu_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-7eu_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-7eu_observe-table_a2_table1_room3 dd) (in a1 room3) (inroom table1 room3) (immediate-dummy-7eu_observe-table_a2_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (init-7eu_observe-table_a2_table1_room3 dd)) (not (immediate-dummy-7eu_observe-table_a2_table1_room3 dd)) (dummy-right-7eu_observe-table_a2_table1_room3 dd))
)
(:action act-j1y_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7eu_observe-table_a2_table1_room3 dd) (immediate-dummy-j1y_observe-table_a1_table2_room2 dd) (not (inroom table1 room3)) (in a1 room2) (Kinroom table1 room3 V_FALSE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-j1y_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7eu_observe-table_a2_table1_room3 dd) (immediate-dummy-j1y_observe-table_a1_table2_room2 dd) (not (inroom table1 room3)) (in a1 room2) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-j1y_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7eu_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a1 room2) (not (dummy-left-j1y_observe-table_a1_table2_room2 dd)) (not (dummy-right-j1y_observe-table_a1_table2_room2 dd)) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-j1y_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-j1y_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7eu_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-j1y_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-j1y_observe-table_a1_table2_room2 dd)) (dummy-left-j1y_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-j1y_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7eu_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a1 room2) (inroom table2 room2) (immediate-dummy-j1y_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-j1y_observe-table_a1_table2_room2 dd)) (dummy-right-j1y_observe-table_a1_table2_room2 dd))
)
(:action act-aox_observe-table_a2_table3_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1y_observe-table_a1_table2_room2 dd) (immediate-dummy-aox_observe-table_a2_table3_room3 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a1 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table3 room3) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_TRUE))
)
(:action act-aox_observe-table_a2_table3_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1y_observe-table_a1_table2_room2 dd) (immediate-dummy-aox_observe-table_a2_table3_room3 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a1 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table3 room3)) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_FALSE))
)
(:action act-dummy-aox_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1y_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a1 room3) (not (dummy-left-aox_observe-table_a2_table3_room3 dd)) (not (dummy-right-aox_observe-table_a2_table3_room3 dd)) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-aox_observe-table_a2_table3_room3 dd))
)
(:action dummy-left-aox_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1y_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a1 room3) (not (inroom table3 room3)) (immediate-dummy-aox_observe-table_a2_table3_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-aox_observe-table_a2_table3_room3 dd)) (dummy-left-aox_observe-table_a2_table3_room3 dd))
)
(:action dummy-right-aox_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1y_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a1 room3) (inroom table3 room3) (immediate-dummy-aox_observe-table_a2_table3_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-aox_observe-table_a2_table3_room3 dd)) (dummy-right-aox_observe-table_a2_table3_room3 dd))
)
(:action act-ktf_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-aox_observe-table_a2_table3_room3 dd) (immediate-dummy-ktf_observe-table_a4_table4_room6 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a1 room6) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-ktf_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-aox_observe-table_a2_table3_room3 dd) (immediate-dummy-ktf_observe-table_a4_table4_room6 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a1 room6) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-ktf_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-aox_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a1 room6) (not (dummy-left-ktf_observe-table_a4_table4_room6 dd)) (not (dummy-right-ktf_observe-table_a4_table4_room6 dd)) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-ktf_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-ktf_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-aox_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a1 room6) (not (inroom table4 room6)) (immediate-dummy-ktf_observe-table_a4_table4_room6 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-ktf_observe-table_a4_table4_room6 dd)) (dummy-left-ktf_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-ktf_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-aox_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (not (inroom table1 room3)) (in a1 room6) (inroom table4 room6) (immediate-dummy-ktf_observe-table_a4_table4_room6 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-ktf_observe-table_a4_table4_room6 dd)) (dummy-right-ktf_observe-table_a4_table4_room6 dd))
)
(:action act-dvj_joint-lift-table_a1_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ktf_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room3)) (not (inroom table2 room2)) (not (inroom table1 room3)) (available a1) (in a1 room4) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-dvj_joint-lift-table_a1_a2_table3_room4 dd) (not (available a1)))
)
(:action act-t42_joint-move-table_a1_a2_table3_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-dvj_joint-lift-table_a1_a2_table3_room4 dd) (in a1 room4))
:effect 
(and (pre-t42_joint-move-table_a1_a2_table3_room4_room3 dd) (not (pre-dvj_joint-lift-table_a1_a2_table3_room4 dd)) (not (in a1 room4)) (in a1 room3))
)
(:action act-n14_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-t42_joint-move-table_a1_a2_table3_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-n14_joint-drop-table_a1_a2_table3_room3 dd) (not (pre-t42_joint-move-table_a1_a2_table3_room4_room3 dd)) (available a1))
)
(:action goal-achieve-n14_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-n14_joint-drop-table_a1_a2_table3_room3 dd))
:effect 
(and (done-goal dd) (not (pre-n14_joint-drop-table_a1_a2_table3_room3 dd)))
)
(:action goal-achieve-right-ktf_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ktf_observe-table_a4_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room3)) (not (inroom table2 room2)) (not (inroom table1 room3)) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-ktf_observe-table_a4_table4_room6 dd)))
)
(:action goal-achieve-right-aox_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-aox_observe-table_a2_table3_room3 dd) (inroom table3 room3) (not (inroom table2 room2)) (not (inroom table1 room3)) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-aox_observe-table_a2_table3_room3 dd)))
)
(:action act-nor_observe-table_a2_table3_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1y_observe-table_a1_table2_room2 dd) (immediate-dummy-nor_observe-table_a2_table3_room3 dd) (inroom table2 room2) (not (inroom table1 room3)) (in a1 room3) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table3 room3) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_TRUE))
)
(:action act-nor_observe-table_a2_table3_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1y_observe-table_a1_table2_room2 dd) (immediate-dummy-nor_observe-table_a2_table3_room3 dd) (inroom table2 room2) (not (inroom table1 room3)) (in a1 room3) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table3 room3)) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_FALSE))
)
(:action act-dummy-nor_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1y_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (in a1 room3) (not (dummy-left-nor_observe-table_a2_table3_room3 dd)) (not (dummy-right-nor_observe-table_a2_table3_room3 dd)) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-nor_observe-table_a2_table3_room3 dd))
)
(:action dummy-left-nor_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1y_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (in a1 room3) (not (inroom table3 room3)) (immediate-dummy-nor_observe-table_a2_table3_room3 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-nor_observe-table_a2_table3_room3 dd)) (dummy-left-nor_observe-table_a2_table3_room3 dd))
)
(:action dummy-right-nor_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1y_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (in a1 room3) (inroom table3 room3) (immediate-dummy-nor_observe-table_a2_table3_room3 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-nor_observe-table_a2_table3_room3 dd)) (dummy-right-nor_observe-table_a2_table3_room3 dd))
)
(:action act-y26_observe-table_a4_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nor_observe-table_a2_table3_room3 dd) (immediate-dummy-y26_observe-table_a4_table4_room7 dd) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (in a1 room7) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-y26_observe-table_a4_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nor_observe-table_a2_table3_room3 dd) (immediate-dummy-y26_observe-table_a4_table4_room7 dd) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (in a1 room7) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-y26_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nor_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (in a1 room7) (not (dummy-left-y26_observe-table_a4_table4_room7 dd)) (not (dummy-right-y26_observe-table_a4_table4_room7 dd)) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-y26_observe-table_a4_table4_room7 dd))
)
(:action dummy-left-y26_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nor_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (in a1 room7) (not (inroom table4 room7)) (immediate-dummy-y26_observe-table_a4_table4_room7 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (immediate-dummy-y26_observe-table_a4_table4_room7 dd)) (dummy-left-y26_observe-table_a4_table4_room7 dd))
)
(:action dummy-right-y26_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nor_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (in a1 room7) (inroom table4 room7) (immediate-dummy-y26_observe-table_a4_table4_room7 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (immediate-dummy-y26_observe-table_a4_table4_room7 dd)) (dummy-right-y26_observe-table_a4_table4_room7 dd))
)
(:action act-h78_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y26_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (available a1) (in a1 room2) (Kinroom table4 room7 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-h78_joint-lift-table_a1_a2_table2_room2 dd) (not (available a1)))
)
(:action act-cz2_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-h78_joint-lift-table_a1_a2_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-cz2_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-h78_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-uim_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-cz2_joint-move-table_a1_a2_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-uim_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-cz2_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-uim_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-uim_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-uim_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action act-mew_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y26_observe-table_a4_table4_room7 dd) (inroom table4 room7) (not (inroom table3 room3)) (inroom table2 room2) (not (inroom table1 room3)) (available a1) (in a1 room2) (Kinroom table4 room7 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-mew_joint-lift-table_a1_a2_table2_room2 dd) (not (available a1)))
)
(:action act-uu2_joint-move-table_a1_a2_table2_room2_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-mew_joint-lift-table_a1_a2_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-uu2_joint-move-table_a1_a2_table2_room2_room3 dd) (not (pre-mew_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a1 room2)) (in a1 room3))
)
(:action act-y3d_joint-move-table_a1_a2_table2_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-uu2_joint-move-table_a1_a2_table2_room2_room3 dd) (in a1 room3))
:effect 
(and (pre-y3d_joint-move-table_a1_a2_table2_room3_room4 dd) (not (pre-uu2_joint-move-table_a1_a2_table2_room2_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-1ij_joint-move-table_a1_a2_table2_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-y3d_joint-move-table_a1_a2_table2_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-1ij_joint-move-table_a1_a2_table2_room4_room3 dd) (not (pre-y3d_joint-move-table_a1_a2_table2_room3_room4 dd)) (not (in a1 room4)) (in a1 room3))
)
(:action act-sqm_joint-move-table_a1_a2_table2_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-1ij_joint-move-table_a1_a2_table2_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-sqm_joint-move-table_a1_a2_table2_room3_room4 dd) (not (pre-1ij_joint-move-table_a1_a2_table2_room4_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-tbp_joint-drop-table_a1_a2_table2_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-sqm_joint-move-table_a1_a2_table2_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-tbp_joint-drop-table_a1_a2_table2_room4 dd) (not (pre-sqm_joint-move-table_a1_a2_table2_room3_room4 dd)) (available a1))
)
(:action act-cuz_joint-lift-table_a1_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-tbp_joint-drop-table_a1_a2_table2_room4 dd) (available a1) (in a1 room4))
:effect 
(and (pre-cuz_joint-lift-table_a1_a2_table3_room4 dd) (not (pre-tbp_joint-drop-table_a1_a2_table2_room4 dd)) (not (available a1)))
)
(:action act-dv8_joint-move-table_a1_a2_table3_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-cuz_joint-lift-table_a1_a2_table3_room4 dd) (in a1 room4))
:effect 
(and (pre-dv8_joint-move-table_a1_a2_table3_room4_room3 dd) (not (pre-cuz_joint-lift-table_a1_a2_table3_room4 dd)) (not (in a1 room4)) (in a1 room3))
)
(:action act-22r_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-dv8_joint-move-table_a1_a2_table3_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-22r_joint-drop-table_a1_a2_table3_room3 dd) (not (pre-dv8_joint-move-table_a1_a2_table3_room4_room3 dd)) (available a1))
)
(:action act-zi4_joint-lift-table_a1_a2_table2_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-22r_joint-drop-table_a1_a2_table3_room3 dd) (available a1) (in a1 room4))
:effect 
(and (pre-zi4_joint-lift-table_a1_a2_table2_room4 dd) (not (pre-22r_joint-drop-table_a1_a2_table3_room3 dd)) (not (available a1)))
)
(:action act-ntn_joint-move-table_a1_a2_table2_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-zi4_joint-lift-table_a1_a2_table2_room4 dd) (in a1 room4))
:effect 
(and (pre-ntn_joint-move-table_a1_a2_table2_room4_room3 dd) (not (pre-zi4_joint-lift-table_a1_a2_table2_room4 dd)) (not (in a1 room4)) (in a1 room3))
)
(:action act-7g0_joint-move-table_a1_a2_table2_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-ntn_joint-move-table_a1_a2_table2_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-7g0_joint-move-table_a1_a2_table2_room3_room2 dd) (not (pre-ntn_joint-move-table_a1_a2_table2_room4_room3 dd)) (not (in a1 room3)) (in a1 room2))
)
(:action act-g3g_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-7g0_joint-move-table_a1_a2_table2_room3_room2 dd) (in a1 room2))
:effect 
(and (pre-g3g_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-7g0_joint-move-table_a1_a2_table2_room3_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-cyv_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-g3g_joint-move-table_a1_a2_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-cyv_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-g3g_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-cyv_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-cyv_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-cyv_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action act-n6u_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nor_observe-table_a2_table3_room3 dd) (inroom table3 room3) (inroom table2 room2) (not (inroom table1 room3)) (available a1) (in a1 room2) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-n6u_joint-lift-table_a1_a2_table2_room2 dd) (not (available a1)))
)
(:action act-wzr_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-n6u_joint-lift-table_a1_a2_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-wzr_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-n6u_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-vtx_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-wzr_joint-move-table_a1_a2_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-vtx_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-wzr_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-vtx_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-vtx_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-vtx_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action act-nry_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7eu_observe-table_a2_table1_room3 dd) (immediate-dummy-nry_observe-table_a1_table2_room2 dd) (inroom table1 room3) (in a1 room2) (Kinroom table1 room3 V_TRUE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-nry_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7eu_observe-table_a2_table1_room3 dd) (immediate-dummy-nry_observe-table_a1_table2_room2 dd) (inroom table1 room3) (in a1 room2) (Kinroom table1 room3 V_TRUE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-nry_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7eu_observe-table_a2_table1_room3 dd) (inroom table1 room3) (in a1 room2) (not (dummy-left-nry_observe-table_a1_table2_room2 dd)) (not (dummy-right-nry_observe-table_a1_table2_room2 dd)) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-nry_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-nry_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7eu_observe-table_a2_table1_room3 dd) (inroom table1 room3) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-nry_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-nry_observe-table_a1_table2_room2 dd)) (dummy-left-nry_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-nry_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7eu_observe-table_a2_table1_room3 dd) (inroom table1 room3) (in a1 room2) (inroom table2 room2) (immediate-dummy-nry_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-nry_observe-table_a1_table2_room2 dd)) (dummy-right-nry_observe-table_a1_table2_room2 dd))
)
(:action act-xjs_observe-table_a4_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nry_observe-table_a1_table2_room2 dd) (immediate-dummy-xjs_observe-table_a4_table4_room7 dd) (not (inroom table2 room2)) (inroom table1 room3) (in a1 room7) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-xjs_observe-table_a4_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nry_observe-table_a1_table2_room2 dd) (immediate-dummy-xjs_observe-table_a4_table4_room7 dd) (not (inroom table2 room2)) (inroom table1 room3) (in a1 room7) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-xjs_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nry_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room3) (in a1 room7) (not (dummy-left-xjs_observe-table_a4_table4_room7 dd)) (not (dummy-right-xjs_observe-table_a4_table4_room7 dd)) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-xjs_observe-table_a4_table4_room7 dd))
)
(:action dummy-left-xjs_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nry_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room3) (in a1 room7) (not (inroom table4 room7)) (immediate-dummy-xjs_observe-table_a4_table4_room7 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (immediate-dummy-xjs_observe-table_a4_table4_room7 dd)) (dummy-left-xjs_observe-table_a4_table4_room7 dd))
)
(:action dummy-right-xjs_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nry_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room3) (in a1 room7) (inroom table4 room7) (immediate-dummy-xjs_observe-table_a4_table4_room7 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (immediate-dummy-xjs_observe-table_a4_table4_room7 dd)) (dummy-right-xjs_observe-table_a4_table4_room7 dd))
)
(:action goal-achieve-left-xjs_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xjs_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (not (inroom table2 room2)) (inroom table1 room3) (Kinroom table4 room7 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-xjs_observe-table_a4_table4_room7 dd)))
)
(:action act-y11_observe-table_a1_table3_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjs_observe-table_a4_table4_room7 dd) (immediate-dummy-y11_observe-table_a1_table3_room4 dd) (inroom table4 room7) (not (inroom table2 room2)) (inroom table1 room3) (in a1 room4) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (inroom table3 room4) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_TRUE))
)
(:action act-y11_observe-table_a1_table3_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjs_observe-table_a4_table4_room7 dd) (immediate-dummy-y11_observe-table_a1_table3_room4 dd) (inroom table4 room7) (not (inroom table2 room2)) (inroom table1 room3) (in a1 room4) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (not (inroom table3 room4)) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_FALSE))
)
(:action act-dummy-y11_observe-table_a1_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjs_observe-table_a4_table4_room7 dd) (inroom table4 room7) (not (inroom table2 room2)) (inroom table1 room3) (in a1 room4) (not (dummy-left-y11_observe-table_a1_table3_room4 dd)) (not (dummy-right-y11_observe-table_a1_table3_room4 dd)) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-y11_observe-table_a1_table3_room4 dd))
)
(:action dummy-left-y11_observe-table_a1_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjs_observe-table_a4_table4_room7 dd) (inroom table4 room7) (not (inroom table2 room2)) (inroom table1 room3) (in a1 room4) (not (inroom table3 room4)) (immediate-dummy-y11_observe-table_a1_table3_room4 dd) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table3 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-y11_observe-table_a1_table3_room4 dd)) (dummy-left-y11_observe-table_a1_table3_room4 dd))
)
(:action dummy-right-y11_observe-table_a1_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjs_observe-table_a4_table4_room7 dd) (inroom table4 room7) (not (inroom table2 room2)) (inroom table1 room3) (in a1 room4) (inroom table3 room4) (immediate-dummy-y11_observe-table_a1_table3_room4 dd) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table3 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-y11_observe-table_a1_table3_room4 dd)) (dummy-right-y11_observe-table_a1_table3_room4 dd))
)
(:action act-k9u_joint-lift-table_a1_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y11_observe-table_a1_table3_room4 dd) (not (inroom table3 room4)) (inroom table4 room7) (not (inroom table2 room2)) (inroom table1 room3) (available a1) (in a1 room3) (Kinroom table3 room4 V_FALSE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-k9u_joint-lift-table_a1_a2_table1_room3 dd) (not (available a1)))
)
(:action act-joy_joint-move-table_a1_a2_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-k9u_joint-lift-table_a1_a2_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-joy_joint-move-table_a1_a2_table1_room3_room4 dd) (not (pre-k9u_joint-lift-table_a1_a2_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-6vj_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-joy_joint-move-table_a1_a2_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-6vj_joint-drop-table_a1_a2_table1_room4 dd) (not (pre-joy_joint-move-table_a1_a2_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-6vj_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-6vj_joint-drop-table_a1_a2_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-6vj_joint-drop-table_a1_a2_table1_room4 dd)))
)
(:action act-vni_joint-lift-table_a1_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y11_observe-table_a1_table3_room4 dd) (inroom table3 room4) (inroom table4 room7) (not (inroom table2 room2)) (inroom table1 room3) (available a1) (in a1 room4) (Kinroom table3 room4 V_TRUE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-vni_joint-lift-table_a1_a2_table3_room4 dd) (not (available a1)))
)
(:action act-ia5_joint-move-table_a1_a2_table3_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-vni_joint-lift-table_a1_a2_table3_room4 dd) (in a1 room4))
:effect 
(and (pre-ia5_joint-move-table_a1_a2_table3_room4_room3 dd) (not (pre-vni_joint-lift-table_a1_a2_table3_room4 dd)) (not (in a1 room4)) (in a1 room3))
)
(:action act-dzy_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-ia5_joint-move-table_a1_a2_table3_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-dzy_joint-drop-table_a1_a2_table3_room3 dd) (not (pre-ia5_joint-move-table_a1_a2_table3_room4_room3 dd)) (available a1))
)
(:action act-ogd_joint-lift-table_a1_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-dzy_joint-drop-table_a1_a2_table3_room3 dd) (available a1) (in a1 room3))
:effect 
(and (pre-ogd_joint-lift-table_a1_a2_table1_room3 dd) (not (pre-dzy_joint-drop-table_a1_a2_table3_room3 dd)) (not (available a1)))
)
(:action act-adz_joint-move-table_a1_a2_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ogd_joint-lift-table_a1_a2_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-adz_joint-move-table_a1_a2_table1_room3_room4 dd) (not (pre-ogd_joint-lift-table_a1_a2_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-gab_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-adz_joint-move-table_a1_a2_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-gab_joint-drop-table_a1_a2_table1_room4 dd) (not (pre-adz_joint-move-table_a1_a2_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-gab_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-gab_joint-drop-table_a1_a2_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-gab_joint-drop-table_a1_a2_table1_room4 dd)))
)
(:action act-zk7_observe-table_a4_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nry_observe-table_a1_table2_room2 dd) (immediate-dummy-zk7_observe-table_a4_table4_room7 dd) (inroom table2 room2) (inroom table1 room3) (in a1 room7) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-zk7_observe-table_a4_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nry_observe-table_a1_table2_room2 dd) (immediate-dummy-zk7_observe-table_a4_table4_room7 dd) (inroom table2 room2) (inroom table1 room3) (in a1 room7) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-zk7_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nry_observe-table_a1_table2_room2 dd) (inroom table2 room2) (inroom table1 room3) (in a1 room7) (not (dummy-left-zk7_observe-table_a4_table4_room7 dd)) (not (dummy-right-zk7_observe-table_a4_table4_room7 dd)) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-zk7_observe-table_a4_table4_room7 dd))
)
(:action dummy-left-zk7_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nry_observe-table_a1_table2_room2 dd) (inroom table2 room2) (inroom table1 room3) (in a1 room7) (not (inroom table4 room7)) (immediate-dummy-zk7_observe-table_a4_table4_room7 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (immediate-dummy-zk7_observe-table_a4_table4_room7 dd)) (dummy-left-zk7_observe-table_a4_table4_room7 dd))
)
(:action dummy-right-zk7_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nry_observe-table_a1_table2_room2 dd) (inroom table2 room2) (inroom table1 room3) (in a1 room7) (inroom table4 room7) (immediate-dummy-zk7_observe-table_a4_table4_room7 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (immediate-dummy-zk7_observe-table_a4_table4_room7 dd)) (dummy-right-zk7_observe-table_a4_table4_room7 dd))
)
(:action act-hrb_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-zk7_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (inroom table2 room2) (inroom table1 room3) (available a1) (in a1 room2) (Kinroom table4 room7 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-hrb_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-p1y_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-hrb_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-p1y_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-hrb_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-aes_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-p1y_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-aes_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-p1y_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-aes_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-aes_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-aes_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-5zd_observe-table_a2_table3_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zk7_observe-table_a4_table4_room7 dd) (immediate-dummy-5zd_observe-table_a2_table3_room4 dd) (inroom table4 room7) (inroom table2 room2) (inroom table1 room3) (in a1 room4) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE) (inroom table3 room4) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_TRUE))
)
(:action act-5zd_observe-table_a2_table3_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zk7_observe-table_a4_table4_room7 dd) (immediate-dummy-5zd_observe-table_a2_table3_room4 dd) (inroom table4 room7) (inroom table2 room2) (inroom table1 room3) (in a1 room4) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE) (not (inroom table3 room4)) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_FALSE))
)
(:action act-dummy-5zd_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zk7_observe-table_a4_table4_room7 dd) (inroom table4 room7) (inroom table2 room2) (inroom table1 room3) (in a1 room4) (not (dummy-left-5zd_observe-table_a2_table3_room4 dd)) (not (dummy-right-5zd_observe-table_a2_table3_room4 dd)) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-5zd_observe-table_a2_table3_room4 dd))
)
(:action dummy-left-5zd_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zk7_observe-table_a4_table4_room7 dd) (inroom table4 room7) (inroom table2 room2) (inroom table1 room3) (in a1 room4) (not (inroom table3 room4)) (immediate-dummy-5zd_observe-table_a2_table3_room4 dd) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table3 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-5zd_observe-table_a2_table3_room4 dd)) (dummy-left-5zd_observe-table_a2_table3_room4 dd))
)
(:action dummy-right-5zd_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zk7_observe-table_a4_table4_room7 dd) (inroom table4 room7) (inroom table2 room2) (inroom table1 room3) (in a1 room4) (inroom table3 room4) (immediate-dummy-5zd_observe-table_a2_table3_room4 dd) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table3 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-5zd_observe-table_a2_table3_room4 dd)) (dummy-right-5zd_observe-table_a2_table3_room4 dd))
)
(:action act-iaf_joint-lift-table_a1_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5zd_observe-table_a2_table3_room4 dd) (not (inroom table3 room4)) (inroom table4 room7) (inroom table2 room2) (inroom table1 room3) (available a1) (in a1 room3) (Kinroom table3 room4 V_FALSE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-iaf_joint-lift-table_a1_a2_table1_room3 dd) (not (available a1)))
)
(:action act-pfr_joint-move-table_a1_a2_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-iaf_joint-lift-table_a1_a2_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-pfr_joint-move-table_a1_a2_table1_room3_room4 dd) (not (pre-iaf_joint-lift-table_a1_a2_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-2tt_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-pfr_joint-move-table_a1_a2_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-2tt_joint-drop-table_a1_a2_table1_room4 dd) (not (pre-pfr_joint-move-table_a1_a2_table1_room3_room4 dd)) (available a1))
)
(:action act-4kv_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-2tt_joint-drop-table_a1_a2_table1_room4 dd) (available a1) (in a1 room2))
:effect 
(and (pre-4kv_joint-lift-table_a1_a2_table2_room2 dd) (not (pre-2tt_joint-drop-table_a1_a2_table1_room4 dd)) (not (available a1)))
)
(:action act-xk6_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-4kv_joint-lift-table_a1_a2_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-xk6_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-4kv_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-5co_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-xk6_joint-move-table_a1_a2_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-5co_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-xk6_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-5co_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-5co_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-5co_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action act-xhl_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5zd_observe-table_a2_table3_room4 dd) (inroom table3 room4) (inroom table4 room7) (inroom table2 room2) (inroom table1 room3) (available a1) (in a1 room2) (Kinroom table3 room4 V_TRUE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-xhl_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-ln5_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-xhl_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-ln5_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-xhl_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-h2i_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ln5_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-h2i_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-ln5_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-h2i_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-h2i_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-h2i_joint-drop-table_a1_a3_table2_room1 dd)))
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
