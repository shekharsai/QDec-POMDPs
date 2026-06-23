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
(init-xjd_observe-table_a3_table2_room2 ?dd - dummy)
(immediate-dummy-xjd_observe-table_a3_table2_room2 ?dd - dummy)
(dummy-left-xjd_observe-table_a3_table2_room2 ?dd - dummy)
(immediate-dummy-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(dummy-left-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(pre-qiy_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
(pre-3k5_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
(pre-8gv_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
(dummy-right-xjd_observe-table_a3_table2_room2 ?dd - dummy)
(immediate-dummy-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(dummy-left-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(pre-vj6_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-8vz_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-ftr_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(immediate-dummy-ig9_observe-table_a5_table3_room6 ?dd - dummy)
(dummy-left-ig9_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-45q_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-45q_observe-table_a5_table4_room6 ?dd - dummy)
(pre-475_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
(pre-uzj_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
(pre-pzv_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
(dummy-right-45q_observe-table_a5_table4_room6 ?dd - dummy)
(pre-p1m_joint-lift-table_a3_a5_table4_room6 ?dd - dummy)
(pre-emv_joint-move-table_a3_a5_table4_room6_room5 ?dd - dummy)
(pre-3ov_joint-move-table_a3_a5_table4_room5_room6 ?dd - dummy)
(pre-zb2_joint-move-table_a3_a5_table4_room6_room7 ?dd - dummy)
(pre-bzx_joint-drop-table_a3_a5_table4_room7 ?dd - dummy)
(dummy-right-ig9_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-n4q_observe-table_a5_table4_room7 ?dd - dummy)
(dummy-left-n4q_observe-table_a5_table4_room7 ?dd - dummy)
(pre-5ib_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
(pre-z9o_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
(pre-pdj_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
(pre-0ph_joint-lift-table_a3_a5_table3_room6 ?dd - dummy)
(pre-1gu_joint-move-table_a3_a5_table3_room6_room5 ?dd - dummy)
(pre-lt4_joint-drop-table_a3_a5_table3_room5 ?dd - dummy)
(pre-mbh_joint-lift-table_a3_a5_table4_room6 ?dd - dummy)
(pre-6o2_joint-move-table_a3_a5_table4_room6_room7 ?dd - dummy)
(pre-ne4_joint-drop-table_a3_a5_table4_room7 ?dd - dummy)
(dummy-right-n4q_observe-table_a5_table4_room7 ?dd - dummy)
(pre-x3i_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
(pre-ig5_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
(pre-3tq_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
(pre-uz2_joint-lift-table_a3_a5_table3_room6 ?dd - dummy)
(pre-8zi_joint-move-table_a3_a5_table3_room6_room5 ?dd - dummy)
(pre-md8_joint-drop-table_a3_a5_table3_room5 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-xjd_observe-table_a3_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (init-xjd_observe-table_a3_table2_room2 dd) (immediate-dummy-xjd_observe-table_a3_table2_room2 dd) (in a3 room2) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-xjd_observe-table_a3_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (init-xjd_observe-table_a3_table2_room2 dd) (immediate-dummy-xjd_observe-table_a3_table2_room2 dd) (in a3 room2) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-xjd_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-xjd_observe-table_a3_table2_room2 dd) (not (dummy-left-xjd_observe-table_a3_table2_room2 dd)) (not (dummy-right-xjd_observe-table_a3_table2_room2 dd)))
:effect 
(and (immediate-dummy-xjd_observe-table_a3_table2_room2 dd))
)
(:action dummy-left-xjd_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-xjd_observe-table_a3_table2_room2 dd) (in a3 room2) (not (inroom table2 room2)) (immediate-dummy-xjd_observe-table_a3_table2_room2 dd) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (init-xjd_observe-table_a3_table2_room2 dd)) (not (immediate-dummy-xjd_observe-table_a3_table2_room2 dd)) (dummy-left-xjd_observe-table_a3_table2_room2 dd))
)
(:action dummy-right-xjd_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-xjd_observe-table_a3_table2_room2 dd) (in a3 room2) (inroom table2 room2) (immediate-dummy-xjd_observe-table_a3_table2_room2 dd) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (init-xjd_observe-table_a3_table2_room2 dd)) (not (immediate-dummy-xjd_observe-table_a3_table2_room2 dd)) (dummy-right-xjd_observe-table_a3_table2_room2 dd))
)
(:action act-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xjd_observe-table_a3_table2_room2 dd) (immediate-dummy-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (not (inroom table2 room2)) (in a3 room3) (Kinroom table2 room2 V_FALSE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xjd_observe-table_a3_table2_room2 dd) (immediate-dummy-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (not (inroom table2 room2)) (in a3 room3) (Kinroom table2 room2 V_FALSE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xjd_observe-table_a3_table2_room2 dd) (not (inroom table2 room2)) (in a3 room3) (not (dummy-left-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (not (dummy-right-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-left-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xjd_observe-table_a3_table2_room2 dd) (not (inroom table2 room2)) (in a3 room3) (not (inroom table1 room3)) (immediate-dummy-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-left-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-right-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xjd_observe-table_a3_table2_room2 dd) (not (inroom table2 room2)) (in a3 room3) (inroom table1 room3) (immediate-dummy-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-right-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action goal-achieve-left-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (not (inroom table2 room2)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)))
)
(:action act-qiy_joint-lift-table_a3_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a9n_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (not (inroom table2 room2)) (available a3) (in a3 room3) (Kinroom table2 room2 V_FALSE))
:effect 
(and (pre-qiy_joint-lift-table_a3_a4_table1_room3 dd) (not (available a3)))
)
(:action act-3k5_joint-move-table_a3_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-qiy_joint-lift-table_a3_a4_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-3k5_joint-move-table_a3_a4_table1_room3_room4 dd) (not (pre-qiy_joint-lift-table_a3_a4_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-8gv_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-3k5_joint-move-table_a3_a4_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-8gv_joint-drop-table_a3_a4_table1_room4 dd) (not (pre-3k5_joint-move-table_a3_a4_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-8gv_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-8gv_joint-drop-table_a3_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-8gv_joint-drop-table_a3_a4_table1_room4 dd)))
)
(:action act-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjd_observe-table_a3_table2_room2 dd) (immediate-dummy-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a3 room3) (Kinroom table2 room2 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjd_observe-table_a3_table2_room2 dd) (immediate-dummy-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a3 room3) (Kinroom table2 room2 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjd_observe-table_a3_table2_room2 dd) (inroom table2 room2) (in a3 room3) (not (dummy-left-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (not (dummy-right-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-left-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjd_observe-table_a3_table2_room2 dd) (inroom table2 room2) (in a3 room3) (not (inroom table1 room3)) (immediate-dummy-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-left-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-right-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjd_observe-table_a3_table2_room2 dd) (inroom table2 room2) (in a3 room3) (inroom table1 room3) (immediate-dummy-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-right-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action act-vj6_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (available a3) (in a3 room2) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-vj6_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-8vz_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-vj6_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-8vz_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-vj6_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-ftr_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-8vz_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-ftr_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-8vz_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-ftr_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ftr_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-ftr_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-ig9_observe-table_a5_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-ig9_observe-table_a5_table3_room6 dd) (inroom table2 room2) (in a3 room6) (Kinroom table2 room2 V_TRUE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-ig9_observe-table_a5_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-ig9_observe-table_a5_table3_room6 dd) (inroom table2 room2) (in a3 room6) (Kinroom table2 room2 V_TRUE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-ig9_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a3 room6) (not (dummy-left-ig9_observe-table_a5_table3_room6 dd)) (not (dummy-right-ig9_observe-table_a5_table3_room6 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-ig9_observe-table_a5_table3_room6 dd))
)
(:action dummy-left-ig9_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a3 room6) (not (inroom table3 room6)) (immediate-dummy-ig9_observe-table_a5_table3_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-ig9_observe-table_a5_table3_room6 dd)) (dummy-left-ig9_observe-table_a5_table3_room6 dd))
)
(:action dummy-right-ig9_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7a_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a3 room6) (inroom table3 room6) (immediate-dummy-ig9_observe-table_a5_table3_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-ig9_observe-table_a5_table3_room6 dd)) (dummy-right-ig9_observe-table_a5_table3_room6 dd))
)
(:action act-45q_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ig9_observe-table_a5_table3_room6 dd) (immediate-dummy-45q_observe-table_a5_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a3 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-45q_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ig9_observe-table_a5_table3_room6 dd) (immediate-dummy-45q_observe-table_a5_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a3 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-45q_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ig9_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a3 room6) (not (dummy-left-45q_observe-table_a5_table4_room6 dd)) (not (dummy-right-45q_observe-table_a5_table4_room6 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-45q_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-45q_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ig9_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a3 room6) (not (inroom table4 room6)) (immediate-dummy-45q_observe-table_a5_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-45q_observe-table_a5_table4_room6 dd)) (dummy-left-45q_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-45q_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ig9_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a3 room6) (inroom table4 room6) (immediate-dummy-45q_observe-table_a5_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-45q_observe-table_a5_table4_room6 dd)) (dummy-right-45q_observe-table_a5_table4_room6 dd))
)
(:action act-475_joint-lift-table_a3_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-45q_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room2) (available a3) (in a3 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-475_joint-lift-table_a3_a4_table1_room3 dd) (not (available a3)))
)
(:action act-uzj_joint-move-table_a3_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-475_joint-lift-table_a3_a4_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-uzj_joint-move-table_a3_a4_table1_room3_room4 dd) (not (pre-475_joint-lift-table_a3_a4_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-pzv_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-uzj_joint-move-table_a3_a4_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-pzv_joint-drop-table_a3_a4_table1_room4 dd) (not (pre-uzj_joint-move-table_a3_a4_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-pzv_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-pzv_joint-drop-table_a3_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-pzv_joint-drop-table_a3_a4_table1_room4 dd)))
)
(:action act-p1m_joint-lift-table_a3_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-45q_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (inroom table2 room2) (available a3) (in a3 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-p1m_joint-lift-table_a3_a5_table4_room6 dd) (not (available a3)))
)
(:action act-emv_joint-move-table_a3_a5_table4_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-p1m_joint-lift-table_a3_a5_table4_room6 dd) (in a3 room6))
:effect 
(and (pre-emv_joint-move-table_a3_a5_table4_room6_room5 dd) (not (pre-p1m_joint-lift-table_a3_a5_table4_room6 dd)) (not (in a3 room6)) (in a3 room5))
)
(:action act-3ov_joint-move-table_a3_a5_table4_room5_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-emv_joint-move-table_a3_a5_table4_room6_room5 dd) (in a3 room5))
:effect 
(and (pre-3ov_joint-move-table_a3_a5_table4_room5_room6 dd) (not (pre-emv_joint-move-table_a3_a5_table4_room6_room5 dd)) (not (in a3 room5)) (in a3 room6))
)
(:action act-zb2_joint-move-table_a3_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-3ov_joint-move-table_a3_a5_table4_room5_room6 dd) (in a3 room6))
:effect 
(and (pre-zb2_joint-move-table_a3_a5_table4_room6_room7 dd) (not (pre-3ov_joint-move-table_a3_a5_table4_room5_room6 dd)) (not (in a3 room6)) (in a3 room7))
)
(:action act-bzx_joint-drop-table_a3_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-zb2_joint-move-table_a3_a5_table4_room6_room7 dd) (in a3 room7))
:effect 
(and (pre-bzx_joint-drop-table_a3_a5_table4_room7 dd) (not (pre-zb2_joint-move-table_a3_a5_table4_room6_room7 dd)) (available a3))
)
(:action goal-achieve-bzx_joint-drop-table_a3_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-bzx_joint-drop-table_a3_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-bzx_joint-drop-table_a3_a5_table4_room7 dd)))
)
(:action act-n4q_observe-table_a5_table4_room7-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ig9_observe-table_a5_table3_room6 dd) (immediate-dummy-n4q_observe-table_a5_table4_room7 dd) (inroom table3 room6) (inroom table2 room2) (in a3 room7) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (inroom table4 room7) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_TRUE))
)
(:action act-n4q_observe-table_a5_table4_room7-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ig9_observe-table_a5_table3_room6 dd) (immediate-dummy-n4q_observe-table_a5_table4_room7 dd) (inroom table3 room6) (inroom table2 room2) (in a3 room7) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (not (inroom table4 room7)) (not (Kinroom table4 room7 V_TRUE)) (not (Kinroom table4 room7 V_FALSE)))
:effect 
(and (Kinroom table4 room7 V_FALSE))
)
(:action act-dummy-n4q_observe-table_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ig9_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table2 room2) (in a3 room7) (not (dummy-left-n4q_observe-table_a5_table4_room7 dd)) (not (dummy-right-n4q_observe-table_a5_table4_room7 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-n4q_observe-table_a5_table4_room7 dd))
)
(:action dummy-left-n4q_observe-table_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ig9_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table2 room2) (in a3 room7) (not (inroom table4 room7)) (immediate-dummy-n4q_observe-table_a5_table4_room7 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room7 V_FALSE))
:effect 
(and (not (immediate-dummy-n4q_observe-table_a5_table4_room7 dd)) (dummy-left-n4q_observe-table_a5_table4_room7 dd))
)
(:action dummy-right-n4q_observe-table_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ig9_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table2 room2) (in a3 room7) (inroom table4 room7) (immediate-dummy-n4q_observe-table_a5_table4_room7 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room7 V_TRUE))
:effect 
(and (not (immediate-dummy-n4q_observe-table_a5_table4_room7 dd)) (dummy-right-n4q_observe-table_a5_table4_room7 dd))
)
(:action act-5ib_joint-lift-table_a3_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n4q_observe-table_a5_table4_room7 dd) (not (inroom table4 room7)) (inroom table3 room6) (inroom table2 room2) (available a3) (in a3 room3) (Kinroom table4 room7 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-5ib_joint-lift-table_a3_a4_table1_room3 dd) (not (available a3)))
)
(:action act-z9o_joint-move-table_a3_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-5ib_joint-lift-table_a3_a4_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-z9o_joint-move-table_a3_a4_table1_room3_room4 dd) (not (pre-5ib_joint-lift-table_a3_a4_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-pdj_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-z9o_joint-move-table_a3_a4_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-pdj_joint-drop-table_a3_a4_table1_room4 dd) (not (pre-z9o_joint-move-table_a3_a4_table1_room3_room4 dd)) (available a3))
)
(:action act-0ph_joint-lift-table_a3_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-pdj_joint-drop-table_a3_a4_table1_room4 dd) (available a3) (in a3 room6))
:effect 
(and (pre-0ph_joint-lift-table_a3_a5_table3_room6 dd) (not (pre-pdj_joint-drop-table_a3_a4_table1_room4 dd)) (not (available a3)))
)
(:action act-1gu_joint-move-table_a3_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-0ph_joint-lift-table_a3_a5_table3_room6 dd) (in a3 room6))
:effect 
(and (pre-1gu_joint-move-table_a3_a5_table3_room6_room5 dd) (not (pre-0ph_joint-lift-table_a3_a5_table3_room6 dd)) (not (in a3 room6)) (in a3 room5))
)
(:action act-lt4_joint-drop-table_a3_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-1gu_joint-move-table_a3_a5_table3_room6_room5 dd) (in a3 room5))
:effect 
(and (pre-lt4_joint-drop-table_a3_a5_table3_room5 dd) (not (pre-1gu_joint-move-table_a3_a5_table3_room6_room5 dd)) (available a3))
)
(:action act-mbh_joint-lift-table_a3_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-lt4_joint-drop-table_a3_a5_table3_room5 dd) (available a3) (in a3 room6))
:effect 
(and (pre-mbh_joint-lift-table_a3_a5_table4_room6 dd) (not (pre-lt4_joint-drop-table_a3_a5_table3_room5 dd)) (not (available a3)))
)
(:action act-6o2_joint-move-table_a3_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-mbh_joint-lift-table_a3_a5_table4_room6 dd) (in a3 room6))
:effect 
(and (pre-6o2_joint-move-table_a3_a5_table4_room6_room7 dd) (not (pre-mbh_joint-lift-table_a3_a5_table4_room6 dd)) (not (in a3 room6)) (in a3 room7))
)
(:action act-ne4_joint-drop-table_a3_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-6o2_joint-move-table_a3_a5_table4_room6_room7 dd) (in a3 room7))
:effect 
(and (pre-ne4_joint-drop-table_a3_a5_table4_room7 dd) (not (pre-6o2_joint-move-table_a3_a5_table4_room6_room7 dd)) (available a3))
)
(:action goal-achieve-ne4_joint-drop-table_a3_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-ne4_joint-drop-table_a3_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-ne4_joint-drop-table_a3_a5_table4_room7 dd)))
)
(:action act-x3i_joint-lift-table_a3_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n4q_observe-table_a5_table4_room7 dd) (inroom table4 room7) (inroom table3 room6) (inroom table2 room2) (available a3) (in a3 room3) (Kinroom table4 room7 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-x3i_joint-lift-table_a3_a4_table1_room3 dd) (not (available a3)))
)
(:action act-ig5_joint-move-table_a3_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-x3i_joint-lift-table_a3_a4_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-ig5_joint-move-table_a3_a4_table1_room3_room4 dd) (not (pre-x3i_joint-lift-table_a3_a4_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-3tq_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ig5_joint-move-table_a3_a4_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-3tq_joint-drop-table_a3_a4_table1_room4 dd) (not (pre-ig5_joint-move-table_a3_a4_table1_room3_room4 dd)) (available a3))
)
(:action act-uz2_joint-lift-table_a3_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-3tq_joint-drop-table_a3_a4_table1_room4 dd) (available a3) (in a3 room6))
:effect 
(and (pre-uz2_joint-lift-table_a3_a5_table3_room6 dd) (not (pre-3tq_joint-drop-table_a3_a4_table1_room4 dd)) (not (available a3)))
)
(:action act-8zi_joint-move-table_a3_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-uz2_joint-lift-table_a3_a5_table3_room6 dd) (in a3 room6))
:effect 
(and (pre-8zi_joint-move-table_a3_a5_table3_room6_room5 dd) (not (pre-uz2_joint-lift-table_a3_a5_table3_room6 dd)) (not (in a3 room6)) (in a3 room5))
)
(:action act-md8_joint-drop-table_a3_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-8zi_joint-move-table_a3_a5_table3_room6_room5 dd) (in a3 room5))
:effect 
(and (pre-md8_joint-drop-table_a3_a5_table3_room5 dd) (not (pre-8zi_joint-move-table_a3_a5_table3_room6_room5 dd)) (available a3))
)
(:action goal-achieve-md8_joint-drop-table_a3_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-md8_joint-drop-table_a3_a5_table3_room5 dd))
:effect 
(and (done-goal dd) (not (pre-md8_joint-drop-table_a3_a5_table3_room5 dd)))
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
