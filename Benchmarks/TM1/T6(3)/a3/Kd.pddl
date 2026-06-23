(define (domain Ktablemover-2-a3)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 a3 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table2 room4)
 tag1 - TAG_TYPE ; (inroom table2 room3)
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
(can-observe ?a - agent ?t - table)
(init-4az_observe-table_a1_table1_room3 ?dd - dummy)
(immediate-dummy-4az_observe-table_a1_table1_room3 ?dd - dummy)
(dummy-left-4az_observe-table_a1_table1_room3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-4az_observe-table_a1_table1_room3 ?dd - dummy)
(pre-9c6_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
(pre-lxh_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
(pre-5s2_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-4az_observe-table_a1_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-4az_observe-table_a1_table1_room3 dd) (immediate-dummy-4az_observe-table_a1_table1_room3 dd) (in a3 room3) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-4az_observe-table_a1_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-4az_observe-table_a1_table1_room3 dd) (immediate-dummy-4az_observe-table_a1_table1_room3 dd) (in a3 room3) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-4az_observe-table_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-4az_observe-table_a1_table1_room3 dd) (not (dummy-left-4az_observe-table_a1_table1_room3 dd)) (not (dummy-right-4az_observe-table_a1_table1_room3 dd)))
:effect 
(and (immediate-dummy-4az_observe-table_a1_table1_room3 dd))
)
(:action dummy-left-4az_observe-table_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-4az_observe-table_a1_table1_room3 dd) (in a3 room3) (not (inroom table1 room3)) (immediate-dummy-4az_observe-table_a1_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (init-4az_observe-table_a1_table1_room3 dd)) (not (immediate-dummy-4az_observe-table_a1_table1_room3 dd)) (dummy-left-4az_observe-table_a1_table1_room3 dd))
)
(:action dummy-right-4az_observe-table_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-4az_observe-table_a1_table1_room3 dd) (in a3 room3) (inroom table1 room3) (immediate-dummy-4az_observe-table_a1_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (init-4az_observe-table_a1_table1_room3 dd)) (not (immediate-dummy-4az_observe-table_a1_table1_room3 dd)) (dummy-right-4az_observe-table_a1_table1_room3 dd))
)
(:action goal-achieve-left-4az_observe-table_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4az_observe-table_a1_table1_room3 dd) (not (inroom table1 room3)) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-4az_observe-table_a1_table1_room3 dd)))
)
(:action act-9c6_joint-lift-table_a1_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4az_observe-table_a1_table1_room3 dd) (inroom table1 room3) (available a3) (in a3 room3) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-9c6_joint-lift-table_a1_a3_table1_room3 dd) (not (available a3)))
)
(:action act-lxh_joint-move-table_a1_a3_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-9c6_joint-lift-table_a1_a3_table1_room3 dd) (in a3 room3))
:effect 
(and (pre-lxh_joint-move-table_a1_a3_table1_room3_room4 dd) (not (pre-9c6_joint-lift-table_a1_a3_table1_room3 dd)) (not (in a3 room3)) (in a3 room4))
)
(:action act-5s2_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-lxh_joint-move-table_a1_a3_table1_room3_room4 dd) (in a3 room4))
:effect 
(and (pre-5s2_joint-drop-table_a1_a3_table1_room4 dd) (not (pre-lxh_joint-move-table_a1_a3_table1_room3_room4 dd)) (available a3))
)
(:action goal-achieve-5s2_joint-drop-table_a1_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-5s2_joint-drop-table_a1_a3_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-5s2_joint-drop-table_a1_a3_table1_room4 dd)))
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
