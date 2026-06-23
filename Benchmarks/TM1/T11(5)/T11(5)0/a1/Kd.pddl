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
 tag0 - TAG_TYPE ; (inroom table3 room5) (inroom table4 room6)
 tag1 - TAG_TYPE ; (inroom table3 room6) (inroom table4 room7)
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
(init-0w3_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-0w3_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-0w3_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-rjy_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-rjy_observe-table_a4_table1_room3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-rjy_observe-table_a4_table1_room3 ?dd - dummy)
(pre-unr_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-4dn_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-v9n_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(dummy-right-0w3_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-n7m_observe-table_a5_table3_room5 ?dd - dummy)
(dummy-left-n7m_observe-table_a5_table3_room5 ?dd - dummy)
(pre-xmh_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-yrb_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-qie_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-n7m_observe-table_a5_table3_room5 ?dd - dummy)
(immediate-dummy-3jc_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-3jc_observe-table_a5_table4_room6 ?dd - dummy)
(immediate-dummy-qf3_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-qf3_observe-table_a4_table1_room3 ?dd - dummy)
(pre-npv_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-lbq_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-5wb_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-qf3_observe-table_a4_table1_room3 ?dd - dummy)
(pre-kiw_joint-lift-table_a1_a4_table1_room3 ?dd - dummy)
(pre-v4f_joint-move-table_a1_a4_table1_room3_room4 ?dd - dummy)
(pre-nnt_joint-drop-table_a1_a4_table1_room4 ?dd - dummy)
(dummy-right-3jc_observe-table_a5_table4_room6 ?dd - dummy)
(immediate-dummy-lee_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-lee_observe-table_a4_table1_room3 ?dd - dummy)
(pre-cce_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-1bb_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-t1e_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-lee_observe-table_a4_table1_room3 ?dd - dummy)
(pre-on7_joint-lift-table_a1_a4_table1_room3 ?dd - dummy)
(pre-uiu_joint-move-table_a1_a4_table1_room3_room4 ?dd - dummy)
(pre-1b6_joint-drop-table_a1_a4_table1_room4 ?dd - dummy)
(pre-61z_joint-lift-table_a1_a5_table4_room6 ?dd - dummy)
(pre-foj_joint-move-table_a1_a5_table4_room6_room7 ?dd - dummy)
(pre-p4n_joint-drop-table_a1_a5_table4_room7 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-0w3_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (init-0w3_observe-table_a1_table2_room2 dd) (immediate-dummy-0w3_observe-table_a1_table2_room2 dd) (in a1 room2) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-0w3_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (init-0w3_observe-table_a1_table2_room2 dd) (immediate-dummy-0w3_observe-table_a1_table2_room2 dd) (in a1 room2) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-0w3_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-0w3_observe-table_a1_table2_room2 dd) (not (dummy-left-0w3_observe-table_a1_table2_room2 dd)) (not (dummy-right-0w3_observe-table_a1_table2_room2 dd)))
:effect 
(and (immediate-dummy-0w3_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-0w3_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-0w3_observe-table_a1_table2_room2 dd) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-0w3_observe-table_a1_table2_room2 dd) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (init-0w3_observe-table_a1_table2_room2 dd)) (not (immediate-dummy-0w3_observe-table_a1_table2_room2 dd)) (dummy-left-0w3_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-0w3_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-0w3_observe-table_a1_table2_room2 dd) (in a1 room2) (inroom table2 room2) (immediate-dummy-0w3_observe-table_a1_table2_room2 dd) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (init-0w3_observe-table_a1_table2_room2 dd)) (not (immediate-dummy-0w3_observe-table_a1_table2_room2 dd)) (dummy-right-0w3_observe-table_a1_table2_room2 dd))
)
(:action act-rjy_observe-table_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0w3_observe-table_a1_table2_room2 dd) (immediate-dummy-rjy_observe-table_a4_table1_room3 dd) (not (inroom table2 room2)) (in a1 room3) (Kinroom table2 room2 V_FALSE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-rjy_observe-table_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0w3_observe-table_a1_table2_room2 dd) (immediate-dummy-rjy_observe-table_a4_table1_room3 dd) (not (inroom table2 room2)) (in a1 room3) (Kinroom table2 room2 V_FALSE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-rjy_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0w3_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (in a1 room3) (not (dummy-left-rjy_observe-table_a4_table1_room3 dd)) (not (dummy-right-rjy_observe-table_a4_table1_room3 dd)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-rjy_observe-table_a4_table1_room3 dd))
)
(:action dummy-left-rjy_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0w3_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (in a1 room3) (not (inroom table1 room3)) (immediate-dummy-rjy_observe-table_a4_table1_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-rjy_observe-table_a4_table1_room3 dd)) (dummy-left-rjy_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-rjy_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0w3_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (in a1 room3) (inroom table1 room3) (immediate-dummy-rjy_observe-table_a4_table1_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-rjy_observe-table_a4_table1_room3 dd)) (dummy-right-rjy_observe-table_a4_table1_room3 dd))
)
(:action goal-achieve-left-rjy_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rjy_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table2 room2)) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-rjy_observe-table_a4_table1_room3 dd)))
)
(:action act-unr_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-rjy_observe-table_a4_table1_room3 dd) (inroom table1 room3) (not (inroom table2 room2)) (available a1) (in a1 room3) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (pre-unr_joint-lift-table_a1_a3_table1_room3 dd) (not (available a1)))
)
(:action act-4dn_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-unr_joint-lift-table_a1_a3_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-4dn_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-unr_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-v9n_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-4dn_joint-move-table_a1_a3_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-v9n_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-4dn_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-v9n_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-v9n_joint-drop-table_a1_a3_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-v9n_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action act-n7m_observe-table_a5_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0w3_observe-table_a1_table2_room2 dd) (immediate-dummy-n7m_observe-table_a5_table3_room5 dd) (inroom table2 room2) (in a1 room5) (Kinroom table2 room2 V_TRUE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-n7m_observe-table_a5_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0w3_observe-table_a1_table2_room2 dd) (immediate-dummy-n7m_observe-table_a5_table3_room5 dd) (inroom table2 room2) (in a1 room5) (Kinroom table2 room2 V_TRUE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-n7m_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0w3_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a1 room5) (not (dummy-left-n7m_observe-table_a5_table3_room5 dd)) (not (dummy-right-n7m_observe-table_a5_table3_room5 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-n7m_observe-table_a5_table3_room5 dd))
)
(:action dummy-left-n7m_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0w3_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a1 room5) (not (inroom table3 room5)) (immediate-dummy-n7m_observe-table_a5_table3_room5 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-n7m_observe-table_a5_table3_room5 dd)) (dummy-left-n7m_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-n7m_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0w3_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a1 room5) (inroom table3 room5) (immediate-dummy-n7m_observe-table_a5_table3_room5 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-n7m_observe-table_a5_table3_room5 dd)) (dummy-right-n7m_observe-table_a5_table3_room5 dd))
)
(:action act-xmh_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n7m_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (inroom table2 room2) (available a1) (in a1 room2) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-xmh_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-yrb_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-xmh_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-yrb_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-xmh_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-qie_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-yrb_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-qie_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-yrb_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-qie_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-qie_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-qie_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-3jc_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n7m_observe-table_a5_table3_room5 dd) (immediate-dummy-3jc_observe-table_a5_table4_room6 dd) (inroom table3 room5) (inroom table2 room2) (in a1 room6) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-3jc_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n7m_observe-table_a5_table3_room5 dd) (immediate-dummy-3jc_observe-table_a5_table4_room6 dd) (inroom table3 room5) (inroom table2 room2) (in a1 room6) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-3jc_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n7m_observe-table_a5_table3_room5 dd) (inroom table3 room5) (inroom table2 room2) (in a1 room6) (not (dummy-left-3jc_observe-table_a5_table4_room6 dd)) (not (dummy-right-3jc_observe-table_a5_table4_room6 dd)) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-3jc_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-3jc_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n7m_observe-table_a5_table3_room5 dd) (inroom table3 room5) (inroom table2 room2) (in a1 room6) (not (inroom table4 room6)) (immediate-dummy-3jc_observe-table_a5_table4_room6 dd) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-3jc_observe-table_a5_table4_room6 dd)) (dummy-left-3jc_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-3jc_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n7m_observe-table_a5_table3_room5 dd) (inroom table3 room5) (inroom table2 room2) (in a1 room6) (inroom table4 room6) (immediate-dummy-3jc_observe-table_a5_table4_room6 dd) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-3jc_observe-table_a5_table4_room6 dd)) (dummy-right-3jc_observe-table_a5_table4_room6 dd))
)
(:action act-qf3_observe-table_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3jc_observe-table_a5_table4_room6 dd) (immediate-dummy-qf3_observe-table_a4_table1_room3 dd) (not (inroom table4 room6)) (inroom table3 room5) (inroom table2 room2) (in a1 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-qf3_observe-table_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3jc_observe-table_a5_table4_room6 dd) (immediate-dummy-qf3_observe-table_a4_table1_room3 dd) (not (inroom table4 room6)) (inroom table3 room5) (inroom table2 room2) (in a1 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-qf3_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3jc_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (inroom table3 room5) (inroom table2 room2) (in a1 room3) (not (dummy-left-qf3_observe-table_a4_table1_room3 dd)) (not (dummy-right-qf3_observe-table_a4_table1_room3 dd)) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-qf3_observe-table_a4_table1_room3 dd))
)
(:action dummy-left-qf3_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3jc_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (inroom table3 room5) (inroom table2 room2) (in a1 room3) (not (inroom table1 room3)) (immediate-dummy-qf3_observe-table_a4_table1_room3 dd) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-qf3_observe-table_a4_table1_room3 dd)) (dummy-left-qf3_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-qf3_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3jc_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (inroom table3 room5) (inroom table2 room2) (in a1 room3) (inroom table1 room3) (immediate-dummy-qf3_observe-table_a4_table1_room3 dd) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-qf3_observe-table_a4_table1_room3 dd)) (dummy-right-qf3_observe-table_a4_table1_room3 dd))
)
(:action act-npv_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qf3_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table4 room6)) (inroom table3 room5) (inroom table2 room2) (available a1) (in a1 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-npv_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-lbq_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-npv_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-lbq_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-npv_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-5wb_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-lbq_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-5wb_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-lbq_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-5wb_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-5wb_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-5wb_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-kiw_joint-lift-table_a1_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qf3_observe-table_a4_table1_room3 dd) (inroom table1 room3) (not (inroom table4 room6)) (inroom table3 room5) (inroom table2 room2) (available a1) (in a1 room3) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-kiw_joint-lift-table_a1_a4_table1_room3 dd) (not (available a1)))
)
(:action act-v4f_joint-move-table_a1_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-kiw_joint-lift-table_a1_a4_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-v4f_joint-move-table_a1_a4_table1_room3_room4 dd) (not (pre-kiw_joint-lift-table_a1_a4_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-nnt_joint-drop-table_a1_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-v4f_joint-move-table_a1_a4_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-nnt_joint-drop-table_a1_a4_table1_room4 dd) (not (pre-v4f_joint-move-table_a1_a4_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-nnt_joint-drop-table_a1_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-nnt_joint-drop-table_a1_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-nnt_joint-drop-table_a1_a4_table1_room4 dd)))
)
(:action act-lee_observe-table_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3jc_observe-table_a5_table4_room6 dd) (immediate-dummy-lee_observe-table_a4_table1_room3 dd) (inroom table4 room6) (inroom table3 room5) (inroom table2 room2) (in a1 room3) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-lee_observe-table_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3jc_observe-table_a5_table4_room6 dd) (immediate-dummy-lee_observe-table_a4_table1_room3 dd) (inroom table4 room6) (inroom table3 room5) (inroom table2 room2) (in a1 room3) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-lee_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3jc_observe-table_a5_table4_room6 dd) (inroom table4 room6) (inroom table3 room5) (inroom table2 room2) (in a1 room3) (not (dummy-left-lee_observe-table_a4_table1_room3 dd)) (not (dummy-right-lee_observe-table_a4_table1_room3 dd)) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-lee_observe-table_a4_table1_room3 dd))
)
(:action dummy-left-lee_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3jc_observe-table_a5_table4_room6 dd) (inroom table4 room6) (inroom table3 room5) (inroom table2 room2) (in a1 room3) (not (inroom table1 room3)) (immediate-dummy-lee_observe-table_a4_table1_room3 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-lee_observe-table_a4_table1_room3 dd)) (dummy-left-lee_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-lee_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3jc_observe-table_a5_table4_room6 dd) (inroom table4 room6) (inroom table3 room5) (inroom table2 room2) (in a1 room3) (inroom table1 room3) (immediate-dummy-lee_observe-table_a4_table1_room3 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-lee_observe-table_a4_table1_room3 dd)) (dummy-right-lee_observe-table_a4_table1_room3 dd))
)
(:action act-cce_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-lee_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (inroom table4 room6) (inroom table3 room5) (inroom table2 room2) (available a1) (in a1 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-cce_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-1bb_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-cce_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-1bb_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-cce_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-t1e_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-1bb_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-t1e_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-1bb_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-t1e_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-t1e_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-t1e_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-on7_joint-lift-table_a1_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lee_observe-table_a4_table1_room3 dd) (inroom table1 room3) (inroom table4 room6) (inroom table3 room5) (inroom table2 room2) (available a1) (in a1 room3) (Kinroom table1 room3 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-on7_joint-lift-table_a1_a4_table1_room3 dd) (not (available a1)))
)
(:action act-uiu_joint-move-table_a1_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-on7_joint-lift-table_a1_a4_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-uiu_joint-move-table_a1_a4_table1_room3_room4 dd) (not (pre-on7_joint-lift-table_a1_a4_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-1b6_joint-drop-table_a1_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-uiu_joint-move-table_a1_a4_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-1b6_joint-drop-table_a1_a4_table1_room4 dd) (not (pre-uiu_joint-move-table_a1_a4_table1_room3_room4 dd)) (available a1))
)
(:action act-61z_joint-lift-table_a1_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-1b6_joint-drop-table_a1_a4_table1_room4 dd) (available a1) (in a1 room6))
:effect 
(and (pre-61z_joint-lift-table_a1_a5_table4_room6 dd) (not (pre-1b6_joint-drop-table_a1_a4_table1_room4 dd)) (not (available a1)))
)
(:action act-foj_joint-move-table_a1_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-61z_joint-lift-table_a1_a5_table4_room6 dd) (in a1 room6))
:effect 
(and (pre-foj_joint-move-table_a1_a5_table4_room6_room7 dd) (not (pre-61z_joint-lift-table_a1_a5_table4_room6 dd)) (not (in a1 room6)) (in a1 room7))
)
(:action act-p4n_joint-drop-table_a1_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-foj_joint-move-table_a1_a5_table4_room6_room7 dd) (in a1 room7))
:effect 
(and (pre-p4n_joint-drop-table_a1_a5_table4_room7 dd) (not (pre-foj_joint-move-table_a1_a5_table4_room6_room7 dd)) (available a1))
)
(:action goal-achieve-p4n_joint-drop-table_a1_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-p4n_joint-drop-table_a1_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-p4n_joint-drop-table_a1_a5_table4_room7 dd)))
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
