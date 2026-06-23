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
 tag0 - TAG_TYPE ; (inroom table3 room6) (inroom table4 room7)
 tag1 - TAG_TYPE ; (inroom table3 room5) (inroom table4 room6)
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
(can-observe ?a1 - agent ?table - table)
(init-83r_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-83r_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-83r_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-b7y_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-b7y_observe-table_a5_table4_room6 ?dd - dummy)
(immediate-dummy-mds_observe-table_a5_table3_room6 ?dd - dummy)
(dummy-left-mds_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-y79_observe-table_a4_table1_room4 ?dd - dummy)
(dummy-left-y79_observe-table_a4_table1_room4 ?dd - dummy)
(pre-6p3_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-jgp_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-mcp_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(pre-49l_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
(pre-4e3_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
(pre-g1q_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-y79_observe-table_a4_table1_room4 ?dd - dummy)
(pre-c1t_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-ke3_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-82z_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-mds_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-2hs_observe-table_a4_table1_room4 ?dd - dummy)
(dummy-left-2hs_observe-table_a4_table1_room4 ?dd - dummy)
(pre-ozv_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
(pre-tq4_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
(pre-1sa_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
(dummy-right-2hs_observe-table_a4_table1_room4 ?dd - dummy)
(pre-x2y_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-hd3_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-gh2_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-b7y_observe-table_a5_table4_room6 ?dd - dummy)
(immediate-dummy-4fl_observe-table_a5_table3_room6 ?dd - dummy)
(dummy-left-4fl_observe-table_a5_table3_room6 ?dd - dummy)
(pre-cwg_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-qwk_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-aln_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(immediate-dummy-zu5_observe-table_a1_table1_room4 ?dd - dummy)
(dummy-left-zu5_observe-table_a1_table1_room4 ?dd - dummy)
(pre-6qk_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-zky_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-8pi_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(dummy-right-zu5_observe-table_a1_table1_room4 ?dd - dummy)
(dummy-right-4fl_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-po9_observe-table_a4_table1_room4 ?dd - dummy)
(dummy-left-po9_observe-table_a4_table1_room4 ?dd - dummy)
(pre-4cb_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-91u_joint-move-table_a1_a3_table1_room3_room2 ?dd - dummy)
(pre-67c_joint-move-table_a1_a3_table1_room2_room3 ?dd - dummy)
(pre-gmc_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-pc4_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(pre-u1h_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-w8h_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-3kx_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-po9_observe-table_a4_table1_room4 ?dd - dummy)
(pre-sq6_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-d5z_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-dwh_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-83r_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(dummy-left-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(dummy-right-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(pre-jat_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
(pre-22w_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
(pre-2zd_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-83r_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (init-83r_observe-table_a3_table2_room1 dd) (immediate-dummy-83r_observe-table_a3_table2_room1 dd) (in a3 room1) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-83r_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (init-83r_observe-table_a3_table2_room1 dd) (immediate-dummy-83r_observe-table_a3_table2_room1 dd) (in a3 room1) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-83r_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-83r_observe-table_a3_table2_room1 dd) (not (dummy-left-83r_observe-table_a3_table2_room1 dd)) (not (dummy-right-83r_observe-table_a3_table2_room1 dd)))
:effect 
(and (immediate-dummy-83r_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-83r_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-83r_observe-table_a3_table2_room1 dd) (in a3 room1) (not (inroom table2 room1)) (immediate-dummy-83r_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (init-83r_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-83r_observe-table_a3_table2_room1 dd)) (dummy-left-83r_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-83r_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-83r_observe-table_a3_table2_room1 dd) (in a3 room1) (inroom table2 room1) (immediate-dummy-83r_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (init-83r_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-83r_observe-table_a3_table2_room1 dd)) (dummy-right-83r_observe-table_a3_table2_room1 dd))
)
(:action act-b7y_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-83r_observe-table_a3_table2_room1 dd) (immediate-dummy-b7y_observe-table_a5_table4_room6 dd) (not (inroom table2 room1)) (in a3 room6) (Kinroom table2 room1 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-b7y_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-83r_observe-table_a3_table2_room1 dd) (immediate-dummy-b7y_observe-table_a5_table4_room6 dd) (not (inroom table2 room1)) (in a3 room6) (Kinroom table2 room1 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-b7y_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-83r_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a3 room6) (not (dummy-left-b7y_observe-table_a5_table4_room6 dd)) (not (dummy-right-b7y_observe-table_a5_table4_room6 dd)) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-b7y_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-b7y_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-83r_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a3 room6) (not (inroom table4 room6)) (immediate-dummy-b7y_observe-table_a5_table4_room6 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-b7y_observe-table_a5_table4_room6 dd)) (dummy-left-b7y_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-b7y_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-83r_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a3 room6) (inroom table4 room6) (immediate-dummy-b7y_observe-table_a5_table4_room6 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-b7y_observe-table_a5_table4_room6 dd)) (dummy-right-b7y_observe-table_a5_table4_room6 dd))
)
(:action act-mds_observe-table_a5_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b7y_observe-table_a5_table4_room6 dd) (immediate-dummy-mds_observe-table_a5_table3_room6 dd) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room6) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-mds_observe-table_a5_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b7y_observe-table_a5_table4_room6 dd) (immediate-dummy-mds_observe-table_a5_table3_room6 dd) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room6) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-mds_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b7y_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room6) (not (dummy-left-mds_observe-table_a5_table3_room6 dd)) (not (dummy-right-mds_observe-table_a5_table3_room6 dd)) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-mds_observe-table_a5_table3_room6 dd))
)
(:action dummy-left-mds_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b7y_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room6) (not (inroom table3 room6)) (immediate-dummy-mds_observe-table_a5_table3_room6 dd) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-mds_observe-table_a5_table3_room6 dd)) (dummy-left-mds_observe-table_a5_table3_room6 dd))
)
(:action dummy-right-mds_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b7y_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room6) (inroom table3 room6) (immediate-dummy-mds_observe-table_a5_table3_room6 dd) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-mds_observe-table_a5_table3_room6 dd)) (dummy-right-mds_observe-table_a5_table3_room6 dd))
)
(:action act-y79_observe-table_a4_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mds_observe-table_a5_table3_room6 dd) (immediate-dummy-y79_observe-table_a4_table1_room4 dd) (not (inroom table3 room6)) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room4) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-y79_observe-table_a4_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mds_observe-table_a5_table3_room6 dd) (immediate-dummy-y79_observe-table_a4_table1_room4 dd) (not (inroom table3 room6)) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room4) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-y79_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mds_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room4) (not (dummy-left-y79_observe-table_a4_table1_room4 dd)) (not (dummy-right-y79_observe-table_a4_table1_room4 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-y79_observe-table_a4_table1_room4 dd))
)
(:action dummy-left-y79_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mds_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room4) (not (inroom table1 room4)) (immediate-dummy-y79_observe-table_a4_table1_room4 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-y79_observe-table_a4_table1_room4 dd)) (dummy-left-y79_observe-table_a4_table1_room4 dd))
)
(:action dummy-right-y79_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mds_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room4) (inroom table1 room4) (immediate-dummy-y79_observe-table_a4_table1_room4 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-y79_observe-table_a4_table1_room4 dd)) (dummy-right-y79_observe-table_a4_table1_room4 dd))
)
(:action act-6p3_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y79_observe-table_a4_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table3 room6)) (not (inroom table4 room6)) (not (inroom table2 room1)) (available a3) (in a3 room2) (Kinroom table1 room4 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-6p3_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-jgp_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-6p3_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-jgp_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-6p3_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-mcp_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-jgp_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-mcp_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-jgp_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action act-49l_joint-lift-table_a3_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-mcp_joint-drop-table_a1_a3_table2_room1 dd) (available a3) (in a3 room3))
:effect 
(and (pre-49l_joint-lift-table_a3_a4_table1_room3 dd) (not (pre-mcp_joint-drop-table_a1_a3_table2_room1 dd)) (not (available a3)))
)
(:action act-4e3_joint-move-table_a3_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-49l_joint-lift-table_a3_a4_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-4e3_joint-move-table_a3_a4_table1_room3_room4 dd) (not (pre-49l_joint-lift-table_a3_a4_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-g1q_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-4e3_joint-move-table_a3_a4_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-g1q_joint-drop-table_a3_a4_table1_room4 dd) (not (pre-4e3_joint-move-table_a3_a4_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-g1q_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-g1q_joint-drop-table_a3_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-g1q_joint-drop-table_a3_a4_table1_room4 dd)))
)
(:action act-c1t_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y79_observe-table_a4_table1_room4 dd) (inroom table1 room4) (not (inroom table3 room6)) (not (inroom table4 room6)) (not (inroom table2 room1)) (available a3) (in a3 room2) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-c1t_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-ke3_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-c1t_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-ke3_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-c1t_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-82z_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ke3_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-82z_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-ke3_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-82z_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-82z_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-82z_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-2hs_observe-table_a4_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mds_observe-table_a5_table3_room6 dd) (immediate-dummy-2hs_observe-table_a4_table1_room4 dd) (inroom table3 room6) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room4) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-2hs_observe-table_a4_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mds_observe-table_a5_table3_room6 dd) (immediate-dummy-2hs_observe-table_a4_table1_room4 dd) (inroom table3 room6) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room4) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-2hs_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mds_observe-table_a5_table3_room6 dd) (inroom table3 room6) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room4) (not (dummy-left-2hs_observe-table_a4_table1_room4 dd)) (not (dummy-right-2hs_observe-table_a4_table1_room4 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-2hs_observe-table_a4_table1_room4 dd))
)
(:action dummy-left-2hs_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mds_observe-table_a5_table3_room6 dd) (inroom table3 room6) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room4) (not (inroom table1 room4)) (immediate-dummy-2hs_observe-table_a4_table1_room4 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-2hs_observe-table_a4_table1_room4 dd)) (dummy-left-2hs_observe-table_a4_table1_room4 dd))
)
(:action dummy-right-2hs_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mds_observe-table_a5_table3_room6 dd) (inroom table3 room6) (not (inroom table4 room6)) (not (inroom table2 room1)) (in a3 room4) (inroom table1 room4) (immediate-dummy-2hs_observe-table_a4_table1_room4 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-2hs_observe-table_a4_table1_room4 dd)) (dummy-right-2hs_observe-table_a4_table1_room4 dd))
)
(:action act-ozv_joint-lift-table_a3_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2hs_observe-table_a4_table1_room4 dd) (not (inroom table1 room4)) (inroom table3 room6) (not (inroom table4 room6)) (not (inroom table2 room1)) (available a3) (in a3 room3) (Kinroom table1 room4 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-ozv_joint-lift-table_a3_a4_table1_room3 dd) (not (available a3)))
)
(:action act-tq4_joint-move-table_a3_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ozv_joint-lift-table_a3_a4_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-tq4_joint-move-table_a3_a4_table1_room3_room4 dd) (not (pre-ozv_joint-lift-table_a3_a4_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-1sa_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-tq4_joint-move-table_a3_a4_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-1sa_joint-drop-table_a3_a4_table1_room4 dd) (not (pre-tq4_joint-move-table_a3_a4_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-1sa_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-1sa_joint-drop-table_a3_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-1sa_joint-drop-table_a3_a4_table1_room4 dd)))
)
(:action act-x2y_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2hs_observe-table_a4_table1_room4 dd) (inroom table1 room4) (inroom table3 room6) (not (inroom table4 room6)) (not (inroom table2 room1)) (available a3) (in a3 room2) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-x2y_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-hd3_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-x2y_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-hd3_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-x2y_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-gh2_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-hd3_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-gh2_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-hd3_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-gh2_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-gh2_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-gh2_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-4fl_observe-table_a5_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b7y_observe-table_a5_table4_room6 dd) (immediate-dummy-4fl_observe-table_a5_table3_room6 dd) (inroom table4 room6) (not (inroom table2 room1)) (in a3 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-4fl_observe-table_a5_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b7y_observe-table_a5_table4_room6 dd) (immediate-dummy-4fl_observe-table_a5_table3_room6 dd) (inroom table4 room6) (not (inroom table2 room1)) (in a3 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-4fl_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b7y_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table2 room1)) (in a3 room6) (not (dummy-left-4fl_observe-table_a5_table3_room6 dd)) (not (dummy-right-4fl_observe-table_a5_table3_room6 dd)) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-4fl_observe-table_a5_table3_room6 dd))
)
(:action dummy-left-4fl_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b7y_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table2 room1)) (in a3 room6) (not (inroom table3 room6)) (immediate-dummy-4fl_observe-table_a5_table3_room6 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-4fl_observe-table_a5_table3_room6 dd)) (dummy-left-4fl_observe-table_a5_table3_room6 dd))
)
(:action dummy-right-4fl_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b7y_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table2 room1)) (in a3 room6) (inroom table3 room6) (immediate-dummy-4fl_observe-table_a5_table3_room6 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-4fl_observe-table_a5_table3_room6 dd)) (dummy-right-4fl_observe-table_a5_table3_room6 dd))
)
(:action act-cwg_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4fl_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table4 room6) (not (inroom table2 room1)) (available a3) (in a3 room2) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-cwg_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-qwk_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-cwg_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-qwk_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-cwg_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-aln_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-qwk_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-aln_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-qwk_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action act-zu5_observe-table_a1_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (pre-aln_joint-drop-table_a1_a3_table2_room1 dd) (immediate-dummy-zu5_observe-table_a1_table1_room4 dd) (in a3 room4) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-zu5_observe-table_a1_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (pre-aln_joint-drop-table_a1_a3_table2_room1 dd) (immediate-dummy-zu5_observe-table_a1_table1_room4 dd) (in a3 room4) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-zu5_observe-table_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-aln_joint-drop-table_a1_a3_table2_room1 dd) (in a3 room4) (not (dummy-left-zu5_observe-table_a1_table1_room4 dd)) (not (dummy-right-zu5_observe-table_a1_table1_room4 dd)))
:effect 
(and (immediate-dummy-zu5_observe-table_a1_table1_room4 dd))
)
(:action dummy-left-zu5_observe-table_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (in a3 room4) (not (inroom table1 room4)) (immediate-dummy-zu5_observe-table_a1_table1_room4 dd) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-zu5_observe-table_a1_table1_room4 dd)) (dummy-left-zu5_observe-table_a1_table1_room4 dd))
)
(:action dummy-right-zu5_observe-table_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (in a3 room4) (inroom table1 room4) (immediate-dummy-zu5_observe-table_a1_table1_room4 dd) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-zu5_observe-table_a1_table1_room4 dd)) (dummy-right-zu5_observe-table_a1_table1_room4 dd))
)
(:action act-6qk_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-zu5_observe-table_a1_table1_room4 dd) (not (inroom table1 room4)) (available a3) (in a3 room3) (Kinroom table1 room4 V_FALSE))
:effect 
(and (pre-6qk_joint-lift-table_a1_a3_table1_room3 dd) (not (available a3)))
)
(:action act-zky_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-6qk_joint-lift-table_a1_a3_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-zky_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-6qk_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-8pi_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-zky_joint-move-table_a1_a3_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-8pi_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-zky_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-8pi_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-8pi_joint-drop-table_a1_a3_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-8pi_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action goal-achieve-right-zu5_observe-table_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zu5_observe-table_a1_table1_room4 dd) (inroom table1 room4) (Kinroom table1 room4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-zu5_observe-table_a1_table1_room4 dd)))
)
(:action act-po9_observe-table_a4_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4fl_observe-table_a5_table3_room6 dd) (immediate-dummy-po9_observe-table_a4_table1_room4 dd) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (in a3 room4) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-po9_observe-table_a4_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4fl_observe-table_a5_table3_room6 dd) (immediate-dummy-po9_observe-table_a4_table1_room4 dd) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (in a3 room4) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-po9_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4fl_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (in a3 room4) (not (dummy-left-po9_observe-table_a4_table1_room4 dd)) (not (dummy-right-po9_observe-table_a4_table1_room4 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-po9_observe-table_a4_table1_room4 dd))
)
(:action dummy-left-po9_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4fl_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (in a3 room4) (not (inroom table1 room4)) (immediate-dummy-po9_observe-table_a4_table1_room4 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-po9_observe-table_a4_table1_room4 dd)) (dummy-left-po9_observe-table_a4_table1_room4 dd))
)
(:action dummy-right-po9_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4fl_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (in a3 room4) (inroom table1 room4) (immediate-dummy-po9_observe-table_a4_table1_room4 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-po9_observe-table_a4_table1_room4 dd)) (dummy-right-po9_observe-table_a4_table1_room4 dd))
)
(:action act-4cb_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-po9_observe-table_a4_table1_room4 dd) (not (inroom table1 room4)) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (available a3) (in a3 room3) (Kinroom table1 room4 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-4cb_joint-lift-table_a1_a3_table1_room3 dd) (not (available a3)))
)
(:action act-91u_joint-move-table_a1_a3_table1_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-4cb_joint-lift-table_a1_a3_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-91u_joint-move-table_a1_a3_table1_room3_room2 dd) (not (pre-4cb_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a3 room3)) (in a3 room2))
)
(:action act-67c_joint-move-table_a1_a3_table1_room2_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-91u_joint-move-table_a1_a3_table1_room3_room2 dd) (in a3 room2))
:effect 
(and (pre-67c_joint-move-table_a1_a3_table1_room2_room3 dd) (not (pre-91u_joint-move-table_a1_a3_table1_room3_room2 dd)) (not (in a3 room2)) (in a3 room3))
)
(:action act-gmc_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-67c_joint-move-table_a1_a3_table1_room2_room3 dd) (in a3 room3))
:effect 
(and (pre-gmc_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-67c_joint-move-table_a1_a3_table1_room2_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-pc4_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-gmc_joint-move-table_a1_a3_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-pc4_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-gmc_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a3))
)
(:action act-u1h_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-pc4_joint-drop-table_a1_a3_table1_room4 dd) (available a3) (in a3 room2))
:effect 
(and (pre-u1h_joint-lift-table_a1_a3_table2_room2 dd) (not (pre-pc4_joint-drop-table_a1_a3_table1_room4 dd)) (not (available a3)))
)
(:action act-w8h_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-u1h_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-w8h_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-u1h_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-3kx_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-w8h_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-3kx_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-w8h_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-3kx_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-3kx_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-3kx_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-sq6_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-po9_observe-table_a4_table1_room4 dd) (inroom table1 room4) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (available a3) (in a3 room2) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-sq6_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-d5z_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-sq6_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-d5z_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-sq6_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-dwh_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-d5z_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-dwh_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-d5z_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-dwh_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-dwh_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-dwh_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-83r_observe-table_a3_table2_room1 dd) (immediate-dummy-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room1) (in a3 room3) (Kinroom table2 room1 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-83r_observe-table_a3_table2_room1 dd) (immediate-dummy-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room1) (in a3 room3) (Kinroom table2 room1 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-83r_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a3 room3) (not (dummy-left-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (not (dummy-right-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-left-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-83r_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a3 room3) (not (inroom table1 room3)) (immediate-dummy-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-left-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-right-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-83r_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a3 room3) (inroom table1 room3) (immediate-dummy-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-right-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action goal-achieve-left-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room1) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)))
)
(:action act-jat_joint-lift-table_a3_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gvt_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room1) (available a3) (in a3 room3) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-jat_joint-lift-table_a3_a4_table1_room3 dd) (not (available a3)))
)
(:action act-22w_joint-move-table_a3_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-jat_joint-lift-table_a3_a4_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-22w_joint-move-table_a3_a4_table1_room3_room4 dd) (not (pre-jat_joint-lift-table_a3_a4_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-2zd_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-22w_joint-move-table_a3_a4_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-2zd_joint-drop-table_a3_a4_table1_room4 dd) (not (pre-22w_joint-move-table_a3_a4_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-2zd_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-2zd_joint-drop-table_a3_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-2zd_joint-drop-table_a3_a4_table1_room4 dd)))
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
