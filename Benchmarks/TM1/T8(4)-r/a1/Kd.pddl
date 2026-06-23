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
(init-oms_observe-table_a4_table4_room7 ?dd - dummy)
(immediate-dummy-oms_observe-table_a4_table4_room7 ?dd - dummy)
(dummy-left-oms_observe-table_a4_table4_room7 ?dd - dummy)
(immediate-dummy-hiv_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-hiv_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-p9b_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-p9b_observe-table_a1_table2_room2 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-p9b_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-x90_observe-table_a3_table3_room4 ?dd - dummy)
(dummy-left-x90_observe-table_a3_table3_room4 ?dd - dummy)
(pre-cls_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-eu3_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-7hv_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-x90_observe-table_a3_table3_room4 ?dd - dummy)
(pre-5kn_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-pl9_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-ypb_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(pre-vrp_joint-lift-table_a1_a2_table3_room4 ?dd - dummy)
(pre-fk7_joint-move-table_a1_a2_table3_room4_room3 ?dd - dummy)
(pre-5um_joint-drop-table_a1_a2_table3_room3 ?dd - dummy)
(dummy-right-hiv_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-mda_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-mda_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-rn2_observe-table_a1_table3_room3 ?dd - dummy)
(dummy-left-rn2_observe-table_a1_table3_room3 ?dd - dummy)
(pre-tcn_joint-lift-table_a1_a2_table1_room3 ?dd - dummy)
(pre-p32_joint-move-table_a1_a2_table1_room3_room4 ?dd - dummy)
(pre-1ty_joint-drop-table_a1_a2_table1_room4 ?dd - dummy)
(pre-gsb_joint-lift-table_a1_a2_table3_room4 ?dd - dummy)
(pre-e27_joint-move-table_a1_a2_table3_room4_room3 ?dd - dummy)
(pre-w0t_joint-drop-table_a1_a2_table3_room3 ?dd - dummy)
(dummy-right-rn2_observe-table_a1_table3_room3 ?dd - dummy)
(pre-9br_joint-lift-table_a1_a2_table1_room3 ?dd - dummy)
(pre-k6a_joint-move-table_a1_a2_table1_room3_room4 ?dd - dummy)
(pre-via_joint-drop-table_a1_a2_table1_room4 ?dd - dummy)
(dummy-right-mda_observe-table_a1_table2_room2 ?dd - dummy)
(pre-qud_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-vo7_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-v5j_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-oms_observe-table_a4_table4_room7 ?dd - dummy)
(immediate-dummy-vjw_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-vjw_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-j48_observe-table_a2_table2_room2 ?dd - dummy)
(dummy-left-j48_observe-table_a2_table2_room2 ?dd - dummy)
(immediate-dummy-182_observe-table_a3_table3_room4 ?dd - dummy)
(dummy-left-182_observe-table_a3_table3_room4 ?dd - dummy)
(dummy-right-182_observe-table_a3_table3_room4 ?dd - dummy)
(pre-512_joint-lift-table_a1_a2_table3_room4 ?dd - dummy)
(pre-p0n_joint-move-table_a1_a2_table3_room4_room3 ?dd - dummy)
(pre-qrm_joint-drop-table_a1_a2_table3_room3 ?dd - dummy)
(dummy-right-j48_observe-table_a2_table2_room2 ?dd - dummy)
(pre-kjf_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-n3u_joint-move-table_a1_a2_table2_room2_room3 ?dd - dummy)
(pre-2k8_joint-move-table_a1_a2_table2_room3_room4 ?dd - dummy)
(immediate-dummy-uve_observe-table_a2_table3_room4 ?dd - dummy)
(dummy-left-uve_observe-table_a2_table3_room4 ?dd - dummy)
(pre-et7_joint-move-table_a1_a2_table2_room4_room3 ?dd - dummy)
(pre-ybq_joint-move-table_a2_a1_table2_room3_room2 ?dd - dummy)
(pre-7zh_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-ss8_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(dummy-right-uve_observe-table_a2_table3_room4 ?dd - dummy)
(pre-izr_joint-move-table_a1_a2_table2_room4_room3 ?dd - dummy)
(pre-hb3_joint-move-table_a2_a1_table2_room3_room2 ?dd - dummy)
(pre-0e6_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-vlv_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(pre-diq_joint-lift-table_a1_a2_table3_room4 ?dd - dummy)
(pre-brt_joint-move-table_a1_a2_table3_room4_room3 ?dd - dummy)
(pre-agm_joint-drop-table_a1_a2_table3_room3 ?dd - dummy)
(dummy-right-vjw_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-y1i_observe-table_a2_table3_room4 ?dd - dummy)
(dummy-left-y1i_observe-table_a2_table3_room4 ?dd - dummy)
(immediate-dummy-50z_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-50z_observe-table_a1_table2_room2 ?dd - dummy)
(pre-7t1_joint-lift-table_a1_a2_table1_room3 ?dd - dummy)
(pre-e10_joint-move-table_a1_a2_table1_room3_room4 ?dd - dummy)
(pre-gfe_joint-drop-table_a1_a2_table1_room4 ?dd - dummy)
(dummy-right-50z_observe-table_a1_table2_room2 ?dd - dummy)
(pre-dui_joint-lift-table_a1_a2_table1_room3 ?dd - dummy)
(pre-e4r_joint-move-table_a1_a2_table1_room3_room4 ?dd - dummy)
(pre-hth_joint-drop-table_a1_a2_table1_room4 ?dd - dummy)
(pre-lu2_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-a6i_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-xsm_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(dummy-right-y1i_observe-table_a2_table3_room4 ?dd - dummy)
(immediate-dummy-vu8_observe-table_a1_table2_room1 ?dd - dummy)
(dummy-left-vu8_observe-table_a1_table2_room1 ?dd - dummy)
(pre-jml_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-e3v_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-fqt_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-vu8_observe-table_a1_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-oms_observe-table_a4_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (init-oms_observe-table_a4_table4_room7 dd) (immediate-dummy-oms_observe-table_a4_table4_room7 dd) (in a1 room7) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-oms_observe-table_a4_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (init-oms_observe-table_a4_table4_room7 dd) (immediate-dummy-oms_observe-table_a4_table4_room7 dd) (in a1 room7) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-oms_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (init-oms_observe-table_a4_table4_room7 dd) (not (dummy-left-oms_observe-table_a4_table4_room7 dd)) (not (dummy-right-oms_observe-table_a4_table4_room7 dd)))
:effect 
(and (immediate-dummy-oms_observe-table_a4_table4_room7 dd))
)
(:action dummy-left-oms_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (init-oms_observe-table_a4_table4_room7 dd) (in a1 room7) (not (inroom table4 room7)) (immediate-dummy-oms_observe-table_a4_table4_room7 dd) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (init-oms_observe-table_a4_table4_room7 dd)) (not (immediate-dummy-oms_observe-table_a4_table4_room7 dd)) (dummy-left-oms_observe-table_a4_table4_room7 dd))
)
(:action dummy-right-oms_observe-table_a4_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (init-oms_observe-table_a4_table4_room7 dd) (in a1 room7) (inroom table4 room7) (immediate-dummy-oms_observe-table_a4_table4_room7 dd) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (init-oms_observe-table_a4_table4_room7 dd)) (not (immediate-dummy-oms_observe-table_a4_table4_room7 dd)) (dummy-right-oms_observe-table_a4_table4_room7 dd))
)
(:action act-hiv_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oms_observe-table_a4_table4_room7 dd) (immediate-dummy-hiv_observe-table_a2_table1_room3 dd) (not (inroom table4 room7)) (in a1 room3) (Kinroom table4 room7 V_FALSE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-hiv_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oms_observe-table_a4_table4_room7 dd) (immediate-dummy-hiv_observe-table_a2_table1_room3 dd) (not (inroom table4 room7)) (in a1 room3) (Kinroom table4 room7 V_FALSE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-hiv_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oms_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (in a1 room3) (not (dummy-left-hiv_observe-table_a2_table1_room3 dd)) (not (dummy-right-hiv_observe-table_a2_table1_room3 dd)) (Kinroom table4 room7 V_FALSE))
:effect 
(and (immediate-dummy-hiv_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-hiv_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oms_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (in a1 room3) (not (inroom table1 room3)) (immediate-dummy-hiv_observe-table_a2_table1_room3 dd) (Kinroom table4 room7 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-hiv_observe-table_a2_table1_room3 dd)) (dummy-left-hiv_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-hiv_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oms_observe-table_a4_table4_room7 dd) (not (inroom table4 room7)) (in a1 room3) (inroom table1 room3) (immediate-dummy-hiv_observe-table_a2_table1_room3 dd) (Kinroom table4 room7 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-hiv_observe-table_a2_table1_room3 dd)) (dummy-right-hiv_observe-table_a2_table1_room3 dd))
)
(:action act-p9b_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hiv_observe-table_a2_table1_room3 dd) (immediate-dummy-p9b_observe-table_a1_table2_room2 dd) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a1 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-p9b_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hiv_observe-table_a2_table1_room3 dd) (immediate-dummy-p9b_observe-table_a1_table2_room2 dd) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a1 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-p9b_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hiv_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a1 room2) (not (dummy-left-p9b_observe-table_a1_table2_room2 dd)) (not (dummy-right-p9b_observe-table_a1_table2_room2 dd)) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (immediate-dummy-p9b_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-p9b_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hiv_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-p9b_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-p9b_observe-table_a1_table2_room2 dd)) (dummy-left-p9b_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-p9b_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hiv_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a1 room2) (inroom table2 room2) (immediate-dummy-p9b_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-p9b_observe-table_a1_table2_room2 dd)) (dummy-right-p9b_observe-table_a1_table2_room2 dd))
)
(:action goal-achieve-left-p9b_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-p9b_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (not (inroom table4 room7)) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-p9b_observe-table_a1_table2_room2 dd)))
)
(:action act-x90_observe-table_a3_table3_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p9b_observe-table_a1_table2_room2 dd) (immediate-dummy-x90_observe-table_a3_table3_room4 dd) (inroom table2 room2) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a1 room4) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (inroom table3 room4) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_TRUE))
)
(:action act-x90_observe-table_a3_table3_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p9b_observe-table_a1_table2_room2 dd) (immediate-dummy-x90_observe-table_a3_table3_room4 dd) (inroom table2 room2) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a1 room4) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (not (inroom table3 room4)) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_FALSE))
)
(:action act-dummy-x90_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p9b_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a1 room4) (not (dummy-left-x90_observe-table_a3_table3_room4 dd)) (not (dummy-right-x90_observe-table_a3_table3_room4 dd)) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (immediate-dummy-x90_observe-table_a3_table3_room4 dd))
)
(:action dummy-left-x90_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p9b_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a1 room4) (not (inroom table3 room4)) (immediate-dummy-x90_observe-table_a3_table3_room4 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (Kinroom table3 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-x90_observe-table_a3_table3_room4 dd)) (dummy-left-x90_observe-table_a3_table3_room4 dd))
)
(:action dummy-right-x90_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p9b_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (not (inroom table4 room7)) (in a1 room4) (inroom table3 room4) (immediate-dummy-x90_observe-table_a3_table3_room4 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE) (Kinroom table3 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-x90_observe-table_a3_table3_room4 dd)) (dummy-right-x90_observe-table_a3_table3_room4 dd))
)
(:action act-cls_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-x90_observe-table_a3_table3_room4 dd) (not (inroom table3 room4)) (inroom table2 room2) (not (inroom table1 room3)) (not (inroom table4 room7)) (available a1) (in a1 room2) (Kinroom table3 room4 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (pre-cls_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-eu3_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-cls_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-eu3_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-cls_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-7hv_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-eu3_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-7hv_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-eu3_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-7hv_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-7hv_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-7hv_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-5kn_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-x90_observe-table_a3_table3_room4 dd) (inroom table3 room4) (inroom table2 room2) (not (inroom table1 room3)) (not (inroom table4 room7)) (available a1) (in a1 room2) (Kinroom table3 room4 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (pre-5kn_joint-lift-table_a1_a2_table2_room2 dd) (not (available a1)))
)
(:action act-pl9_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-5kn_joint-lift-table_a1_a2_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-pl9_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-5kn_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-ypb_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-pl9_joint-move-table_a1_a2_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-ypb_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-pl9_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a1))
)
(:action act-vrp_joint-lift-table_a1_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ypb_joint-drop-table_a1_a2_table2_room1 dd) (available a1) (in a1 room4))
:effect 
(and (pre-vrp_joint-lift-table_a1_a2_table3_room4 dd) (not (pre-ypb_joint-drop-table_a1_a2_table2_room1 dd)) (not (available a1)))
)
(:action act-fk7_joint-move-table_a1_a2_table3_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-vrp_joint-lift-table_a1_a2_table3_room4 dd) (in a1 room4))
:effect 
(and (pre-fk7_joint-move-table_a1_a2_table3_room4_room3 dd) (not (pre-vrp_joint-lift-table_a1_a2_table3_room4 dd)) (not (in a1 room4)) (in a1 room3))
)
(:action act-5um_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-fk7_joint-move-table_a1_a2_table3_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-5um_joint-drop-table_a1_a2_table3_room3 dd) (not (pre-fk7_joint-move-table_a1_a2_table3_room4_room3 dd)) (available a1))
)
(:action goal-achieve-5um_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-5um_joint-drop-table_a1_a2_table3_room3 dd))
:effect 
(and (done-goal dd) (not (pre-5um_joint-drop-table_a1_a2_table3_room3 dd)))
)
(:action act-mda_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hiv_observe-table_a2_table1_room3 dd) (immediate-dummy-mda_observe-table_a1_table2_room2 dd) (inroom table1 room3) (not (inroom table4 room7)) (in a1 room2) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-mda_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hiv_observe-table_a2_table1_room3 dd) (immediate-dummy-mda_observe-table_a1_table2_room2 dd) (inroom table1 room3) (not (inroom table4 room7)) (in a1 room2) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-mda_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hiv_observe-table_a2_table1_room3 dd) (inroom table1 room3) (not (inroom table4 room7)) (in a1 room2) (not (dummy-left-mda_observe-table_a1_table2_room2 dd)) (not (dummy-right-mda_observe-table_a1_table2_room2 dd)) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (immediate-dummy-mda_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-mda_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hiv_observe-table_a2_table1_room3 dd) (inroom table1 room3) (not (inroom table4 room7)) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-mda_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-mda_observe-table_a1_table2_room2 dd)) (dummy-left-mda_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-mda_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hiv_observe-table_a2_table1_room3 dd) (inroom table1 room3) (not (inroom table4 room7)) (in a1 room2) (inroom table2 room2) (immediate-dummy-mda_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-mda_observe-table_a1_table2_room2 dd)) (dummy-right-mda_observe-table_a1_table2_room2 dd))
)
(:action act-rn2_observe-table_a1_table3_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mda_observe-table_a1_table2_room2 dd) (immediate-dummy-rn2_observe-table_a1_table3_room3 dd) (not (inroom table2 room2)) (inroom table1 room3) (not (inroom table4 room7)) (in a1 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE) (inroom table3 room3) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_TRUE))
)
(:action act-rn2_observe-table_a1_table3_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mda_observe-table_a1_table2_room2 dd) (immediate-dummy-rn2_observe-table_a1_table3_room3 dd) (not (inroom table2 room2)) (inroom table1 room3) (not (inroom table4 room7)) (in a1 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE) (not (inroom table3 room3)) (not (Kinroom table3 room3 V_TRUE)) (not (Kinroom table3 room3 V_FALSE)))
:effect 
(and (Kinroom table3 room3 V_FALSE))
)
(:action act-dummy-rn2_observe-table_a1_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mda_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room3) (not (inroom table4 room7)) (in a1 room3) (not (dummy-left-rn2_observe-table_a1_table3_room3 dd)) (not (dummy-right-rn2_observe-table_a1_table3_room3 dd)) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (immediate-dummy-rn2_observe-table_a1_table3_room3 dd))
)
(:action dummy-left-rn2_observe-table_a1_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mda_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room3) (not (inroom table4 room7)) (in a1 room3) (not (inroom table3 room3)) (immediate-dummy-rn2_observe-table_a1_table3_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE) (Kinroom table3 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-rn2_observe-table_a1_table3_room3 dd)) (dummy-left-rn2_observe-table_a1_table3_room3 dd))
)
(:action dummy-right-rn2_observe-table_a1_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mda_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room3) (not (inroom table4 room7)) (in a1 room3) (inroom table3 room3) (immediate-dummy-rn2_observe-table_a1_table3_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE) (Kinroom table3 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-rn2_observe-table_a1_table3_room3 dd)) (dummy-right-rn2_observe-table_a1_table3_room3 dd))
)
(:action act-tcn_joint-lift-table_a1_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rn2_observe-table_a1_table3_room3 dd) (not (inroom table3 room3)) (not (inroom table2 room2)) (inroom table1 room3) (not (inroom table4 room7)) (available a1) (in a1 room3) (Kinroom table3 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (pre-tcn_joint-lift-table_a1_a2_table1_room3 dd) (not (available a1)))
)
(:action act-p32_joint-move-table_a1_a2_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-tcn_joint-lift-table_a1_a2_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-p32_joint-move-table_a1_a2_table1_room3_room4 dd) (not (pre-tcn_joint-lift-table_a1_a2_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-1ty_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-p32_joint-move-table_a1_a2_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-1ty_joint-drop-table_a1_a2_table1_room4 dd) (not (pre-p32_joint-move-table_a1_a2_table1_room3_room4 dd)) (available a1))
)
(:action act-gsb_joint-lift-table_a1_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-1ty_joint-drop-table_a1_a2_table1_room4 dd) (available a1) (in a1 room4))
:effect 
(and (pre-gsb_joint-lift-table_a1_a2_table3_room4 dd) (not (pre-1ty_joint-drop-table_a1_a2_table1_room4 dd)) (not (available a1)))
)
(:action act-e27_joint-move-table_a1_a2_table3_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-gsb_joint-lift-table_a1_a2_table3_room4 dd) (in a1 room4))
:effect 
(and (pre-e27_joint-move-table_a1_a2_table3_room4_room3 dd) (not (pre-gsb_joint-lift-table_a1_a2_table3_room4 dd)) (not (in a1 room4)) (in a1 room3))
)
(:action act-w0t_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-e27_joint-move-table_a1_a2_table3_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-w0t_joint-drop-table_a1_a2_table3_room3 dd) (not (pre-e27_joint-move-table_a1_a2_table3_room4_room3 dd)) (available a1))
)
(:action goal-achieve-w0t_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-w0t_joint-drop-table_a1_a2_table3_room3 dd))
:effect 
(and (done-goal dd) (not (pre-w0t_joint-drop-table_a1_a2_table3_room3 dd)))
)
(:action act-9br_joint-lift-table_a1_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-rn2_observe-table_a1_table3_room3 dd) (inroom table3 room3) (not (inroom table2 room2)) (inroom table1 room3) (not (inroom table4 room7)) (available a1) (in a1 room3) (Kinroom table3 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (pre-9br_joint-lift-table_a1_a2_table1_room3 dd) (not (available a1)))
)
(:action act-k6a_joint-move-table_a1_a2_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-9br_joint-lift-table_a1_a2_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-k6a_joint-move-table_a1_a2_table1_room3_room4 dd) (not (pre-9br_joint-lift-table_a1_a2_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-via_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-k6a_joint-move-table_a1_a2_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-via_joint-drop-table_a1_a2_table1_room4 dd) (not (pre-k6a_joint-move-table_a1_a2_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-via_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-via_joint-drop-table_a1_a2_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-via_joint-drop-table_a1_a2_table1_room4 dd)))
)
(:action act-qud_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mda_observe-table_a1_table2_room2 dd) (inroom table2 room2) (inroom table1 room3) (not (inroom table4 room7)) (available a1) (in a1 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (pre-qud_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-vo7_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-qud_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-vo7_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-qud_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-v5j_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-vo7_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-v5j_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-vo7_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-v5j_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-v5j_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-v5j_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-vjw_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oms_observe-table_a4_table4_room7 dd) (immediate-dummy-vjw_observe-table_a2_table1_room3 dd) (inroom table4 room7) (in a1 room3) (Kinroom table4 room7 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-vjw_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oms_observe-table_a4_table4_room7 dd) (immediate-dummy-vjw_observe-table_a2_table1_room3 dd) (inroom table4 room7) (in a1 room3) (Kinroom table4 room7 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-vjw_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oms_observe-table_a4_table4_room7 dd) (inroom table4 room7) (in a1 room3) (not (dummy-left-vjw_observe-table_a2_table1_room3 dd)) (not (dummy-right-vjw_observe-table_a2_table1_room3 dd)) (Kinroom table4 room7 V_TRUE))
:effect 
(and (immediate-dummy-vjw_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-vjw_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oms_observe-table_a4_table4_room7 dd) (inroom table4 room7) (in a1 room3) (not (inroom table1 room3)) (immediate-dummy-vjw_observe-table_a2_table1_room3 dd) (Kinroom table4 room7 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-vjw_observe-table_a2_table1_room3 dd)) (dummy-left-vjw_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-vjw_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oms_observe-table_a4_table4_room7 dd) (inroom table4 room7) (in a1 room3) (inroom table1 room3) (immediate-dummy-vjw_observe-table_a2_table1_room3 dd) (Kinroom table4 room7 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-vjw_observe-table_a2_table1_room3 dd)) (dummy-right-vjw_observe-table_a2_table1_room3 dd))
)
(:action act-j48_observe-table_a2_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vjw_observe-table_a2_table1_room3 dd) (immediate-dummy-j48_observe-table_a2_table2_room2 dd) (not (inroom table1 room3)) (inroom table4 room7) (in a1 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-j48_observe-table_a2_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vjw_observe-table_a2_table1_room3 dd) (immediate-dummy-j48_observe-table_a2_table2_room2 dd) (not (inroom table1 room3)) (inroom table4 room7) (in a1 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-j48_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vjw_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (inroom table4 room7) (in a1 room2) (not (dummy-left-j48_observe-table_a2_table2_room2 dd)) (not (dummy-right-j48_observe-table_a2_table2_room2 dd)) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (immediate-dummy-j48_observe-table_a2_table2_room2 dd))
)
(:action dummy-left-j48_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vjw_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (inroom table4 room7) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-j48_observe-table_a2_table2_room2 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-j48_observe-table_a2_table2_room2 dd)) (dummy-left-j48_observe-table_a2_table2_room2 dd))
)
(:action dummy-right-j48_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vjw_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (inroom table4 room7) (in a1 room2) (inroom table2 room2) (immediate-dummy-j48_observe-table_a2_table2_room2 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-j48_observe-table_a2_table2_room2 dd)) (dummy-right-j48_observe-table_a2_table2_room2 dd))
)
(:action act-182_observe-table_a3_table3_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j48_observe-table_a2_table2_room2 dd) (immediate-dummy-182_observe-table_a3_table3_room4 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (inroom table4 room7) (in a1 room4) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (inroom table3 room4) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_TRUE))
)
(:action act-182_observe-table_a3_table3_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j48_observe-table_a2_table2_room2 dd) (immediate-dummy-182_observe-table_a3_table3_room4 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (inroom table4 room7) (in a1 room4) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (not (inroom table3 room4)) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_FALSE))
)
(:action act-dummy-182_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j48_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (inroom table4 room7) (in a1 room4) (not (dummy-left-182_observe-table_a3_table3_room4 dd)) (not (dummy-right-182_observe-table_a3_table3_room4 dd)) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (immediate-dummy-182_observe-table_a3_table3_room4 dd))
)
(:action dummy-left-182_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j48_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (inroom table4 room7) (in a1 room4) (not (inroom table3 room4)) (immediate-dummy-182_observe-table_a3_table3_room4 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (Kinroom table3 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-182_observe-table_a3_table3_room4 dd)) (dummy-left-182_observe-table_a3_table3_room4 dd))
)
(:action dummy-right-182_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j48_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room3)) (inroom table4 room7) (in a1 room4) (inroom table3 room4) (immediate-dummy-182_observe-table_a3_table3_room4 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE) (Kinroom table3 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-182_observe-table_a3_table3_room4 dd)) (dummy-right-182_observe-table_a3_table3_room4 dd))
)
(:action goal-achieve-left-182_observe-table_a3_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-182_observe-table_a3_table3_room4 dd) (not (inroom table3 room4)) (not (inroom table2 room2)) (not (inroom table1 room3)) (inroom table4 room7) (Kinroom table3 room4 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-182_observe-table_a3_table3_room4 dd)))
)
(:action act-512_joint-lift-table_a1_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-182_observe-table_a3_table3_room4 dd) (inroom table3 room4) (not (inroom table2 room2)) (not (inroom table1 room3)) (inroom table4 room7) (available a1) (in a1 room4) (Kinroom table3 room4 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (pre-512_joint-lift-table_a1_a2_table3_room4 dd) (not (available a1)))
)
(:action act-p0n_joint-move-table_a1_a2_table3_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-512_joint-lift-table_a1_a2_table3_room4 dd) (in a1 room4))
:effect 
(and (pre-p0n_joint-move-table_a1_a2_table3_room4_room3 dd) (not (pre-512_joint-lift-table_a1_a2_table3_room4 dd)) (not (in a1 room4)) (in a1 room3))
)
(:action act-qrm_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-p0n_joint-move-table_a1_a2_table3_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-qrm_joint-drop-table_a1_a2_table3_room3 dd) (not (pre-p0n_joint-move-table_a1_a2_table3_room4_room3 dd)) (available a1))
)
(:action goal-achieve-qrm_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-qrm_joint-drop-table_a1_a2_table3_room3 dd))
:effect 
(and (done-goal dd) (not (pre-qrm_joint-drop-table_a1_a2_table3_room3 dd)))
)
(:action act-kjf_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j48_observe-table_a2_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room3)) (inroom table4 room7) (available a1) (in a1 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (pre-kjf_joint-lift-table_a1_a2_table2_room2 dd) (not (available a1)))
)
(:action act-n3u_joint-move-table_a1_a2_table2_room2_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-kjf_joint-lift-table_a1_a2_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-n3u_joint-move-table_a1_a2_table2_room2_room3 dd) (not (pre-kjf_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a1 room2)) (in a1 room3))
)
(:action act-2k8_joint-move-table_a1_a2_table2_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-n3u_joint-move-table_a1_a2_table2_room2_room3 dd) (in a1 room3))
:effect 
(and (pre-2k8_joint-move-table_a1_a2_table2_room3_room4 dd) (not (pre-n3u_joint-move-table_a1_a2_table2_room2_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-uve_observe-table_a2_table3_room4-T
:parameters ( ?a - agent)
:precondition 
(and (pre-2k8_joint-move-table_a1_a2_table2_room3_room4 dd) (immediate-dummy-uve_observe-table_a2_table3_room4 dd) (in a1 room4) (inroom table3 room4) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_TRUE))
)
(:action act-uve_observe-table_a2_table3_room4-F
:parameters ( ?a - agent)
:precondition 
(and (pre-2k8_joint-move-table_a1_a2_table2_room3_room4 dd) (immediate-dummy-uve_observe-table_a2_table3_room4 dd) (in a1 room4) (not (inroom table3 room4)) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_FALSE))
)
(:action act-dummy-uve_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-2k8_joint-move-table_a1_a2_table2_room3_room4 dd) (in a1 room4) (not (dummy-left-uve_observe-table_a2_table3_room4 dd)) (not (dummy-right-uve_observe-table_a2_table3_room4 dd)))
:effect 
(and (immediate-dummy-uve_observe-table_a2_table3_room4 dd))
)
(:action dummy-left-uve_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (in a1 room4) (not (inroom table3 room4)) (immediate-dummy-uve_observe-table_a2_table3_room4 dd) (Kinroom table3 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-uve_observe-table_a2_table3_room4 dd)) (dummy-left-uve_observe-table_a2_table3_room4 dd))
)
(:action dummy-right-uve_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (in a1 room4) (inroom table3 room4) (immediate-dummy-uve_observe-table_a2_table3_room4 dd) (Kinroom table3 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-uve_observe-table_a2_table3_room4 dd)) (dummy-right-uve_observe-table_a2_table3_room4 dd))
)
(:action act-et7_joint-move-table_a1_a2_table2_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-uve_observe-table_a2_table3_room4 dd) (not (inroom table3 room4)) (in a1 room4) (Kinroom table3 room4 V_FALSE))
:effect 
(and (pre-et7_joint-move-table_a1_a2_table2_room4_room3 dd) (not (in a1 room4)) (in a1 room3))
)
(:action act-ybq_joint-move-table_a2_a1_table2_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-et7_joint-move-table_a1_a2_table2_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-ybq_joint-move-table_a2_a1_table2_room3_room2 dd) (not (pre-et7_joint-move-table_a1_a2_table2_room4_room3 dd)) (not (in a1 room3)) (in a1 room2))
)
(:action act-7zh_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ybq_joint-move-table_a2_a1_table2_room3_room2 dd) (in a1 room2))
:effect 
(and (pre-7zh_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-ybq_joint-move-table_a2_a1_table2_room3_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-ss8_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-7zh_joint-move-table_a1_a2_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-ss8_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-7zh_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-ss8_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ss8_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-ss8_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action act-izr_joint-move-table_a1_a2_table2_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-uve_observe-table_a2_table3_room4 dd) (inroom table3 room4) (in a1 room4) (Kinroom table3 room4 V_TRUE))
:effect 
(and (pre-izr_joint-move-table_a1_a2_table2_room4_room3 dd) (not (in a1 room4)) (in a1 room3))
)
(:action act-hb3_joint-move-table_a2_a1_table2_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-izr_joint-move-table_a1_a2_table2_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-hb3_joint-move-table_a2_a1_table2_room3_room2 dd) (not (pre-izr_joint-move-table_a1_a2_table2_room4_room3 dd)) (not (in a1 room3)) (in a1 room2))
)
(:action act-0e6_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-hb3_joint-move-table_a2_a1_table2_room3_room2 dd) (in a1 room2))
:effect 
(and (pre-0e6_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-hb3_joint-move-table_a2_a1_table2_room3_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-vlv_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-0e6_joint-move-table_a1_a2_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-vlv_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-0e6_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a1))
)
(:action act-diq_joint-lift-table_a1_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-vlv_joint-drop-table_a1_a2_table2_room1 dd) (available a1) (in a1 room4))
:effect 
(and (pre-diq_joint-lift-table_a1_a2_table3_room4 dd) (not (pre-vlv_joint-drop-table_a1_a2_table2_room1 dd)) (not (available a1)))
)
(:action act-brt_joint-move-table_a1_a2_table3_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-diq_joint-lift-table_a1_a2_table3_room4 dd) (in a1 room4))
:effect 
(and (pre-brt_joint-move-table_a1_a2_table3_room4_room3 dd) (not (pre-diq_joint-lift-table_a1_a2_table3_room4 dd)) (not (in a1 room4)) (in a1 room3))
)
(:action act-agm_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-brt_joint-move-table_a1_a2_table3_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-agm_joint-drop-table_a1_a2_table3_room3 dd) (not (pre-brt_joint-move-table_a1_a2_table3_room4_room3 dd)) (available a1))
)
(:action goal-achieve-agm_joint-drop-table_a1_a2_table3_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-agm_joint-drop-table_a1_a2_table3_room3 dd))
:effect 
(and (done-goal dd) (not (pre-agm_joint-drop-table_a1_a2_table3_room3 dd)))
)
(:action act-y1i_observe-table_a2_table3_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vjw_observe-table_a2_table1_room3 dd) (immediate-dummy-y1i_observe-table_a2_table3_room4 dd) (inroom table1 room3) (inroom table4 room7) (in a1 room4) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (inroom table3 room4) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_TRUE))
)
(:action act-y1i_observe-table_a2_table3_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vjw_observe-table_a2_table1_room3 dd) (immediate-dummy-y1i_observe-table_a2_table3_room4 dd) (inroom table1 room3) (inroom table4 room7) (in a1 room4) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (not (inroom table3 room4)) (not (Kinroom table3 room4 V_TRUE)) (not (Kinroom table3 room4 V_FALSE)))
:effect 
(and (Kinroom table3 room4 V_FALSE))
)
(:action act-dummy-y1i_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vjw_observe-table_a2_table1_room3 dd) (inroom table1 room3) (inroom table4 room7) (in a1 room4) (not (dummy-left-y1i_observe-table_a2_table3_room4 dd)) (not (dummy-right-y1i_observe-table_a2_table3_room4 dd)) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (immediate-dummy-y1i_observe-table_a2_table3_room4 dd))
)
(:action dummy-left-y1i_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vjw_observe-table_a2_table1_room3 dd) (inroom table1 room3) (inroom table4 room7) (in a1 room4) (not (inroom table3 room4)) (immediate-dummy-y1i_observe-table_a2_table3_room4 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (Kinroom table3 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-y1i_observe-table_a2_table3_room4 dd)) (dummy-left-y1i_observe-table_a2_table3_room4 dd))
)
(:action dummy-right-y1i_observe-table_a2_table3_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vjw_observe-table_a2_table1_room3 dd) (inroom table1 room3) (inroom table4 room7) (in a1 room4) (inroom table3 room4) (immediate-dummy-y1i_observe-table_a2_table3_room4 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (Kinroom table3 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-y1i_observe-table_a2_table3_room4 dd)) (dummy-right-y1i_observe-table_a2_table3_room4 dd))
)
(:action act-50z_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y1i_observe-table_a2_table3_room4 dd) (immediate-dummy-50z_observe-table_a1_table2_room2 dd) (not (inroom table3 room4)) (inroom table1 room3) (inroom table4 room7) (in a1 room2) (Kinroom table3 room4 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-50z_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y1i_observe-table_a2_table3_room4 dd) (immediate-dummy-50z_observe-table_a1_table2_room2 dd) (not (inroom table3 room4)) (inroom table1 room3) (inroom table4 room7) (in a1 room2) (Kinroom table3 room4 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-50z_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y1i_observe-table_a2_table3_room4 dd) (not (inroom table3 room4)) (inroom table1 room3) (inroom table4 room7) (in a1 room2) (not (dummy-left-50z_observe-table_a1_table2_room2 dd)) (not (dummy-right-50z_observe-table_a1_table2_room2 dd)) (Kinroom table3 room4 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (immediate-dummy-50z_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-50z_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y1i_observe-table_a2_table3_room4 dd) (not (inroom table3 room4)) (inroom table1 room3) (inroom table4 room7) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-50z_observe-table_a1_table2_room2 dd) (Kinroom table3 room4 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-50z_observe-table_a1_table2_room2 dd)) (dummy-left-50z_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-50z_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y1i_observe-table_a2_table3_room4 dd) (not (inroom table3 room4)) (inroom table1 room3) (inroom table4 room7) (in a1 room2) (inroom table2 room2) (immediate-dummy-50z_observe-table_a1_table2_room2 dd) (Kinroom table3 room4 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-50z_observe-table_a1_table2_room2 dd)) (dummy-right-50z_observe-table_a1_table2_room2 dd))
)
(:action act-7t1_joint-lift-table_a1_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-50z_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table3 room4)) (inroom table1 room3) (inroom table4 room7) (available a1) (in a1 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room4 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (pre-7t1_joint-lift-table_a1_a2_table1_room3 dd) (not (available a1)))
)
(:action act-e10_joint-move-table_a1_a2_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-7t1_joint-lift-table_a1_a2_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-e10_joint-move-table_a1_a2_table1_room3_room4 dd) (not (pre-7t1_joint-lift-table_a1_a2_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-gfe_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-e10_joint-move-table_a1_a2_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-gfe_joint-drop-table_a1_a2_table1_room4 dd) (not (pre-e10_joint-move-table_a1_a2_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-gfe_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-gfe_joint-drop-table_a1_a2_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-gfe_joint-drop-table_a1_a2_table1_room4 dd)))
)
(:action act-dui_joint-lift-table_a1_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-50z_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table3 room4)) (inroom table1 room3) (inroom table4 room7) (available a1) (in a1 room3) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room4 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (pre-dui_joint-lift-table_a1_a2_table1_room3 dd) (not (available a1)))
)
(:action act-e4r_joint-move-table_a1_a2_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-dui_joint-lift-table_a1_a2_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-e4r_joint-move-table_a1_a2_table1_room3_room4 dd) (not (pre-dui_joint-lift-table_a1_a2_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-hth_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-e4r_joint-move-table_a1_a2_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-hth_joint-drop-table_a1_a2_table1_room4 dd) (not (pre-e4r_joint-move-table_a1_a2_table1_room3_room4 dd)) (available a1))
)
(:action act-lu2_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-hth_joint-drop-table_a1_a2_table1_room4 dd) (available a1) (in a1 room2))
:effect 
(and (pre-lu2_joint-lift-table_a1_a2_table2_room2 dd) (not (pre-hth_joint-drop-table_a1_a2_table1_room4 dd)) (not (available a1)))
)
(:action act-a6i_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-lu2_joint-lift-table_a1_a2_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-a6i_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-lu2_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-xsm_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-a6i_joint-move-table_a1_a2_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-xsm_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-a6i_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-xsm_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-xsm_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-xsm_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action act-vu8_observe-table_a1_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y1i_observe-table_a2_table3_room4 dd) (immediate-dummy-vu8_observe-table_a1_table2_room1 dd) (inroom table3 room4) (inroom table1 room3) (inroom table4 room7) (in a1 room1) (Kinroom table3 room4 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-vu8_observe-table_a1_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y1i_observe-table_a2_table3_room4 dd) (immediate-dummy-vu8_observe-table_a1_table2_room1 dd) (inroom table3 room4) (inroom table1 room3) (inroom table4 room7) (in a1 room1) (Kinroom table3 room4 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-vu8_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y1i_observe-table_a2_table3_room4 dd) (inroom table3 room4) (inroom table1 room3) (inroom table4 room7) (in a1 room1) (not (dummy-left-vu8_observe-table_a1_table2_room1 dd)) (not (dummy-right-vu8_observe-table_a1_table2_room1 dd)) (Kinroom table3 room4 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (immediate-dummy-vu8_observe-table_a1_table2_room1 dd))
)
(:action dummy-left-vu8_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y1i_observe-table_a2_table3_room4 dd) (inroom table3 room4) (inroom table1 room3) (inroom table4 room7) (in a1 room1) (not (inroom table2 room1)) (immediate-dummy-vu8_observe-table_a1_table2_room1 dd) (Kinroom table3 room4 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-vu8_observe-table_a1_table2_room1 dd)) (dummy-left-vu8_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-vu8_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y1i_observe-table_a2_table3_room4 dd) (inroom table3 room4) (inroom table1 room3) (inroom table4 room7) (in a1 room1) (inroom table2 room1) (immediate-dummy-vu8_observe-table_a1_table2_room1 dd) (Kinroom table3 room4 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-vu8_observe-table_a1_table2_room1 dd)) (dummy-right-vu8_observe-table_a1_table2_room1 dd))
)
(:action act-jml_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vu8_observe-table_a1_table2_room1 dd) (not (inroom table2 room1)) (inroom table3 room4) (inroom table1 room3) (inroom table4 room7) (available a1) (in a1 room2) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room4 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (pre-jml_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-e3v_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-jml_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-e3v_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-jml_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-fqt_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-e3v_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-fqt_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-e3v_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-fqt_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-fqt_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-fqt_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-vu8_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vu8_observe-table_a1_table2_room1 dd) (inroom table2 room1) (inroom table3 room4) (inroom table1 room3) (inroom table4 room7) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room4 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-vu8_observe-table_a1_table2_room1 dd)))
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
