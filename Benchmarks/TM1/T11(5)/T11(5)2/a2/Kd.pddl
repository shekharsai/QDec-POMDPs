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
 tag0 - TAG_TYPE ; (inroom table1 room4) (inroom table3 room6) (inroom table4 room7)
 tag1 - TAG_TYPE ; (inroom table1 room3) (inroom table3 room5) (inroom table4 room6)
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
(init-cr2_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-cr2_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-cr2_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-34b_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-34b_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-1bn_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-1bn_observe-table_a5_table4_room6 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-1bn_observe-table_a5_table4_room6 ?dd - dummy)
(immediate-dummy-m7r_observe-table_a2_table3_room5 ?dd - dummy)
(dummy-left-m7r_observe-table_a2_table3_room5 ?dd - dummy)
(pre-vr3_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
(pre-quo_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
(pre-hn6_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
(dummy-right-m7r_observe-table_a2_table3_room5 ?dd - dummy)
(dummy-right-34b_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-right-cr2_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-yrq_observe-table_a4_table3_room6 ?dd - dummy)
(dummy-left-yrq_observe-table_a4_table3_room6 ?dd - dummy)
(dummy-right-yrq_observe-table_a4_table3_room6 ?dd - dummy)
(immediate-dummy-mts_observe-table_a3_table1_room3 ?dd - dummy)
(dummy-left-mts_observe-table_a3_table1_room3 ?dd - dummy)
(dummy-right-mts_observe-table_a3_table1_room3 ?dd - dummy)
(pre-suo_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-5g3_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-j4v_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-cr2_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (init-cr2_observe-table_a1_table2_room2 dd) (immediate-dummy-cr2_observe-table_a1_table2_room2 dd) (in a2 room2) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-cr2_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (init-cr2_observe-table_a1_table2_room2 dd) (immediate-dummy-cr2_observe-table_a1_table2_room2 dd) (in a2 room2) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-cr2_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-cr2_observe-table_a1_table2_room2 dd) (not (dummy-left-cr2_observe-table_a1_table2_room2 dd)) (not (dummy-right-cr2_observe-table_a1_table2_room2 dd)))
:effect 
(and (immediate-dummy-cr2_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-cr2_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-cr2_observe-table_a1_table2_room2 dd) (in a2 room2) (not (inroom table2 room2)) (immediate-dummy-cr2_observe-table_a1_table2_room2 dd) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (init-cr2_observe-table_a1_table2_room2 dd)) (not (immediate-dummy-cr2_observe-table_a1_table2_room2 dd)) (dummy-left-cr2_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-cr2_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-cr2_observe-table_a1_table2_room2 dd) (in a2 room2) (inroom table2 room2) (immediate-dummy-cr2_observe-table_a1_table2_room2 dd) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (init-cr2_observe-table_a1_table2_room2 dd)) (not (immediate-dummy-cr2_observe-table_a1_table2_room2 dd)) (dummy-right-cr2_observe-table_a1_table2_room2 dd))
)
(:action act-1bn_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-34b_observe-table_a4_table1_room3 dd) (immediate-dummy-1bn_observe-table_a5_table4_room6 dd) (not (inroom table1 room3)) (not (inroom table2 room2)) (in a2 room6) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-1bn_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-34b_observe-table_a4_table1_room3 dd) (immediate-dummy-1bn_observe-table_a5_table4_room6 dd) (not (inroom table1 room3)) (not (inroom table2 room2)) (in a2 room6) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-1bn_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-34b_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table2 room2)) (in a2 room6) (not (dummy-left-1bn_observe-table_a5_table4_room6 dd)) (not (dummy-right-1bn_observe-table_a5_table4_room6 dd)) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-1bn_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-1bn_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-34b_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table2 room2)) (in a2 room6) (not (inroom table4 room6)) (immediate-dummy-1bn_observe-table_a5_table4_room6 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-1bn_observe-table_a5_table4_room6 dd)) (dummy-left-1bn_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-1bn_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-34b_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table2 room2)) (in a2 room6) (inroom table4 room6) (immediate-dummy-1bn_observe-table_a5_table4_room6 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-1bn_observe-table_a5_table4_room6 dd)) (dummy-right-1bn_observe-table_a5_table4_room6 dd))
)
(:action goal-achieve-left-1bn_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1bn_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table1 room3)) (not (inroom table2 room2)) (Kinroom table4 room6 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-1bn_observe-table_a5_table4_room6 dd)))
)
(:action act-m7r_observe-table_a2_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1bn_observe-table_a5_table4_room6 dd) (immediate-dummy-m7r_observe-table_a2_table3_room5 dd) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room2)) (in a2 room5) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-m7r_observe-table_a2_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1bn_observe-table_a5_table4_room6 dd) (immediate-dummy-m7r_observe-table_a2_table3_room5 dd) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room2)) (in a2 room5) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-m7r_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1bn_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room2)) (in a2 room5) (not (dummy-left-m7r_observe-table_a2_table3_room5 dd)) (not (dummy-right-m7r_observe-table_a2_table3_room5 dd)) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-m7r_observe-table_a2_table3_room5 dd))
)
(:action dummy-left-m7r_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1bn_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room2)) (in a2 room5) (not (inroom table3 room5)) (immediate-dummy-m7r_observe-table_a2_table3_room5 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-m7r_observe-table_a2_table3_room5 dd)) (dummy-left-m7r_observe-table_a2_table3_room5 dd))
)
(:action dummy-right-m7r_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1bn_observe-table_a5_table4_room6 dd) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room2)) (in a2 room5) (inroom table3 room5) (immediate-dummy-m7r_observe-table_a2_table3_room5 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-m7r_observe-table_a2_table3_room5 dd)) (dummy-right-m7r_observe-table_a2_table3_room5 dd))
)
(:action act-vr3_joint-lift-table_a2_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7r_observe-table_a2_table3_room5 dd) (not (inroom table3 room5)) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room2)) (available a2) (in a2 room6) (Kinroom table3 room5 V_FALSE) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (pre-vr3_joint-lift-table_a2_a5_table3_room6 dd) (not (available a2)))
)
(:action act-quo_joint-move-table_a2_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-vr3_joint-lift-table_a2_a5_table3_room6 dd) (in a2 room6))
:effect 
(and (pre-quo_joint-move-table_a2_a5_table3_room6_room5 dd) (not (pre-vr3_joint-lift-table_a2_a5_table3_room6 dd)) (not (in a2 room6)) (in a2 room5))
)
(:action act-hn6_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-quo_joint-move-table_a2_a5_table3_room6_room5 dd) (in a2 room5))
:effect 
(and (pre-hn6_joint-drop-table_a2_a5_table3_room5 dd) (not (pre-quo_joint-move-table_a2_a5_table3_room6_room5 dd)) (available a2))
)
(:action goal-achieve-hn6_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-hn6_joint-drop-table_a2_a5_table3_room5 dd))
:effect 
(and (done-goal dd) (not (pre-hn6_joint-drop-table_a2_a5_table3_room5 dd)))
)
(:action goal-achieve-right-m7r_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m7r_observe-table_a2_table3_room5 dd) (inroom table3 room5) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room2)) (Kinroom table3 room5 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-m7r_observe-table_a2_table3_room5 dd)))
)
(:action goal-achieve-right-34b_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-34b_observe-table_a4_table1_room3 dd) (inroom table1 room3) (not (inroom table2 room2)) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-34b_observe-table_a4_table1_room3 dd)))
)
(:action act-yrq_observe-table_a4_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cr2_observe-table_a1_table2_room2 dd) (immediate-dummy-yrq_observe-table_a4_table3_room6 dd) (inroom table2 room2) (in a2 room6) (Kinroom table2 room2 V_TRUE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-yrq_observe-table_a4_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cr2_observe-table_a1_table2_room2 dd) (immediate-dummy-yrq_observe-table_a4_table3_room6 dd) (inroom table2 room2) (in a2 room6) (Kinroom table2 room2 V_TRUE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-yrq_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cr2_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a2 room6) (not (dummy-left-yrq_observe-table_a4_table3_room6 dd)) (not (dummy-right-yrq_observe-table_a4_table3_room6 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-yrq_observe-table_a4_table3_room6 dd))
)
(:action dummy-left-yrq_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cr2_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a2 room6) (not (inroom table3 room6)) (immediate-dummy-yrq_observe-table_a4_table3_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-yrq_observe-table_a4_table3_room6 dd)) (dummy-left-yrq_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-yrq_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cr2_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a2 room6) (inroom table3 room6) (immediate-dummy-yrq_observe-table_a4_table3_room6 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-yrq_observe-table_a4_table3_room6 dd)) (dummy-right-yrq_observe-table_a4_table3_room6 dd))
)
(:action goal-achieve-left-yrq_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yrq_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room2) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-yrq_observe-table_a4_table3_room6 dd)))
)
(:action goal-achieve-left-mts_observe-table_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mts_observe-table_a3_table1_room3 dd) (not (inroom table1 room3)) (inroom table3 room6) (inroom table2 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-mts_observe-table_a3_table1_room3 dd)))
)
(:action act-suo_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mts_observe-table_a3_table1_room3 dd) (inroom table1 room3) (inroom table3 room6) (inroom table2 room2) (available a2) (in a2 room2) (Kinroom table1 room3 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-suo_joint-lift-table_a1_a2_table2_room2 dd) (not (available a2)))
)
(:action act-5g3_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-suo_joint-lift-table_a1_a2_table2_room2 dd) (in a2 room2))
:effect 
(and (pre-5g3_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-suo_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a2 room2)) (in a2 room1))
)
(:action act-j4v_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-5g3_joint-move-table_a1_a2_table2_room2_room1 dd) (in a2 room1))
:effect 
(and (pre-j4v_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-5g3_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a2))
)
(:action goal-achieve-j4v_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-j4v_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-j4v_joint-drop-table_a1_a2_table2_room1 dd)))
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
