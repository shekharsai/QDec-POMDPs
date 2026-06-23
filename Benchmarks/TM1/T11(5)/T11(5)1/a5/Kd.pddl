(define (domain Ktablemover-2-a5)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 a5 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 room5 - room
 room6 - room
 room7 - room
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table2 room1)
 tag1 - TAG_TYPE ; (inroom table2 room2)
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
(init-sgh_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-sgh_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-sgh_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-ybn_observe-table_a4_table3_room6 ?dd - dummy)
(dummy-left-ybn_observe-table_a4_table3_room6 ?dd - dummy)
(immediate-dummy-kkb_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-kkb_observe-table_a4_table4_room6 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-kkb_observe-table_a4_table4_room6 ?dd - dummy)
(pre-189_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
(pre-n6k_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
(pre-489_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
(dummy-right-ybn_observe-table_a4_table3_room6 ?dd - dummy)
(immediate-dummy-9cx_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-9cx_observe-table_a4_table4_room6 ?dd - dummy)
(pre-l41_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
(pre-t64_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
(pre-q1i_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
(dummy-right-9cx_observe-table_a4_table4_room6 ?dd - dummy)
(pre-rz0_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
(pre-4k6_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
(pre-z5a_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
(pre-skf_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
(pre-5h8_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
(pre-e4y_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
(dummy-right-sgh_observe-table_a4_table1_room3 ?dd - dummy)
(pre-juy_joint-lift-table_a4_a5_table1_room3 ?dd - dummy)
(pre-jdi_joint-move-table_a4_a5_table1_room3_room4 ?dd - dummy)
(pre-hgl_joint-drop-table_a4_a5_table1_room4 ?dd - dummy)
(immediate-dummy-pef_observe-table_a4_table3_room6 ?dd - dummy)
(dummy-left-pef_observe-table_a4_table3_room6 ?dd - dummy)
(immediate-dummy-t3s_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-t3s_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-right-t3s_observe-table_a4_table4_room6 ?dd - dummy)
(pre-2jj_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
(pre-jsw_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
(pre-nfc_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
(dummy-right-pef_observe-table_a4_table3_room6 ?dd - dummy)
(immediate-dummy-8q2_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-8q2_observe-table_a4_table4_room6 ?dd - dummy)
(pre-rqx_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
(pre-2pb_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
(pre-fgh_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
(dummy-right-8q2_observe-table_a4_table4_room6 ?dd - dummy)
(pre-uhw_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
(pre-rwd_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
(pre-uj1_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
(pre-59q_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
(pre-xc8_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
(pre-z4m_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-sgh_observe-table_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-sgh_observe-table_a4_table1_room3 dd) (immediate-dummy-sgh_observe-table_a4_table1_room3 dd) (in a5 room3) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-sgh_observe-table_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-sgh_observe-table_a4_table1_room3 dd) (immediate-dummy-sgh_observe-table_a4_table1_room3 dd) (in a5 room3) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-sgh_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-sgh_observe-table_a4_table1_room3 dd) (not (dummy-left-sgh_observe-table_a4_table1_room3 dd)) (not (dummy-right-sgh_observe-table_a4_table1_room3 dd)))
:effect 
(and (immediate-dummy-sgh_observe-table_a4_table1_room3 dd))
)
(:action dummy-left-sgh_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-sgh_observe-table_a4_table1_room3 dd) (in a5 room3) (not (inroom table1 room3)) (immediate-dummy-sgh_observe-table_a4_table1_room3 dd) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (init-sgh_observe-table_a4_table1_room3 dd)) (not (immediate-dummy-sgh_observe-table_a4_table1_room3 dd)) (dummy-left-sgh_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-sgh_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (init-sgh_observe-table_a4_table1_room3 dd) (in a5 room3) (inroom table1 room3) (immediate-dummy-sgh_observe-table_a4_table1_room3 dd) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (init-sgh_observe-table_a4_table1_room3 dd)) (not (immediate-dummy-sgh_observe-table_a4_table1_room3 dd)) (dummy-right-sgh_observe-table_a4_table1_room3 dd))
)
(:action act-ybn_observe-table_a4_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sgh_observe-table_a4_table1_room3 dd) (immediate-dummy-ybn_observe-table_a4_table3_room6 dd) (not (inroom table1 room3)) (in a5 room6) (Kinroom table1 room3 V_FALSE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-ybn_observe-table_a4_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sgh_observe-table_a4_table1_room3 dd) (immediate-dummy-ybn_observe-table_a4_table3_room6 dd) (not (inroom table1 room3)) (in a5 room6) (Kinroom table1 room3 V_FALSE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-ybn_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sgh_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a5 room6) (not (dummy-left-ybn_observe-table_a4_table3_room6 dd)) (not (dummy-right-ybn_observe-table_a4_table3_room6 dd)) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-ybn_observe-table_a4_table3_room6 dd))
)
(:action dummy-left-ybn_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sgh_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a5 room6) (not (inroom table3 room6)) (immediate-dummy-ybn_observe-table_a4_table3_room6 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-ybn_observe-table_a4_table3_room6 dd)) (dummy-left-ybn_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-ybn_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sgh_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (in a5 room6) (inroom table3 room6) (immediate-dummy-ybn_observe-table_a4_table3_room6 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-ybn_observe-table_a4_table3_room6 dd)) (dummy-right-ybn_observe-table_a4_table3_room6 dd))
)
(:action act-kkb_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ybn_observe-table_a4_table3_room6 dd) (immediate-dummy-kkb_observe-table_a4_table4_room6 dd) (not (inroom table3 room6)) (not (inroom table1 room3)) (in a5 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table1 room3 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-kkb_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ybn_observe-table_a4_table3_room6 dd) (immediate-dummy-kkb_observe-table_a4_table4_room6 dd) (not (inroom table3 room6)) (not (inroom table1 room3)) (in a5 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table1 room3 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-kkb_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ybn_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table1 room3)) (in a5 room6) (not (dummy-left-kkb_observe-table_a4_table4_room6 dd)) (not (dummy-right-kkb_observe-table_a4_table4_room6 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-kkb_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-kkb_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ybn_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table1 room3)) (in a5 room6) (not (inroom table4 room6)) (immediate-dummy-kkb_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-kkb_observe-table_a4_table4_room6 dd)) (dummy-left-kkb_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-kkb_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ybn_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table1 room3)) (in a5 room6) (inroom table4 room6) (immediate-dummy-kkb_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-kkb_observe-table_a4_table4_room6 dd)) (dummy-right-kkb_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-kkb_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kkb_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (not (inroom table1 room3)) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-kkb_observe-table_a4_table4_room6 dd)))
)
(:action act-189_joint-lift-table_a4_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kkb_observe-table_a4_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (not (inroom table1 room3)) (available a5) (in a5 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-189_joint-lift-table_a4_a5_table4_room6 dd) (not (available a5)))
)
(:action act-n6k_joint-move-table_a4_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-189_joint-lift-table_a4_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-n6k_joint-move-table_a4_a5_table4_room6_room7 dd) (not (pre-189_joint-lift-table_a4_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-489_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-n6k_joint-move-table_a4_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-489_joint-drop-table_a4_a5_table4_room7 dd) (not (pre-n6k_joint-move-table_a4_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-489_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-489_joint-drop-table_a4_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-489_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-9cx_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ybn_observe-table_a4_table3_room6 dd) (immediate-dummy-9cx_observe-table_a4_table4_room6 dd) (inroom table3 room6) (not (inroom table1 room3)) (in a5 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-9cx_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ybn_observe-table_a4_table3_room6 dd) (immediate-dummy-9cx_observe-table_a4_table4_room6 dd) (inroom table3 room6) (not (inroom table1 room3)) (in a5 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-9cx_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ybn_observe-table_a4_table3_room6 dd) (inroom table3 room6) (not (inroom table1 room3)) (in a5 room6) (not (dummy-left-9cx_observe-table_a4_table4_room6 dd)) (not (dummy-right-9cx_observe-table_a4_table4_room6 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (immediate-dummy-9cx_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-9cx_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ybn_observe-table_a4_table3_room6 dd) (inroom table3 room6) (not (inroom table1 room3)) (in a5 room6) (not (inroom table4 room6)) (immediate-dummy-9cx_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-9cx_observe-table_a4_table4_room6 dd)) (dummy-left-9cx_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-9cx_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ybn_observe-table_a4_table3_room6 dd) (inroom table3 room6) (not (inroom table1 room3)) (in a5 room6) (inroom table4 room6) (immediate-dummy-9cx_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-9cx_observe-table_a4_table4_room6 dd)) (dummy-right-9cx_observe-table_a4_table4_room6 dd))
)
(:action act-l41_joint-lift-table_a4_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9cx_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (inroom table3 room6) (not (inroom table1 room3)) (available a5) (in a5 room6) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-l41_joint-lift-table_a4_a5_table3_room6 dd) (not (available a5)))
)
(:action act-t64_joint-move-table_a4_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-l41_joint-lift-table_a4_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-t64_joint-move-table_a4_a5_table3_room6_room5 dd) (not (pre-l41_joint-lift-table_a4_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-q1i_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-t64_joint-move-table_a4_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-q1i_joint-drop-table_a4_a5_table3_room5 dd) (not (pre-t64_joint-move-table_a4_a5_table3_room6_room5 dd)) (available a5))
)
(:action goal-achieve-q1i_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-q1i_joint-drop-table_a4_a5_table3_room5 dd))
:effect 
(and (done-goal dd) (not (pre-q1i_joint-drop-table_a4_a5_table3_room5 dd)))
)
(:action act-rz0_joint-lift-table_a4_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9cx_observe-table_a4_table4_room6 dd) (inroom table4 room6) (inroom table3 room6) (not (inroom table1 room3)) (available a5) (in a5 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (pre-rz0_joint-lift-table_a4_a5_table3_room6 dd) (not (available a5)))
)
(:action act-4k6_joint-move-table_a4_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-rz0_joint-lift-table_a4_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-4k6_joint-move-table_a4_a5_table3_room6_room5 dd) (not (pre-rz0_joint-lift-table_a4_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-z5a_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-4k6_joint-move-table_a4_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-z5a_joint-drop-table_a4_a5_table3_room5 dd) (not (pre-4k6_joint-move-table_a4_a5_table3_room6_room5 dd)) (available a5))
)
(:action act-skf_joint-lift-table_a4_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-z5a_joint-drop-table_a4_a5_table3_room5 dd) (available a5) (in a5 room6))
:effect 
(and (pre-skf_joint-lift-table_a4_a5_table4_room6 dd) (not (pre-z5a_joint-drop-table_a4_a5_table3_room5 dd)) (not (available a5)))
)
(:action act-5h8_joint-move-table_a4_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-skf_joint-lift-table_a4_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-5h8_joint-move-table_a4_a5_table4_room6_room7 dd) (not (pre-skf_joint-lift-table_a4_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-e4y_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-5h8_joint-move-table_a4_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-e4y_joint-drop-table_a4_a5_table4_room7 dd) (not (pre-5h8_joint-move-table_a4_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-e4y_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-e4y_joint-drop-table_a4_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-e4y_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-juy_joint-lift-table_a4_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sgh_observe-table_a4_table1_room3 dd) (inroom table1 room3) (available a5) (in a5 room3) (Kinroom table1 room3 V_TRUE))
:effect 
(and (pre-juy_joint-lift-table_a4_a5_table1_room3 dd) (not (available a5)))
)
(:action act-jdi_joint-move-table_a4_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-juy_joint-lift-table_a4_a5_table1_room3 dd) (in a5 room3))
:effect 
(and (pre-jdi_joint-move-table_a4_a5_table1_room3_room4 dd) (not (pre-juy_joint-lift-table_a4_a5_table1_room3 dd)) (not (in a5 room3)) (in a5 room4))
)
(:action act-hgl_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-jdi_joint-move-table_a4_a5_table1_room3_room4 dd) (in a5 room4))
:effect 
(and (pre-hgl_joint-drop-table_a4_a5_table1_room4 dd) (not (pre-jdi_joint-move-table_a4_a5_table1_room3_room4 dd)) (available a5))
)
(:action act-pef_observe-table_a4_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (pre-hgl_joint-drop-table_a4_a5_table1_room4 dd) (immediate-dummy-pef_observe-table_a4_table3_room6 dd) (in a5 room6) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-pef_observe-table_a4_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (pre-hgl_joint-drop-table_a4_a5_table1_room4 dd) (immediate-dummy-pef_observe-table_a4_table3_room6 dd) (in a5 room6) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-pef_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-hgl_joint-drop-table_a4_a5_table1_room4 dd) (in a5 room6) (not (dummy-left-pef_observe-table_a4_table3_room6 dd)) (not (dummy-right-pef_observe-table_a4_table3_room6 dd)))
:effect 
(and (immediate-dummy-pef_observe-table_a4_table3_room6 dd))
)
(:action dummy-left-pef_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (in a5 room6) (not (inroom table3 room6)) (immediate-dummy-pef_observe-table_a4_table3_room6 dd) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-pef_observe-table_a4_table3_room6 dd)) (dummy-left-pef_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-pef_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (in a5 room6) (inroom table3 room6) (immediate-dummy-pef_observe-table_a4_table3_room6 dd) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-pef_observe-table_a4_table3_room6 dd)) (dummy-right-pef_observe-table_a4_table3_room6 dd))
)
(:action act-t3s_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pef_observe-table_a4_table3_room6 dd) (immediate-dummy-t3s_observe-table_a4_table4_room6 dd) (not (inroom table3 room6)) (in a5 room6) (Kinroom table3 room6 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-t3s_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pef_observe-table_a4_table3_room6 dd) (immediate-dummy-t3s_observe-table_a4_table4_room6 dd) (not (inroom table3 room6)) (in a5 room6) (Kinroom table3 room6 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-t3s_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pef_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (in a5 room6) (not (dummy-left-t3s_observe-table_a4_table4_room6 dd)) (not (dummy-right-t3s_observe-table_a4_table4_room6 dd)) (Kinroom table3 room6 V_FALSE))
:effect 
(and (immediate-dummy-t3s_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-t3s_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pef_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (in a5 room6) (not (inroom table4 room6)) (immediate-dummy-t3s_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-t3s_observe-table_a4_table4_room6 dd)) (dummy-left-t3s_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-t3s_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pef_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (in a5 room6) (inroom table4 room6) (immediate-dummy-t3s_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-t3s_observe-table_a4_table4_room6 dd)) (dummy-right-t3s_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-t3s_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-t3s_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-t3s_observe-table_a4_table4_room6 dd)))
)
(:action act-2jj_joint-lift-table_a4_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-t3s_observe-table_a4_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (available a5) (in a5 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (pre-2jj_joint-lift-table_a4_a5_table4_room6 dd) (not (available a5)))
)
(:action act-jsw_joint-move-table_a4_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-2jj_joint-lift-table_a4_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-jsw_joint-move-table_a4_a5_table4_room6_room7 dd) (not (pre-2jj_joint-lift-table_a4_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-nfc_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-jsw_joint-move-table_a4_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-nfc_joint-drop-table_a4_a5_table4_room7 dd) (not (pre-jsw_joint-move-table_a4_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-nfc_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-nfc_joint-drop-table_a4_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-nfc_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-8q2_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pef_observe-table_a4_table3_room6 dd) (immediate-dummy-8q2_observe-table_a4_table4_room6 dd) (inroom table3 room6) (in a5 room6) (Kinroom table3 room6 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-8q2_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pef_observe-table_a4_table3_room6 dd) (immediate-dummy-8q2_observe-table_a4_table4_room6 dd) (inroom table3 room6) (in a5 room6) (Kinroom table3 room6 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-8q2_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pef_observe-table_a4_table3_room6 dd) (inroom table3 room6) (in a5 room6) (not (dummy-left-8q2_observe-table_a4_table4_room6 dd)) (not (dummy-right-8q2_observe-table_a4_table4_room6 dd)) (Kinroom table3 room6 V_TRUE))
:effect 
(and (immediate-dummy-8q2_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-8q2_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pef_observe-table_a4_table3_room6 dd) (inroom table3 room6) (in a5 room6) (not (inroom table4 room6)) (immediate-dummy-8q2_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-8q2_observe-table_a4_table4_room6 dd)) (dummy-left-8q2_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-8q2_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pef_observe-table_a4_table3_room6 dd) (inroom table3 room6) (in a5 room6) (inroom table4 room6) (immediate-dummy-8q2_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-8q2_observe-table_a4_table4_room6 dd)) (dummy-right-8q2_observe-table_a4_table4_room6 dd))
)
(:action act-rqx_joint-lift-table_a4_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-8q2_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (inroom table3 room6) (available a5) (in a5 room6) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (pre-rqx_joint-lift-table_a4_a5_table3_room6 dd) (not (available a5)))
)
(:action act-2pb_joint-move-table_a4_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-rqx_joint-lift-table_a4_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-2pb_joint-move-table_a4_a5_table3_room6_room5 dd) (not (pre-rqx_joint-lift-table_a4_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-fgh_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-2pb_joint-move-table_a4_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-fgh_joint-drop-table_a4_a5_table3_room5 dd) (not (pre-2pb_joint-move-table_a4_a5_table3_room6_room5 dd)) (available a5))
)
(:action goal-achieve-fgh_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-fgh_joint-drop-table_a4_a5_table3_room5 dd))
:effect 
(and (done-goal dd) (not (pre-fgh_joint-drop-table_a4_a5_table3_room5 dd)))
)
(:action act-uhw_joint-lift-table_a4_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-8q2_observe-table_a4_table4_room6 dd) (inroom table4 room6) (inroom table3 room6) (available a5) (in a5 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (pre-uhw_joint-lift-table_a4_a5_table3_room6 dd) (not (available a5)))
)
(:action act-rwd_joint-move-table_a4_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-uhw_joint-lift-table_a4_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-rwd_joint-move-table_a4_a5_table3_room6_room5 dd) (not (pre-uhw_joint-lift-table_a4_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-uj1_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-rwd_joint-move-table_a4_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-uj1_joint-drop-table_a4_a5_table3_room5 dd) (not (pre-rwd_joint-move-table_a4_a5_table3_room6_room5 dd)) (available a5))
)
(:action act-59q_joint-lift-table_a4_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-uj1_joint-drop-table_a4_a5_table3_room5 dd) (available a5) (in a5 room6))
:effect 
(and (pre-59q_joint-lift-table_a4_a5_table4_room6 dd) (not (pre-uj1_joint-drop-table_a4_a5_table3_room5 dd)) (not (available a5)))
)
(:action act-xc8_joint-move-table_a4_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-59q_joint-lift-table_a4_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-xc8_joint-move-table_a4_a5_table4_room6_room7 dd) (not (pre-59q_joint-lift-table_a4_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-z4m_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-xc8_joint-move-table_a4_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-z4m_joint-drop-table_a4_a5_table4_room7 dd) (not (pre-xc8_joint-move-table_a4_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-z4m_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-z4m_joint-drop-table_a4_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-z4m_joint-drop-table_a4_a5_table4_room7 dd)))
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
