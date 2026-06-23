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
(init-dee_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-dee_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-dee_observe-table_a3_table2_room1 ?dd - dummy)
(pre-h1k_joint-lift-table_a3_a4_table2_room2 ?dd - dummy)
(pre-slh_joint-move-table_a3_a4_table2_room2_room1 ?dd - dummy)
(pre-ogk_joint-drop-table_a3_a4_table2_room1 ?dd - dummy)
(immediate-dummy-2rf_observe-table_a2_table3_room6 ?dd - dummy)
(dummy-left-2rf_observe-table_a2_table3_room6 ?dd - dummy)
(immediate-dummy-rmc_observe-table_a2_table4_room6 ?dd - dummy)
(dummy-left-rmc_observe-table_a2_table4_room6 ?dd - dummy)
(immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 ?dd - dummy)
(dummy-left-3o5_observe-table-lsq_a4_table1_room3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-3o5_observe-table-lsq_a4_table1_room3 ?dd - dummy)
(pre-aca_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
(pre-y9o_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
(pre-dl2_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
(dummy-right-rmc_observe-table_a2_table4_room6 ?dd - dummy)
(dummy-right-2rf_observe-table_a2_table3_room6 ?dd - dummy)
(dummy-right-dee_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-s4i_observe-table-twk_a3_table1_room3 ?dd - dummy)
(dummy-left-s4i_observe-table-twk_a3_table1_room3 ?dd - dummy)
(dummy-right-s4i_observe-table-twk_a3_table1_room3 ?dd - dummy)
(pre-jx0_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-0p2_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-46q_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-dee_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (init-dee_observe-table_a3_table2_room1 dd) (immediate-dummy-dee_observe-table_a3_table2_room1 dd) (in a3 room1) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-dee_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (init-dee_observe-table_a3_table2_room1 dd) (immediate-dummy-dee_observe-table_a3_table2_room1 dd) (in a3 room1) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-dee_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-dee_observe-table_a3_table2_room1 dd) (not (dummy-left-dee_observe-table_a3_table2_room1 dd)) (not (dummy-right-dee_observe-table_a3_table2_room1 dd)))
:effect 
(and (immediate-dummy-dee_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-dee_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-dee_observe-table_a3_table2_room1 dd) (in a3 room1) (not (inroom table2 room1)) (immediate-dummy-dee_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (init-dee_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-dee_observe-table_a3_table2_room1 dd)) (dummy-left-dee_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-dee_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-dee_observe-table_a3_table2_room1 dd) (in a3 room1) (inroom table2 room1) (immediate-dummy-dee_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (init-dee_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-dee_observe-table_a3_table2_room1 dd)) (dummy-right-dee_observe-table_a3_table2_room1 dd))
)
(:action act-h1k_joint-lift-table_a3_a4_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dee_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (available a3) (in a3 room2) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-h1k_joint-lift-table_a3_a4_table2_room2 dd) (not (available a3)))
)
(:action act-slh_joint-move-table_a3_a4_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-h1k_joint-lift-table_a3_a4_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-slh_joint-move-table_a3_a4_table2_room2_room1 dd) (not (pre-h1k_joint-lift-table_a3_a4_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-ogk_joint-drop-table_a3_a4_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-slh_joint-move-table_a3_a4_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-ogk_joint-drop-table_a3_a4_table2_room1 dd) (not (pre-slh_joint-move-table_a3_a4_table2_room2_room1 dd)) (available a3))
)
(:action act-2rf_observe-table_a2_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (pre-ogk_joint-drop-table_a3_a4_table2_room1 dd) (immediate-dummy-2rf_observe-table_a2_table3_room6 dd) (in a3 room6) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-2rf_observe-table_a2_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (pre-ogk_joint-drop-table_a3_a4_table2_room1 dd) (immediate-dummy-2rf_observe-table_a2_table3_room6 dd) (in a3 room6) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-2rf_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-ogk_joint-drop-table_a3_a4_table2_room1 dd) (in a3 room6) (not (dummy-left-2rf_observe-table_a2_table3_room6 dd)) (not (dummy-right-2rf_observe-table_a2_table3_room6 dd)))
:effect 
(and (immediate-dummy-2rf_observe-table_a2_table3_room6 dd))
)
(:action dummy-left-2rf_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (in a3 room6) (not (inroom table3 room6)) (immediate-dummy-2rf_observe-table_a2_table3_room6 dd) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-2rf_observe-table_a2_table3_room6 dd)) (dummy-left-2rf_observe-table_a2_table3_room6 dd))
)
(:action dummy-right-2rf_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (in a3 room6) (inroom table3 room6) (immediate-dummy-2rf_observe-table_a2_table3_room6 dd) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-2rf_observe-table_a2_table3_room6 dd)) (dummy-right-2rf_observe-table_a2_table3_room6 dd))
)
(:action act-rmc_observe-table_a2_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2rf_observe-table_a2_table3_room6 dd) (immediate-dummy-rmc_observe-table_a2_table4_room6 dd) (not (inroom table3 room6)) (in a3 room6) (Kinroom table3 room6 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-rmc_observe-table_a2_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2rf_observe-table_a2_table3_room6 dd) (immediate-dummy-rmc_observe-table_a2_table4_room6 dd) (not (inroom table3 room6)) (in a3 room6) (Kinroom table3 room6 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-rmc_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2rf_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (in a3 room6) (not (dummy-left-rmc_observe-table_a2_table4_room6 dd)) (not (dummy-right-rmc_observe-table_a2_table4_room6 dd)) (Kinroom table3 room6 V_FALSE))
:effect 
(and (immediate-dummy-rmc_observe-table_a2_table4_room6 dd))
)
(:action dummy-left-rmc_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2rf_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (in a3 room6) (not (inroom table4 room6)) (immediate-dummy-rmc_observe-table_a2_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-rmc_observe-table_a2_table4_room6 dd)) (dummy-left-rmc_observe-table_a2_table4_room6 dd))
)
(:action dummy-right-rmc_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2rf_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (in a3 room6) (inroom table4 room6) (immediate-dummy-rmc_observe-table_a2_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-rmc_observe-table_a2_table4_room6 dd)) (dummy-right-rmc_observe-table_a2_table4_room6 dd))
)
(:action act-3o5_observe-table-lsq_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rmc_observe-table_a2_table4_room6 dd) (immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (in a3 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-3o5_observe-table-lsq_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rmc_observe-table_a2_table4_room6 dd) (immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (in a3 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-3o5_observe-table-lsq_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rmc_observe-table_a2_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (in a3 room3) (not (dummy-left-3o5_observe-table-lsq_a4_table1_room3 dd)) (not (dummy-right-3o5_observe-table-lsq_a4_table1_room3 dd)) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd))
)
(:action dummy-left-3o5_observe-table-lsq_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rmc_observe-table_a2_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (in a3 room3) (not (inroom table1 room3)) (immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd)) (dummy-left-3o5_observe-table-lsq_a4_table1_room3 dd))
)
(:action dummy-right-3o5_observe-table-lsq_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rmc_observe-table_a2_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (in a3 room3) (inroom table1 room3) (immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd)) (dummy-right-3o5_observe-table-lsq_a4_table1_room3 dd))
)
(:action goal-achieve-left-3o5_observe-table-lsq_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3o5_observe-table-lsq_a4_table1_room3 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-3o5_observe-table-lsq_a4_table1_room3 dd)))
)
(:action act-aca_joint-lift-table_a3_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3o5_observe-table-lsq_a4_table1_room3 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (available a3) (in a3 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (pre-aca_joint-lift-table_a3_a4_table1_room3 dd) (not (available a3)))
)
(:action act-y9o_joint-move-table_a3_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-aca_joint-lift-table_a3_a4_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-y9o_joint-move-table_a3_a4_table1_room3_room4 dd) (not (pre-aca_joint-lift-table_a3_a4_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-dl2_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-y9o_joint-move-table_a3_a4_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-dl2_joint-drop-table_a3_a4_table1_room4 dd) (not (pre-y9o_joint-move-table_a3_a4_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-dl2_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-dl2_joint-drop-table_a3_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-dl2_joint-drop-table_a3_a4_table1_room4 dd)))
)
(:action goal-achieve-right-rmc_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-rmc_observe-table_a2_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-rmc_observe-table_a2_table4_room6 dd)))
)
(:action goal-achieve-right-2rf_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2rf_observe-table_a2_table3_room6 dd) (inroom table3 room6) (Kinroom table3 room6 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-2rf_observe-table_a2_table3_room6 dd)))
)
(:action act-s4i_observe-table-twk_a3_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dee_observe-table_a3_table2_room1 dd) (immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd) (inroom table2 room1) (in a3 room3) (Kinroom table2 room1 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-s4i_observe-table-twk_a3_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dee_observe-table_a3_table2_room1 dd) (immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd) (inroom table2 room1) (in a3 room3) (Kinroom table2 room1 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-s4i_observe-table-twk_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dee_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a3 room3) (not (dummy-left-s4i_observe-table-twk_a3_table1_room3 dd)) (not (dummy-right-s4i_observe-table-twk_a3_table1_room3 dd)) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd))
)
(:action dummy-left-s4i_observe-table-twk_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dee_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a3 room3) (not (inroom table1 room3)) (immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd)) (dummy-left-s4i_observe-table-twk_a3_table1_room3 dd))
)
(:action dummy-right-s4i_observe-table-twk_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dee_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a3 room3) (inroom table1 room3) (immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd)) (dummy-right-s4i_observe-table-twk_a3_table1_room3 dd))
)
(:action goal-achieve-left-s4i_observe-table-twk_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-s4i_observe-table-twk_a3_table1_room3 dd) (inroom table2 room1) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-s4i_observe-table-twk_a3_table1_room3 dd)))
)
(:action act-jx0_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-s4i_observe-table-twk_a3_table1_room3 dd) (inroom table2 room1) (available a3) (in a3 room3) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-jx0_joint-lift-table_a1_a3_table1_room3 dd) (not (available a3)))
)
(:action act-0p2_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-jx0_joint-lift-table_a1_a3_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-0p2_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-jx0_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-46q_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-0p2_joint-move-table_a1_a3_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-46q_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-0p2_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-46q_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-46q_joint-drop-table_a1_a3_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-46q_joint-drop-table_a1_a3_table1_room4 dd)))
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
