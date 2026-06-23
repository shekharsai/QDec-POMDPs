(define (domain Ktablemover-2-a2)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 table5 - table
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
(lifting ?a - agent ?t - table)
(inroom ?t - table ?r - room)
(Kinroom ?t - table ?r - room ?V_PARAM - VALUE_TYPE)
(KGiveninroom ?t - table ?r - room ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(in ?a - agent ?r - room)
(connected ?r1 - room ?r2 - room)
(available ?a - agent)
(init-if1_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-if1_observe-table_a2_table5_room3 ?dd - dummy)
(dummy-left-if1_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-ue7_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-ue7_observe-table_a2_table1_room3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-ue7_observe-table_a2_table1_room3 ?dd - dummy)
(pre-0r0_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-85v_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-ted_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(dummy-right-if1_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-mlg_observe-table_a2_table1_room3 ?dd - dummy)
(dummy-left-mlg_observe-table_a2_table1_room3 ?dd - dummy)
(pre-vjk_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-ahe_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-56g_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(dummy-right-mlg_observe-table_a2_table1_room3 ?dd - dummy)
(pre-o1v_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-4f9_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-12e_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(pre-mej_joint-lift-table_a2_a4_table5_room3 ?dd - dummy)
(pre-5la_joint-move-table_a2_a4_table5_room3_room4 ?dd - dummy)
(pre-61o_joint-drop-table_a2_a4_table5_room4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-if1_observe-table_a2_table5_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-if1_observe-table_a2_table5_room3 dd) (immediate-dummy-if1_observe-table_a2_table5_room3 dd) (in a2 room3) (inroom table5 room3) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_TRUE))
)
(:action act-if1_observe-table_a2_table5_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-if1_observe-table_a2_table5_room3 dd) (immediate-dummy-if1_observe-table_a2_table5_room3 dd) (in a2 room3) (not (inroom table5 room3)) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_FALSE))
)
(:action act-dummy-if1_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-if1_observe-table_a2_table5_room3 dd) (not (dummy-left-if1_observe-table_a2_table5_room3 dd)) (not (dummy-right-if1_observe-table_a2_table5_room3 dd)))
:effect 
(and (immediate-dummy-if1_observe-table_a2_table5_room3 dd))
)
(:action dummy-left-if1_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-if1_observe-table_a2_table5_room3 dd) (in a2 room3) (not (inroom table5 room3)) (immediate-dummy-if1_observe-table_a2_table5_room3 dd) (Kinroom table5 room3 V_FALSE))
:effect 
(and (not (init-if1_observe-table_a2_table5_room3 dd)) (not (immediate-dummy-if1_observe-table_a2_table5_room3 dd)) (dummy-left-if1_observe-table_a2_table5_room3 dd))
)
(:action dummy-right-if1_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-if1_observe-table_a2_table5_room3 dd) (in a2 room3) (inroom table5 room3) (immediate-dummy-if1_observe-table_a2_table5_room3 dd) (Kinroom table5 room3 V_TRUE))
:effect 
(and (not (init-if1_observe-table_a2_table5_room3 dd)) (not (immediate-dummy-if1_observe-table_a2_table5_room3 dd)) (dummy-right-if1_observe-table_a2_table5_room3 dd))
)
(:action act-ue7_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-if1_observe-table_a2_table5_room3 dd) (immediate-dummy-ue7_observe-table_a2_table1_room3 dd) (not (inroom table5 room3)) (in a2 room3) (Kinroom table5 room3 V_FALSE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-ue7_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-if1_observe-table_a2_table5_room3 dd) (immediate-dummy-ue7_observe-table_a2_table1_room3 dd) (not (inroom table5 room3)) (in a2 room3) (Kinroom table5 room3 V_FALSE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-ue7_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-if1_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a2 room3) (not (dummy-left-ue7_observe-table_a2_table1_room3 dd)) (not (dummy-right-ue7_observe-table_a2_table1_room3 dd)) (Kinroom table5 room3 V_FALSE))
:effect 
(and (immediate-dummy-ue7_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-ue7_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-if1_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a2 room3) (not (inroom table1 room3)) (immediate-dummy-ue7_observe-table_a2_table1_room3 dd) (Kinroom table5 room3 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-ue7_observe-table_a2_table1_room3 dd)) (dummy-left-ue7_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-ue7_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-if1_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a2 room3) (inroom table1 room3) (immediate-dummy-ue7_observe-table_a2_table1_room3 dd) (Kinroom table5 room3 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-ue7_observe-table_a2_table1_room3 dd)) (dummy-right-ue7_observe-table_a2_table1_room3 dd))
)
(:action goal-achieve-left-ue7_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ue7_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table5 room3)) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-ue7_observe-table_a2_table1_room3 dd)))
)
(:action act-0r0_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ue7_observe-table_a2_table1_room3 dd) (inroom table1 room3) (not (inroom table5 room3)) (available a2) (in a2 room3) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (pre-0r0_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-85v_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-0r0_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-85v_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-0r0_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-ted_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-85v_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-ted_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-85v_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action goal-achieve-ted_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ted_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-ted_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-mlg_observe-table_a2_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-if1_observe-table_a2_table5_room3 dd) (immediate-dummy-mlg_observe-table_a2_table1_room3 dd) (inroom table5 room3) (in a2 room3) (Kinroom table5 room3 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-mlg_observe-table_a2_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-if1_observe-table_a2_table5_room3 dd) (immediate-dummy-mlg_observe-table_a2_table1_room3 dd) (inroom table5 room3) (in a2 room3) (Kinroom table5 room3 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-mlg_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-if1_observe-table_a2_table5_room3 dd) (inroom table5 room3) (in a2 room3) (not (dummy-left-mlg_observe-table_a2_table1_room3 dd)) (not (dummy-right-mlg_observe-table_a2_table1_room3 dd)) (Kinroom table5 room3 V_TRUE))
:effect 
(and (immediate-dummy-mlg_observe-table_a2_table1_room3 dd))
)
(:action dummy-left-mlg_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-if1_observe-table_a2_table5_room3 dd) (inroom table5 room3) (in a2 room3) (not (inroom table1 room3)) (immediate-dummy-mlg_observe-table_a2_table1_room3 dd) (Kinroom table5 room3 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-mlg_observe-table_a2_table1_room3 dd)) (dummy-left-mlg_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-mlg_observe-table_a2_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-if1_observe-table_a2_table5_room3 dd) (inroom table5 room3) (in a2 room3) (inroom table1 room3) (immediate-dummy-mlg_observe-table_a2_table1_room3 dd) (Kinroom table5 room3 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-mlg_observe-table_a2_table1_room3 dd)) (dummy-right-mlg_observe-table_a2_table1_room3 dd))
)
(:action act-vjk_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mlg_observe-table_a2_table1_room3 dd) (not (inroom table1 room3)) (inroom table5 room3) (available a2) (in a2 room3) (Kinroom table1 room3 V_FALSE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (pre-vjk_joint-lift-table_a2_a4_table5_room3 dd) (not (available a2)))
)
(:action act-ahe_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-vjk_joint-lift-table_a2_a4_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-ahe_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-vjk_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-56g_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ahe_joint-move-table_a2_a4_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-56g_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-ahe_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-56g_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-56g_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-56g_joint-drop-table_a2_a4_table5_room4 dd)))
)
(:action act-o1v_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mlg_observe-table_a2_table1_room3 dd) (inroom table1 room3) (inroom table5 room3) (available a2) (in a2 room3) (Kinroom table1 room3 V_TRUE) (Kinroom table5 room3 V_TRUE))
:effect 
(and (pre-o1v_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-4f9_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-o1v_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-4f9_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-o1v_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-12e_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-4f9_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-12e_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-4f9_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action act-mej_joint-lift-table_a2_a4_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-12e_joint-drop-table_a2_a4_table1_room4 dd) (available a2) (in a2 room3))
:effect 
(and (pre-mej_joint-lift-table_a2_a4_table5_room3 dd) (not (pre-12e_joint-drop-table_a2_a4_table1_room4 dd)) (not (available a2)))
)
(:action act-5la_joint-move-table_a2_a4_table5_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-mej_joint-lift-table_a2_a4_table5_room3 dd) (in a2 room3))
:effect 
(and (pre-5la_joint-move-table_a2_a4_table5_room3_room4 dd) (not (pre-mej_joint-lift-table_a2_a4_table5_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-61o_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-5la_joint-move-table_a2_a4_table5_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-61o_joint-drop-table_a2_a4_table5_room4 dd) (not (pre-5la_joint-move-table_a2_a4_table5_room3_room4 dd)) (available a2))
)
(:action goal-achieve-61o_joint-drop-table_a2_a4_table5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-61o_joint-drop-table_a2_a4_table5_room4 dd))
:effect 
(and (done-goal dd) (not (pre-61o_joint-drop-table_a2_a4_table5_room4 dd)))
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
