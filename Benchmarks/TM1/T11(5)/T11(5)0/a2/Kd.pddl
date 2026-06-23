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
 tag0 - TAG_TYPE ; (inroom table1 room3) (not (inroom table1 room4)) (inroom table2 room2) (not (inroom table2 room1)) (inroom table3 room5) (not (inroom table3 room6)) (inroom table4 room6) (not (inroom table4 room7))
 tag1 - TAG_TYPE ; (not (inroom table1 room3)) (inroom table1 room4) (not (inroom table2 room2)) (inroom table2 room1) (not (inroom table3 room5)) (inroom table3 room6) (not (inroom table4 room6)) (inroom table4 room7)
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
(init-yit_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-yit_observe-table_a1_table2_room2 ?dd - dummy)
(dummy-left-yit_observe-table_a1_table2_room2 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-yit_observe-table_a1_table2_room2 ?dd - dummy)
(immediate-dummy-auf_observe-table_a5_table3_room5 ?dd - dummy)
(dummy-left-auf_observe-table_a5_table3_room5 ?dd - dummy)
(immediate-dummy-7kx_observe-table_a4_table1_room4 ?dd - dummy)
(dummy-left-7kx_observe-table_a4_table1_room4 ?dd - dummy)
(pre-fif_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
(pre-szt_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
(pre-hp2_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
(dummy-right-7kx_observe-table_a4_table1_room4 ?dd - dummy)
(dummy-right-auf_observe-table_a5_table3_room5 ?dd - dummy)
(immediate-dummy-c09_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-c09_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-right-c09_observe-table_a4_table1_room3 ?dd - dummy)
(pre-qe0_joint-lift-table_a2_a3_table2_room2 ?dd - dummy)
(pre-0ry_joint-move-table_a2_a3_table2_room2_room1 ?dd - dummy)
(pre-1rk_joint-drop-table_a2_a3_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-yit_observe-table_a1_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (init-yit_observe-table_a1_table2_room2 dd) (immediate-dummy-yit_observe-table_a1_table2_room2 dd) (in a2 room2) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-yit_observe-table_a1_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (init-yit_observe-table_a1_table2_room2 dd) (immediate-dummy-yit_observe-table_a1_table2_room2 dd) (in a2 room2) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-yit_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-yit_observe-table_a1_table2_room2 dd) (not (dummy-left-yit_observe-table_a1_table2_room2 dd)) (not (dummy-right-yit_observe-table_a1_table2_room2 dd)))
:effect 
(and (immediate-dummy-yit_observe-table_a1_table2_room2 dd))
)
(:action dummy-left-yit_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-yit_observe-table_a1_table2_room2 dd) (in a2 room2) (not (inroom table2 room2)) (immediate-dummy-yit_observe-table_a1_table2_room2 dd) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (init-yit_observe-table_a1_table2_room2 dd)) (not (immediate-dummy-yit_observe-table_a1_table2_room2 dd)) (dummy-left-yit_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-yit_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-yit_observe-table_a1_table2_room2 dd) (in a2 room2) (inroom table2 room2) (immediate-dummy-yit_observe-table_a1_table2_room2 dd) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (init-yit_observe-table_a1_table2_room2 dd)) (not (immediate-dummy-yit_observe-table_a1_table2_room2 dd)) (dummy-right-yit_observe-table_a1_table2_room2 dd))
)
(:action goal-achieve-left-yit_observe-table_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yit_observe-table_a1_table2_room2 dd) (not (inroom table2 room2)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-yit_observe-table_a1_table2_room2 dd)))
)
(:action act-auf_observe-table_a5_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yit_observe-table_a1_table2_room2 dd) (immediate-dummy-auf_observe-table_a5_table3_room5 dd) (inroom table2 room2) (in a2 room5) (Kinroom table2 room2 V_TRUE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-auf_observe-table_a5_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yit_observe-table_a1_table2_room2 dd) (immediate-dummy-auf_observe-table_a5_table3_room5 dd) (inroom table2 room2) (in a2 room5) (Kinroom table2 room2 V_TRUE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-auf_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yit_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a2 room5) (not (dummy-left-auf_observe-table_a5_table3_room5 dd)) (not (dummy-right-auf_observe-table_a5_table3_room5 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-auf_observe-table_a5_table3_room5 dd))
)
(:action dummy-left-auf_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yit_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a2 room5) (not (inroom table3 room5)) (immediate-dummy-auf_observe-table_a5_table3_room5 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-auf_observe-table_a5_table3_room5 dd)) (dummy-left-auf_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-auf_observe-table_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yit_observe-table_a1_table2_room2 dd) (inroom table2 room2) (in a2 room5) (inroom table3 room5) (immediate-dummy-auf_observe-table_a5_table3_room5 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-auf_observe-table_a5_table3_room5 dd)) (dummy-right-auf_observe-table_a5_table3_room5 dd))
)
(:action act-fif_joint-lift-table_a1_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7kx_observe-table_a4_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table3 room5)) (inroom table2 room2) (available a2) (in a2 room2) (Kinroom table1 room4 V_FALSE) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-fif_joint-lift-table_a1_a2_table2_room2 dd) (not (available a2)))
)
(:action act-szt_joint-move-table_a1_a2_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-fif_joint-lift-table_a1_a2_table2_room2 dd) (in a2 room2))
:effect 
(and (pre-szt_joint-move-table_a1_a2_table2_room2_room1 dd) (not (pre-fif_joint-lift-table_a1_a2_table2_room2 dd)) (not (in a2 room2)) (in a2 room1))
)
(:action act-hp2_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-szt_joint-move-table_a1_a2_table2_room2_room1 dd) (in a2 room1))
:effect 
(and (pre-hp2_joint-drop-table_a1_a2_table2_room1 dd) (not (pre-szt_joint-move-table_a1_a2_table2_room2_room1 dd)) (available a2))
)
(:action goal-achieve-hp2_joint-drop-table_a1_a2_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-hp2_joint-drop-table_a1_a2_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-hp2_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action goal-achieve-right-7kx_observe-table_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7kx_observe-table_a4_table1_room4 dd) (inroom table1 room4) (not (inroom table3 room5)) (inroom table2 room2) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room5 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-7kx_observe-table_a4_table1_room4 dd)))
)
(:action goal-achieve-left-c09_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-c09_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (inroom table3 room5) (inroom table2 room2) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-c09_observe-table_a4_table1_room3 dd)))
)
(:action act-qe0_joint-lift-table_a2_a3_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-c09_observe-table_a4_table1_room3 dd) (inroom table1 room3) (inroom table3 room5) (inroom table2 room2) (available a2) (in a2 room2) (Kinroom table1 room3 V_TRUE) (Kinroom table3 room5 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-qe0_joint-lift-table_a2_a3_table2_room2 dd) (not (available a2)))
)
(:action act-0ry_joint-move-table_a2_a3_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-qe0_joint-lift-table_a2_a3_table2_room2 dd) (in a2 room2))
:effect 
(and (pre-0ry_joint-move-table_a2_a3_table2_room2_room1 dd) (not (pre-qe0_joint-lift-table_a2_a3_table2_room2 dd)) (not (in a2 room2)) (in a2 room1))
)
(:action act-1rk_joint-drop-table_a2_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-0ry_joint-move-table_a2_a3_table2_room2_room1 dd) (in a2 room1))
:effect 
(and (pre-1rk_joint-drop-table_a2_a3_table2_room1 dd) (not (pre-0ry_joint-move-table_a2_a3_table2_room2_room1 dd)) (available a2))
)
(:action goal-achieve-1rk_joint-drop-table_a2_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-1rk_joint-drop-table_a2_a3_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-1rk_joint-drop-table_a2_a3_table2_room1 dd)))
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
