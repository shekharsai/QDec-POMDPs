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
(init-yy1_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-yy1_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-yy1_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-qm0_observe-table_a5_table3_room5 ?dd - dummy)
(dummy-left-qm0_observe-table_a5_table3_room5 ?dd - dummy)
(immediate-dummy-w12_observe-table_a1_table2_room1 ?dd - dummy)
(dummy-left-w12_observe-table_a1_table2_room1 ?dd - dummy)
(pre-4cn_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-g3j_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-tqa_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-w12_observe-table_a1_table2_room1 ?dd - dummy)
(dummy-right-qm0_observe-table_a5_table3_room5 ?dd - dummy)
(immediate-dummy-n34_observe-table_a3_table2_room2 ?dd - dummy)
(dummy-left-n34_observe-table_a3_table2_room2 ?dd - dummy)
(dummy-right-n34_observe-table_a3_table2_room2 ?dd - dummy)
(pre-7fb_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-p11_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-py3_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(dummy-right-yy1_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-1rl_observe-table_a3_table2_room2 ?dd - dummy)
(dummy-left-1rl_observe-table_a3_table2_room2 ?dd - dummy)
(dummy-right-1rl_observe-table_a3_table2_room2 ?dd - dummy)
(pre-cly_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-rwu_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-c2y_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-yy1_observe-table_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-yy1_observe-table_a4_table1_room3 dd) (immediate-dummy-yy1_observe-table_a4_table1_room3 dd) (in a1 room3) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-yy1_observe-table_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-yy1_observe-table_a4_table1_room3 dd) (immediate-dummy-yy1_observe-table_a4_table1_room3 dd) (in a1 room3) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-yy1_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-yy1_observe-table_a4_table1_room3 dd) (not (dummy-left-yy1_observe-table_a4_table1_room3 dd)) (not (dummy-right-yy1_observe-table_a4_table1_room3 dd)))
:effect 
(and (immediate-dummy-yy1_observe-table_a4_table1_room3 dd))
)
(:action dummy-left-yy1_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-yy1_observe-table_a4_table1_room3 dd) (in a1 room3) (not (inroom table1 room3)) (immediate-dummy-yy1_observe-table_a4_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (init-yy1_observe-table_a4_table1_room3 dd)) (not (immediate-dummy-yy1_observe-table_a4_table1_room3 dd)) (dummy-left-yy1_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-yy1_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-yy1_observe-table_a4_table1_room3 dd) (in a1 room3) (inroom table1 room3) (immediate-dummy-yy1_observe-table_a4_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (init-yy1_observe-table_a4_table1_room3 dd)) (not (immediate-dummy-yy1_observe-table_a4_table1_room3 dd)) (dummy-right-yy1_observe-table_a4_table1_room3 dd))
)
(:action act-qm0_observe-table_a5_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yy1_observe-table_a4_table1_room3 dd) (immediate-dummy-qm0_observe-table_a5_table3_room5 dd) (not (inroom table1 room3)) (in a1 room5) (Kinroom table1 room3 V_FALSE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-qm0_observe-table_a5_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yy1_observe-table_a4_table1_room3 dd) (immediate-dummy-qm0_observe-table_a5_table3_room5 dd) (not (inroom table1 room3)) (in a1 room5) (Kinroom table1 room3 V_FALSE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-qm0_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yy1_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a1 room5) (not (dummy-left-qm0_observe-table_a5_table3_room5 dd)) (not (dummy-right-qm0_observe-table_a5_table3_room5 dd)) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-qm0_observe-table_a5_table3_room5 dd))
)
(:action dummy-left-qm0_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yy1_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a1 room5) (not (inroom table3 room5)) (immediate-dummy-qm0_observe-table_a5_table3_room5 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-qm0_observe-table_a5_table3_room5 dd)) (dummy-left-qm0_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-qm0_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yy1_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a1 room5) (inroom table3 room5) (immediate-dummy-qm0_observe-table_a5_table3_room5 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-qm0_observe-table_a5_table3_room5 dd)) (dummy-right-qm0_observe-table_a5_table3_room5 dd))
)
(:action act-w12_observe-table_a1_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qm0_observe-table_a5_table3_room5 dd) (immediate-dummy-w12_observe-table_a1_table2_room1 dd) (not (inroom table3 room5)) (not (inroom table1 room3)) (in a1 room1) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-w12_observe-table_a1_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qm0_observe-table_a5_table3_room5 dd) (immediate-dummy-w12_observe-table_a1_table2_room1 dd) (not (inroom table3 room5)) (not (inroom table1 room3)) (in a1 room1) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-w12_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qm0_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table1 room3)) (in a1 room1) (not (dummy-left-w12_observe-table_a1_table2_room1 dd)) (not (dummy-right-w12_observe-table_a1_table2_room1 dd)) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-w12_observe-table_a1_table2_room1 dd))
)
(:action dummy-left-w12_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qm0_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table1 room3)) (in a1 room1) (not (inroom table2 room1)) (immediate-dummy-w12_observe-table_a1_table2_room1 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-w12_observe-table_a1_table2_room1 dd)) (dummy-left-w12_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-w12_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qm0_observe-table_a5_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table1 room3)) (in a1 room1) (inroom table2 room1) (immediate-dummy-w12_observe-table_a1_table2_room1 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-w12_observe-table_a1_table2_room1 dd)) (dummy-right-w12_observe-table_a1_table2_room1 dd))
)
(:action act-4cn_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w12_observe-table_a1_table2_room1 dd) (not (inroom table2 room1)) (not (inroom table3 room5)) (not (inroom table1 room3)) (available a1) (in a1 room2) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-4cn_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-g3j_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-4cn_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-g3j_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-4cn_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-tqa_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-g3j_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-tqa_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-g3j_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-tqa_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-tqa_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-tqa_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-w12_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w12_observe-table_a1_table2_room1 dd) (inroom table2 room1) (not (inroom table3 room5)) (not (inroom table1 room3)) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-w12_observe-table_a1_table2_room1 dd)))
)
(:action act-n34_observe-table_a3_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qm0_observe-table_a5_table3_room5 dd) (immediate-dummy-n34_observe-table_a3_table2_room2 dd) (inroom table3 room5) (not (inroom table1 room3)) (in a1 room2) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-n34_observe-table_a3_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qm0_observe-table_a5_table3_room5 dd) (immediate-dummy-n34_observe-table_a3_table2_room2 dd) (inroom table3 room5) (not (inroom table1 room3)) (in a1 room2) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-n34_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qm0_observe-table_a5_table3_room5 dd) (inroom table3 room5) (not (inroom table1 room3)) (in a1 room2) (not (dummy-left-n34_observe-table_a3_table2_room2 dd)) (not (dummy-right-n34_observe-table_a3_table2_room2 dd)) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-n34_observe-table_a3_table2_room2 dd))
)
(:action dummy-left-n34_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qm0_observe-table_a5_table3_room5 dd) (inroom table3 room5) (not (inroom table1 room3)) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-n34_observe-table_a3_table2_room2 dd) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-n34_observe-table_a3_table2_room2 dd)) (dummy-left-n34_observe-table_a3_table2_room2 dd))
)
(:action dummy-right-n34_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qm0_observe-table_a5_table3_room5 dd) (inroom table3 room5) (not (inroom table1 room3)) (in a1 room2) (inroom table2 room2) (immediate-dummy-n34_observe-table_a3_table2_room2 dd) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-n34_observe-table_a3_table2_room2 dd)) (dummy-right-n34_observe-table_a3_table2_room2 dd))
)
(:action goal-achieve-left-n34_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n34_observe-table_a3_table2_room2 dd) (not (inroom table2 room2)) (inroom table3 room5) (not (inroom table1 room3)) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-n34_observe-table_a3_table2_room2 dd)))
)
(:action act-7fb_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n34_observe-table_a3_table2_room2 dd) (inroom table2 room2) (inroom table3 room5) (not (inroom table1 room3)) (available a1) (in a1 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-7fb_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-p11_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-7fb_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-p11_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-7fb_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-py3_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-p11_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-py3_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-p11_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-py3_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-py3_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-py3_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-1rl_observe-table_a3_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yy1_observe-table_a4_table1_room3 dd) (immediate-dummy-1rl_observe-table_a3_table2_room2 dd) (inroom table1 room3) (in a1 room2) (Kinroom table1 room3 V_TRUE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-1rl_observe-table_a3_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yy1_observe-table_a4_table1_room3 dd) (immediate-dummy-1rl_observe-table_a3_table2_room2 dd) (inroom table1 room3) (in a1 room2) (Kinroom table1 room3 V_TRUE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-1rl_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yy1_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a1 room2) (not (dummy-left-1rl_observe-table_a3_table2_room2 dd)) (not (dummy-right-1rl_observe-table_a3_table2_room2 dd)) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-1rl_observe-table_a3_table2_room2 dd))
)
(:action dummy-left-1rl_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yy1_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-1rl_observe-table_a3_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-1rl_observe-table_a3_table2_room2 dd)) (dummy-left-1rl_observe-table_a3_table2_room2 dd))
)
(:action dummy-right-1rl_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yy1_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a1 room2) (inroom table2 room2) (immediate-dummy-1rl_observe-table_a3_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-1rl_observe-table_a3_table2_room2 dd)) (dummy-right-1rl_observe-table_a3_table2_room2 dd))
)
(:action goal-achieve-left-1rl_observe-table_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1rl_observe-table_a3_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-1rl_observe-table_a3_table2_room2 dd)))
)
(:action act-cly_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1rl_observe-table_a3_table2_room2 dd) (inroom table2 room2) (inroom table1 room3) (available a1) (in a1 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-cly_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-rwu_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-cly_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-rwu_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-cly_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-c2y_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-rwu_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-c2y_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-rwu_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-c2y_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-c2y_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-c2y_joint-drop-table_a1_a3_table2_room1 dd)))
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
