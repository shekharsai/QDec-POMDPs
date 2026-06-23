(define (domain Ktablemover-2-a5)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 a5 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 room5 - room
 room6 - room
 room7 - room
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table4 room7)
 tag1 - TAG_TYPE ; (inroom table4 room6)
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
(init-12e_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-12e_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-12e_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-r73_observe-table_a2_table3_room6 ?dd - dummy)
(dummy-left-r73_observe-table_a2_table3_room6 ?dd - dummy)
(immediate-dummy-jh8_observe-table_a5_table1_room4 ?dd - dummy)
(dummy-left-jh8_observe-table_a5_table1_room4 ?dd - dummy)
(pre-fwo_joint-lift-table_a4_a5_table1_room3 ?dd - dummy)
(pre-ek9_joint-move-table_a4_a5_table1_room3_room4 ?dd - dummy)
(pre-w3k_joint-drop-table_a4_a5_table1_room4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-jh8_observe-table_a5_table1_room4 ?dd - dummy)
(immediate-dummy-ue2_observe-table_a2_table4_room7 ?dd - dummy)
(dummy-left-ue2_observe-table_a2_table4_room7 ?dd - dummy)
(pre-yoy_joint-lift-table_a2_a5_table4_room6 ?dd - dummy)
(pre-07y_joint-move-table_a2_a5_table4_room6_room7 ?dd - dummy)
(pre-1uh_joint-drop-table_a2_a5_table4_room7 ?dd - dummy)
(dummy-right-ue2_observe-table_a2_table4_room7 ?dd - dummy)
(dummy-right-r73_observe-table_a2_table3_room6 ?dd - dummy)
(pre-pmf_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
(pre-e8a_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
(pre-a5p_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
(immediate-dummy-63y_observe-table_a5_table1_room4 ?dd - dummy)
(dummy-left-63y_observe-table_a5_table1_room4 ?dd - dummy)
(pre-zi8_joint-lift-table_a4_a5_table1_room3 ?dd - dummy)
(pre-kp4_joint-move-table_a4_a5_table1_room3_room4 ?dd - dummy)
(pre-qlx_joint-drop-table_a4_a5_table1_room4 ?dd - dummy)
(dummy-right-63y_observe-table_a5_table1_room4 ?dd - dummy)
(immediate-dummy-b5o_observe-table_a2_table4_room7 ?dd - dummy)
(dummy-left-b5o_observe-table_a2_table4_room7 ?dd - dummy)
(pre-jdn_joint-lift-table_a2_a5_table4_room6 ?dd - dummy)
(pre-q0a_joint-move-table_a2_a5_table4_room6_room7 ?dd - dummy)
(pre-fsx_joint-drop-table_a2_a5_table4_room7 ?dd - dummy)
(dummy-right-b5o_observe-table_a2_table4_room7 ?dd - dummy)
(dummy-right-12e_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-0zj_observe-table_a5_table3_room6 ?dd - dummy)
(dummy-left-0zj_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-iam_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-iam_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-right-iam_observe-table_a5_table4_room6 ?dd - dummy)
(pre-8v7_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
(pre-4xl_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
(pre-e9g_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
(dummy-right-0zj_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-zqr_observe-table_a5_table4_room7 ?dd - dummy)
(dummy-left-zqr_observe-table_a5_table4_room7 ?dd - dummy)
(pre-3ki_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
(pre-uor_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
(pre-154_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
(pre-wte_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
(pre-p1k_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
(pre-b8s_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
(dummy-right-zqr_observe-table_a5_table4_room7 ?dd - dummy)
(pre-zbo_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
(pre-srz_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
(pre-zgi_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-12e_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (init-12e_observe-table_a3_table2_room1 dd) (immediate-dummy-12e_observe-table_a3_table2_room1 dd) (in a5 room1) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-12e_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (init-12e_observe-table_a3_table2_room1 dd) (immediate-dummy-12e_observe-table_a3_table2_room1 dd) (in a5 room1) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-12e_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-12e_observe-table_a3_table2_room1 dd) (not (dummy-left-12e_observe-table_a3_table2_room1 dd)) (not (dummy-right-12e_observe-table_a3_table2_room1 dd)))
:effect 
(and (immediate-dummy-12e_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-12e_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-12e_observe-table_a3_table2_room1 dd) (in a5 room1) (not (inroom table2 room1)) (immediate-dummy-12e_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (init-12e_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-12e_observe-table_a3_table2_room1 dd)) (dummy-left-12e_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-12e_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-12e_observe-table_a3_table2_room1 dd) (in a5 room1) (inroom table2 room1) (immediate-dummy-12e_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (init-12e_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-12e_observe-table_a3_table2_room1 dd)) (dummy-right-12e_observe-table_a3_table2_room1 dd))
)
(:action act-r73_observe-table_a2_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-12e_observe-table_a3_table2_room1 dd) (immediate-dummy-r73_observe-table_a2_table3_room6 dd) (not (inroom table2 room1)) (in a5 room6) (Kinroom table2 room1 V_FALSE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-r73_observe-table_a2_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-12e_observe-table_a3_table2_room1 dd) (immediate-dummy-r73_observe-table_a2_table3_room6 dd) (not (inroom table2 room1)) (in a5 room6) (Kinroom table2 room1 V_FALSE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-r73_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-12e_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a5 room6) (not (dummy-left-r73_observe-table_a2_table3_room6 dd)) (not (dummy-right-r73_observe-table_a2_table3_room6 dd)) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-r73_observe-table_a2_table3_room6 dd))
)
(:action dummy-left-r73_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-12e_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a5 room6) (not (inroom table3 room6)) (immediate-dummy-r73_observe-table_a2_table3_room6 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-r73_observe-table_a2_table3_room6 dd)) (dummy-left-r73_observe-table_a2_table3_room6 dd))
)
(:action dummy-right-r73_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-12e_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a5 room6) (inroom table3 room6) (immediate-dummy-r73_observe-table_a2_table3_room6 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-r73_observe-table_a2_table3_room6 dd)) (dummy-right-r73_observe-table_a2_table3_room6 dd))
)
(:action act-jh8_observe-table_a5_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r73_observe-table_a2_table3_room6 dd) (immediate-dummy-jh8_observe-table_a5_table1_room4 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room4) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-jh8_observe-table_a5_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r73_observe-table_a2_table3_room6 dd) (immediate-dummy-jh8_observe-table_a5_table1_room4 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room4) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-jh8_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r73_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room4) (not (dummy-left-jh8_observe-table_a5_table1_room4 dd)) (not (dummy-right-jh8_observe-table_a5_table1_room4 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-jh8_observe-table_a5_table1_room4 dd))
)
(:action dummy-left-jh8_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r73_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room4) (not (inroom table1 room4)) (immediate-dummy-jh8_observe-table_a5_table1_room4 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-jh8_observe-table_a5_table1_room4 dd)) (dummy-left-jh8_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-jh8_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r73_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room4) (inroom table1 room4) (immediate-dummy-jh8_observe-table_a5_table1_room4 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-jh8_observe-table_a5_table1_room4 dd)) (dummy-right-jh8_observe-table_a5_table1_room4 dd))
)
(:action act-fwo_joint-lift-table_a4_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jh8_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table3 room6)) (not (inroom table2 room1)) (available a5) (in a5 room3) (Kinroom table1 room4 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-fwo_joint-lift-table_a4_a5_table1_room3 dd) (not (available a5)))
)
(:action act-ek9_joint-move-table_a4_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-fwo_joint-lift-table_a4_a5_table1_room3 dd) (in a5 room3))
:effect 
(and (pre-ek9_joint-move-table_a4_a5_table1_room3_room4 dd) (not (pre-fwo_joint-lift-table_a4_a5_table1_room3 dd)) (not (in a5 room3)) (in a5 room4))
)
(:action act-w3k_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ek9_joint-move-table_a4_a5_table1_room3_room4 dd) (in a5 room4))
:effect 
(and (pre-w3k_joint-drop-table_a4_a5_table1_room4 dd) (not (pre-ek9_joint-move-table_a4_a5_table1_room3_room4 dd)) (available a5))
)
(:action goal-achieve-w3k_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-w3k_joint-drop-table_a4_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-w3k_joint-drop-table_a4_a5_table1_room4 dd)))
)
(:action act-ue2_observe-table_a2_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jh8_observe-table_a5_table1_room4 dd) (immediate-dummy-ue2_observe-table_a2_table4_room7 dd) (inroom table1 room4) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room7) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-ue2_observe-table_a2_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jh8_observe-table_a5_table1_room4 dd) (immediate-dummy-ue2_observe-table_a2_table4_room7 dd) (inroom table1 room4) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room7) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-ue2_observe-table_a2_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jh8_observe-table_a5_table1_room4 dd) (inroom table1 room4) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room7) (not (dummy-left-ue2_observe-table_a2_table4_room7 dd)) (not (dummy-right-ue2_observe-table_a2_table4_room7 dd)) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-ue2_observe-table_a2_table4_room7 dd))
)
(:action dummy-left-ue2_observe-table_a2_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jh8_observe-table_a5_table1_room4 dd) (inroom table1 room4) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room7) (not (inroom table4 room7)) (immediate-dummy-ue2_observe-table_a2_table4_room7 dd) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (immediate-dummy-ue2_observe-table_a2_table4_room7 dd)) (dummy-left-ue2_observe-table_a2_table4_room7 dd))
)
(:action dummy-right-ue2_observe-table_a2_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jh8_observe-table_a5_table1_room4 dd) (inroom table1 room4) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room7) (inroom table4 room7) (immediate-dummy-ue2_observe-table_a2_table4_room7 dd) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (immediate-dummy-ue2_observe-table_a2_table4_room7 dd)) (dummy-right-ue2_observe-table_a2_table4_room7 dd))
)
(:action act-yoy_joint-lift-table_a2_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ue2_observe-table_a2_table4_room7 dd) (not (inroom table4 room7)) (inroom table1 room4) (not (inroom table3 room6)) (not (inroom table2 room1)) (available a5) (in a5 room6) (Kinroom table4 room7 V_FALSE) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-yoy_joint-lift-table_a2_a5_table4_room6 dd) (not (available a5)))
)
(:action act-07y_joint-move-table_a2_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-yoy_joint-lift-table_a2_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-07y_joint-move-table_a2_a5_table4_room6_room7 dd) (not (pre-yoy_joint-lift-table_a2_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-1uh_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-07y_joint-move-table_a2_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-1uh_joint-drop-table_a2_a5_table4_room7 dd) (not (pre-07y_joint-move-table_a2_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-1uh_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-1uh_joint-drop-table_a2_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-1uh_joint-drop-table_a2_a5_table4_room7 dd)))
)
(:action goal-achieve-right-ue2_observe-table_a2_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ue2_observe-table_a2_table4_room7 dd) (inroom table4 room7) (inroom table1 room4) (not (inroom table3 room6)) (not (inroom table2 room1)) (Kinroom table4 room7 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-ue2_observe-table_a2_table4_room7 dd)))
)
(:action act-pmf_joint-lift-table_a2_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r73_observe-table_a2_table3_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (available a5) (in a5 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-pmf_joint-lift-table_a2_a5_table3_room6 dd) (not (available a5)))
)
(:action act-e8a_joint-move-table_a2_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-pmf_joint-lift-table_a2_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-e8a_joint-move-table_a2_a5_table3_room6_room5 dd) (not (pre-pmf_joint-lift-table_a2_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-a5p_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-e8a_joint-move-table_a2_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-a5p_joint-drop-table_a2_a5_table3_room5 dd) (not (pre-e8a_joint-move-table_a2_a5_table3_room6_room5 dd)) (available a5))
)
(:action act-63y_observe-table_a5_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (pre-a5p_joint-drop-table_a2_a5_table3_room5 dd) (immediate-dummy-63y_observe-table_a5_table1_room4 dd) (in a5 room4) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-63y_observe-table_a5_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (pre-a5p_joint-drop-table_a2_a5_table3_room5 dd) (immediate-dummy-63y_observe-table_a5_table1_room4 dd) (in a5 room4) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-63y_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-a5p_joint-drop-table_a2_a5_table3_room5 dd) (in a5 room4) (not (dummy-left-63y_observe-table_a5_table1_room4 dd)) (not (dummy-right-63y_observe-table_a5_table1_room4 dd)))
:effect 
(and (immediate-dummy-63y_observe-table_a5_table1_room4 dd))
)
(:action dummy-left-63y_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (in a5 room4) (not (inroom table1 room4)) (immediate-dummy-63y_observe-table_a5_table1_room4 dd) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-63y_observe-table_a5_table1_room4 dd)) (dummy-left-63y_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-63y_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (in a5 room4) (inroom table1 room4) (immediate-dummy-63y_observe-table_a5_table1_room4 dd) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-63y_observe-table_a5_table1_room4 dd)) (dummy-right-63y_observe-table_a5_table1_room4 dd))
)
(:action act-zi8_joint-lift-table_a4_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-63y_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (available a5) (in a5 room3) (Kinroom table1 room4 V_FALSE))
:effect 
(and (pre-zi8_joint-lift-table_a4_a5_table1_room3 dd) (not (available a5)))
)
(:action act-kp4_joint-move-table_a4_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-zi8_joint-lift-table_a4_a5_table1_room3 dd) (in a5 room3))
:effect 
(and (pre-kp4_joint-move-table_a4_a5_table1_room3_room4 dd) (not (pre-zi8_joint-lift-table_a4_a5_table1_room3 dd)) (not (in a5 room3)) (in a5 room4))
)
(:action act-qlx_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-kp4_joint-move-table_a4_a5_table1_room3_room4 dd) (in a5 room4))
:effect 
(and (pre-qlx_joint-drop-table_a4_a5_table1_room4 dd) (not (pre-kp4_joint-move-table_a4_a5_table1_room3_room4 dd)) (available a5))
)
(:action goal-achieve-qlx_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-qlx_joint-drop-table_a4_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-qlx_joint-drop-table_a4_a5_table1_room4 dd)))
)
(:action act-b5o_observe-table_a2_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-63y_observe-table_a5_table1_room4 dd) (immediate-dummy-b5o_observe-table_a2_table4_room7 dd) (inroom table1 room4) (in a5 room7) (Kinroom table1 room4 V_TRUE) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-b5o_observe-table_a2_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-63y_observe-table_a5_table1_room4 dd) (immediate-dummy-b5o_observe-table_a2_table4_room7 dd) (inroom table1 room4) (in a5 room7) (Kinroom table1 room4 V_TRUE) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-b5o_observe-table_a2_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-63y_observe-table_a5_table1_room4 dd) (inroom table1 room4) (in a5 room7) (not (dummy-left-b5o_observe-table_a2_table4_room7 dd)) (not (dummy-right-b5o_observe-table_a2_table4_room7 dd)) (Kinroom table1 room4 V_TRUE))
:effect 
(and (immediate-dummy-b5o_observe-table_a2_table4_room7 dd))
)
(:action dummy-left-b5o_observe-table_a2_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-63y_observe-table_a5_table1_room4 dd) (inroom table1 room4) (in a5 room7) (not (inroom table4 room7)) (immediate-dummy-b5o_observe-table_a2_table4_room7 dd) (Kinroom table1 room4 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (immediate-dummy-b5o_observe-table_a2_table4_room7 dd)) (dummy-left-b5o_observe-table_a2_table4_room7 dd))
)
(:action dummy-right-b5o_observe-table_a2_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-63y_observe-table_a5_table1_room4 dd) (inroom table1 room4) (in a5 room7) (inroom table4 room7) (immediate-dummy-b5o_observe-table_a2_table4_room7 dd) (Kinroom table1 room4 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (immediate-dummy-b5o_observe-table_a2_table4_room7 dd)) (dummy-right-b5o_observe-table_a2_table4_room7 dd))
)
(:action act-jdn_joint-lift-table_a2_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b5o_observe-table_a2_table4_room7 dd) (not (inroom table4 room7)) (inroom table1 room4) (available a5) (in a5 room6) (Kinroom table4 room7 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (pre-jdn_joint-lift-table_a2_a5_table4_room6 dd) (not (available a5)))
)
(:action act-q0a_joint-move-table_a2_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-jdn_joint-lift-table_a2_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-q0a_joint-move-table_a2_a5_table4_room6_room7 dd) (not (pre-jdn_joint-lift-table_a2_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-fsx_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-q0a_joint-move-table_a2_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-fsx_joint-drop-table_a2_a5_table4_room7 dd) (not (pre-q0a_joint-move-table_a2_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-fsx_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-fsx_joint-drop-table_a2_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-fsx_joint-drop-table_a2_a5_table4_room7 dd)))
)
(:action goal-achieve-right-b5o_observe-table_a2_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b5o_observe-table_a2_table4_room7 dd) (inroom table4 room7) (inroom table1 room4) (Kinroom table4 room7 V_TRUE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-b5o_observe-table_a2_table4_room7 dd)))
)
(:action act-0zj_observe-table_a5_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-12e_observe-table_a3_table2_room1 dd) (immediate-dummy-0zj_observe-table_a5_table3_room6 dd) (inroom table2 room1) (in a5 room6) (Kinroom table2 room1 V_TRUE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-0zj_observe-table_a5_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-12e_observe-table_a3_table2_room1 dd) (immediate-dummy-0zj_observe-table_a5_table3_room6 dd) (inroom table2 room1) (in a5 room6) (Kinroom table2 room1 V_TRUE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-0zj_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-12e_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a5 room6) (not (dummy-left-0zj_observe-table_a5_table3_room6 dd)) (not (dummy-right-0zj_observe-table_a5_table3_room6 dd)) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-0zj_observe-table_a5_table3_room6 dd))
)
(:action dummy-left-0zj_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-12e_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a5 room6) (not (inroom table3 room6)) (immediate-dummy-0zj_observe-table_a5_table3_room6 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-0zj_observe-table_a5_table3_room6 dd)) (dummy-left-0zj_observe-table_a5_table3_room6 dd))
)
(:action dummy-right-0zj_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-12e_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a5 room6) (inroom table3 room6) (immediate-dummy-0zj_observe-table_a5_table3_room6 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-0zj_observe-table_a5_table3_room6 dd)) (dummy-right-0zj_observe-table_a5_table3_room6 dd))
)
(:action act-iam_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0zj_observe-table_a5_table3_room6 dd) (immediate-dummy-iam_observe-table_a5_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-iam_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0zj_observe-table_a5_table3_room6 dd) (immediate-dummy-iam_observe-table_a5_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-iam_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0zj_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room6) (not (dummy-left-iam_observe-table_a5_table4_room6 dd)) (not (dummy-right-iam_observe-table_a5_table4_room6 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-iam_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-iam_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0zj_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room6) (not (inroom table4 room6)) (immediate-dummy-iam_observe-table_a5_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-iam_observe-table_a5_table4_room6 dd)) (dummy-left-iam_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-iam_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0zj_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room6) (inroom table4 room6) (immediate-dummy-iam_observe-table_a5_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-iam_observe-table_a5_table4_room6 dd)) (dummy-right-iam_observe-table_a5_table4_room6 dd))
)
(:action goal-achieve-left-iam_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iam_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room1) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-iam_observe-table_a5_table4_room6 dd)))
)
(:action act-8v7_joint-lift-table_a4_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iam_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (inroom table2 room1) (available a5) (in a5 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-8v7_joint-lift-table_a4_a5_table4_room6 dd) (not (available a5)))
)
(:action act-4xl_joint-move-table_a4_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-8v7_joint-lift-table_a4_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-4xl_joint-move-table_a4_a5_table4_room6_room7 dd) (not (pre-8v7_joint-lift-table_a4_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-e9g_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-4xl_joint-move-table_a4_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-e9g_joint-drop-table_a4_a5_table4_room7 dd) (not (pre-4xl_joint-move-table_a4_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-e9g_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-e9g_joint-drop-table_a4_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-e9g_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-zqr_observe-table_a5_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0zj_observe-table_a5_table3_room6 dd) (immediate-dummy-zqr_observe-table_a5_table4_room7 dd) (inroom table3 room6) (inroom table2 room1) (in a5 room7) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-zqr_observe-table_a5_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0zj_observe-table_a5_table3_room6 dd) (immediate-dummy-zqr_observe-table_a5_table4_room7 dd) (inroom table3 room6) (inroom table2 room1) (in a5 room7) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-zqr_observe-table_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0zj_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table2 room1) (in a5 room7) (not (dummy-left-zqr_observe-table_a5_table4_room7 dd)) (not (dummy-right-zqr_observe-table_a5_table4_room7 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-zqr_observe-table_a5_table4_room7 dd))
)
(:action dummy-left-zqr_observe-table_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0zj_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table2 room1) (in a5 room7) (not (inroom table4 room7)) (immediate-dummy-zqr_observe-table_a5_table4_room7 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (immediate-dummy-zqr_observe-table_a5_table4_room7 dd)) (dummy-left-zqr_observe-table_a5_table4_room7 dd))
)
(:action dummy-right-zqr_observe-table_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0zj_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table2 room1) (in a5 room7) (inroom table4 room7) (immediate-dummy-zqr_observe-table_a5_table4_room7 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (immediate-dummy-zqr_observe-table_a5_table4_room7 dd)) (dummy-right-zqr_observe-table_a5_table4_room7 dd))
)
(:action act-3ki_joint-lift-table_a4_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-zqr_observe-table_a5_table4_room7 dd) (not (inroom table4 room7)) (inroom table3 room6) (inroom table2 room1) (available a5) (in a5 room6) (Kinroom table4 room7 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-3ki_joint-lift-table_a4_a5_table3_room6 dd) (not (available a5)))
)
(:action act-uor_joint-move-table_a4_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-3ki_joint-lift-table_a4_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-uor_joint-move-table_a4_a5_table3_room6_room5 dd) (not (pre-3ki_joint-lift-table_a4_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-154_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-uor_joint-move-table_a4_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-154_joint-drop-table_a4_a5_table3_room5 dd) (not (pre-uor_joint-move-table_a4_a5_table3_room6_room5 dd)) (available a5))
)
(:action act-wte_joint-lift-table_a4_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-154_joint-drop-table_a4_a5_table3_room5 dd) (available a5) (in a5 room6))
:effect 
(and (pre-wte_joint-lift-table_a4_a5_table4_room6 dd) (not (pre-154_joint-drop-table_a4_a5_table3_room5 dd)) (not (available a5)))
)
(:action act-p1k_joint-move-table_a4_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-wte_joint-lift-table_a4_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-p1k_joint-move-table_a4_a5_table4_room6_room7 dd) (not (pre-wte_joint-lift-table_a4_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-b8s_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-p1k_joint-move-table_a4_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-b8s_joint-drop-table_a4_a5_table4_room7 dd) (not (pre-p1k_joint-move-table_a4_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-b8s_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-b8s_joint-drop-table_a4_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-b8s_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-zbo_joint-lift-table_a4_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zqr_observe-table_a5_table4_room7 dd) (inroom table4 room7) (inroom table3 room6) (inroom table2 room1) (available a5) (in a5 room6) (Kinroom table4 room7 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-zbo_joint-lift-table_a4_a5_table3_room6 dd) (not (available a5)))
)
(:action act-srz_joint-move-table_a4_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-zbo_joint-lift-table_a4_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-srz_joint-move-table_a4_a5_table3_room6_room5 dd) (not (pre-zbo_joint-lift-table_a4_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-zgi_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-srz_joint-move-table_a4_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-zgi_joint-drop-table_a4_a5_table3_room5 dd) (not (pre-srz_joint-move-table_a4_a5_table3_room6_room5 dd)) (available a5))
)
(:action goal-achieve-zgi_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-zgi_joint-drop-table_a4_a5_table3_room5 dd))
:effect 
(and (done-goal dd) (not (pre-zgi_joint-drop-table_a4_a5_table3_room5 dd)))
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
