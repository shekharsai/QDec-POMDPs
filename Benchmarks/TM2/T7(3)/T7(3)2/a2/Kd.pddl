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
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table2 room1) (inroom table3 room2) (inroom table4 room2)
 tag1 - TAG_TYPE ; (inroom table2 room2) (inroom table3 room1) (inroom table4 room1)
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
(init-mb2_observe-table_a2_table1_room4 ?dd - dummy)
(immediate-dummy-mb2_observe-table_a2_table1_room4 ?dd - dummy)
(dummy-left-mb2_observe-table_a2_table1_room4 ?dd - dummy)
(pre-ott_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-921_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-s0x_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-mb2_observe-table_a2_table1_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-mb2_observe-table_a2_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (init-mb2_observe-table_a2_table1_room4 dd) (immediate-dummy-mb2_observe-table_a2_table1_room4 dd) (in a2 room4) (available a2) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-mb2_observe-table_a2_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (init-mb2_observe-table_a2_table1_room4 dd) (immediate-dummy-mb2_observe-table_a2_table1_room4 dd) (in a2 room4) (available a2) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-mb2_observe-table_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (init-mb2_observe-table_a2_table1_room4 dd) (not (dummy-left-mb2_observe-table_a2_table1_room4 dd)) (not (dummy-right-mb2_observe-table_a2_table1_room4 dd)))
:effect 
(and (immediate-dummy-mb2_observe-table_a2_table1_room4 dd))
)
(:action dummy-left-mb2_observe-table_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (init-mb2_observe-table_a2_table1_room4 dd) (in a2 room4) (available a2) (not (inroom table1 room4)) (immediate-dummy-mb2_observe-table_a2_table1_room4 dd) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (init-mb2_observe-table_a2_table1_room4 dd)) (not (immediate-dummy-mb2_observe-table_a2_table1_room4 dd)) (dummy-left-mb2_observe-table_a2_table1_room4 dd))
)
(:action dummy-right-mb2_observe-table_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (init-mb2_observe-table_a2_table1_room4 dd) (in a2 room4) (available a2) (inroom table1 room4) (immediate-dummy-mb2_observe-table_a2_table1_room4 dd) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (init-mb2_observe-table_a2_table1_room4 dd)) (not (immediate-dummy-mb2_observe-table_a2_table1_room4 dd)) (dummy-right-mb2_observe-table_a2_table1_room4 dd))
)
(:action act-ott_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mb2_observe-table_a2_table1_room4 dd) (not (inroom table1 room4)) (available a2) (in a2 room3) (Kinroom table1 room4 V_FALSE))
:effect 
(and (pre-ott_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-921_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ott_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-921_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-ott_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-s0x_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-921_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-s0x_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-921_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action goal-achieve-s0x_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-s0x_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-s0x_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action goal-achieve-right-mb2_observe-table_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mb2_observe-table_a2_table1_room4 dd) (inroom table1 room4) (Kinroom table1 room4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-mb2_observe-table_a2_table1_room4 dd)))
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
