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
(init-w1g_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-w1g_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-w1g_observe-table_a1_table2_room2 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-w1g_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-jci_observe-table_a4_table3_room6 ?dd - dummy)
(dummy-left-jci_observe-table_a4_table3_room6 ?dd - dummy)
(immediate-dummy-3hd_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-3hd_observe-table_a4_table4_room6 ?dd - dummy)
(pre-cuz_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-kqg_joint-move-table_a3_a1_table2_room2_room1 ?dd - dummy)
(pre-luq_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-3hd_observe-table_a4_table4_room6 ?dd - dummy)
(pre-21f_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-ez7_joint-move-table_a1_a3_table2_room2_room3 ?dd - dummy)
(immediate-dummy-y1l_observe-table_a1_table1_room3 ?dd - dummy)
(dummy-left-y1l_observe-table_a1_table1_room3 ?dd - dummy)
(pre-0nx_joint-move-table_a1_a3_table2_room3_room2 ?dd - dummy)
(pre-87f_joint-move-table_a3_a1_table2_room2_room1 ?dd - dummy)
(pre-q6o_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-y1l_observe-table_a1_table1_room3 ?dd - dummy)
(pre-hc6_joint-drop-table_a1_a3_table2_room3 ?dd - dummy)
(pre-o6k_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-as4_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-7zj_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(pre-iu4_joint-lift-table_a1_a3_table2_room3 ?dd - dummy)
(pre-e6n_joint-move-table_a1_a3_table2_room3_room2 ?dd - dummy)
(pre-psc_joint-move-table_a3_a1_table2_room2_room1 ?dd - dummy)
(pre-jul_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-jci_observe-table_a4_table3_room6 ?dd - dummy)
(immediate-dummy-6c3_observe-table_a3_table1_room3 ?dd - dummy)
(dummy-left-6c3_observe-table_a3_table1_room3 ?dd - dummy)
(pre-pew_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-t3u_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-1er_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-6c3_observe-table_a3_table1_room3 ?dd - dummy)
(pre-un5_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-5dg_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-d1b_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-w1g_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (init-w1g_observe-table_a1_table2_room2 dd) (immediate-dummy-w1g_observe-table_a1_table2_room2 dd) (in a3 room2) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-w1g_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (init-w1g_observe-table_a1_table2_room2 dd) (immediate-dummy-w1g_observe-table_a1_table2_room2 dd) (in a3 room2) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-w1g_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-w1g_observe-table_a1_table2_room2 dd) (not (dummy-left-w1g_observe-table_a1_table2_room2 dd)) (not (dummy-right-w1g_observe-table_a1_table2_room2 dd)))
:effect 
(and (immediate-dummy-w1g_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-w1g_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-w1g_observe-table_a1_table2_room2 dd) (in a3 room2) (not (inroom table2 room2)) (immediate-dummy-w1g_observe-table_a1_table2_room2 dd) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (init-w1g_observe-table_a1_table2_room2 dd)) (not (immediate-dummy-w1g_observe-table_a1_table2_room2 dd)) (dummy-left-w1g_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-w1g_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-w1g_observe-table_a1_table2_room2 dd) (in a3 room2) (inroom table2 room2) (immediate-dummy-w1g_observe-table_a1_table2_room2 dd) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (init-w1g_observe-table_a1_table2_room2 dd)) (not (immediate-dummy-w1g_observe-table_a1_table2_room2 dd)) (dummy-right-w1g_observe-table_a1_table2_room2 dd))
)
(:action goal-achieve-left-w1g_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w1g_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-w1g_observe-table_a1_table2_room2 dd)))
)
(:action act-jci_observe-table_a4_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w1g_observe-table_a1_table2_room2 dd) (immediate-dummy-jci_observe-table_a4_table3_room6 dd) (inroom table2 room2) (in a3 room6) (Kinroom table2 room2 V_TRUE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-jci_observe-table_a4_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w1g_observe-table_a1_table2_room2 dd) (immediate-dummy-jci_observe-table_a4_table3_room6 dd) (inroom table2 room2) (in a3 room6) (Kinroom table2 room2 V_TRUE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-jci_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w1g_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a3 room6) (not (dummy-left-jci_observe-table_a4_table3_room6 dd)) (not (dummy-right-jci_observe-table_a4_table3_room6 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-jci_observe-table_a4_table3_room6 dd))
)
(:action dummy-left-jci_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w1g_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a3 room6) (not (inroom table3 room6)) (immediate-dummy-jci_observe-table_a4_table3_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-jci_observe-table_a4_table3_room6 dd)) (dummy-left-jci_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-jci_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w1g_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a3 room6) (inroom table3 room6) (immediate-dummy-jci_observe-table_a4_table3_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-jci_observe-table_a4_table3_room6 dd)) (dummy-right-jci_observe-table_a4_table3_room6 dd))
)
(:action act-3hd_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jci_observe-table_a4_table3_room6 dd) (immediate-dummy-3hd_observe-table_a4_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a3 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-3hd_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jci_observe-table_a4_table3_room6 dd) (immediate-dummy-3hd_observe-table_a4_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a3 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-3hd_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jci_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a3 room6) (not (dummy-left-3hd_observe-table_a4_table4_room6 dd)) (not (dummy-right-3hd_observe-table_a4_table4_room6 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-3hd_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-3hd_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jci_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a3 room6) (not (inroom table4 room6)) (immediate-dummy-3hd_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-3hd_observe-table_a4_table4_room6 dd)) (dummy-left-3hd_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-3hd_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jci_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a3 room6) (inroom table4 room6) (immediate-dummy-3hd_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-3hd_observe-table_a4_table4_room6 dd)) (dummy-right-3hd_observe-table_a4_table4_room6 dd))
)
(:action act-cuz_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3hd_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room2) (available a3) (in a3 room2) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-cuz_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-kqg_joint-move-table_a3_a1_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-cuz_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-kqg_joint-move-table_a3_a1_table2_room2_room1 dd) (not (pre-cuz_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-luq_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-kqg_joint-move-table_a3_a1_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-luq_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-kqg_joint-move-table_a3_a1_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-luq_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-luq_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-luq_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-21f_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3hd_observe-table_a4_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (inroom table2 room2) (available a3) (in a3 room2) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-21f_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-ez7_joint-move-table_a1_a3_table2_room2_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-21f_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-ez7_joint-move-table_a1_a3_table2_room2_room3 dd) (not (pre-21f_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room3))
)
(:action act-y1l_observe-table_a1_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (pre-ez7_joint-move-table_a1_a3_table2_room2_room3 dd) (immediate-dummy-y1l_observe-table_a1_table1_room3 dd) (in a3 room3) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-y1l_observe-table_a1_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (pre-ez7_joint-move-table_a1_a3_table2_room2_room3 dd) (immediate-dummy-y1l_observe-table_a1_table1_room3 dd) (in a3 room3) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-y1l_observe-table_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-ez7_joint-move-table_a1_a3_table2_room2_room3 dd) (in a3 room3) (not (dummy-left-y1l_observe-table_a1_table1_room3 dd)) (not (dummy-right-y1l_observe-table_a1_table1_room3 dd)))
:effect 
(and (immediate-dummy-y1l_observe-table_a1_table1_room3 dd))
)
(:action dummy-left-y1l_observe-table_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (in a3 room3) (not (inroom table1 room3)) (immediate-dummy-y1l_observe-table_a1_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-y1l_observe-table_a1_table1_room3 dd)) (dummy-left-y1l_observe-table_a1_table1_room3 dd))
)
(:action dummy-right-y1l_observe-table_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (in a3 room3) (inroom table1 room3) (immediate-dummy-y1l_observe-table_a1_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-y1l_observe-table_a1_table1_room3 dd)) (dummy-right-y1l_observe-table_a1_table1_room3 dd))
)
(:action act-0nx_joint-move-table_a1_a3_table2_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y1l_observe-table_a1_table1_room3 dd) (not (inroom table1 room3)) (in a3 room3) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-0nx_joint-move-table_a1_a3_table2_room3_room2 dd) (not (in a3 room3)) (in a3 room2))
)
(:action act-87f_joint-move-table_a3_a1_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-0nx_joint-move-table_a1_a3_table2_room3_room2 dd) (in a3 room2))
:effect 
(and (pre-87f_joint-move-table_a3_a1_table2_room2_room1 dd) (not (pre-0nx_joint-move-table_a1_a3_table2_room3_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-q6o_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-87f_joint-move-table_a3_a1_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-q6o_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-87f_joint-move-table_a3_a1_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-q6o_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-q6o_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-q6o_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-hc6_joint-drop-table_a1_a3_table2_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y1l_observe-table_a1_table1_room3 dd) (inroom table1 room3) (in a3 room3) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-hc6_joint-drop-table_a1_a3_table2_room3 dd) (available a3))
)
(:action act-o6k_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-hc6_joint-drop-table_a1_a3_table2_room3 dd) (available a3) (in a3 room3))
:effect 
(and (pre-o6k_joint-lift-table_a1_a3_table1_room3 dd) (not (pre-hc6_joint-drop-table_a1_a3_table2_room3 dd)) (not (available a3)))
)
(:action act-as4_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-o6k_joint-lift-table_a1_a3_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-as4_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-o6k_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-7zj_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-as4_joint-move-table_a1_a3_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-7zj_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-as4_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a3))
)
(:action act-iu4_joint-lift-table_a1_a3_table2_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-7zj_joint-drop-table_a1_a3_table1_room4 dd) (available a3) (in a3 room3))
:effect 
(and (pre-iu4_joint-lift-table_a1_a3_table2_room3 dd) (not (pre-7zj_joint-drop-table_a1_a3_table1_room4 dd)) (not (available a3)))
)
(:action act-e6n_joint-move-table_a1_a3_table2_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-iu4_joint-lift-table_a1_a3_table2_room3 dd) (in a3 room3))
:effect 
(and (pre-e6n_joint-move-table_a1_a3_table2_room3_room2 dd) (not (pre-iu4_joint-lift-table_a1_a3_table2_room3 dd)) (not (in a3 room3)) (in a3 room2))
)
(:action act-psc_joint-move-table_a3_a1_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-e6n_joint-move-table_a1_a3_table2_room3_room2 dd) (in a3 room2))
:effect 
(and (pre-psc_joint-move-table_a3_a1_table2_room2_room1 dd) (not (pre-e6n_joint-move-table_a1_a3_table2_room3_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-jul_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-psc_joint-move-table_a3_a1_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-jul_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-psc_joint-move-table_a3_a1_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-jul_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-jul_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-jul_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-6c3_observe-table_a3_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jci_observe-table_a4_table3_room6 dd) (immediate-dummy-6c3_observe-table_a3_table1_room3 dd) (inroom table3 room6) (inroom table2 room2) (in a3 room3) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-6c3_observe-table_a3_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jci_observe-table_a4_table3_room6 dd) (immediate-dummy-6c3_observe-table_a3_table1_room3 dd) (inroom table3 room6) (inroom table2 room2) (in a3 room3) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-6c3_observe-table_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jci_observe-table_a4_table3_room6 dd) (inroom table3 room6) (inroom table2 room2) (in a3 room3) (not (dummy-left-6c3_observe-table_a3_table1_room3 dd)) (not (dummy-right-6c3_observe-table_a3_table1_room3 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-6c3_observe-table_a3_table1_room3 dd))
)
(:action dummy-left-6c3_observe-table_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jci_observe-table_a4_table3_room6 dd) (inroom table3 room6) (inroom table2 room2) (in a3 room3) (not (inroom table1 room3)) (immediate-dummy-6c3_observe-table_a3_table1_room3 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-6c3_observe-table_a3_table1_room3 dd)) (dummy-left-6c3_observe-table_a3_table1_room3 dd))
)
(:action dummy-right-6c3_observe-table_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jci_observe-table_a4_table3_room6 dd) (inroom table3 room6) (inroom table2 room2) (in a3 room3) (inroom table1 room3) (immediate-dummy-6c3_observe-table_a3_table1_room3 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-6c3_observe-table_a3_table1_room3 dd)) (dummy-right-6c3_observe-table_a3_table1_room3 dd))
)
(:action act-pew_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6c3_observe-table_a3_table1_room3 dd) (not (inroom table1 room3)) (inroom table3 room6) (inroom table2 room2) (available a3) (in a3 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-pew_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-t3u_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-pew_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-t3u_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-pew_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-1er_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-t3u_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-1er_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-t3u_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-1er_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-1er_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-1er_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-un5_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-6c3_observe-table_a3_table1_room3 dd) (inroom table1 room3) (inroom table3 room6) (inroom table2 room2) (available a3) (in a3 room3) (Kinroom table1 room3 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-un5_joint-lift-table_a1_a3_table1_room3 dd) (not (available a3)))
)
(:action act-5dg_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-un5_joint-lift-table_a1_a3_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-5dg_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-un5_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-d1b_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-5dg_joint-move-table_a1_a3_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-d1b_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-5dg_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-d1b_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-d1b_joint-drop-table_a1_a3_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-d1b_joint-drop-table_a1_a3_table1_room4 dd)))
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
