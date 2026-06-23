(define (domain Ktablemover-2-a2)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 a2 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 room5 - room
 room6 - room
 room7 - room
 dd - dummy
 tag0 - TAG_TYPE ; (not (inroom table1 room3)) (inroom table1 room4) (not (inroom table2 room2)) (inroom table2 room1) (not (inroom table3 room5)) (inroom table3 room6) (not (inroom table4 room6)) (inroom table4 room7)
 tag1 - TAG_TYPE ; (inroom table1 room3) (not (inroom table1 room4)) (inroom table2 room2) (not (inroom table2 room1)) (inroom table3 room5) (not (inroom table3 room6)) (inroom table4 room6) (not (inroom table4 room7))
 V_TRUE - VALUE_TYPE
 V_FALSE - VALUE_TYPE
)

(:predicates
(p-dummy-agnt)
(lifting ?a - agent ?t - table)
(inroom ?t - table ?r - room)
(Kinroom ?t - table ?r - room ?V_PARAM - VALUE_TYPE)
(KGiveninroom ?t - table ?r - room ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(in ?a - agent ?r - room)
(connected ?r1 - room ?r2 - room)
(available ?a - agent)
(can-observe ?a1 - agent ?table - table)
(init-o75_observe-table_a3_table2_room2 ?dd - dummy)
(immediate-dummy-o75_observe-table_a3_table2_room2 ?dd - dummy)
(dummy-left-o75_observe-table_a3_table2_room2 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-o75_observe-table_a3_table2_room2 ?dd - dummy)
(immediate-dummy-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(immediate-dummy-3a3_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-3a3_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-right-3a3_observe-table_a4_table4_room6 ?dd - dummy)
(immediate-dummy-i94_observe-table_a2_table3_room5 ?dd - dummy)
(dummy-left-i94_observe-table_a2_table3_room5 ?dd - dummy)
(pre-im4_joint-lift-table_a2_a4_table3_room6 ?dd - dummy)
(pre-u2k_joint-move-table_a2_a4_table3_room6_room5 ?dd - dummy)
(pre-asi_joint-drop-table_a2_a4_table3_room5 ?dd - dummy)
(dummy-right-i94_observe-table_a2_table3_room5 ?dd - dummy)
(dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
(immediate-dummy-m7w_observe-table_a5_table3_room6 ?dd - dummy)
(dummy-left-m7w_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-d13_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-d13_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-right-d13_observe-table_a5_table4_room6 ?dd - dummy)
(pre-bom_joint-lift-table_a2_a4_table2_room3 ?dd - dummy)
(pre-8tk_joint-move-table_a2_a4_table2_room3_room2 ?dd - dummy)
(pre-38g_joint-move-table_a2_a4_table2_room2_room1 ?dd - dummy)
(pre-8pd_joint-drop-table_a2_a4_table2_room1 ?dd - dummy)
(dummy-right-m7w_observe-table_a5_table3_room6 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action dummyprivateaction
:precondition 
(and )
:effect 
(and (p-dummy-agnt ))
)
(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-o75_observe-table_a3_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (init-o75_observe-table_a3_table2_room2 dd) (immediate-dummy-o75_observe-table_a3_table2_room2 dd) (in a2 room2) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-o75_observe-table_a3_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (init-o75_observe-table_a3_table2_room2 dd) (immediate-dummy-o75_observe-table_a3_table2_room2 dd) (in a2 room2) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-o75_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-o75_observe-table_a3_table2_room2 dd) (not (dummy-left-o75_observe-table_a3_table2_room2 dd)) (not (dummy-right-o75_observe-table_a3_table2_room2 dd)))
:effect 
(and (immediate-dummy-o75_observe-table_a3_table2_room2 dd))
)
(:action dummy-left-o75_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-o75_observe-table_a3_table2_room2 dd) (in a2 room2) (not (inroom table2 room2)) (immediate-dummy-o75_observe-table_a3_table2_room2 dd) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (init-o75_observe-table_a3_table2_room2 dd)) (not (immediate-dummy-o75_observe-table_a3_table2_room2 dd)) (dummy-left-o75_observe-table_a3_table2_room2 dd))
)
(:action dummy-right-o75_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-o75_observe-table_a3_table2_room2 dd) (in a2 room2) (inroom table2 room2) (immediate-dummy-o75_observe-table_a3_table2_room2 dd) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (init-o75_observe-table_a3_table2_room2 dd)) (not (immediate-dummy-o75_observe-table_a3_table2_room2 dd)) (dummy-right-o75_observe-table_a3_table2_room2 dd))
)
(:action goal-achieve-left-o75_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-o75_observe-table_a3_table2_room2 dd) (not (inroom table2 room2)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-o75_observe-table_a3_table2_room2 dd)))
)
(:action act-3a3_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-3a3_observe-table_a4_table4_room6 dd) (inroom table2 room2) (in a2 room6) (Kinroom table2 room2 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-3a3_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-3a3_observe-table_a4_table4_room6 dd) (inroom table2 room2) (in a2 room6) (Kinroom table2 room2 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-3a3_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a2 room6) (not (dummy-left-3a3_observe-table_a4_table4_room6 dd)) (not (dummy-right-3a3_observe-table_a4_table4_room6 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-3a3_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-3a3_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a2 room6) (not (inroom table4 room6)) (immediate-dummy-3a3_observe-table_a4_table4_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-3a3_observe-table_a4_table4_room6 dd)) (dummy-left-3a3_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-3a3_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a2 room6) (inroom table4 room6) (immediate-dummy-3a3_observe-table_a4_table4_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-3a3_observe-table_a4_table4_room6 dd)) (dummy-right-3a3_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-3a3_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3a3_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (inroom table2 room2) (Kinroom table4 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-3a3_observe-table_a4_table4_room6 dd)))
)
(:action act-i94_observe-table_a2_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3a3_observe-table_a4_table4_room6 dd) (immediate-dummy-i94_observe-table_a2_table3_room5 dd) (inroom table4 room6) (inroom table2 room2) (in a2 room5) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-i94_observe-table_a2_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3a3_observe-table_a4_table4_room6 dd) (immediate-dummy-i94_observe-table_a2_table3_room5 dd) (inroom table4 room6) (inroom table2 room2) (in a2 room5) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-i94_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3a3_observe-table_a4_table4_room6 dd) (inroom table4 room6) (inroom table2 room2) (in a2 room5) (not (dummy-left-i94_observe-table_a2_table3_room5 dd)) (not (dummy-right-i94_observe-table_a2_table3_room5 dd)) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-i94_observe-table_a2_table3_room5 dd))
)
(:action dummy-left-i94_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3a3_observe-table_a4_table4_room6 dd) (inroom table4 room6) (inroom table2 room2) (in a2 room5) (not (inroom table3 room5)) (immediate-dummy-i94_observe-table_a2_table3_room5 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-i94_observe-table_a2_table3_room5 dd)) (dummy-left-i94_observe-table_a2_table3_room5 dd))
)
(:action dummy-right-i94_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3a3_observe-table_a4_table4_room6 dd) (inroom table4 room6) (inroom table2 room2) (in a2 room5) (inroom table3 room5) (immediate-dummy-i94_observe-table_a2_table3_room5 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-i94_observe-table_a2_table3_room5 dd)) (dummy-right-i94_observe-table_a2_table3_room5 dd))
)
(:action act-im4_joint-lift-table_a2_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-i94_observe-table_a2_table3_room5 dd) (not (inroom table3 room5)) (inroom table4 room6) (inroom table2 room2) (available a2) (in a2 room6) (Kinroom table3 room5 V_FALSE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-im4_joint-lift-table_a2_a4_table3_room6 dd) (not (available a2)))
)
(:action act-u2k_joint-move-table_a2_a4_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-im4_joint-lift-table_a2_a4_table3_room6 dd) (in a2 room6))
:effect 
(and (pre-u2k_joint-move-table_a2_a4_table3_room6_room5 dd) (not (pre-im4_joint-lift-table_a2_a4_table3_room6 dd)) (not (in a2 room6)) (in a2 room5))
)
(:action act-asi_joint-drop-table_a2_a4_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-u2k_joint-move-table_a2_a4_table3_room6_room5 dd) (in a2 room5))
:effect 
(and (pre-asi_joint-drop-table_a2_a4_table3_room5 dd) (not (pre-u2k_joint-move-table_a2_a4_table3_room6_room5 dd)) (available a2))
)
(:action goal-achieve-asi_joint-drop-table_a2_a4_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-asi_joint-drop-table_a2_a4_table3_room5 dd))
:effect 
(and (done-goal dd) (not (pre-asi_joint-drop-table_a2_a4_table3_room5 dd)))
)
(:action goal-achieve-right-i94_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-i94_observe-table_a2_table3_room5 dd) (inroom table3 room5) (inroom table4 room6) (inroom table2 room2) (Kinroom table3 room5 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-i94_observe-table_a2_table3_room5 dd)))
)
(:action act-m7w_observe-table_a5_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-m7w_observe-table_a5_table3_room6 dd) (inroom table2 room2) (in a2 room6) (Kinroom table2 room2 V_TRUE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-m7w_observe-table_a5_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (immediate-dummy-m7w_observe-table_a5_table3_room6 dd) (inroom table2 room2) (in a2 room6) (Kinroom table2 room2 V_TRUE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-m7w_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a2 room6) (not (dummy-left-m7w_observe-table_a5_table3_room6 dd)) (not (dummy-right-m7w_observe-table_a5_table3_room6 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-m7w_observe-table_a5_table3_room6 dd))
)
(:action dummy-left-m7w_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a2 room6) (not (inroom table3 room6)) (immediate-dummy-m7w_observe-table_a5_table3_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-m7w_observe-table_a5_table3_room6 dd)) (dummy-left-m7w_observe-table_a5_table3_room6 dd))
)
(:action dummy-right-m7w_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) (inroom table2 room2) (in a2 room6) (inroom table3 room6) (immediate-dummy-m7w_observe-table_a5_table3_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-m7w_observe-table_a5_table3_room6 dd)) (dummy-right-m7w_observe-table_a5_table3_room6 dd))
)
(:action act-d13_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7w_observe-table_a5_table3_room6 dd) (immediate-dummy-d13_observe-table_a5_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a2 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-d13_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7w_observe-table_a5_table3_room6 dd) (immediate-dummy-d13_observe-table_a5_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a2 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-d13_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7w_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a2 room6) (not (dummy-left-d13_observe-table_a5_table4_room6 dd)) (not (dummy-right-d13_observe-table_a5_table4_room6 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-d13_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-d13_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7w_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a2 room6) (not (inroom table4 room6)) (immediate-dummy-d13_observe-table_a5_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-d13_observe-table_a5_table4_room6 dd)) (dummy-left-d13_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-d13_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7w_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (in a2 room6) (inroom table4 room6) (immediate-dummy-d13_observe-table_a5_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-d13_observe-table_a5_table4_room6 dd)) (dummy-right-d13_observe-table_a5_table4_room6 dd))
)
(:action goal-achieve-left-d13_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-d13_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room2) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-d13_observe-table_a5_table4_room6 dd)))
)
(:action act-bom_joint-lift-table_a2_a4_table2_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-d13_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (inroom table2 room2) (available a2) (in a2 room3) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-bom_joint-lift-table_a2_a4_table2_room3 dd) (not (available a2)))
)
(:action act-8tk_joint-move-table_a2_a4_table2_room3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-bom_joint-lift-table_a2_a4_table2_room3 dd) (in a2 room3))
:effect 
(and (pre-8tk_joint-move-table_a2_a4_table2_room3_room2 dd) (not (pre-bom_joint-lift-table_a2_a4_table2_room3 dd)) (not (in a2 room3)) (in a2 room2))
)
(:action act-38g_joint-move-table_a2_a4_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-8tk_joint-move-table_a2_a4_table2_room3_room2 dd) (in a2 room2))
:effect 
(and (pre-38g_joint-move-table_a2_a4_table2_room2_room1 dd) (not (pre-8tk_joint-move-table_a2_a4_table2_room3_room2 dd)) (not (in a2 room2)) (in a2 room1))
)
(:action act-8pd_joint-drop-table_a2_a4_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-38g_joint-move-table_a2_a4_table2_room2_room1 dd) (in a2 room1))
:effect 
(and (pre-8pd_joint-drop-table_a2_a4_table2_room1 dd) (not (pre-38g_joint-move-table_a2_a4_table2_room2_room1 dd)) (available a2))
)
(:action goal-achieve-8pd_joint-drop-table_a2_a4_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-8pd_joint-drop-table_a2_a4_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-8pd_joint-drop-table_a2_a4_table2_room1 dd)))
)
(:action goal-achieve-right-m7w_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m7w_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table2 room2) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-m7w_observe-table_a5_table3_room6 dd)))
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
