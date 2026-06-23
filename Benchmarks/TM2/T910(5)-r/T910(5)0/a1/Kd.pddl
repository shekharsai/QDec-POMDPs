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
 tag0 - TAG_TYPE ; (inroom table3 room6) (inroom table4 room7)
 tag1 - TAG_TYPE ; (inroom table3 room5) (inroom table4 room6)
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
(init-ih1_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-ih1_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-ih1_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-ftu_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-ftu_observe-table_a3_table2_room1 ?dd - dummy)
(pre-28y_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-4k2_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-kl3_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-ftu_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-right-ih1_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-h0d_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-h0d_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-right-h0d_observe-table_a1_table2_room2 ?dd - dummy)
(pre-agu_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
(pre-rii_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
(pre-prk_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-ih1_observe-table_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-ih1_observe-table_a4_table1_room3 dd) (immediate-dummy-ih1_observe-table_a4_table1_room3 dd) (in a1 room3) (available a1) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-ih1_observe-table_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-ih1_observe-table_a4_table1_room3 dd) (immediate-dummy-ih1_observe-table_a4_table1_room3 dd) (in a1 room3) (available a1) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-ih1_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-ih1_observe-table_a4_table1_room3 dd) (not (dummy-left-ih1_observe-table_a4_table1_room3 dd)) (not (dummy-right-ih1_observe-table_a4_table1_room3 dd)))
:effect 
(and (immediate-dummy-ih1_observe-table_a4_table1_room3 dd))
)
(:action dummy-left-ih1_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-ih1_observe-table_a4_table1_room3 dd) (in a1 room3) (available a1) (not (inroom table1 room3)) (immediate-dummy-ih1_observe-table_a4_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (init-ih1_observe-table_a4_table1_room3 dd)) (not (immediate-dummy-ih1_observe-table_a4_table1_room3 dd)) (dummy-left-ih1_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-ih1_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-ih1_observe-table_a4_table1_room3 dd) (in a1 room3) (available a1) (inroom table1 room3) (immediate-dummy-ih1_observe-table_a4_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (init-ih1_observe-table_a4_table1_room3 dd)) (not (immediate-dummy-ih1_observe-table_a4_table1_room3 dd)) (dummy-right-ih1_observe-table_a4_table1_room3 dd))
)
(:action act-ftu_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ih1_observe-table_a4_table1_room3 dd) (immediate-dummy-ftu_observe-table_a3_table2_room1 dd) (not (inroom table1 room3)) (in a1 room1) (available a1) (Kinroom table1 room3 V_FALSE) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-ftu_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ih1_observe-table_a4_table1_room3 dd) (immediate-dummy-ftu_observe-table_a3_table2_room1 dd) (not (inroom table1 room3)) (in a1 room1) (available a1) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-ftu_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ih1_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a1 room1) (available a1) (not (dummy-left-ftu_observe-table_a3_table2_room1 dd)) (not (dummy-right-ftu_observe-table_a3_table2_room1 dd)) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-ftu_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-ftu_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ih1_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a1 room1) (available a1) (not (inroom table2 room1)) (immediate-dummy-ftu_observe-table_a3_table2_room1 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-ftu_observe-table_a3_table2_room1 dd)) (dummy-left-ftu_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-ftu_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ih1_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a1 room1) (available a1) (inroom table2 room1) (immediate-dummy-ftu_observe-table_a3_table2_room1 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-ftu_observe-table_a3_table2_room1 dd)) (dummy-right-ftu_observe-table_a3_table2_room1 dd))
)
(:action act-28y_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ftu_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (not (inroom table1 room3)) (available a1) (in a1 room2) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-28y_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-4k2_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-28y_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-4k2_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-28y_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-kl3_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-4k2_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-kl3_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-4k2_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-kl3_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-kl3_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-kl3_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-ftu_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ftu_observe-table_a3_table2_room1 dd) (inroom table2 room1) (not (inroom table1 room3)) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-ftu_observe-table_a3_table2_room1 dd)))
)
(:action act-h0d_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ih1_observe-table_a4_table1_room3 dd) (immediate-dummy-h0d_observe-table_a1_table2_room2 dd) (inroom table1 room3) (in a1 room2) (available a1) (Kinroom table1 room3 V_TRUE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-h0d_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ih1_observe-table_a4_table1_room3 dd) (immediate-dummy-h0d_observe-table_a1_table2_room2 dd) (inroom table1 room3) (in a1 room2) (available a1) (Kinroom table1 room3 V_TRUE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-h0d_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ih1_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a1 room2) (available a1) (not (dummy-left-h0d_observe-table_a1_table2_room2 dd)) (not (dummy-right-h0d_observe-table_a1_table2_room2 dd)) (Kinroom table1 room3 V_TRUE))
:effect 
(and (immediate-dummy-h0d_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-h0d_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ih1_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a1 room2) (available a1) (not (inroom table2 room2)) (immediate-dummy-h0d_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-h0d_observe-table_a1_table2_room2 dd)) (dummy-left-h0d_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-h0d_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ih1_observe-table_a4_table1_room3 dd) (inroom table1 room3) (in a1 room2) (available a1) (inroom table2 room2) (immediate-dummy-h0d_observe-table_a1_table2_room2 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-h0d_observe-table_a1_table2_room2 dd)) (dummy-right-h0d_observe-table_a1_table2_room2 dd))
)
(:action goal-achieve-left-h0d_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-h0d_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-h0d_observe-table_a1_table2_room2 dd)))
)
(:action act-agu_joint-lift-table_a1_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h0d_observe-table_a1_table2_room2 dd) (inroom table2 room2) (inroom table1 room3) (available a1) (in a1 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-agu_joint-lift-table_a1_a3_table2_room2 dd) (not (available a1)))
)
(:action act-rii_joint-move-table_a1_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-agu_joint-lift-table_a1_a3_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-rii_joint-move-table_a1_a3_table2_room2_room1 dd) (not (pre-agu_joint-lift-table_a1_a3_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-prk_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-rii_joint-move-table_a1_a3_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-prk_joint-drop-table_a1_a3_table2_room1 dd) (not (pre-rii_joint-move-table_a1_a3_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-prk_joint-drop-table_a1_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-prk_joint-drop-table_a1_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-prk_joint-drop-table_a1_a3_table2_room1 dd)))
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
