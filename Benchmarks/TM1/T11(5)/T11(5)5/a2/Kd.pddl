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
 tag0 - TAG_TYPE ; (inroom table1 room4)
 tag1 - TAG_TYPE ; (inroom table1 room3)
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
(init-cx1_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-cx1_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-cx1_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-h6u_observe-table_a2_table3_room6 ?dd - dummy)
(dummy-left-h6u_observe-table_a2_table3_room6 ?dd - dummy)
(immediate-dummy-ibf_observe-table_a2_table4_room6 ?dd - dummy)
(dummy-left-ibf_observe-table_a2_table4_room6 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-ibf_observe-table_a2_table4_room6 ?dd - dummy)
(pre-x61_joint-lift-table_a2_a5_table4_room6 ?dd - dummy)
(pre-mdc_joint-move-table_a2_a5_table4_room6_room7 ?dd - dummy)
(pre-dt1_joint-drop-table_a2_a5_table4_room7 ?dd - dummy)
(dummy-right-h6u_observe-table_a2_table3_room6 ?dd - dummy)
(immediate-dummy-5pa_observe-table_a2_table4_room6 ?dd - dummy)
(dummy-left-5pa_observe-table_a2_table4_room6 ?dd - dummy)
(pre-p5m_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
(pre-ct3_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
(pre-p07_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
(dummy-right-5pa_observe-table_a2_table4_room6 ?dd - dummy)
(pre-j8r_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
(pre-p7p_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
(pre-iqd_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
(pre-34j_joint-lift-table_a2_a5_table4_room6 ?dd - dummy)
(pre-x47_joint-move-table_a2_a5_table4_room6_room7 ?dd - dummy)
(pre-q6u_joint-drop-table_a2_a5_table4_room7 ?dd - dummy)
(dummy-right-cx1_observe-table_a3_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-cx1_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (init-cx1_observe-table_a3_table2_room1 dd) (immediate-dummy-cx1_observe-table_a3_table2_room1 dd) (in a2 room1) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-cx1_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (init-cx1_observe-table_a3_table2_room1 dd) (immediate-dummy-cx1_observe-table_a3_table2_room1 dd) (in a2 room1) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-cx1_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-cx1_observe-table_a3_table2_room1 dd) (not (dummy-left-cx1_observe-table_a3_table2_room1 dd)) (not (dummy-right-cx1_observe-table_a3_table2_room1 dd)))
:effect 
(and (immediate-dummy-cx1_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-cx1_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-cx1_observe-table_a3_table2_room1 dd) (in a2 room1) (not (inroom table2 room1)) (immediate-dummy-cx1_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (init-cx1_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-cx1_observe-table_a3_table2_room1 dd)) (dummy-left-cx1_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-cx1_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-cx1_observe-table_a3_table2_room1 dd) (in a2 room1) (inroom table2 room1) (immediate-dummy-cx1_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (init-cx1_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-cx1_observe-table_a3_table2_room1 dd)) (dummy-right-cx1_observe-table_a3_table2_room1 dd))
)
(:action act-h6u_observe-table_a2_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cx1_observe-table_a3_table2_room1 dd) (immediate-dummy-h6u_observe-table_a2_table3_room6 dd) (not (inroom table2 room1)) (in a2 room6) (Kinroom table2 room1 V_FALSE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-h6u_observe-table_a2_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cx1_observe-table_a3_table2_room1 dd) (immediate-dummy-h6u_observe-table_a2_table3_room6 dd) (not (inroom table2 room1)) (in a2 room6) (Kinroom table2 room1 V_FALSE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-h6u_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cx1_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a2 room6) (not (dummy-left-h6u_observe-table_a2_table3_room6 dd)) (not (dummy-right-h6u_observe-table_a2_table3_room6 dd)) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-h6u_observe-table_a2_table3_room6 dd))
)
(:action dummy-left-h6u_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cx1_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a2 room6) (not (inroom table3 room6)) (immediate-dummy-h6u_observe-table_a2_table3_room6 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-h6u_observe-table_a2_table3_room6 dd)) (dummy-left-h6u_observe-table_a2_table3_room6 dd))
)
(:action dummy-right-h6u_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cx1_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a2 room6) (inroom table3 room6) (immediate-dummy-h6u_observe-table_a2_table3_room6 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-h6u_observe-table_a2_table3_room6 dd)) (dummy-right-h6u_observe-table_a2_table3_room6 dd))
)
(:action act-ibf_observe-table_a2_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-h6u_observe-table_a2_table3_room6 dd) (immediate-dummy-ibf_observe-table_a2_table4_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a2 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-ibf_observe-table_a2_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-h6u_observe-table_a2_table3_room6 dd) (immediate-dummy-ibf_observe-table_a2_table4_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a2 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-ibf_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-h6u_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a2 room6) (not (dummy-left-ibf_observe-table_a2_table4_room6 dd)) (not (dummy-right-ibf_observe-table_a2_table4_room6 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-ibf_observe-table_a2_table4_room6 dd))
)
(:action dummy-left-ibf_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-h6u_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a2 room6) (not (inroom table4 room6)) (immediate-dummy-ibf_observe-table_a2_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-ibf_observe-table_a2_table4_room6 dd)) (dummy-left-ibf_observe-table_a2_table4_room6 dd))
)
(:action dummy-right-ibf_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-h6u_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a2 room6) (inroom table4 room6) (immediate-dummy-ibf_observe-table_a2_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-ibf_observe-table_a2_table4_room6 dd)) (dummy-right-ibf_observe-table_a2_table4_room6 dd))
)
(:action goal-achieve-left-ibf_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ibf_observe-table_a2_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (not (inroom table2 room1)) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-ibf_observe-table_a2_table4_room6 dd)))
)
(:action act-x61_joint-lift-table_a2_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ibf_observe-table_a2_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (not (inroom table2 room1)) (available a2) (in a2 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-x61_joint-lift-table_a2_a5_table4_room6 dd) (not (available a2)))
)
(:action act-mdc_joint-move-table_a2_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-x61_joint-lift-table_a2_a5_table4_room6 dd) (in a2 room6))
:effect 
(and (pre-mdc_joint-move-table_a2_a5_table4_room6_room7 dd) (not (pre-x61_joint-lift-table_a2_a5_table4_room6 dd)) (not (in a2 room6)) (in a2 room7))
)
(:action act-dt1_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-mdc_joint-move-table_a2_a5_table4_room6_room7 dd) (in a2 room7))
:effect 
(and (pre-dt1_joint-drop-table_a2_a5_table4_room7 dd) (not (pre-mdc_joint-move-table_a2_a5_table4_room6_room7 dd)) (available a2))
)
(:action goal-achieve-dt1_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-dt1_joint-drop-table_a2_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-dt1_joint-drop-table_a2_a5_table4_room7 dd)))
)
(:action act-5pa_observe-table_a2_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h6u_observe-table_a2_table3_room6 dd) (immediate-dummy-5pa_observe-table_a2_table4_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (in a2 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-5pa_observe-table_a2_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h6u_observe-table_a2_table3_room6 dd) (immediate-dummy-5pa_observe-table_a2_table4_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (in a2 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-5pa_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h6u_observe-table_a2_table3_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (in a2 room6) (not (dummy-left-5pa_observe-table_a2_table4_room6 dd)) (not (dummy-right-5pa_observe-table_a2_table4_room6 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-5pa_observe-table_a2_table4_room6 dd))
)
(:action dummy-left-5pa_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h6u_observe-table_a2_table3_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (in a2 room6) (not (inroom table4 room6)) (immediate-dummy-5pa_observe-table_a2_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-5pa_observe-table_a2_table4_room6 dd)) (dummy-left-5pa_observe-table_a2_table4_room6 dd))
)
(:action dummy-right-5pa_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h6u_observe-table_a2_table3_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (in a2 room6) (inroom table4 room6) (immediate-dummy-5pa_observe-table_a2_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-5pa_observe-table_a2_table4_room6 dd)) (dummy-right-5pa_observe-table_a2_table4_room6 dd))
)
(:action act-p5m_joint-lift-table_a2_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5pa_observe-table_a2_table4_room6 dd) (not (inroom table4 room6)) (inroom table3 room6) (not (inroom table2 room1)) (available a2) (in a2 room6) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-p5m_joint-lift-table_a2_a5_table3_room6 dd) (not (available a2)))
)
(:action act-ct3_joint-move-table_a2_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-p5m_joint-lift-table_a2_a5_table3_room6 dd) (in a2 room6))
:effect 
(and (pre-ct3_joint-move-table_a2_a5_table3_room6_room5 dd) (not (pre-p5m_joint-lift-table_a2_a5_table3_room6 dd)) (not (in a2 room6)) (in a2 room5))
)
(:action act-p07_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-ct3_joint-move-table_a2_a5_table3_room6_room5 dd) (in a2 room5))
:effect 
(and (pre-p07_joint-drop-table_a2_a5_table3_room5 dd) (not (pre-ct3_joint-move-table_a2_a5_table3_room6_room5 dd)) (available a2))
)
(:action goal-achieve-p07_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-p07_joint-drop-table_a2_a5_table3_room5 dd))
:effect 
(and (done-goal dd) (not (pre-p07_joint-drop-table_a2_a5_table3_room5 dd)))
)
(:action act-j8r_joint-lift-table_a2_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5pa_observe-table_a2_table4_room6 dd) (inroom table4 room6) (inroom table3 room6) (not (inroom table2 room1)) (available a2) (in a2 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-j8r_joint-lift-table_a2_a5_table3_room6 dd) (not (available a2)))
)
(:action act-p7p_joint-move-table_a2_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-j8r_joint-lift-table_a2_a5_table3_room6 dd) (in a2 room6))
:effect 
(and (pre-p7p_joint-move-table_a2_a5_table3_room6_room5 dd) (not (pre-j8r_joint-lift-table_a2_a5_table3_room6 dd)) (not (in a2 room6)) (in a2 room5))
)
(:action act-iqd_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-p7p_joint-move-table_a2_a5_table3_room6_room5 dd) (in a2 room5))
:effect 
(and (pre-iqd_joint-drop-table_a2_a5_table3_room5 dd) (not (pre-p7p_joint-move-table_a2_a5_table3_room6_room5 dd)) (available a2))
)
(:action act-34j_joint-lift-table_a2_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-iqd_joint-drop-table_a2_a5_table3_room5 dd) (available a2) (in a2 room6))
:effect 
(and (pre-34j_joint-lift-table_a2_a5_table4_room6 dd) (not (pre-iqd_joint-drop-table_a2_a5_table3_room5 dd)) (not (available a2)))
)
(:action act-x47_joint-move-table_a2_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-34j_joint-lift-table_a2_a5_table4_room6 dd) (in a2 room6))
:effect 
(and (pre-x47_joint-move-table_a2_a5_table4_room6_room7 dd) (not (pre-34j_joint-lift-table_a2_a5_table4_room6 dd)) (not (in a2 room6)) (in a2 room7))
)
(:action act-q6u_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-x47_joint-move-table_a2_a5_table4_room6_room7 dd) (in a2 room7))
:effect 
(and (pre-q6u_joint-drop-table_a2_a5_table4_room7 dd) (not (pre-x47_joint-move-table_a2_a5_table4_room6_room7 dd)) (available a2))
)
(:action goal-achieve-q6u_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-q6u_joint-drop-table_a2_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-q6u_joint-drop-table_a2_a5_table4_room7 dd)))
)
(:action goal-achieve-right-cx1_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cx1_observe-table_a3_table2_room1 dd) (inroom table2 room1) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-cx1_observe-table_a3_table2_room1 dd)))
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
