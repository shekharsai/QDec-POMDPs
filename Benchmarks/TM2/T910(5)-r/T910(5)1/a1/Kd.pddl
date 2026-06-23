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
(lifting ?a - agent ?t - table ?r - room)
(inroom ?t - table ?r - room)
(Kinroom ?t - table ?r - room ?V_PARAM - VALUE_TYPE)
(KGiveninroom ?t - table ?r - room ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(in ?a - agent ?r - room)
(connected ?r1 - room ?r2 - room)
(available ?a - agent)
(can-observe ?a - agent ?t - table)
(init-9su_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-9su_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-9su_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-046_observe-table_a5_table3_room5 ?dd - dummy)
(dummy-left-046_observe-table_a5_table3_room5 ?dd - dummy)
(immediate-dummy-pgj_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-pgj_observe-table_a1_table2_room2 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-pgj_observe-table_a1_table2_room2 ?dd - dummy)
(pre-3pz_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-qzv_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-fhx_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(dummy-right-046_observe-table_a5_table3_room5 ?dd - dummy)
(immediate-dummy-xjc_observe-table_a1_table2_room1 ?dd - dummy)
(dummy-left-xjc_observe-table_a1_table2_room1 ?dd - dummy)
(pre-1nk_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-rk8_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-pqu_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-xjc_observe-table_a1_table2_room1 ?dd - dummy)
(dummy-right-9su_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-dq1_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-dq1_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-right-dq1_observe-table_a1_table2_room2 ?dd - dummy)
(pre-9xg_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-9jy_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-m5s_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-9su_observe-table_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-9su_observe-table_a4_table1_room3 dd) (immediate-dummy-9su_observe-table_a4_table1_room3 dd) (in a1 room3) (available a1) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-9su_observe-table_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-9su_observe-table_a4_table1_room3 dd) (immediate-dummy-9su_observe-table_a4_table1_room3 dd) (in a1 room3) (available a1) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-9su_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-9su_observe-table_a4_table1_room3 dd) (not (dummy-left-9su_observe-table_a4_table1_room3 dd)) (not (dummy-right-9su_observe-table_a4_table1_room3 dd)))
:effect 
(and (immediate-dummy-9su_observe-table_a4_table1_room3 dd))
)
(:action dummy-left-9su_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-9su_observe-table_a4_table1_room3 dd) (in a1 room3) (available a1) (not (inroom table1 room3)) (immediate-dummy-9su_observe-table_a4_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (init-9su_observe-table_a4_table1_room3 dd)) (not (immediate-dummy-9su_observe-table_a4_table1_room3 dd)) (dummy-left-9su_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-9su_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-9su_observe-table_a4_table1_room3 dd) (in a1 room3) (available a1) (inroom table1 room3) (immediate-dummy-9su_observe-table_a4_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (init-9su_observe-table_a4_table1_room3 dd)) (not (immediate-dummy-9su_observe-table_a4_table1_room3 dd)) (dummy-right-9su_observe-table_a4_table1_room3 dd))
)
(:action act-046_observe-table_a5_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9su_observe-table_a4_table1_room3 dd) (immediate-dummy-046_observe-table_a5_table3_room5 dd) (not (inroom table1 room3)) (in a1 room5) (available a1) (Kinroom table1 room3 V_FALSE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-046_observe-table_a5_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9su_observe-table_a4_table1_room3 dd) (immediate-dummy-046_observe-table_a5_table3_room5 dd) (not (inroom table1 room3)) (in a1 room5) (available a1) (Kinroom table1 room3 V_FALSE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-046_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9su_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a1 room5) (available a1) (not (dummy-left-046_observe-table_a5_table3_room5 dd)) (not (dummy-right-046_observe-table_a5_table3_room5 dd)) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-046_observe-table_a5_table3_room5 dd))
)
(:action dummy-left-046_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9su_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a1 room5) (available a1) (not (inroom table3 room5)) (immediate-dummy-046_observe-table_a5_table3_room5 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-046_observe-table_a5_table3_room5 dd)) (dummy-left-046_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-046_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9su_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a1 room5) (available a1) (inroom table3 room5) (immediate-dummy-046_observe-table_a5_table3_room5 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-046_observe-table_a5_table3_room5 dd)) (dummy-right-046_observe-table_a5_table3_room5 dd))
)
(:action act-pgj_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-046_observe-table_a5_table3_room5 dd) (immediate-dummy-pgj_observe-table_a1_table2_room2 dd) (not (inroom table3 room5)) (not (inroom table1 room3)) (in a1 room2) (available a1) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-pgj_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-046_observe-table_a5_table3_room5 dd) (immediate-dummy-pgj_observe-table_a1_table2_room2 dd) (not (inroom table3 room5)) (not (inroom table1 room3)) (in a1 room2) (available a1) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-pgj_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-046_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table1 room3)) (in a1 room2) (available a1) (not (dummy-left-pgj_observe-table_a1_table2_room2 dd)) (not (dummy-right-pgj_observe-table_a1_table2_room2 dd)) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-pgj_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-pgj_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-046_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table1 room3)) (in a1 room2) (available a1) (not (inroom table2 room2)) (immediate-dummy-pgj_observe-table_a1_table2_room2 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-pgj_observe-table_a1_table2_room2 dd)) (dummy-left-pgj_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-pgj_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-046_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table1 room3)) (in a1 room2) (available a1) (inroom table2 room2) (immediate-dummy-pgj_observe-table_a1_table2_room2 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-pgj_observe-table_a1_table2_room2 dd)) (dummy-right-pgj_observe-table_a1_table2_room2 dd))
)
(:action goal-achieve-left-pgj_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pgj_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table3 room5)) (not (inroom table1 room3)) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-pgj_observe-table_a1_table2_room2 dd)))
)
(:action act-3pz_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pgj_observe-table_a1_table2_room2 dd) (inroom table2 room2) (not (inroom table3 room5)) (not (inroom table1 room3)) (available a1) (in a1 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-3pz_joint-lift-table_a1_a2_table2_room2 dd) (not (available a1)))
)
(:action act-qzv_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-3pz_joint-lift-table_a1_a2_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-qzv_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-3pz_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-fhx_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-qzv_joint-move-table_a1_a2_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-fhx_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-qzv_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-fhx_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-fhx_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-fhx_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action act-xjc_observe-table_a1_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-046_observe-table_a5_table3_room5 dd) (immediate-dummy-xjc_observe-table_a1_table2_room1 dd) (inroom table3 room5) (not (inroom table1 room3)) (in a1 room1) (available a1) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-xjc_observe-table_a1_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-046_observe-table_a5_table3_room5 dd) (immediate-dummy-xjc_observe-table_a1_table2_room1 dd) (inroom table3 room5) (not (inroom table1 room3)) (in a1 room1) (available a1) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-xjc_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-046_observe-table_a5_table3_room5 dd) (inroom table3 room5) (not (inroom table1 room3)) (in a1 room1) (available a1) (not (dummy-left-xjc_observe-table_a1_table2_room1 dd)) (not (dummy-right-xjc_observe-table_a1_table2_room1 dd)) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-xjc_observe-table_a1_table2_room1 dd))
)
(:action dummy-left-xjc_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-046_observe-table_a5_table3_room5 dd) (inroom table3 room5) (not (inroom table1 room3)) (in a1 room1) (available a1) (not (inroom table2 room1)) (immediate-dummy-xjc_observe-table_a1_table2_room1 dd) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-xjc_observe-table_a1_table2_room1 dd)) (dummy-left-xjc_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-xjc_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-046_observe-table_a5_table3_room5 dd) (inroom table3 room5) (not (inroom table1 room3)) (in a1 room1) (available a1) (inroom table2 room1) (immediate-dummy-xjc_observe-table_a1_table2_room1 dd) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-xjc_observe-table_a1_table2_room1 dd)) (dummy-right-xjc_observe-table_a1_table2_room1 dd))
)
(:action act-1nk_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xjc_observe-table_a1_table2_room1 dd) (not (inroom table2 room1)) (inroom table3 room5) (not (inroom table1 room3)) (available a1) (in a1 room2) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-1nk_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-rk8_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-1nk_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-rk8_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-1nk_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-pqu_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-rk8_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-pqu_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-rk8_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-pqu_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-pqu_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-pqu_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-xjc_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjc_observe-table_a1_table2_room1 dd) (inroom table2 room1) (inroom table3 room5) (not (inroom table1 room3)) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-xjc_observe-table_a1_table2_room1 dd)))
)
(:action act-dq1_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9su_observe-table_a4_table1_room3 dd) (immediate-dummy-dq1_observe-table_a1_table2_room2 dd) (inroom table1 room3) (in a1 room2) (available a1) (Kinroom table1 room3 V_TRUE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-dq1_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9su_observe-table_a4_table1_room3 dd) (immediate-dummy-dq1_observe-table_a1_table2_room2 dd) (inroom table1 room3) (in a1 room2) (available a1) (Kinroom table1 room3 V_TRUE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-dq1_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9su_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a1 room2) (available a1) (not (dummy-left-dq1_observe-table_a1_table2_room2 dd)) (not (dummy-right-dq1_observe-table_a1_table2_room2 dd)) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-dq1_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-dq1_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9su_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a1 room2) (available a1) (not (inroom table2 room2)) (immediate-dummy-dq1_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-dq1_observe-table_a1_table2_room2 dd)) (dummy-left-dq1_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-dq1_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9su_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a1 room2) (available a1) (inroom table2 room2) (immediate-dummy-dq1_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-dq1_observe-table_a1_table2_room2 dd)) (dummy-right-dq1_observe-table_a1_table2_room2 dd))
)
(:action goal-achieve-left-dq1_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dq1_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-dq1_observe-table_a1_table2_room2 dd)))
)
(:action act-9xg_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dq1_observe-table_a1_table2_room2 dd) (inroom table2 room2) (inroom table1 room3) (available a1) (in a1 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-9xg_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-9jy_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-9xg_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-9jy_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-9xg_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-m5s_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-9jy_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-m5s_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-9jy_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-m5s_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-m5s_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-m5s_joint-drop-table_a1_a3_table2_room1 dd)))
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
