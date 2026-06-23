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
 tag0 - TAG_TYPE ; (inroom table1 room3) (inroom table3 room5)
 tag1 - TAG_TYPE ; (inroom table1 room4) (inroom table3 room6)
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
(init-hki_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-hki_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-hki_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-4oy_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-4oy_observe-table_a5_table4_room6 ?dd - dummy)
(pre-b3q_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-1b2_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-orl_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-4oy_observe-table_a5_table4_room6 ?dd - dummy)
(immediate-dummy-y2b_observe-table_a5_table3_room6 ?dd - dummy)
(dummy-left-y2b_observe-table_a5_table3_room6 ?dd - dummy)
(pre-nd0_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-5iq_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-kl0_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(immediate-dummy-y3f_observe-table_a1_table1_room4 ?dd - dummy)
(dummy-left-y3f_observe-table_a1_table1_room4 ?dd - dummy)
(pre-uav_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-tkf_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-yjr_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(dummy-right-y3f_observe-table_a1_table1_room4 ?dd - dummy)
(dummy-right-y2b_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-ab2_observe-table_a4_table1_room4 ?dd - dummy)
(dummy-left-ab2_observe-table_a4_table1_room4 ?dd - dummy)
(pre-1pu_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-14t_joint-move-table_a1_a3_table1_room3_room2 ?dd - dummy)
(pre-hea_joint-move-table_a1_a3_table1_room2_room3 ?dd - dummy)
(pre-vpv_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-nmc_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(pre-1ud_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-8m9_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-kga_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-ab2_observe-table_a4_table1_room4 ?dd - dummy)
(pre-g5g_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-g9t_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-umc_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-hki_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(dummy-left-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(dummy-right-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(immediate-dummy-5tq_observe-table_a5_table3_room5 ?dd - dummy)
(dummy-left-5tq_observe-table_a5_table3_room5 ?dd - dummy)
(immediate-dummy-hqz_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-hqz_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-right-hqz_observe-table_a5_table4_room6 ?dd - dummy)
(pre-f9v_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-9f8_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-d6z_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(dummy-right-5tq_observe-table_a5_table3_room5 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-hki_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (init-hki_observe-table_a3_table2_room1 dd) (immediate-dummy-hki_observe-table_a3_table2_room1 dd) (in a1 room1) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-hki_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (init-hki_observe-table_a3_table2_room1 dd) (immediate-dummy-hki_observe-table_a3_table2_room1 dd) (in a1 room1) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-hki_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-hki_observe-table_a3_table2_room1 dd) (not (dummy-left-hki_observe-table_a3_table2_room1 dd)) (not (dummy-right-hki_observe-table_a3_table2_room1 dd)))
:effect 
(and (immediate-dummy-hki_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-hki_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-hki_observe-table_a3_table2_room1 dd) (in a1 room1) (not (inroom table2 room1)) (immediate-dummy-hki_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (init-hki_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-hki_observe-table_a3_table2_room1 dd)) (dummy-left-hki_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-hki_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-hki_observe-table_a3_table2_room1 dd) (in a1 room1) (inroom table2 room1) (immediate-dummy-hki_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (init-hki_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-hki_observe-table_a3_table2_room1 dd)) (dummy-right-hki_observe-table_a3_table2_room1 dd))
)
(:action act-4oy_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hki_observe-table_a3_table2_room1 dd) (immediate-dummy-4oy_observe-table_a5_table4_room6 dd) (not (inroom table2 room1)) (in a1 room6) (Kinroom table2 room1 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-4oy_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hki_observe-table_a3_table2_room1 dd) (immediate-dummy-4oy_observe-table_a5_table4_room6 dd) (not (inroom table2 room1)) (in a1 room6) (Kinroom table2 room1 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-4oy_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hki_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a1 room6) (not (dummy-left-4oy_observe-table_a5_table4_room6 dd)) (not (dummy-right-4oy_observe-table_a5_table4_room6 dd)) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-4oy_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-4oy_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hki_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a1 room6) (not (inroom table4 room6)) (immediate-dummy-4oy_observe-table_a5_table4_room6 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-4oy_observe-table_a5_table4_room6 dd)) (dummy-left-4oy_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-4oy_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hki_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a1 room6) (inroom table4 room6) (immediate-dummy-4oy_observe-table_a5_table4_room6 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-4oy_observe-table_a5_table4_room6 dd)) (dummy-right-4oy_observe-table_a5_table4_room6 dd))
)
(:action act-b3q_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4oy_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table2 room1)) (available a1) (in a1 room2) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-b3q_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-1b2_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-b3q_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-1b2_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-b3q_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-orl_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-1b2_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-orl_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-1b2_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-orl_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-orl_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-orl_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-y2b_observe-table_a5_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4oy_observe-table_a5_table4_room6 dd) (immediate-dummy-y2b_observe-table_a5_table3_room6 dd) (inroom table4 room6) (not (inroom table2 room1)) (in a1 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-y2b_observe-table_a5_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4oy_observe-table_a5_table4_room6 dd) (immediate-dummy-y2b_observe-table_a5_table3_room6 dd) (inroom table4 room6) (not (inroom table2 room1)) (in a1 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-y2b_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4oy_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table2 room1)) (in a1 room6) (not (dummy-left-y2b_observe-table_a5_table3_room6 dd)) (not (dummy-right-y2b_observe-table_a5_table3_room6 dd)) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-y2b_observe-table_a5_table3_room6 dd))
)
(:action dummy-left-y2b_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4oy_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table2 room1)) (in a1 room6) (not (inroom table3 room6)) (immediate-dummy-y2b_observe-table_a5_table3_room6 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-y2b_observe-table_a5_table3_room6 dd)) (dummy-left-y2b_observe-table_a5_table3_room6 dd))
)
(:action dummy-right-y2b_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4oy_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table2 room1)) (in a1 room6) (inroom table3 room6) (immediate-dummy-y2b_observe-table_a5_table3_room6 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-y2b_observe-table_a5_table3_room6 dd)) (dummy-right-y2b_observe-table_a5_table3_room6 dd))
)
(:action act-nd0_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y2b_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table4 room6) (not (inroom table2 room1)) (available a1) (in a1 room2) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-nd0_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-5iq_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-nd0_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-5iq_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-nd0_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-kl0_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-5iq_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-kl0_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-5iq_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action act-y3f_observe-table_a1_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (pre-kl0_joint-drop-table_a1_a3_table2_room1 dd) (immediate-dummy-y3f_observe-table_a1_table1_room4 dd) (in a1 room4) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-y3f_observe-table_a1_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (pre-kl0_joint-drop-table_a1_a3_table2_room1 dd) (immediate-dummy-y3f_observe-table_a1_table1_room4 dd) (in a1 room4) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-y3f_observe-table_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-kl0_joint-drop-table_a1_a3_table2_room1 dd) (in a1 room4) (not (dummy-left-y3f_observe-table_a1_table1_room4 dd)) (not (dummy-right-y3f_observe-table_a1_table1_room4 dd)))
:effect 
(and (immediate-dummy-y3f_observe-table_a1_table1_room4 dd))
)
(:action dummy-left-y3f_observe-table_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (in a1 room4) (not (inroom table1 room4)) (immediate-dummy-y3f_observe-table_a1_table1_room4 dd) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-y3f_observe-table_a1_table1_room4 dd)) (dummy-left-y3f_observe-table_a1_table1_room4 dd))
)
(:action dummy-right-y3f_observe-table_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (in a1 room4) (inroom table1 room4) (immediate-dummy-y3f_observe-table_a1_table1_room4 dd) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-y3f_observe-table_a1_table1_room4 dd)) (dummy-right-y3f_observe-table_a1_table1_room4 dd))
)
(:action act-uav_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y3f_observe-table_a1_table1_room4 dd) (not (inroom table1 room4)) (available a1) (in a1 room3) (Kinroom table1 room4 V_FALSE))
:effect 
(and (pre-uav_joint-lift-table_a1_a3_table1_room3 dd) (not (available a1)))
)
(:action act-tkf_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-uav_joint-lift-table_a1_a3_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-tkf_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-uav_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-yjr_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-tkf_joint-move-table_a1_a3_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-yjr_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-tkf_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-yjr_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-yjr_joint-drop-table_a1_a3_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-yjr_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action goal-achieve-right-y3f_observe-table_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y3f_observe-table_a1_table1_room4 dd) (inroom table1 room4) (Kinroom table1 room4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-y3f_observe-table_a1_table1_room4 dd)))
)
(:action act-ab2_observe-table_a4_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y2b_observe-table_a5_table3_room6 dd) (immediate-dummy-ab2_observe-table_a4_table1_room4 dd) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (in a1 room4) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-ab2_observe-table_a4_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y2b_observe-table_a5_table3_room6 dd) (immediate-dummy-ab2_observe-table_a4_table1_room4 dd) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (in a1 room4) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-ab2_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y2b_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (in a1 room4) (not (dummy-left-ab2_observe-table_a4_table1_room4 dd)) (not (dummy-right-ab2_observe-table_a4_table1_room4 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-ab2_observe-table_a4_table1_room4 dd))
)
(:action dummy-left-ab2_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y2b_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (in a1 room4) (not (inroom table1 room4)) (immediate-dummy-ab2_observe-table_a4_table1_room4 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-ab2_observe-table_a4_table1_room4 dd)) (dummy-left-ab2_observe-table_a4_table1_room4 dd))
)
(:action dummy-right-ab2_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y2b_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (in a1 room4) (inroom table1 room4) (immediate-dummy-ab2_observe-table_a4_table1_room4 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-ab2_observe-table_a4_table1_room4 dd)) (dummy-right-ab2_observe-table_a4_table1_room4 dd))
)
(:action act-1pu_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ab2_observe-table_a4_table1_room4 dd) (not (inroom table1 room4)) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (available a1) (in a1 room3) (Kinroom table1 room4 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-1pu_joint-lift-table_a1_a3_table1_room3 dd) (not (available a1)))
)
(:action act-14t_joint-move-table_a1_a3_table1_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-1pu_joint-lift-table_a1_a3_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-14t_joint-move-table_a1_a3_table1_room3_room2 dd) (not (pre-1pu_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a1 room3)) (in a1 room2))
)
(:action act-hea_joint-move-table_a1_a3_table1_room2_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-14t_joint-move-table_a1_a3_table1_room3_room2 dd) (in a1 room2))
:effect 
(and (pre-hea_joint-move-table_a1_a3_table1_room2_room3 dd) (not (pre-14t_joint-move-table_a1_a3_table1_room3_room2 dd)) (not (in a1 room2)) (in a1 room3))
)
(:action act-vpv_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-hea_joint-move-table_a1_a3_table1_room2_room3 dd) (in a1 room3))
:effect 
(and (pre-vpv_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-hea_joint-move-table_a1_a3_table1_room2_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-nmc_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-vpv_joint-move-table_a1_a3_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-nmc_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-vpv_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a1))
)
(:action act-1ud_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-nmc_joint-drop-table_a1_a3_table1_room4 dd) (available a1) (in a1 room2))
:effect 
(and (pre-1ud_joint-lift-table_a1_a3_table2_room2 dd) (not (pre-nmc_joint-drop-table_a1_a3_table1_room4 dd)) (not (available a1)))
)
(:action act-8m9_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-1ud_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-8m9_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-1ud_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-kga_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-8m9_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-kga_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-8m9_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-kga_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-kga_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-kga_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-g5g_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ab2_observe-table_a4_table1_room4 dd) (inroom table1 room4) (inroom table3 room6) (inroom table4 room6) (not (inroom table2 room1)) (available a1) (in a1 room2) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-g5g_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-g9t_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-g5g_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-g9t_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-g5g_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-umc_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-g9t_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-umc_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-g9t_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-umc_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-umc_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-umc_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hki_observe-table_a3_table2_room1 dd) (immediate-dummy-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room1) (in a1 room3) (Kinroom table2 room1 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hki_observe-table_a3_table2_room1 dd) (immediate-dummy-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room1) (in a1 room3) (Kinroom table2 room1 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hki_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a1 room3) (not (dummy-left-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (not (dummy-right-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-left-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hki_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a1 room3) (not (inroom table1 room3)) (immediate-dummy-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-left-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-right-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hki_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a1 room3) (inroom table1 room3) (immediate-dummy-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)) (dummy-right-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action goal-achieve-left-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room1) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)))
)
(:action act-5tq_observe-table_a5_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-5tq_observe-table_a5_table3_room5 dd) (inroom table2 room1) (in a1 room5) (Kinroom table2 room1 V_TRUE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-5tq_observe-table_a5_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-5tq_observe-table_a5_table3_room5 dd) (inroom table2 room1) (in a1 room5) (Kinroom table2 room1 V_TRUE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-5tq_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room1) (in a1 room5) (not (dummy-left-5tq_observe-table_a5_table3_room5 dd)) (not (dummy-right-5tq_observe-table_a5_table3_room5 dd)) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-5tq_observe-table_a5_table3_room5 dd))
)
(:action dummy-left-5tq_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room1) (in a1 room5) (not (inroom table3 room5)) (immediate-dummy-5tq_observe-table_a5_table3_room5 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-5tq_observe-table_a5_table3_room5 dd)) (dummy-left-5tq_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-5tq_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7e2_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room1) (in a1 room5) (inroom table3 room5) (immediate-dummy-5tq_observe-table_a5_table3_room5 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-5tq_observe-table_a5_table3_room5 dd)) (dummy-right-5tq_observe-table_a5_table3_room5 dd))
)
(:action act-hqz_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5tq_observe-table_a5_table3_room5 dd) (immediate-dummy-hqz_observe-table_a5_table4_room6 dd) (not (inroom table3 room5)) (inroom table2 room1) (in a1 room6) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room1 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-hqz_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5tq_observe-table_a5_table3_room5 dd) (immediate-dummy-hqz_observe-table_a5_table4_room6 dd) (not (inroom table3 room5)) (inroom table2 room1) (in a1 room6) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room1 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-hqz_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5tq_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (inroom table2 room1) (in a1 room6) (not (dummy-left-hqz_observe-table_a5_table4_room6 dd)) (not (dummy-right-hqz_observe-table_a5_table4_room6 dd)) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-hqz_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-hqz_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5tq_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (inroom table2 room1) (in a1 room6) (not (inroom table4 room6)) (immediate-dummy-hqz_observe-table_a5_table4_room6 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-hqz_observe-table_a5_table4_room6 dd)) (dummy-left-hqz_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-hqz_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5tq_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (inroom table2 room1) (in a1 room6) (inroom table4 room6) (immediate-dummy-hqz_observe-table_a5_table4_room6 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-hqz_observe-table_a5_table4_room6 dd)) (dummy-right-hqz_observe-table_a5_table4_room6 dd))
)
(:action goal-achieve-left-hqz_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hqz_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room5)) (inroom table2 room1) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-hqz_observe-table_a5_table4_room6 dd)))
)
(:action act-f9v_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hqz_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room5)) (inroom table2 room1) (available a1) (in a1 room3) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-f9v_joint-lift-table_a1_a3_table1_room3 dd) (not (available a1)))
)
(:action act-9f8_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-f9v_joint-lift-table_a1_a3_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-9f8_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-f9v_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-d6z_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-9f8_joint-move-table_a1_a3_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-d6z_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-9f8_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-d6z_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-d6z_joint-drop-table_a1_a3_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-d6z_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action goal-achieve-right-5tq_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5tq_observe-table_a5_table3_room5 dd) (inroom table3 room5) (inroom table2 room1) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-5tq_observe-table_a5_table3_room5 dd)))
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
