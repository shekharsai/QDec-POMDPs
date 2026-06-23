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
 tag0 - TAG_TYPE ; (inroom table3 room5)
 tag1 - TAG_TYPE ; (inroom table3 room6)
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
(init-r65_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-r65_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-r65_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-lun_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-lun_observe-table_a4_table1_room3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-lun_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-p0p_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-p0p_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-right-p0p_observe-table_a5_table4_room6 ?dd - dummy)
(pre-yql_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-33c_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-0yz_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(dummy-right-r65_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-jlj_observe-table_a5_table3_room5 ?dd - dummy)
(dummy-left-jlj_observe-table_a5_table3_room5 ?dd - dummy)
(immediate-dummy-718_observe-table_a4_table1_room4 ?dd - dummy)
(dummy-left-718_observe-table_a4_table1_room4 ?dd - dummy)
(pre-a7h_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
(pre-gv7_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
(pre-86d_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
(dummy-right-718_observe-table_a4_table1_room4 ?dd - dummy)
(pre-ob9_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-ayj_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-evs_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-jlj_observe-table_a5_table3_room5 ?dd - dummy)
(pre-qch_joint-lift-table_a2_a3_table2_room2 ?dd - dummy)
(pre-twq_joint-move-table_a2_a3_table2_room2_room1 ?dd - dummy)
(pre-u1p_joint-drop-table_a2_a3_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-r65_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (init-r65_observe-table_a1_table2_room2 dd) (immediate-dummy-r65_observe-table_a1_table2_room2 dd) (in a3 room2) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-r65_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (init-r65_observe-table_a1_table2_room2 dd) (immediate-dummy-r65_observe-table_a1_table2_room2 dd) (in a3 room2) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-r65_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-r65_observe-table_a1_table2_room2 dd) (not (dummy-left-r65_observe-table_a1_table2_room2 dd)) (not (dummy-right-r65_observe-table_a1_table2_room2 dd)))
:effect 
(and (immediate-dummy-r65_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-r65_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-r65_observe-table_a1_table2_room2 dd) (in a3 room2) (not (inroom table2 room2)) (immediate-dummy-r65_observe-table_a1_table2_room2 dd) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (init-r65_observe-table_a1_table2_room2 dd)) (not (immediate-dummy-r65_observe-table_a1_table2_room2 dd)) (dummy-left-r65_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-r65_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-r65_observe-table_a1_table2_room2 dd) (in a3 room2) (inroom table2 room2) (immediate-dummy-r65_observe-table_a1_table2_room2 dd) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (init-r65_observe-table_a1_table2_room2 dd)) (not (immediate-dummy-r65_observe-table_a1_table2_room2 dd)) (dummy-right-r65_observe-table_a1_table2_room2 dd))
)
(:action act-lun_observe-table_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r65_observe-table_a1_table2_room2 dd) (immediate-dummy-lun_observe-table_a4_table1_room3 dd) (not (inroom table2 room2)) (in a3 room3) (Kinroom table2 room2 V_FALSE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-lun_observe-table_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r65_observe-table_a1_table2_room2 dd) (immediate-dummy-lun_observe-table_a4_table1_room3 dd) (not (inroom table2 room2)) (in a3 room3) (Kinroom table2 room2 V_FALSE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-lun_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r65_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (in a3 room3) (not (dummy-left-lun_observe-table_a4_table1_room3 dd)) (not (dummy-right-lun_observe-table_a4_table1_room3 dd)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-lun_observe-table_a4_table1_room3 dd))
)
(:action dummy-left-lun_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r65_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (in a3 room3) (not (inroom table1 room3)) (immediate-dummy-lun_observe-table_a4_table1_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-lun_observe-table_a4_table1_room3 dd)) (dummy-left-lun_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-lun_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r65_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (in a3 room3) (inroom table1 room3) (immediate-dummy-lun_observe-table_a4_table1_room3 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-lun_observe-table_a4_table1_room3 dd)) (dummy-right-lun_observe-table_a4_table1_room3 dd))
)
(:action goal-achieve-left-lun_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-lun_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table2 room2)) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-lun_observe-table_a4_table1_room3 dd)))
)
(:action act-p0p_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lun_observe-table_a4_table1_room3 dd) (immediate-dummy-p0p_observe-table_a5_table4_room6 dd) (inroom table1 room3) (not (inroom table2 room2)) (in a3 room6) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-p0p_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lun_observe-table_a4_table1_room3 dd) (immediate-dummy-p0p_observe-table_a5_table4_room6 dd) (inroom table1 room3) (not (inroom table2 room2)) (in a3 room6) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-p0p_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lun_observe-table_a4_table1_room3 dd) (inroom table1 room3) (not (inroom table2 room2)) (in a3 room6) (not (dummy-left-p0p_observe-table_a5_table4_room6 dd)) (not (dummy-right-p0p_observe-table_a5_table4_room6 dd)) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-p0p_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-p0p_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lun_observe-table_a4_table1_room3 dd) (inroom table1 room3) (not (inroom table2 room2)) (in a3 room6) (not (inroom table4 room6)) (immediate-dummy-p0p_observe-table_a5_table4_room6 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-p0p_observe-table_a5_table4_room6 dd)) (dummy-left-p0p_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-p0p_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lun_observe-table_a4_table1_room3 dd) (inroom table1 room3) (not (inroom table2 room2)) (in a3 room6) (inroom table4 room6) (immediate-dummy-p0p_observe-table_a5_table4_room6 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-p0p_observe-table_a5_table4_room6 dd)) (dummy-right-p0p_observe-table_a5_table4_room6 dd))
)
(:action goal-achieve-left-p0p_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-p0p_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (inroom table1 room3) (not (inroom table2 room2)) (Kinroom table4 room6 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-p0p_observe-table_a5_table4_room6 dd)))
)
(:action act-yql_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p0p_observe-table_a5_table4_room6 dd) (inroom table4 room6) (inroom table1 room3) (not (inroom table2 room2)) (available a3) (in a3 room3) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (pre-yql_joint-lift-table_a1_a3_table1_room3 dd) (not (available a3)))
)
(:action act-33c_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-yql_joint-lift-table_a1_a3_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-33c_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-yql_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-0yz_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-33c_joint-move-table_a1_a3_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-0yz_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-33c_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-0yz_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-0yz_joint-drop-table_a1_a3_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-0yz_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action act-jlj_observe-table_a5_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r65_observe-table_a1_table2_room2 dd) (immediate-dummy-jlj_observe-table_a5_table3_room5 dd) (inroom table2 room2) (in a3 room5) (Kinroom table2 room2 V_TRUE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-jlj_observe-table_a5_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r65_observe-table_a1_table2_room2 dd) (immediate-dummy-jlj_observe-table_a5_table3_room5 dd) (inroom table2 room2) (in a3 room5) (Kinroom table2 room2 V_TRUE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-jlj_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r65_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a3 room5) (not (dummy-left-jlj_observe-table_a5_table3_room5 dd)) (not (dummy-right-jlj_observe-table_a5_table3_room5 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-jlj_observe-table_a5_table3_room5 dd))
)
(:action dummy-left-jlj_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r65_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a3 room5) (not (inroom table3 room5)) (immediate-dummy-jlj_observe-table_a5_table3_room5 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-jlj_observe-table_a5_table3_room5 dd)) (dummy-left-jlj_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-jlj_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r65_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a3 room5) (inroom table3 room5) (immediate-dummy-jlj_observe-table_a5_table3_room5 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-jlj_observe-table_a5_table3_room5 dd)) (dummy-right-jlj_observe-table_a5_table3_room5 dd))
)
(:action act-718_observe-table_a4_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jlj_observe-table_a5_table3_room5 dd) (immediate-dummy-718_observe-table_a4_table1_room4 dd) (not (inroom table3 room5)) (inroom table2 room2) (in a3 room4) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_TRUE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-718_observe-table_a4_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jlj_observe-table_a5_table3_room5 dd) (immediate-dummy-718_observe-table_a4_table1_room4 dd) (not (inroom table3 room5)) (inroom table2 room2) (in a3 room4) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_TRUE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-718_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jlj_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (inroom table2 room2) (in a3 room4) (not (dummy-left-718_observe-table_a4_table1_room4 dd)) (not (dummy-right-718_observe-table_a4_table1_room4 dd)) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-718_observe-table_a4_table1_room4 dd))
)
(:action dummy-left-718_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jlj_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (inroom table2 room2) (in a3 room4) (not (inroom table1 room4)) (immediate-dummy-718_observe-table_a4_table1_room4 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-718_observe-table_a4_table1_room4 dd)) (dummy-left-718_observe-table_a4_table1_room4 dd))
)
(:action dummy-right-718_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jlj_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (inroom table2 room2) (in a3 room4) (inroom table1 room4) (immediate-dummy-718_observe-table_a4_table1_room4 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-718_observe-table_a4_table1_room4 dd)) (dummy-right-718_observe-table_a4_table1_room4 dd))
)
(:action act-a7h_joint-lift-table_a3_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-718_observe-table_a4_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table3 room5)) (inroom table2 room2) (available a3) (in a3 room3) (Kinroom table1 room4 V_FALSE) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-a7h_joint-lift-table_a3_a4_table1_room3 dd) (not (available a3)))
)
(:action act-gv7_joint-move-table_a3_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-a7h_joint-lift-table_a3_a4_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-gv7_joint-move-table_a3_a4_table1_room3_room4 dd) (not (pre-a7h_joint-lift-table_a3_a4_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-86d_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-gv7_joint-move-table_a3_a4_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-86d_joint-drop-table_a3_a4_table1_room4 dd) (not (pre-gv7_joint-move-table_a3_a4_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-86d_joint-drop-table_a3_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-86d_joint-drop-table_a3_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-86d_joint-drop-table_a3_a4_table1_room4 dd)))
)
(:action act-ob9_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-718_observe-table_a4_table1_room4 dd) (inroom table1 room4) (not (inroom table3 room5)) (inroom table2 room2) (available a3) (in a3 room2) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-ob9_joint-lift-table_a1_a3_table2_room2 dd) (not (available a3)))
)
(:action act-ayj_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ob9_joint-lift-table_a1_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-ayj_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-ob9_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-evs_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ayj_joint-move-table_a1_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-evs_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-ayj_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-evs_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-evs_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-evs_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-qch_joint-lift-table_a2_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jlj_observe-table_a5_table3_room5 dd) (inroom table3 room5) (inroom table2 room2) (available a3) (in a3 room2) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-qch_joint-lift-table_a2_a3_table2_room2 dd) (not (available a3)))
)
(:action act-twq_joint-move-table_a2_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-qch_joint-lift-table_a2_a3_table2_room2 dd) (in a3 room2))
:effect 
(and (pre-twq_joint-move-table_a2_a3_table2_room2_room1 dd) (not (pre-qch_joint-lift-table_a2_a3_table2_room2 dd)) (not (in a3 room2)) (in a3 room1))
)
(:action act-u1p_joint-drop-table_a2_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-twq_joint-move-table_a2_a3_table2_room2_room1 dd) (in a3 room1))
:effect 
(and (pre-u1p_joint-drop-table_a2_a3_table2_room1 dd) (not (pre-twq_joint-move-table_a2_a3_table2_room2_room1 dd)) (available a3))
)
(:action goal-achieve-u1p_joint-drop-table_a2_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-u1p_joint-drop-table_a2_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-u1p_joint-drop-table_a2_a3_table2_room1 dd)))
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
