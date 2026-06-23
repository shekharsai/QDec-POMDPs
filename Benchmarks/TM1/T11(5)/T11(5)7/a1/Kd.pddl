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
 tag0 - TAG_TYPE ; (inroom table4 room6)
 tag1 - TAG_TYPE ; (inroom table4 room7)
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
(init-cog_observe-table_a3_table2_room2 ?dd - dummy)
(immediate-dummy-cog_observe-table_a3_table2_room2 ?dd - dummy)
(dummy-left-cog_observe-table_a3_table2_room2 ?dd - dummy)
(immediate-dummy-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(dummy-left-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(immediate-dummy-wln_observe-table_a5_table3_room5 ?dd - dummy)
(dummy-left-wln_observe-table_a5_table3_room5 ?dd - dummy)
(immediate-dummy-8o6_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-8o6_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-right-8o6_observe-table_a5_table4_room6 ?dd - dummy)
(pre-8lv_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-zba_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-ie7_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(dummy-right-wln_observe-table_a5_table3_room5 ?dd - dummy)
(dummy-right-cog_observe-table_a3_table2_room2 ?dd - dummy)
(immediate-dummy-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(dummy-left-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(pre-rkp_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-ton_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-xvn_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(immediate-dummy-g8d_observe-table_a5_table3_room6 ?dd - dummy)
(dummy-left-g8d_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-cln_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-cln_observe-table_a5_table4_room6 ?dd - dummy)
(pre-cqq_joint-lift-table_a1_a4_table2_room2 ?dd - dummy)
(pre-pca_joint-move-table_a1_a4_table2_room2_room1 ?dd - dummy)
(pre-pai_joint-drop-table_a1_a4_table2_room1 ?dd - dummy)
(dummy-right-cln_observe-table_a5_table4_room6 ?dd - dummy)
(pre-ye7_joint-lift-table_a1_a4_table2_room2 ?dd - dummy)
(pre-gzk_joint-move-table_a1_a4_table2_room2_room3 ?dd - dummy)
(pre-f0w_joint-move-table_a1_a4_table2_room3_room4 ?dd - dummy)
(pre-utk_joint-move-table_a1_a4_table2_room4_room3 ?dd - dummy)
(pre-ed6_joint-drop-table_a1_a4_table2_room3 ?dd - dummy)
(pre-al2_joint-lift-table_a1_a4_table1_room3 ?dd - dummy)
(pre-t1n_joint-move-table_a1_a4_table1_room3_room4 ?dd - dummy)
(pre-sx0_joint-drop-table_a1_a4_table1_room4 ?dd - dummy)
(dummy-right-g8d_observe-table_a5_table3_room6 ?dd - dummy)
(pre-wgy_joint-lift-table_a1_a4_table2_room2 ?dd - dummy)
(pre-r6z_joint-move-table_a1_a4_table2_room2_room1 ?dd - dummy)
(pre-vck_joint-drop-table_a1_a4_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-cog_observe-table_a3_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (init-cog_observe-table_a3_table2_room2 dd) (immediate-dummy-cog_observe-table_a3_table2_room2 dd) (in a1 room2) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-cog_observe-table_a3_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (init-cog_observe-table_a3_table2_room2 dd) (immediate-dummy-cog_observe-table_a3_table2_room2 dd) (in a1 room2) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-cog_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-cog_observe-table_a3_table2_room2 dd) (not (dummy-left-cog_observe-table_a3_table2_room2 dd)) (not (dummy-right-cog_observe-table_a3_table2_room2 dd)))
:effect 
(and (immediate-dummy-cog_observe-table_a3_table2_room2 dd))
)
(:action dummy-left-cog_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-cog_observe-table_a3_table2_room2 dd) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-cog_observe-table_a3_table2_room2 dd) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (init-cog_observe-table_a3_table2_room2 dd)) (not (immediate-dummy-cog_observe-table_a3_table2_room2 dd)) (dummy-left-cog_observe-table_a3_table2_room2 dd))
)
(:action dummy-right-cog_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-cog_observe-table_a3_table2_room2 dd) (in a1 room2) (inroom table2 room2) (immediate-dummy-cog_observe-table_a3_table2_room2 dd) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (init-cog_observe-table_a3_table2_room2 dd)) (not (immediate-dummy-cog_observe-table_a3_table2_room2 dd)) (dummy-right-cog_observe-table_a3_table2_room2 dd))
)
(:action act-buu_observe-table-vjr-8gg-7n2_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cog_observe-table_a3_table2_room2 dd) (immediate-dummy-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (not (inroom table2 room2)) (in a1 room3) (Kinroom table2 room2 V_FALSE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-buu_observe-table-vjr-8gg-7n2_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cog_observe-table_a3_table2_room2 dd) (immediate-dummy-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (not (inroom table2 room2)) (in a1 room3) (Kinroom table2 room2 V_FALSE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-buu_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cog_observe-table_a3_table2_room2 dd) (not (inroom table2 room2)) (in a1 room3) (not (dummy-left-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (not (dummy-right-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-left-buu_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cog_observe-table_a3_table2_room2 dd) (not (inroom table2 room2)) (in a1 room3) (not (inroom table1 room3)) (immediate-dummy-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-left-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-right-buu_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cog_observe-table_a3_table2_room2 dd) (not (inroom table2 room2)) (in a1 room3) (inroom table1 room3) (immediate-dummy-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-right-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action goal-achieve-left-buu_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (not (inroom table2 room2)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)))
)
(:action act-wln_observe-table_a5_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-wln_observe-table_a5_table3_room5 dd) (not (inroom table2 room2)) (in a1 room5) (Kinroom table2 room2 V_FALSE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-wln_observe-table_a5_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-wln_observe-table_a5_table3_room5 dd) (not (inroom table2 room2)) (in a1 room5) (Kinroom table2 room2 V_FALSE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-wln_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (not (inroom table2 room2)) (in a1 room5) (not (dummy-left-wln_observe-table_a5_table3_room5 dd)) (not (dummy-right-wln_observe-table_a5_table3_room5 dd)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-wln_observe-table_a5_table3_room5 dd))
)
(:action dummy-left-wln_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (not (inroom table2 room2)) (in a1 room5) (not (inroom table3 room5)) (immediate-dummy-wln_observe-table_a5_table3_room5 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-wln_observe-table_a5_table3_room5 dd)) (dummy-left-wln_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-wln_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-buu_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (not (inroom table2 room2)) (in a1 room5) (inroom table3 room5) (immediate-dummy-wln_observe-table_a5_table3_room5 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-wln_observe-table_a5_table3_room5 dd)) (dummy-right-wln_observe-table_a5_table3_room5 dd))
)
(:action act-8o6_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wln_observe-table_a5_table3_room5 dd) (immediate-dummy-8o6_observe-table_a5_table4_room6 dd) (not (inroom table3 room5)) (not (inroom table2 room2)) (in a1 room6) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-8o6_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wln_observe-table_a5_table3_room5 dd) (immediate-dummy-8o6_observe-table_a5_table4_room6 dd) (not (inroom table3 room5)) (not (inroom table2 room2)) (in a1 room6) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-8o6_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wln_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table2 room2)) (in a1 room6) (not (dummy-left-8o6_observe-table_a5_table4_room6 dd)) (not (dummy-right-8o6_observe-table_a5_table4_room6 dd)) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-8o6_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-8o6_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wln_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table2 room2)) (in a1 room6) (not (inroom table4 room6)) (immediate-dummy-8o6_observe-table_a5_table4_room6 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-8o6_observe-table_a5_table4_room6 dd)) (dummy-left-8o6_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-8o6_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wln_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table2 room2)) (in a1 room6) (inroom table4 room6) (immediate-dummy-8o6_observe-table_a5_table4_room6 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-8o6_observe-table_a5_table4_room6 dd)) (dummy-right-8o6_observe-table_a5_table4_room6 dd))
)
(:action goal-achieve-left-8o6_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-8o6_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room5)) (not (inroom table2 room2)) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-8o6_observe-table_a5_table4_room6 dd)))
)
(:action act-8lv_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-8o6_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room5)) (not (inroom table2 room2)) (available a1) (in a1 room3) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (pre-8lv_joint-lift-table_a1_a3_table1_room3 dd) (not (available a1)))
)
(:action act-zba_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-8lv_joint-lift-table_a1_a3_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-zba_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-8lv_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-ie7_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-zba_joint-move-table_a1_a3_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-ie7_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-zba_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-ie7_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ie7_joint-drop-table_a1_a3_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-ie7_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action goal-achieve-right-wln_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wln_observe-table_a5_table3_room5 dd) (inroom table3 room5) (not (inroom table2 room2)) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-wln_observe-table_a5_table3_room5 dd)))
)
(:action act-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cog_observe-table_a3_table2_room2 dd) (immediate-dummy-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a1 room3) (Kinroom table2 room2 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cog_observe-table_a3_table2_room2 dd) (immediate-dummy-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a1 room3) (Kinroom table2 room2 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cog_observe-table_a3_table2_room2 dd) (inroom table2 room2) (in a1 room3) (not (dummy-left-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (not (dummy-right-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-left-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cog_observe-table_a3_table2_room2 dd) (inroom table2 room2) (in a1 room3) (not (inroom table1 room3)) (immediate-dummy-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-left-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-right-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cog_observe-table_a3_table2_room2 dd) (inroom table2 room2) (in a1 room3) (inroom table1 room3) (immediate-dummy-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-right-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action act-rkp_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (available a1) (in a1 room2) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-rkp_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-ton_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-rkp_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-ton_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-rkp_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-xvn_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ton_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-xvn_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-ton_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-xvn_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-xvn_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-xvn_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-g8d_observe-table_a5_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-g8d_observe-table_a5_table3_room6 dd) (inroom table2 room2) (in a1 room6) (Kinroom table2 room2 V_TRUE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-g8d_observe-table_a5_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-g8d_observe-table_a5_table3_room6 dd) (inroom table2 room2) (in a1 room6) (Kinroom table2 room2 V_TRUE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-g8d_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a1 room6) (not (dummy-left-g8d_observe-table_a5_table3_room6 dd)) (not (dummy-right-g8d_observe-table_a5_table3_room6 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-g8d_observe-table_a5_table3_room6 dd))
)
(:action dummy-left-g8d_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a1 room6) (not (inroom table3 room6)) (immediate-dummy-g8d_observe-table_a5_table3_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-g8d_observe-table_a5_table3_room6 dd)) (dummy-left-g8d_observe-table_a5_table3_room6 dd))
)
(:action dummy-right-g8d_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m2v_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a1 room6) (inroom table3 room6) (immediate-dummy-g8d_observe-table_a5_table3_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-g8d_observe-table_a5_table3_room6 dd)) (dummy-right-g8d_observe-table_a5_table3_room6 dd))
)
(:action act-cln_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g8d_observe-table_a5_table3_room6 dd) (immediate-dummy-cln_observe-table_a5_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a1 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-cln_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g8d_observe-table_a5_table3_room6 dd) (immediate-dummy-cln_observe-table_a5_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a1 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-cln_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g8d_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a1 room6) (not (dummy-left-cln_observe-table_a5_table4_room6 dd)) (not (dummy-right-cln_observe-table_a5_table4_room6 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-cln_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-cln_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g8d_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a1 room6) (not (inroom table4 room6)) (immediate-dummy-cln_observe-table_a5_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-cln_observe-table_a5_table4_room6 dd)) (dummy-left-cln_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-cln_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g8d_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a1 room6) (inroom table4 room6) (immediate-dummy-cln_observe-table_a5_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-cln_observe-table_a5_table4_room6 dd)) (dummy-right-cln_observe-table_a5_table4_room6 dd))
)
(:action act-cqq_joint-lift-table_a1_a4_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cln_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room2) (available a1) (in a1 room2) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-cqq_joint-lift-table_a1_a4_table2_room2 dd) (not (available a1)))
)
(:action act-pca_joint-move-table_a1_a4_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-cqq_joint-lift-table_a1_a4_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-pca_joint-move-table_a1_a4_table2_room2_room1 dd) (not (pre-cqq_joint-lift-table_a1_a4_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-pai_joint-drop-table_a1_a4_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-pca_joint-move-table_a1_a4_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-pai_joint-drop-table_a1_a4_table2_room1 dd) (not (pre-pca_joint-move-table_a1_a4_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-pai_joint-drop-table_a1_a4_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-pai_joint-drop-table_a1_a4_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-pai_joint-drop-table_a1_a4_table2_room1 dd)))
)
(:action act-ye7_joint-lift-table_a1_a4_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cln_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (inroom table2 room2) (available a1) (in a1 room2) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-ye7_joint-lift-table_a1_a4_table2_room2 dd) (not (available a1)))
)
(:action act-gzk_joint-move-table_a1_a4_table2_room2_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-ye7_joint-lift-table_a1_a4_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-gzk_joint-move-table_a1_a4_table2_room2_room3 dd) (not (pre-ye7_joint-lift-table_a1_a4_table2_room2 dd)) (not (in a1 room2)) (in a1 room3))
)
(:action act-f0w_joint-move-table_a1_a4_table2_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-gzk_joint-move-table_a1_a4_table2_room2_room3 dd) (in a1 room3))
:effect 
(and (pre-f0w_joint-move-table_a1_a4_table2_room3_room4 dd) (not (pre-gzk_joint-move-table_a1_a4_table2_room2_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-utk_joint-move-table_a1_a4_table2_room4_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-f0w_joint-move-table_a1_a4_table2_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-utk_joint-move-table_a1_a4_table2_room4_room3 dd) (not (pre-f0w_joint-move-table_a1_a4_table2_room3_room4 dd)) (not (in a1 room4)) (in a1 room3))
)
(:action act-ed6_joint-drop-table_a1_a4_table2_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-utk_joint-move-table_a1_a4_table2_room4_room3 dd) (in a1 room3))
:effect 
(and (pre-ed6_joint-drop-table_a1_a4_table2_room3 dd) (not (pre-utk_joint-move-table_a1_a4_table2_room4_room3 dd)) (available a1))
)
(:action act-al2_joint-lift-table_a1_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-ed6_joint-drop-table_a1_a4_table2_room3 dd) (available a1) (in a1 room3))
:effect 
(and (pre-al2_joint-lift-table_a1_a4_table1_room3 dd) (not (pre-ed6_joint-drop-table_a1_a4_table2_room3 dd)) (not (available a1)))
)
(:action act-t1n_joint-move-table_a1_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-al2_joint-lift-table_a1_a4_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-t1n_joint-move-table_a1_a4_table1_room3_room4 dd) (not (pre-al2_joint-lift-table_a1_a4_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-sx0_joint-drop-table_a1_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-t1n_joint-move-table_a1_a4_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-sx0_joint-drop-table_a1_a4_table1_room4 dd) (not (pre-t1n_joint-move-table_a1_a4_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-sx0_joint-drop-table_a1_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-sx0_joint-drop-table_a1_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-sx0_joint-drop-table_a1_a4_table1_room4 dd)))
)
(:action act-wgy_joint-lift-table_a1_a4_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-g8d_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table2 room2) (available a1) (in a1 room2) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-wgy_joint-lift-table_a1_a4_table2_room2 dd) (not (available a1)))
)
(:action act-r6z_joint-move-table_a1_a4_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-wgy_joint-lift-table_a1_a4_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-r6z_joint-move-table_a1_a4_table2_room2_room1 dd) (not (pre-wgy_joint-lift-table_a1_a4_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-vck_joint-drop-table_a1_a4_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-r6z_joint-move-table_a1_a4_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-vck_joint-drop-table_a1_a4_table2_room1 dd) (not (pre-r6z_joint-move-table_a1_a4_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-vck_joint-drop-table_a1_a4_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-vck_joint-drop-table_a1_a4_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-vck_joint-drop-table_a1_a4_table2_room1 dd)))
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
