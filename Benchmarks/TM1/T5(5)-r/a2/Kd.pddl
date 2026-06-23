(define (domain Ktablemover-2-a2)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 table5 - table
 a2 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table2 room1)
 tag1 - TAG_TYPE ; (inroom table2 room2)
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
(init-2tn_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-2tn_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-2tn_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-5d6_observe-table_a3_table4_room1 ?dd - dummy)
(dummy-left-5d6_observe-table_a3_table4_room1 ?dd - dummy)
(immediate-dummy-hay_observe-table_a2_table3_room3 ?dd - dummy)
(dummy-left-hay_observe-table_a2_table3_room3 ?dd - dummy)
(immediate-dummy-mbw_observe-table_a2_table5_room3 ?dd - dummy)
(dummy-left-mbw_observe-table_a2_table5_room3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-mbw_observe-table_a2_table5_room3 ?dd - dummy)
(pre-psr_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-u9y_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-ewx_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-hay_observe-table_a2_table3_room3 ?dd - dummy)
(immediate-dummy-kil_observe-table_a1_table2_room1 ?dd - dummy)
(dummy-left-kil_observe-table_a1_table2_room1 ?dd - dummy)
(immediate-dummy-u6g_observe-table_a5_table5_room4 ?dd - dummy)
(dummy-left-u6g_observe-table_a5_table5_room4 ?dd - dummy)
(pre-bnp_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-fry_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-er6_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(dummy-right-u6g_observe-table_a5_table5_room4 ?dd - dummy)
(pre-99e_joint-lift-table_a2_a4_table3_room3 ?dd - dummy)
(pre-61o_joint-move-table_a2_a4_table3_room3_room2 ?dd - dummy)
(pre-n1q_joint-move-table_a2_a4_table3_room2_room1 ?dd - dummy)
(pre-0tm_joint-move-table_a2_a4_table3_room1_room2 ?dd - dummy)
(pre-r08_joint-drop-table_a2_a4_table3_room2 ?dd - dummy)
(pre-8n4_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-4rl_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-clg_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(dummy-right-kil_observe-table_a1_table2_room1 ?dd - dummy)
(immediate-dummy-0gw_observe-table_a5_table5_room4 ?dd - dummy)
(dummy-left-0gw_observe-table_a5_table5_room4 ?dd - dummy)
(pre-jht_joint-lift-table_a2_a4_table3_room3 ?dd - dummy)
(pre-8la_joint-move-table_a2_a4_table3_room3_room2 ?dd - dummy)
(pre-vua_joint-drop-table_a2_a4_table3_room2 ?dd - dummy)
(pre-uh5_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-j6q_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-43n_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-0gw_observe-table_a5_table5_room4 ?dd - dummy)
(pre-4tx_joint-lift-table_a2_a4_table3_room3 ?dd - dummy)
(pre-rhe_joint-move-table_a2_a4_table3_room3_room2 ?dd - dummy)
(pre-3j9_joint-drop-table_a2_a4_table3_room2 ?dd - dummy)
(dummy-right-5d6_observe-table_a3_table4_room1 ?dd - dummy)
(immediate-dummy-v7x_observe-table_a4_table2_room2 ?dd - dummy)
(dummy-left-v7x_observe-table_a4_table2_room2 ?dd - dummy)
(immediate-dummy-7gu_observe-table_a2_table3_room3 ?dd - dummy)
(dummy-left-7gu_observe-table_a2_table3_room3 ?dd - dummy)
(immediate-dummy-1eu_observe-table_a2_table5_room3 ?dd - dummy)
(dummy-left-1eu_observe-table_a2_table5_room3 ?dd - dummy)
(dummy-right-1eu_observe-table_a2_table5_room3 ?dd - dummy)
(pre-71h_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-l6f_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-7nf_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-7gu_observe-table_a2_table3_room3 ?dd - dummy)
(immediate-dummy-9vv_observe-table_a5_table5_room4 ?dd - dummy)
(dummy-left-9vv_observe-table_a5_table5_room4 ?dd - dummy)
(pre-4hr_joint-lift-table_a2_a4_table3_room3 ?dd - dummy)
(pre-36w_joint-move-table_a2_a4_table3_room3_room2 ?dd - dummy)
(pre-829_joint-drop-table_a2_a4_table3_room2 ?dd - dummy)
(pre-pfb_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-b9x_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-nwb_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-9vv_observe-table_a5_table5_room4 ?dd - dummy)
(pre-lr2_joint-lift-table_a2_a4_table3_room3 ?dd - dummy)
(pre-57c_joint-move-table_a2_a4_table3_room3_room2 ?dd - dummy)
(pre-gsw_joint-drop-table_a2_a4_table3_room2 ?dd - dummy)
(dummy-right-v7x_observe-table_a4_table2_room2 ?dd - dummy)
(immediate-dummy-st3_observe-table_a3_table3_room2 ?dd - dummy)
(dummy-left-st3_observe-table_a3_table3_room2 ?dd - dummy)
(immediate-dummy-84y_observe-table_a2_table5_room3 ?dd - dummy)
(dummy-left-84y_observe-table_a2_table5_room3 ?dd - dummy)
(pre-o00_joint-lift-table_a2_a3_table3_room3 ?dd - dummy)
(pre-fek_joint-move-table_a2_a3_table3_room3_room2 ?dd - dummy)
(pre-72m_joint-drop-table_a2_a3_table3_room2 ?dd - dummy)
(dummy-right-84y_observe-table_a2_table5_room3 ?dd - dummy)
(pre-usw_joint-lift-table_a2_a3_table3_room3 ?dd - dummy)
(pre-fk7_joint-move-table_a2_a3_table3_room3_room2 ?dd - dummy)
(pre-su1_joint-drop-table_a2_a3_table3_room2 ?dd - dummy)
(pre-eyd_joint-lift-table_a2_a3_table5_room3 ?dd - dummy)
(pre-28j_joint-move-table_a2_a3_table5_room3_room4 ?dd - dummy)
(pre-pxn_joint-drop-table_a2_a3_table5_room4 ?dd - dummy)
(dummy-right-st3_observe-table_a3_table3_room2 ?dd - dummy)
(immediate-dummy-aqi_observe-table_a5_table5_room4 ?dd - dummy)
(dummy-left-aqi_observe-table_a5_table5_room4 ?dd - dummy)
(pre-gql_joint-lift-table_a2_a5_table5_room3 ?dd - dummy)
(pre-nwi_joint-move-table_a2_a5_table5_room3_room4 ?dd - dummy)
(pre-6hs_joint-drop-table_a2_a5_table5_room4 ?dd - dummy)
(dummy-right-aqi_observe-table_a5_table5_room4 ?dd - dummy)
(dummy-right-2tn_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-0ny_observe-table_a2_table3_room3 ?dd - dummy)
(dummy-left-0ny_observe-table_a2_table3_room3 ?dd - dummy)
(immediate-dummy-plp_observe-table_a3_table4_room1 ?dd - dummy)
(dummy-left-plp_observe-table_a3_table4_room1 ?dd - dummy)
(immediate-dummy-pai_observe-table_a5_table5_room4 ?dd - dummy)
(dummy-left-pai_observe-table_a5_table5_room4 ?dd - dummy)
(pre-z99_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-b4f_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-uv2_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-pai_observe-table_a5_table5_room4 ?dd - dummy)
(pre-q0r_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-67m_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-dob_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(dummy-right-plp_observe-table_a3_table4_room1 ?dd - dummy)
(immediate-dummy-l2x_observe-table_a2_table5_room3 ?dd - dummy)
(dummy-left-l2x_observe-table_a2_table5_room3 ?dd - dummy)
(pre-yvn_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-jnk_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-pmx_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(dummy-right-l2x_observe-table_a2_table5_room3 ?dd - dummy)
(pre-4aw_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-fkq_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-jew_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(pre-f2a_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-qpr_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-b3p_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-0ny_observe-table_a2_table3_room3 ?dd - dummy)
(immediate-dummy-ll6_observe-table_a2_table5_room3 ?dd - dummy)
(dummy-left-ll6_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-ndh_observe-table_a3_table4_room1 ?dd - dummy)
(dummy-left-ndh_observe-table_a3_table4_room1 ?dd - dummy)
(immediate-dummy-ubo_observe-table_a1_table2_room1 ?dd - dummy)
(dummy-left-ubo_observe-table_a1_table2_room1 ?dd - dummy)
(pre-v2q_joint-lift-table_a2_a4_table2_room2 ?dd - dummy)
(pre-5fi_joint-move-table_a2_a4_table2_room2_room1 ?dd - dummy)
(pre-ew0_joint-drop-table_a2_a4_table2_room1 ?dd - dummy)
(dummy-right-ubo_observe-table_a1_table2_room1 ?dd - dummy)
(pre-41x_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-54k_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-pga_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(pre-xhg_joint-lift-table_a2_a4_table3_room3 ?dd - dummy)
(pre-6it_joint-move-table_a2_a4_table3_room3_room2 ?dd - dummy)
(pre-5db_joint-drop-table_a2_a4_table3_room2 ?dd - dummy)
(dummy-right-ndh_observe-table_a3_table4_room1 ?dd - dummy)
(pre-1q6_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-oui_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-cxl_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(pre-fkw_joint-lift-table_a2_a4_table3_room3 ?dd - dummy)
(pre-1m2_joint-move-table_a2_a4_table3_room3_room2 ?dd - dummy)
(pre-0gc_joint-drop-table_a2_a4_table3_room2 ?dd - dummy)
(dummy-right-ll6_observe-table_a2_table5_room3 ?dd - dummy)
(pre-1qr_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-w87_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-h73_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(pre-hzu_joint-lift-table_a2_a4_table3_room3 ?dd - dummy)
(pre-69b_joint-move-table_a2_a4_table3_room3_room2 ?dd - dummy)
(pre-hng_joint-drop-table_a2_a4_table3_room2 ?dd - dummy)
(pre-3pg_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-o3g_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-8k6_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-2tn_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-2tn_observe-table_a2_table1_room3 dd) (immediate-dummy-2tn_observe-table_a2_table1_room3 dd) (in a2 room3) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-2tn_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-2tn_observe-table_a2_table1_room3 dd) (immediate-dummy-2tn_observe-table_a2_table1_room3 dd) (in a2 room3) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-2tn_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-2tn_observe-table_a2_table1_room3 dd) (not (dummy-left-2tn_observe-table_a2_table1_room3 dd)) (not (dummy-right-2tn_observe-table_a2_table1_room3 dd)))
:effect 
(and (immediate-dummy-2tn_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-2tn_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-2tn_observe-table_a2_table1_room3 dd) (in a2 room3) (not (inroom table1 room3)) (immediate-dummy-2tn_observe-table_a2_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (init-2tn_observe-table_a2_table1_room3 dd)) (not (immediate-dummy-2tn_observe-table_a2_table1_room3 dd)) (dummy-left-2tn_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-2tn_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-2tn_observe-table_a2_table1_room3 dd) (in a2 room3) (inroom table1 room3) (immediate-dummy-2tn_observe-table_a2_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (init-2tn_observe-table_a2_table1_room3 dd)) (not (immediate-dummy-2tn_observe-table_a2_table1_room3 dd)) (dummy-right-2tn_observe-table_a2_table1_room3 dd))
)
(:action act-5d6_observe-table_a3_table4_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2tn_observe-table_a2_table1_room3 dd) (immediate-dummy-5d6_observe-table_a3_table4_room1 dd) (not (inroom table1 room3)) (in a2 room1) (Kinroom table1 room3 V_FALSE) (inroom table4 room1) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_TRUE))
)
(:action act-5d6_observe-table_a3_table4_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2tn_observe-table_a2_table1_room3 dd) (immediate-dummy-5d6_observe-table_a3_table4_room1 dd) (not (inroom table1 room3)) (in a2 room1) (Kinroom table1 room3 V_FALSE) (not (inroom table4 room1)) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_FALSE))
)
(:action act-dummy-5d6_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2tn_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a2 room1) (not (dummy-left-5d6_observe-table_a3_table4_room1 dd)) (not (dummy-right-5d6_observe-table_a3_table4_room1 dd)) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-5d6_observe-table_a3_table4_room1 dd))
)
(:action dummy-left-5d6_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2tn_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a2 room1) (not (inroom table4 room1)) (immediate-dummy-5d6_observe-table_a3_table4_room1 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-5d6_observe-table_a3_table4_room1 dd)) (dummy-left-5d6_observe-table_a3_table4_room1 dd))
)
(:action dummy-right-5d6_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2tn_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a2 room1) (inroom table4 room1) (immediate-dummy-5d6_observe-table_a3_table4_room1 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-5d6_observe-table_a3_table4_room1 dd)) (dummy-right-5d6_observe-table_a3_table4_room1 dd))
)
(:action act-hay_observe-table_a2_table3_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5d6_observe-table_a3_table4_room1 dd) (immediate-dummy-hay_observe-table_a2_table3_room3 dd) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room3) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table3 room3) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_TRUE))
)
(:action act-hay_observe-table_a2_table3_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5d6_observe-table_a3_table4_room1 dd) (immediate-dummy-hay_observe-table_a2_table3_room3 dd) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room3) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table3 room3)) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_FALSE))
)
(:action act-dummy-hay_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5d6_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room3) (not (dummy-left-hay_observe-table_a2_table3_room3 dd)) (not (dummy-right-hay_observe-table_a2_table3_room3 dd)) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-hay_observe-table_a2_table3_room3 dd))
)
(:action dummy-left-hay_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5d6_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room3) (not (inroom table3 room3)) (immediate-dummy-hay_observe-table_a2_table3_room3 dd) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-hay_observe-table_a2_table3_room3 dd)) (dummy-left-hay_observe-table_a2_table3_room3 dd))
)
(:action dummy-right-hay_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5d6_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room3) (inroom table3 room3) (immediate-dummy-hay_observe-table_a2_table3_room3 dd) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-hay_observe-table_a2_table3_room3 dd)) (dummy-right-hay_observe-table_a2_table3_room3 dd))
)
(:action act-mbw_observe-table_a2_table5_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hay_observe-table_a2_table3_room3 dd) (immediate-dummy-mbw_observe-table_a2_table5_room3 dd) (not (inroom table3 room3)) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room3) (Kinroom table3 room3 V_FALSE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table5 room3) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_TRUE))
)
(:action act-mbw_observe-table_a2_table5_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hay_observe-table_a2_table3_room3 dd) (immediate-dummy-mbw_observe-table_a2_table5_room3 dd) (not (inroom table3 room3)) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room3) (Kinroom table3 room3 V_FALSE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table5 room3)) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_FALSE))
)
(:action act-dummy-mbw_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hay_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room3) (not (dummy-left-mbw_observe-table_a2_table5_room3 dd)) (not (dummy-right-mbw_observe-table_a2_table5_room3 dd)) (Kinroom table3 room3 V_FALSE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-mbw_observe-table_a2_table5_room3 dd))
)
(:action dummy-left-mbw_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hay_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room3) (not (inroom table5 room3)) (immediate-dummy-mbw_observe-table_a2_table5_room3 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-mbw_observe-table_a2_table5_room3 dd)) (dummy-left-mbw_observe-table_a2_table5_room3 dd))
)
(:action dummy-right-mbw_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hay_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room3) (inroom table5 room3) (immediate-dummy-mbw_observe-table_a2_table5_room3 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-mbw_observe-table_a2_table5_room3 dd)) (dummy-right-mbw_observe-table_a2_table5_room3 dd))
)
(:action goal-achieve-left-mbw_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mbw_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (not (inroom table3 room3)) (not (inroom table4 room1)) (not (inroom table1 room3)) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-mbw_observe-table_a2_table5_room3 dd)))
)
(:action act-psr_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mbw_observe-table_a2_table5_room3 dd) (inroom table5 room3) (not (inroom table3 room3)) (not (inroom table4 room1)) (not (inroom table1 room3)) (available a2) (in a2 room3) (Kinroom table5 room3 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-psr_joint-lift-table_a2_a4_table5_room3 dd) (not (available a2)))
)
(:action act-u9y_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-psr_joint-lift-table_a2_a4_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-u9y_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-psr_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-ewx_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-u9y_joint-move-table_a2_a4_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-ewx_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-u9y_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-ewx_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ewx_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-ewx_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-kil_observe-table_a1_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hay_observe-table_a2_table3_room3 dd) (immediate-dummy-kil_observe-table_a1_table2_room1 dd) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room1) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-kil_observe-table_a1_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hay_observe-table_a2_table3_room3 dd) (immediate-dummy-kil_observe-table_a1_table2_room1 dd) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room1) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-kil_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hay_observe-table_a2_table3_room3 dd) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room1) (not (dummy-left-kil_observe-table_a1_table2_room1 dd)) (not (dummy-right-kil_observe-table_a1_table2_room1 dd)) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-kil_observe-table_a1_table2_room1 dd))
)
(:action dummy-left-kil_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hay_observe-table_a2_table3_room3 dd) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room1) (not (inroom table2 room1)) (immediate-dummy-kil_observe-table_a1_table2_room1 dd) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-kil_observe-table_a1_table2_room1 dd)) (dummy-left-kil_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-kil_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hay_observe-table_a2_table3_room3 dd) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room1) (inroom table2 room1) (immediate-dummy-kil_observe-table_a1_table2_room1 dd) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-kil_observe-table_a1_table2_room1 dd)) (dummy-right-kil_observe-table_a1_table2_room1 dd))
)
(:action act-u6g_observe-table_a5_table5_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kil_observe-table_a1_table2_room1 dd) (immediate-dummy-u6g_observe-table_a5_table5_room4 dd) (not (inroom table2 room1)) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room4) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table5 room4) (not (Kinroom table5 room4 V_TRUE)) (not (Kinroom table5 room4 V_FALSE)))
:effect 
(and (Kinroom table5 room4 V_TRUE))
)
(:action act-u6g_observe-table_a5_table5_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kil_observe-table_a1_table2_room1 dd) (immediate-dummy-u6g_observe-table_a5_table5_room4 dd) (not (inroom table2 room1)) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room4) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table5 room4)) (not (Kinroom table5 room4 V_TRUE)) (not (Kinroom table5 room4 V_FALSE)))
:effect 
(and (Kinroom table5 room4 V_FALSE))
)
(:action act-dummy-u6g_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kil_observe-table_a1_table2_room1 dd) (not (inroom table2 room1)) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room4) (not (dummy-left-u6g_observe-table_a5_table5_room4 dd)) (not (dummy-right-u6g_observe-table_a5_table5_room4 dd)) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-u6g_observe-table_a5_table5_room4 dd))
)
(:action dummy-left-u6g_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kil_observe-table_a1_table2_room1 dd) (not (inroom table2 room1)) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room4) (not (inroom table5 room4)) (immediate-dummy-u6g_observe-table_a5_table5_room4 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-u6g_observe-table_a5_table5_room4 dd)) (dummy-left-u6g_observe-table_a5_table5_room4 dd))
)
(:action dummy-right-u6g_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kil_observe-table_a1_table2_room1 dd) (not (inroom table2 room1)) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room4) (inroom table5 room4) (immediate-dummy-u6g_observe-table_a5_table5_room4 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-u6g_observe-table_a5_table5_room4 dd)) (dummy-right-u6g_observe-table_a5_table5_room4 dd))
)
(:action act-bnp_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-u6g_observe-table_a5_table5_room4 dd) (not (inroom table5 room4)) (not (inroom table2 room1)) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (available a2) (in a2 room2) (Kinroom table5 room4 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-bnp_joint-lift-table_a1_a2_table2_room2 dd) (not (available a2)))
)
(:action act-fry_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-bnp_joint-lift-table_a1_a2_table2_room2 dd) (in a2 room2))
:effect 
(and (pre-fry_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-bnp_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a2 room2)) (in a2 room1))
)
(:action act-er6_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-fry_joint-move-table_a1_a2_table2_room2_room1 dd) (in a2 room1))
:effect 
(and (pre-er6_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-fry_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a2))
)
(:action goal-achieve-er6_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-er6_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-er6_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action act-99e_joint-lift-table_a2_a4_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-u6g_observe-table_a5_table5_room4 dd) (inroom table5 room4) (not (inroom table2 room1)) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (available a2) (in a2 room3) (Kinroom table5 room4 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-99e_joint-lift-table_a2_a4_table3_room3 dd) (not (available a2)))
)
(:action act-61o_joint-move-table_a2_a4_table3_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-99e_joint-lift-table_a2_a4_table3_room3 dd) (in a2 room3))
:effect 
(and (pre-61o_joint-move-table_a2_a4_table3_room3_room2 dd) (not (pre-99e_joint-lift-table_a2_a4_table3_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-n1q_joint-move-table_a2_a4_table3_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-61o_joint-move-table_a2_a4_table3_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-n1q_joint-move-table_a2_a4_table3_room2_room1 dd) (not (pre-61o_joint-move-table_a2_a4_table3_room3_room2 dd)) (not (in a2 room2)) (in a2 room1))
)
(:action act-0tm_joint-move-table_a2_a4_table3_room1_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-n1q_joint-move-table_a2_a4_table3_room2_room1 dd) (in a2 room1))
:effect 
(and (pre-0tm_joint-move-table_a2_a4_table3_room1_room2 dd) (not (pre-n1q_joint-move-table_a2_a4_table3_room2_room1 dd)) (not (in a2 room1)) (in a2 room2))
)
(:action act-r08_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-0tm_joint-move-table_a2_a4_table3_room1_room2 dd) (in a2 room2))
:effect 
(and (pre-r08_joint-drop-table_a2_a4_table3_room2 dd) (not (pre-0tm_joint-move-table_a2_a4_table3_room1_room2 dd)) (available a2))
)
(:action act-8n4_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-r08_joint-drop-table_a2_a4_table3_room2 dd) (available a2) (in a2 room2))
:effect 
(and (pre-8n4_joint-lift-table_a1_a2_table2_room2 dd) (not (pre-r08_joint-drop-table_a2_a4_table3_room2 dd)) (not (available a2)))
)
(:action act-4rl_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-8n4_joint-lift-table_a1_a2_table2_room2 dd) (in a2 room2))
:effect 
(and (pre-4rl_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-8n4_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a2 room2)) (in a2 room1))
)
(:action act-clg_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-4rl_joint-move-table_a1_a2_table2_room2_room1 dd) (in a2 room1))
:effect 
(and (pre-clg_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-4rl_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a2))
)
(:action goal-achieve-clg_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-clg_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-clg_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action act-0gw_observe-table_a5_table5_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kil_observe-table_a1_table2_room1 dd) (immediate-dummy-0gw_observe-table_a5_table5_room4 dd) (inroom table2 room1) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room4) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table5 room4) (not (Kinroom table5 room4 V_TRUE)) (not (Kinroom table5 room4 V_FALSE)))
:effect 
(and (Kinroom table5 room4 V_TRUE))
)
(:action act-0gw_observe-table_a5_table5_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kil_observe-table_a1_table2_room1 dd) (immediate-dummy-0gw_observe-table_a5_table5_room4 dd) (inroom table2 room1) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room4) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table5 room4)) (not (Kinroom table5 room4 V_TRUE)) (not (Kinroom table5 room4 V_FALSE)))
:effect 
(and (Kinroom table5 room4 V_FALSE))
)
(:action act-dummy-0gw_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kil_observe-table_a1_table2_room1 dd) (inroom table2 room1) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room4) (not (dummy-left-0gw_observe-table_a5_table5_room4 dd)) (not (dummy-right-0gw_observe-table_a5_table5_room4 dd)) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-0gw_observe-table_a5_table5_room4 dd))
)
(:action dummy-left-0gw_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kil_observe-table_a1_table2_room1 dd) (inroom table2 room1) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room4) (not (inroom table5 room4)) (immediate-dummy-0gw_observe-table_a5_table5_room4 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-0gw_observe-table_a5_table5_room4 dd)) (dummy-left-0gw_observe-table_a5_table5_room4 dd))
)
(:action dummy-right-0gw_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kil_observe-table_a1_table2_room1 dd) (inroom table2 room1) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (in a2 room4) (inroom table5 room4) (immediate-dummy-0gw_observe-table_a5_table5_room4 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-0gw_observe-table_a5_table5_room4 dd)) (dummy-right-0gw_observe-table_a5_table5_room4 dd))
)
(:action act-jht_joint-lift-table_a2_a4_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0gw_observe-table_a5_table5_room4 dd) (not (inroom table5 room4)) (inroom table2 room1) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (available a2) (in a2 room3) (Kinroom table5 room4 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-jht_joint-lift-table_a2_a4_table3_room3 dd) (not (available a2)))
)
(:action act-8la_joint-move-table_a2_a4_table3_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-jht_joint-lift-table_a2_a4_table3_room3 dd) (in a2 room3))
:effect 
(and (pre-8la_joint-move-table_a2_a4_table3_room3_room2 dd) (not (pre-jht_joint-lift-table_a2_a4_table3_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-vua_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-8la_joint-move-table_a2_a4_table3_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-vua_joint-drop-table_a2_a4_table3_room2 dd) (not (pre-8la_joint-move-table_a2_a4_table3_room3_room2 dd)) (available a2))
)
(:action act-uh5_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-vua_joint-drop-table_a2_a4_table3_room2 dd) (available a2) (in a2 room3))
:effect 
(and (pre-uh5_joint-lift-table_a2_a4_table5_room3 dd) (not (pre-vua_joint-drop-table_a2_a4_table3_room2 dd)) (not (available a2)))
)
(:action act-j6q_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-uh5_joint-lift-table_a2_a4_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-j6q_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-uh5_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-43n_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-j6q_joint-move-table_a2_a4_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-43n_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-j6q_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-43n_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-43n_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-43n_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-4tx_joint-lift-table_a2_a4_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0gw_observe-table_a5_table5_room4 dd) (inroom table5 room4) (inroom table2 room1) (inroom table3 room3) (not (inroom table4 room1)) (not (inroom table1 room3)) (available a2) (in a2 room3) (Kinroom table5 room4 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room3 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-4tx_joint-lift-table_a2_a4_table3_room3 dd) (not (available a2)))
)
(:action act-rhe_joint-move-table_a2_a4_table3_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-4tx_joint-lift-table_a2_a4_table3_room3 dd) (in a2 room3))
:effect 
(and (pre-rhe_joint-move-table_a2_a4_table3_room3_room2 dd) (not (pre-4tx_joint-lift-table_a2_a4_table3_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-3j9_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-rhe_joint-move-table_a2_a4_table3_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-3j9_joint-drop-table_a2_a4_table3_room2 dd) (not (pre-rhe_joint-move-table_a2_a4_table3_room3_room2 dd)) (available a2))
)
(:action goal-achieve-3j9_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-3j9_joint-drop-table_a2_a4_table3_room2 dd))
:effect 
(and (done-goal dd) (not (pre-3j9_joint-drop-table_a2_a4_table3_room2 dd)))
)
(:action act-v7x_observe-table_a4_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5d6_observe-table_a3_table4_room1 dd) (immediate-dummy-v7x_observe-table_a4_table2_room2 dd) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room2) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-v7x_observe-table_a4_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5d6_observe-table_a3_table4_room1 dd) (immediate-dummy-v7x_observe-table_a4_table2_room2 dd) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room2) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-v7x_observe-table_a4_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5d6_observe-table_a3_table4_room1 dd) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room2) (not (dummy-left-v7x_observe-table_a4_table2_room2 dd)) (not (dummy-right-v7x_observe-table_a4_table2_room2 dd)) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-v7x_observe-table_a4_table2_room2 dd))
)
(:action dummy-left-v7x_observe-table_a4_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5d6_observe-table_a3_table4_room1 dd) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room2) (not (inroom table2 room2)) (immediate-dummy-v7x_observe-table_a4_table2_room2 dd) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-v7x_observe-table_a4_table2_room2 dd)) (dummy-left-v7x_observe-table_a4_table2_room2 dd))
)
(:action dummy-right-v7x_observe-table_a4_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5d6_observe-table_a3_table4_room1 dd) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room2) (inroom table2 room2) (immediate-dummy-v7x_observe-table_a4_table2_room2 dd) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-v7x_observe-table_a4_table2_room2 dd)) (dummy-right-v7x_observe-table_a4_table2_room2 dd))
)
(:action act-7gu_observe-table_a2_table3_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-v7x_observe-table_a4_table2_room2 dd) (immediate-dummy-7gu_observe-table_a2_table3_room3 dd) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table3 room3) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_TRUE))
)
(:action act-7gu_observe-table_a2_table3_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-v7x_observe-table_a4_table2_room2 dd) (immediate-dummy-7gu_observe-table_a2_table3_room3 dd) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table3 room3)) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_FALSE))
)
(:action act-dummy-7gu_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-v7x_observe-table_a4_table2_room2 dd) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (not (dummy-left-7gu_observe-table_a2_table3_room3 dd)) (not (dummy-right-7gu_observe-table_a2_table3_room3 dd)) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-7gu_observe-table_a2_table3_room3 dd))
)
(:action dummy-left-7gu_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-v7x_observe-table_a4_table2_room2 dd) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (not (inroom table3 room3)) (immediate-dummy-7gu_observe-table_a2_table3_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-7gu_observe-table_a2_table3_room3 dd)) (dummy-left-7gu_observe-table_a2_table3_room3 dd))
)
(:action dummy-right-7gu_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-v7x_observe-table_a4_table2_room2 dd) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (inroom table3 room3) (immediate-dummy-7gu_observe-table_a2_table3_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-7gu_observe-table_a2_table3_room3 dd)) (dummy-right-7gu_observe-table_a2_table3_room3 dd))
)
(:action act-1eu_observe-table_a2_table5_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7gu_observe-table_a2_table3_room3 dd) (immediate-dummy-1eu_observe-table_a2_table5_room3 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table5 room3) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_TRUE))
)
(:action act-1eu_observe-table_a2_table5_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7gu_observe-table_a2_table3_room3 dd) (immediate-dummy-1eu_observe-table_a2_table5_room3 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table5 room3)) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_FALSE))
)
(:action act-dummy-1eu_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7gu_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (not (dummy-left-1eu_observe-table_a2_table5_room3 dd)) (not (dummy-right-1eu_observe-table_a2_table5_room3 dd)) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-1eu_observe-table_a2_table5_room3 dd))
)
(:action dummy-left-1eu_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7gu_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (not (inroom table5 room3)) (immediate-dummy-1eu_observe-table_a2_table5_room3 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-1eu_observe-table_a2_table5_room3 dd)) (dummy-left-1eu_observe-table_a2_table5_room3 dd))
)
(:action dummy-right-1eu_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7gu_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (inroom table5 room3) (immediate-dummy-1eu_observe-table_a2_table5_room3 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-1eu_observe-table_a2_table5_room3 dd)) (dummy-right-1eu_observe-table_a2_table5_room3 dd))
)
(:action goal-achieve-left-1eu_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1eu_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (not (inroom table3 room3)) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-1eu_observe-table_a2_table5_room3 dd)))
)
(:action act-71h_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1eu_observe-table_a2_table5_room3 dd) (inroom table5 room3) (not (inroom table3 room3)) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (available a2) (in a2 room3) (Kinroom table5 room3 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-71h_joint-lift-table_a2_a4_table5_room3 dd) (not (available a2)))
)
(:action act-l6f_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-71h_joint-lift-table_a2_a4_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-l6f_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-71h_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-7nf_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-l6f_joint-move-table_a2_a4_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-7nf_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-l6f_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-7nf_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-7nf_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-7nf_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-9vv_observe-table_a5_table5_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7gu_observe-table_a2_table3_room3 dd) (immediate-dummy-9vv_observe-table_a5_table5_room4 dd) (inroom table3 room3) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room4) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table5 room4) (not (Kinroom table5 room4 V_TRUE)) (not (Kinroom table5 room4 V_FALSE)))
:effect 
(and (Kinroom table5 room4 V_TRUE))
)
(:action act-9vv_observe-table_a5_table5_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7gu_observe-table_a2_table3_room3 dd) (immediate-dummy-9vv_observe-table_a5_table5_room4 dd) (inroom table3 room3) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room4) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table5 room4)) (not (Kinroom table5 room4 V_TRUE)) (not (Kinroom table5 room4 V_FALSE)))
:effect 
(and (Kinroom table5 room4 V_FALSE))
)
(:action act-dummy-9vv_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7gu_observe-table_a2_table3_room3 dd) (inroom table3 room3) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room4) (not (dummy-left-9vv_observe-table_a5_table5_room4 dd)) (not (dummy-right-9vv_observe-table_a5_table5_room4 dd)) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-9vv_observe-table_a5_table5_room4 dd))
)
(:action dummy-left-9vv_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7gu_observe-table_a2_table3_room3 dd) (inroom table3 room3) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room4) (not (inroom table5 room4)) (immediate-dummy-9vv_observe-table_a5_table5_room4 dd) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-9vv_observe-table_a5_table5_room4 dd)) (dummy-left-9vv_observe-table_a5_table5_room4 dd))
)
(:action dummy-right-9vv_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7gu_observe-table_a2_table3_room3 dd) (inroom table3 room3) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room4) (inroom table5 room4) (immediate-dummy-9vv_observe-table_a5_table5_room4 dd) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-9vv_observe-table_a5_table5_room4 dd)) (dummy-right-9vv_observe-table_a5_table5_room4 dd))
)
(:action act-4hr_joint-lift-table_a2_a4_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9vv_observe-table_a5_table5_room4 dd) (not (inroom table5 room4)) (inroom table3 room3) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (available a2) (in a2 room3) (Kinroom table5 room4 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-4hr_joint-lift-table_a2_a4_table3_room3 dd) (not (available a2)))
)
(:action act-36w_joint-move-table_a2_a4_table3_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-4hr_joint-lift-table_a2_a4_table3_room3 dd) (in a2 room3))
:effect 
(and (pre-36w_joint-move-table_a2_a4_table3_room3_room2 dd) (not (pre-4hr_joint-lift-table_a2_a4_table3_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-829_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-36w_joint-move-table_a2_a4_table3_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-829_joint-drop-table_a2_a4_table3_room2 dd) (not (pre-36w_joint-move-table_a2_a4_table3_room3_room2 dd)) (available a2))
)
(:action act-pfb_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-829_joint-drop-table_a2_a4_table3_room2 dd) (available a2) (in a2 room3))
:effect 
(and (pre-pfb_joint-lift-table_a2_a4_table5_room3 dd) (not (pre-829_joint-drop-table_a2_a4_table3_room2 dd)) (not (available a2)))
)
(:action act-b9x_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-pfb_joint-lift-table_a2_a4_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-b9x_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-pfb_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-nwb_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-b9x_joint-move-table_a2_a4_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-nwb_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-b9x_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-nwb_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-nwb_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-nwb_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-lr2_joint-lift-table_a2_a4_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9vv_observe-table_a5_table5_room4 dd) (inroom table5 room4) (inroom table3 room3) (not (inroom table2 room2)) (inroom table4 room1) (not (inroom table1 room3)) (available a2) (in a2 room3) (Kinroom table5 room4 V_TRUE) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-lr2_joint-lift-table_a2_a4_table3_room3 dd) (not (available a2)))
)
(:action act-57c_joint-move-table_a2_a4_table3_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-lr2_joint-lift-table_a2_a4_table3_room3 dd) (in a2 room3))
:effect 
(and (pre-57c_joint-move-table_a2_a4_table3_room3_room2 dd) (not (pre-lr2_joint-lift-table_a2_a4_table3_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-gsw_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-57c_joint-move-table_a2_a4_table3_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-gsw_joint-drop-table_a2_a4_table3_room2 dd) (not (pre-57c_joint-move-table_a2_a4_table3_room3_room2 dd)) (available a2))
)
(:action goal-achieve-gsw_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-gsw_joint-drop-table_a2_a4_table3_room2 dd))
:effect 
(and (done-goal dd) (not (pre-gsw_joint-drop-table_a2_a4_table3_room2 dd)))
)
(:action act-st3_observe-table_a3_table3_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-v7x_observe-table_a4_table2_room2 dd) (immediate-dummy-st3_observe-table_a3_table3_room2 dd) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table3 room2) (not (Kinroom table3 room2 V_TRUE)) (not (Kinroom table3 room2 V_FALSE)))
:effect 
(and (Kinroom table3 room2 V_TRUE))
)
(:action act-st3_observe-table_a3_table3_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-v7x_observe-table_a4_table2_room2 dd) (immediate-dummy-st3_observe-table_a3_table3_room2 dd) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table3 room2)) (not (Kinroom table3 room2 V_TRUE)) (not (Kinroom table3 room2 V_FALSE)))
:effect 
(and (Kinroom table3 room2 V_FALSE))
)
(:action act-dummy-st3_observe-table_a3_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-v7x_observe-table_a4_table2_room2 dd) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room2) (not (dummy-left-st3_observe-table_a3_table3_room2 dd)) (not (dummy-right-st3_observe-table_a3_table3_room2 dd)) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-st3_observe-table_a3_table3_room2 dd))
)
(:action dummy-left-st3_observe-table_a3_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-v7x_observe-table_a4_table2_room2 dd) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room2) (not (inroom table3 room2)) (immediate-dummy-st3_observe-table_a3_table3_room2 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-st3_observe-table_a3_table3_room2 dd)) (dummy-left-st3_observe-table_a3_table3_room2 dd))
)
(:action dummy-right-st3_observe-table_a3_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-v7x_observe-table_a4_table2_room2 dd) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room2) (inroom table3 room2) (immediate-dummy-st3_observe-table_a3_table3_room2 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-st3_observe-table_a3_table3_room2 dd)) (dummy-right-st3_observe-table_a3_table3_room2 dd))
)
(:action act-84y_observe-table_a2_table5_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-st3_observe-table_a3_table3_room2 dd) (immediate-dummy-84y_observe-table_a2_table5_room3 dd) (not (inroom table3 room2)) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table5 room3) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_TRUE))
)
(:action act-84y_observe-table_a2_table5_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-st3_observe-table_a3_table3_room2 dd) (immediate-dummy-84y_observe-table_a2_table5_room3 dd) (not (inroom table3 room2)) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table5 room3)) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_FALSE))
)
(:action act-dummy-84y_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-st3_observe-table_a3_table3_room2 dd) (not (inroom table3 room2)) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (not (dummy-left-84y_observe-table_a2_table5_room3 dd)) (not (dummy-right-84y_observe-table_a2_table5_room3 dd)) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-84y_observe-table_a2_table5_room3 dd))
)
(:action dummy-left-84y_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-st3_observe-table_a3_table3_room2 dd) (not (inroom table3 room2)) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (not (inroom table5 room3)) (immediate-dummy-84y_observe-table_a2_table5_room3 dd) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-84y_observe-table_a2_table5_room3 dd)) (dummy-left-84y_observe-table_a2_table5_room3 dd))
)
(:action dummy-right-84y_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-st3_observe-table_a3_table3_room2 dd) (not (inroom table3 room2)) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room3) (inroom table5 room3) (immediate-dummy-84y_observe-table_a2_table5_room3 dd) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-84y_observe-table_a2_table5_room3 dd)) (dummy-right-84y_observe-table_a2_table5_room3 dd))
)
(:action act-o00_joint-lift-table_a2_a3_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-84y_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (not (inroom table3 room2)) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (available a2) (in a2 room3) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-o00_joint-lift-table_a2_a3_table3_room3 dd) (not (available a2)))
)
(:action act-fek_joint-move-table_a2_a3_table3_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-o00_joint-lift-table_a2_a3_table3_room3 dd) (in a2 room3))
:effect 
(and (pre-fek_joint-move-table_a2_a3_table3_room3_room2 dd) (not (pre-o00_joint-lift-table_a2_a3_table3_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-72m_joint-drop-table_a2_a3_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-fek_joint-move-table_a2_a3_table3_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-72m_joint-drop-table_a2_a3_table3_room2 dd) (not (pre-fek_joint-move-table_a2_a3_table3_room3_room2 dd)) (available a2))
)
(:action goal-achieve-72m_joint-drop-table_a2_a3_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-72m_joint-drop-table_a2_a3_table3_room2 dd))
:effect 
(and (done-goal dd) (not (pre-72m_joint-drop-table_a2_a3_table3_room2 dd)))
)
(:action act-usw_joint-lift-table_a2_a3_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-84y_observe-table_a2_table5_room3 dd) (inroom table5 room3) (not (inroom table3 room2)) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (available a2) (in a2 room3) (Kinroom table5 room3 V_TRUE) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-usw_joint-lift-table_a2_a3_table3_room3 dd) (not (available a2)))
)
(:action act-fk7_joint-move-table_a2_a3_table3_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-usw_joint-lift-table_a2_a3_table3_room3 dd) (in a2 room3))
:effect 
(and (pre-fk7_joint-move-table_a2_a3_table3_room3_room2 dd) (not (pre-usw_joint-lift-table_a2_a3_table3_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-su1_joint-drop-table_a2_a3_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-fk7_joint-move-table_a2_a3_table3_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-su1_joint-drop-table_a2_a3_table3_room2 dd) (not (pre-fk7_joint-move-table_a2_a3_table3_room3_room2 dd)) (available a2))
)
(:action act-eyd_joint-lift-table_a2_a3_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-su1_joint-drop-table_a2_a3_table3_room2 dd) (available a2) (in a2 room3))
:effect 
(and (pre-eyd_joint-lift-table_a2_a3_table5_room3 dd) (not (pre-su1_joint-drop-table_a2_a3_table3_room2 dd)) (not (available a2)))
)
(:action act-28j_joint-move-table_a2_a3_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-eyd_joint-lift-table_a2_a3_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-28j_joint-move-table_a2_a3_table5_room3_room4 dd) (not (pre-eyd_joint-lift-table_a2_a3_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-pxn_joint-drop-table_a2_a3_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-28j_joint-move-table_a2_a3_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-pxn_joint-drop-table_a2_a3_table5_room4 dd) (not (pre-28j_joint-move-table_a2_a3_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-pxn_joint-drop-table_a2_a3_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-pxn_joint-drop-table_a2_a3_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-pxn_joint-drop-table_a2_a3_table5_room4 dd)))
)
(:action act-aqi_observe-table_a5_table5_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-st3_observe-table_a3_table3_room2 dd) (immediate-dummy-aqi_observe-table_a5_table5_room4 dd) (inroom table3 room2) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room4) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table5 room4) (not (Kinroom table5 room4 V_TRUE)) (not (Kinroom table5 room4 V_FALSE)))
:effect 
(and (Kinroom table5 room4 V_TRUE))
)
(:action act-aqi_observe-table_a5_table5_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-st3_observe-table_a3_table3_room2 dd) (immediate-dummy-aqi_observe-table_a5_table5_room4 dd) (inroom table3 room2) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room4) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table5 room4)) (not (Kinroom table5 room4 V_TRUE)) (not (Kinroom table5 room4 V_FALSE)))
:effect 
(and (Kinroom table5 room4 V_FALSE))
)
(:action act-dummy-aqi_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-st3_observe-table_a3_table3_room2 dd) (inroom table3 room2) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room4) (not (dummy-left-aqi_observe-table_a5_table5_room4 dd)) (not (dummy-right-aqi_observe-table_a5_table5_room4 dd)) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-aqi_observe-table_a5_table5_room4 dd))
)
(:action dummy-left-aqi_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-st3_observe-table_a3_table3_room2 dd) (inroom table3 room2) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room4) (not (inroom table5 room4)) (immediate-dummy-aqi_observe-table_a5_table5_room4 dd) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-aqi_observe-table_a5_table5_room4 dd)) (dummy-left-aqi_observe-table_a5_table5_room4 dd))
)
(:action dummy-right-aqi_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-st3_observe-table_a3_table3_room2 dd) (inroom table3 room2) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (in a2 room4) (inroom table5 room4) (immediate-dummy-aqi_observe-table_a5_table5_room4 dd) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-aqi_observe-table_a5_table5_room4 dd)) (dummy-right-aqi_observe-table_a5_table5_room4 dd))
)
(:action act-gql_joint-lift-table_a2_a5_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-aqi_observe-table_a5_table5_room4 dd) (not (inroom table5 room4)) (inroom table3 room2) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (available a2) (in a2 room3) (Kinroom table5 room4 V_FALSE) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-gql_joint-lift-table_a2_a5_table5_room3 dd) (not (available a2)))
)
(:action act-nwi_joint-move-table_a2_a5_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-gql_joint-lift-table_a2_a5_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-nwi_joint-move-table_a2_a5_table5_room3_room4 dd) (not (pre-gql_joint-lift-table_a2_a5_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-6hs_joint-drop-table_a2_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-nwi_joint-move-table_a2_a5_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-6hs_joint-drop-table_a2_a5_table5_room4 dd) (not (pre-nwi_joint-move-table_a2_a5_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-6hs_joint-drop-table_a2_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-6hs_joint-drop-table_a2_a5_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-6hs_joint-drop-table_a2_a5_table5_room4 dd)))
)
(:action goal-achieve-right-aqi_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-aqi_observe-table_a5_table5_room4 dd) (inroom table5 room4) (inroom table3 room2) (inroom table2 room2) (inroom table4 room1) (not (inroom table1 room3)) (Kinroom table5 room4 V_TRUE) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-aqi_observe-table_a5_table5_room4 dd)))
)
(:action act-0ny_observe-table_a2_table3_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2tn_observe-table_a2_table1_room3 dd) (immediate-dummy-0ny_observe-table_a2_table3_room3 dd) (inroom table1 room3) (in a2 room3) (Kinroom table1 room3 V_TRUE) (inroom table3 room3) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_TRUE))
)
(:action act-0ny_observe-table_a2_table3_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2tn_observe-table_a2_table1_room3 dd) (immediate-dummy-0ny_observe-table_a2_table3_room3 dd) (inroom table1 room3) (in a2 room3) (Kinroom table1 room3 V_TRUE) (not (inroom table3 room3)) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_FALSE))
)
(:action act-dummy-0ny_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2tn_observe-table_a2_table1_room3 dd) (inroom table1 room3) (in a2 room3) (not (dummy-left-0ny_observe-table_a2_table3_room3 dd)) (not (dummy-right-0ny_observe-table_a2_table3_room3 dd)) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-0ny_observe-table_a2_table3_room3 dd))
)
(:action dummy-left-0ny_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2tn_observe-table_a2_table1_room3 dd) (inroom table1 room3) (in a2 room3) (not (inroom table3 room3)) (immediate-dummy-0ny_observe-table_a2_table3_room3 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table3 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-0ny_observe-table_a2_table3_room3 dd)) (dummy-left-0ny_observe-table_a2_table3_room3 dd))
)
(:action dummy-right-0ny_observe-table_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2tn_observe-table_a2_table1_room3 dd) (inroom table1 room3) (in a2 room3) (inroom table3 room3) (immediate-dummy-0ny_observe-table_a2_table3_room3 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table3 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-0ny_observe-table_a2_table3_room3 dd)) (dummy-right-0ny_observe-table_a2_table3_room3 dd))
)
(:action act-plp_observe-table_a3_table4_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0ny_observe-table_a2_table3_room3 dd) (immediate-dummy-plp_observe-table_a3_table4_room1 dd) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room1) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (inroom table4 room1) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_TRUE))
)
(:action act-plp_observe-table_a3_table4_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0ny_observe-table_a2_table3_room3 dd) (immediate-dummy-plp_observe-table_a3_table4_room1 dd) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room1) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (not (inroom table4 room1)) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_FALSE))
)
(:action act-dummy-plp_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0ny_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room1) (not (dummy-left-plp_observe-table_a3_table4_room1 dd)) (not (dummy-right-plp_observe-table_a3_table4_room1 dd)) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-plp_observe-table_a3_table4_room1 dd))
)
(:action dummy-left-plp_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0ny_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room1) (not (inroom table4 room1)) (immediate-dummy-plp_observe-table_a3_table4_room1 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-plp_observe-table_a3_table4_room1 dd)) (dummy-left-plp_observe-table_a3_table4_room1 dd))
)
(:action dummy-right-plp_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0ny_observe-table_a2_table3_room3 dd) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room1) (inroom table4 room1) (immediate-dummy-plp_observe-table_a3_table4_room1 dd) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-plp_observe-table_a3_table4_room1 dd)) (dummy-right-plp_observe-table_a3_table4_room1 dd))
)
(:action act-pai_observe-table_a5_table5_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-plp_observe-table_a3_table4_room1 dd) (immediate-dummy-pai_observe-table_a5_table5_room4 dd) (not (inroom table4 room1)) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room4) (Kinroom table4 room1 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (inroom table5 room4) (not (Kinroom table5 room4 V_TRUE)) (not (Kinroom table5 room4 V_FALSE)))
:effect 
(and (Kinroom table5 room4 V_TRUE))
)
(:action act-pai_observe-table_a5_table5_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-plp_observe-table_a3_table4_room1 dd) (immediate-dummy-pai_observe-table_a5_table5_room4 dd) (not (inroom table4 room1)) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room4) (Kinroom table4 room1 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (not (inroom table5 room4)) (not (Kinroom table5 room4 V_TRUE)) (not (Kinroom table5 room4 V_FALSE)))
:effect 
(and (Kinroom table5 room4 V_FALSE))
)
(:action act-dummy-pai_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-plp_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room4) (not (dummy-left-pai_observe-table_a5_table5_room4 dd)) (not (dummy-right-pai_observe-table_a5_table5_room4 dd)) (Kinroom table4 room1 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-pai_observe-table_a5_table5_room4 dd))
)
(:action dummy-left-pai_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-plp_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room4) (not (inroom table5 room4)) (immediate-dummy-pai_observe-table_a5_table5_room4 dd) (Kinroom table4 room1 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-pai_observe-table_a5_table5_room4 dd)) (dummy-left-pai_observe-table_a5_table5_room4 dd))
)
(:action dummy-right-pai_observe-table_a5_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-plp_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room4) (inroom table5 room4) (immediate-dummy-pai_observe-table_a5_table5_room4 dd) (Kinroom table4 room1 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-pai_observe-table_a5_table5_room4 dd)) (dummy-right-pai_observe-table_a5_table5_room4 dd))
)
(:action act-z99_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pai_observe-table_a5_table5_room4 dd) (not (inroom table5 room4)) (not (inroom table4 room1)) (not (inroom table3 room3)) (inroom table1 room3) (available a2) (in a2 room3) (Kinroom table5 room4 V_FALSE) (Kinroom table4 room1 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-z99_joint-lift-table_a2_a4_table5_room3 dd) (not (available a2)))
)
(:action act-b4f_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-z99_joint-lift-table_a2_a4_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-b4f_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-z99_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-uv2_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-b4f_joint-move-table_a2_a4_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-uv2_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-b4f_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-uv2_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-uv2_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-uv2_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-q0r_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pai_observe-table_a5_table5_room4 dd) (inroom table5 room4) (not (inroom table4 room1)) (not (inroom table3 room3)) (inroom table1 room3) (available a2) (in a2 room3) (Kinroom table5 room4 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-q0r_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-67m_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-q0r_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-67m_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-q0r_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-dob_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-67m_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-dob_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-67m_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action goal-achieve-dob_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-dob_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-dob_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-l2x_observe-table_a2_table5_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-plp_observe-table_a3_table4_room1 dd) (immediate-dummy-l2x_observe-table_a2_table5_room3 dd) (inroom table4 room1) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room3) (Kinroom table4 room1 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (inroom table5 room3) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_TRUE))
)
(:action act-l2x_observe-table_a2_table5_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-plp_observe-table_a3_table4_room1 dd) (immediate-dummy-l2x_observe-table_a2_table5_room3 dd) (inroom table4 room1) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room3) (Kinroom table4 room1 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (not (inroom table5 room3)) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_FALSE))
)
(:action act-dummy-l2x_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-plp_observe-table_a3_table4_room1 dd) (inroom table4 room1) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room3) (not (dummy-left-l2x_observe-table_a2_table5_room3 dd)) (not (dummy-right-l2x_observe-table_a2_table5_room3 dd)) (Kinroom table4 room1 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-l2x_observe-table_a2_table5_room3 dd))
)
(:action dummy-left-l2x_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-plp_observe-table_a3_table4_room1 dd) (inroom table4 room1) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room3) (not (inroom table5 room3)) (immediate-dummy-l2x_observe-table_a2_table5_room3 dd) (Kinroom table4 room1 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-l2x_observe-table_a2_table5_room3 dd)) (dummy-left-l2x_observe-table_a2_table5_room3 dd))
)
(:action dummy-right-l2x_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-plp_observe-table_a3_table4_room1 dd) (inroom table4 room1) (not (inroom table3 room3)) (inroom table1 room3) (in a2 room3) (inroom table5 room3) (immediate-dummy-l2x_observe-table_a2_table5_room3 dd) (Kinroom table4 room1 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-l2x_observe-table_a2_table5_room3 dd)) (dummy-right-l2x_observe-table_a2_table5_room3 dd))
)
(:action act-yvn_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l2x_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (inroom table4 room1) (not (inroom table3 room3)) (inroom table1 room3) (available a2) (in a2 room3) (Kinroom table5 room3 V_FALSE) (Kinroom table4 room1 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-yvn_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-jnk_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-yvn_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-jnk_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-yvn_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-pmx_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-jnk_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-pmx_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-jnk_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action goal-achieve-pmx_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-pmx_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-pmx_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-4aw_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l2x_observe-table_a2_table5_room3 dd) (inroom table5 room3) (inroom table4 room1) (not (inroom table3 room3)) (inroom table1 room3) (available a2) (in a2 room3) (Kinroom table5 room3 V_TRUE) (Kinroom table4 room1 V_TRUE) (Kinroom table3 room3 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-4aw_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-fkq_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-4aw_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-fkq_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-4aw_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-jew_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-fkq_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-jew_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-fkq_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action act-f2a_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-jew_joint-drop-table_a2_a4_table1_room4 dd) (available a2) (in a2 room3))
:effect 
(and (pre-f2a_joint-lift-table_a2_a4_table5_room3 dd) (not (pre-jew_joint-drop-table_a2_a4_table1_room4 dd)) (not (available a2)))
)
(:action act-qpr_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-f2a_joint-lift-table_a2_a4_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-qpr_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-f2a_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-b3p_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-qpr_joint-move-table_a2_a4_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-b3p_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-qpr_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-b3p_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-b3p_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-b3p_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-ll6_observe-table_a2_table5_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0ny_observe-table_a2_table3_room3 dd) (immediate-dummy-ll6_observe-table_a2_table5_room3 dd) (inroom table3 room3) (inroom table1 room3) (in a2 room3) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (inroom table5 room3) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_TRUE))
)
(:action act-ll6_observe-table_a2_table5_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0ny_observe-table_a2_table3_room3 dd) (immediate-dummy-ll6_observe-table_a2_table5_room3 dd) (inroom table3 room3) (inroom table1 room3) (in a2 room3) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (not (inroom table5 room3)) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_FALSE))
)
(:action act-dummy-ll6_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0ny_observe-table_a2_table3_room3 dd) (inroom table3 room3) (inroom table1 room3) (in a2 room3) (not (dummy-left-ll6_observe-table_a2_table5_room3 dd)) (not (dummy-right-ll6_observe-table_a2_table5_room3 dd)) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-ll6_observe-table_a2_table5_room3 dd))
)
(:action dummy-left-ll6_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0ny_observe-table_a2_table3_room3 dd) (inroom table3 room3) (inroom table1 room3) (in a2 room3) (not (inroom table5 room3)) (immediate-dummy-ll6_observe-table_a2_table5_room3 dd) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-ll6_observe-table_a2_table5_room3 dd)) (dummy-left-ll6_observe-table_a2_table5_room3 dd))
)
(:action dummy-right-ll6_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0ny_observe-table_a2_table3_room3 dd) (inroom table3 room3) (inroom table1 room3) (in a2 room3) (inroom table5 room3) (immediate-dummy-ll6_observe-table_a2_table5_room3 dd) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-ll6_observe-table_a2_table5_room3 dd)) (dummy-right-ll6_observe-table_a2_table5_room3 dd))
)
(:action act-ndh_observe-table_a3_table4_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ll6_observe-table_a2_table5_room3 dd) (immediate-dummy-ndh_observe-table_a3_table4_room1 dd) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (in a2 room1) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (inroom table4 room1) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_TRUE))
)
(:action act-ndh_observe-table_a3_table4_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ll6_observe-table_a2_table5_room3 dd) (immediate-dummy-ndh_observe-table_a3_table4_room1 dd) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (in a2 room1) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (not (inroom table4 room1)) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_FALSE))
)
(:action act-dummy-ndh_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ll6_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (in a2 room1) (not (dummy-left-ndh_observe-table_a3_table4_room1 dd)) (not (dummy-right-ndh_observe-table_a3_table4_room1 dd)) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-ndh_observe-table_a3_table4_room1 dd))
)
(:action dummy-left-ndh_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ll6_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (in a2 room1) (not (inroom table4 room1)) (immediate-dummy-ndh_observe-table_a3_table4_room1 dd) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-ndh_observe-table_a3_table4_room1 dd)) (dummy-left-ndh_observe-table_a3_table4_room1 dd))
)
(:action dummy-right-ndh_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ll6_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (in a2 room1) (inroom table4 room1) (immediate-dummy-ndh_observe-table_a3_table4_room1 dd) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-ndh_observe-table_a3_table4_room1 dd)) (dummy-right-ndh_observe-table_a3_table4_room1 dd))
)
(:action act-ubo_observe-table_a1_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ndh_observe-table_a3_table4_room1 dd) (immediate-dummy-ubo_observe-table_a1_table2_room1 dd) (not (inroom table4 room1)) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (in a2 room1) (Kinroom table4 room1 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-ubo_observe-table_a1_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ndh_observe-table_a3_table4_room1 dd) (immediate-dummy-ubo_observe-table_a1_table2_room1 dd) (not (inroom table4 room1)) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (in a2 room1) (Kinroom table4 room1 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-ubo_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ndh_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (in a2 room1) (not (dummy-left-ubo_observe-table_a1_table2_room1 dd)) (not (dummy-right-ubo_observe-table_a1_table2_room1 dd)) (Kinroom table4 room1 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-ubo_observe-table_a1_table2_room1 dd))
)
(:action dummy-left-ubo_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ndh_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (in a2 room1) (not (inroom table2 room1)) (immediate-dummy-ubo_observe-table_a1_table2_room1 dd) (Kinroom table4 room1 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-ubo_observe-table_a1_table2_room1 dd)) (dummy-left-ubo_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-ubo_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ndh_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (in a2 room1) (inroom table2 room1) (immediate-dummy-ubo_observe-table_a1_table2_room1 dd) (Kinroom table4 room1 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-ubo_observe-table_a1_table2_room1 dd)) (dummy-right-ubo_observe-table_a1_table2_room1 dd))
)
(:action act-v2q_joint-lift-table_a2_a4_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ubo_observe-table_a1_table2_room1 dd) (not (inroom table2 room1)) (not (inroom table4 room1)) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (available a2) (in a2 room2) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room1 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-v2q_joint-lift-table_a2_a4_table2_room2 dd) (not (available a2)))
)
(:action act-5fi_joint-move-table_a2_a4_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-v2q_joint-lift-table_a2_a4_table2_room2 dd) (in a2 room2))
:effect 
(and (pre-5fi_joint-move-table_a2_a4_table2_room2_room1 dd) (not (pre-v2q_joint-lift-table_a2_a4_table2_room2 dd)) (not (in a2 room2)) (in a2 room1))
)
(:action act-ew0_joint-drop-table_a2_a4_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-5fi_joint-move-table_a2_a4_table2_room2_room1 dd) (in a2 room1))
:effect 
(and (pre-ew0_joint-drop-table_a2_a4_table2_room1 dd) (not (pre-5fi_joint-move-table_a2_a4_table2_room2_room1 dd)) (available a2))
)
(:action goal-achieve-ew0_joint-drop-table_a2_a4_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ew0_joint-drop-table_a2_a4_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-ew0_joint-drop-table_a2_a4_table2_room1 dd)))
)
(:action act-41x_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ubo_observe-table_a1_table2_room1 dd) (inroom table2 room1) (not (inroom table4 room1)) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (available a2) (in a2 room3) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room1 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-41x_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-54k_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-41x_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-54k_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-41x_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-pga_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-54k_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-pga_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-54k_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action act-xhg_joint-lift-table_a2_a4_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-pga_joint-drop-table_a2_a4_table1_room4 dd) (available a2) (in a2 room3))
:effect 
(and (pre-xhg_joint-lift-table_a2_a4_table3_room3 dd) (not (pre-pga_joint-drop-table_a2_a4_table1_room4 dd)) (not (available a2)))
)
(:action act-6it_joint-move-table_a2_a4_table3_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-xhg_joint-lift-table_a2_a4_table3_room3 dd) (in a2 room3))
:effect 
(and (pre-6it_joint-move-table_a2_a4_table3_room3_room2 dd) (not (pre-xhg_joint-lift-table_a2_a4_table3_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-5db_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-6it_joint-move-table_a2_a4_table3_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-5db_joint-drop-table_a2_a4_table3_room2 dd) (not (pre-6it_joint-move-table_a2_a4_table3_room3_room2 dd)) (available a2))
)
(:action goal-achieve-5db_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-5db_joint-drop-table_a2_a4_table3_room2 dd))
:effect 
(and (done-goal dd) (not (pre-5db_joint-drop-table_a2_a4_table3_room2 dd)))
)
(:action act-1q6_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ndh_observe-table_a3_table4_room1 dd) (inroom table4 room1) (not (inroom table5 room3)) (inroom table3 room3) (inroom table1 room3) (available a2) (in a2 room3) (Kinroom table4 room1 V_TRUE) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-1q6_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-oui_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-1q6_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-oui_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-1q6_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-cxl_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-oui_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-cxl_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-oui_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action act-fkw_joint-lift-table_a2_a4_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-cxl_joint-drop-table_a2_a4_table1_room4 dd) (available a2) (in a2 room3))
:effect 
(and (pre-fkw_joint-lift-table_a2_a4_table3_room3 dd) (not (pre-cxl_joint-drop-table_a2_a4_table1_room4 dd)) (not (available a2)))
)
(:action act-1m2_joint-move-table_a2_a4_table3_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-fkw_joint-lift-table_a2_a4_table3_room3 dd) (in a2 room3))
:effect 
(and (pre-1m2_joint-move-table_a2_a4_table3_room3_room2 dd) (not (pre-fkw_joint-lift-table_a2_a4_table3_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-0gc_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-1m2_joint-move-table_a2_a4_table3_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-0gc_joint-drop-table_a2_a4_table3_room2 dd) (not (pre-1m2_joint-move-table_a2_a4_table3_room3_room2 dd)) (available a2))
)
(:action goal-achieve-0gc_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-0gc_joint-drop-table_a2_a4_table3_room2 dd))
:effect 
(and (done-goal dd) (not (pre-0gc_joint-drop-table_a2_a4_table3_room2 dd)))
)
(:action act-1qr_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ll6_observe-table_a2_table5_room3 dd) (inroom table5 room3) (inroom table3 room3) (inroom table1 room3) (available a2) (in a2 room3) (Kinroom table5 room3 V_TRUE) (Kinroom table3 room3 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-1qr_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-w87_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-1qr_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-w87_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-1qr_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-h73_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-w87_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-h73_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-w87_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action act-hzu_joint-lift-table_a2_a4_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-h73_joint-drop-table_a2_a4_table1_room4 dd) (available a2) (in a2 room3))
:effect 
(and (pre-hzu_joint-lift-table_a2_a4_table3_room3 dd) (not (pre-h73_joint-drop-table_a2_a4_table1_room4 dd)) (not (available a2)))
)
(:action act-69b_joint-move-table_a2_a4_table3_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-hzu_joint-lift-table_a2_a4_table3_room3 dd) (in a2 room3))
:effect 
(and (pre-69b_joint-move-table_a2_a4_table3_room3_room2 dd) (not (pre-hzu_joint-lift-table_a2_a4_table3_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-hng_joint-drop-table_a2_a4_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-69b_joint-move-table_a2_a4_table3_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-hng_joint-drop-table_a2_a4_table3_room2 dd) (not (pre-69b_joint-move-table_a2_a4_table3_room3_room2 dd)) (available a2))
)
(:action act-3pg_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-hng_joint-drop-table_a2_a4_table3_room2 dd) (available a2) (in a2 room3))
:effect 
(and (pre-3pg_joint-lift-table_a2_a4_table5_room3 dd) (not (pre-hng_joint-drop-table_a2_a4_table3_room2 dd)) (not (available a2)))
)
(:action act-o3g_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-3pg_joint-lift-table_a2_a4_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-o3g_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-3pg_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-8k6_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-o3g_joint-move-table_a2_a4_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-8k6_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-o3g_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-8k6_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-8k6_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-8k6_joint-drop-table_a2_a4_table5_room4 dd)))
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
