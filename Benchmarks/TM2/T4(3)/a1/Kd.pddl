(define (domain Ktablemover-2-a1)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 a1 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table3 room2)
 tag1 - TAG_TYPE ; (inroom table3 room1)
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
(init-rkx_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-rkx_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-rkx_observe-table_a2_table1_room3 ?dd - dummy)
(immediate-dummy-tdp_observe-table_a1_table2_room1 ?dd - dummy)
(dummy-left-tdp_observe-table_a1_table2_room1 ?dd - dummy)
(immediate-dummy-g6t_observe-table_a2_table3_room2 ?dd - dummy)
(dummy-left-g6t_observe-table_a2_table3_room2 ?dd - dummy)
(pre-2bv_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-jd4_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-u82_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-g6t_observe-table_a2_table3_room2 ?dd - dummy)
(dummy-right-tdp_observe-table_a1_table2_room1 ?dd - dummy)
(dummy-right-rkx_observe-table_a2_table1_room3 ?dd - dummy)
(pre-g4n_joint-lift-table_a1_a2_table1_room3 ?dd - dummy)
(pre-ptz_joint-move-table_a1_a2_table1_room3_room4 ?dd - dummy)
(pre-cvt_joint-drop-table_a1_a2_table1_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-rkx_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-rkx_observe-table_a2_table1_room3 dd) (immediate-dummy-rkx_observe-table_a2_table1_room3 dd) (in a1 room3) (available a1) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-rkx_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-rkx_observe-table_a2_table1_room3 dd) (immediate-dummy-rkx_observe-table_a2_table1_room3 dd) (in a1 room3) (available a1) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-rkx_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-rkx_observe-table_a2_table1_room3 dd) (not (dummy-left-rkx_observe-table_a2_table1_room3 dd)) (not (dummy-right-rkx_observe-table_a2_table1_room3 dd)))
:effect 
(and (immediate-dummy-rkx_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-rkx_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-rkx_observe-table_a2_table1_room3 dd) (in a1 room3) (available a1) (not (inroom table1 room3)) (immediate-dummy-rkx_observe-table_a2_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (init-rkx_observe-table_a2_table1_room3 dd)) (not (immediate-dummy-rkx_observe-table_a2_table1_room3 dd)) (dummy-left-rkx_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-rkx_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-rkx_observe-table_a2_table1_room3 dd) (in a1 room3) (available a1) (inroom table1 room3) (immediate-dummy-rkx_observe-table_a2_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (init-rkx_observe-table_a2_table1_room3 dd)) (not (immediate-dummy-rkx_observe-table_a2_table1_room3 dd)) (dummy-right-rkx_observe-table_a2_table1_room3 dd))
)
(:action act-tdp_observe-table_a1_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rkx_observe-table_a2_table1_room3 dd) (immediate-dummy-tdp_observe-table_a1_table2_room1 dd) (not (inroom table1 room3)) (in a1 room1) (available a1) (Kinroom table1 room3 V_FALSE) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-tdp_observe-table_a1_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rkx_observe-table_a2_table1_room3 dd) (immediate-dummy-tdp_observe-table_a1_table2_room1 dd) (not (inroom table1 room3)) (in a1 room1) (available a1) (Kinroom table1 room3 V_FALSE) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-tdp_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rkx_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a1 room1) (available a1) (not (dummy-left-tdp_observe-table_a1_table2_room1 dd)) (not (dummy-right-tdp_observe-table_a1_table2_room1 dd)) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-tdp_observe-table_a1_table2_room1 dd))
)
(:action dummy-left-tdp_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rkx_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a1 room1) (available a1) (not (inroom table2 room1)) (immediate-dummy-tdp_observe-table_a1_table2_room1 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-tdp_observe-table_a1_table2_room1 dd)) (dummy-left-tdp_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-tdp_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rkx_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (in a1 room1) (available a1) (inroom table2 room1) (immediate-dummy-tdp_observe-table_a1_table2_room1 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-tdp_observe-table_a1_table2_room1 dd)) (dummy-right-tdp_observe-table_a1_table2_room1 dd))
)
(:action act-2bv_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g6t_observe-table_a2_table3_room2 dd) (not (inroom table3 room2)) (not (inroom table2 room1)) (not (inroom table1 room3)) (available a1) (in a1 room2) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-2bv_joint-lift-table_a1_a2_table2_room2 dd) (not (available a1)))
)
(:action act-jd4_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-2bv_joint-lift-table_a1_a2_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-jd4_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-2bv_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-u82_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-jd4_joint-move-table_a1_a2_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-u82_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-jd4_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-u82_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-u82_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-u82_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action goal-achieve-right-g6t_observe-table_a2_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-g6t_observe-table_a2_table3_room2 dd) (inroom table3 room2) (not (inroom table2 room1)) (not (inroom table1 room3)) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-g6t_observe-table_a2_table3_room2 dd)))
)
(:action goal-achieve-right-tdp_observe-table_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-tdp_observe-table_a1_table2_room1 dd) (inroom table2 room1) (not (inroom table1 room3)) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-tdp_observe-table_a1_table2_room1 dd)))
)
(:action act-g4n_joint-lift-table_a1_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-rkx_observe-table_a2_table1_room3 dd) (inroom table1 room3) (available a1) (in a1 room3) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-g4n_joint-lift-table_a1_a2_table1_room3 dd) (not (available a1)))
)
(:action act-ptz_joint-move-table_a1_a2_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-g4n_joint-lift-table_a1_a2_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-ptz_joint-move-table_a1_a2_table1_room3_room4 dd) (not (pre-g4n_joint-lift-table_a1_a2_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-cvt_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ptz_joint-move-table_a1_a2_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-cvt_joint-drop-table_a1_a2_table1_room4 dd) (not (pre-ptz_joint-move-table_a1_a2_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-cvt_joint-drop-table_a1_a2_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-cvt_joint-drop-table_a1_a2_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-cvt_joint-drop-table_a1_a2_table1_room4 dd)))
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
