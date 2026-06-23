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
 tag0 - TAG_TYPE ; (inroom table4 room7)
 tag1 - TAG_TYPE ; (inroom table4 room6)
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
(init-a7l_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-a7l_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-a7l_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-24r_observe-table_a4_table1_room3 ?dd - dummy)
(dummy-left-24r_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-a5w_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-a5w_observe-table_a4_table4_room6 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-a5w_observe-table_a4_table4_room6 ?dd - dummy)
(immediate-dummy-uhz_observe-table_a2_table3_room5 ?dd - dummy)
(dummy-left-uhz_observe-table_a2_table3_room5 ?dd - dummy)
(pre-450_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
(pre-wdb_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
(pre-xz3_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
(dummy-right-uhz_observe-table_a2_table3_room5 ?dd - dummy)
(dummy-right-24r_observe-table_a4_table1_room3 ?dd - dummy)
(immediate-dummy-twj_observe-table_a5_table3_room6 ?dd - dummy)
(dummy-left-twj_observe-table_a5_table3_room6 ?dd - dummy)
(pre-w8l_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-yvn_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-ei4_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(dummy-right-twj_observe-table_a5_table3_room6 ?dd - dummy)
(immediate-dummy-n09_observe-table_a5_table4_room6 ?dd - dummy)
(dummy-left-n09_observe-table_a5_table4_room6 ?dd - dummy)
(pre-is3_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-o8e_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-129_joint-move-table_a2_a4_table1_room4_room5 ?dd - dummy)
(pre-407_joint-move-table_a2_a4_table1_room5_room6 ?dd - dummy)
(pre-izn_joint-drop-table_a2_a4_table1_room6 ?dd - dummy)
(pre-xy1_joint-lift-table_a2_a4_table1_room6 ?dd - dummy)
(pre-arl_joint-move-table_a2_a4_table1_room6_room5 ?dd - dummy)
(pre-cf6_joint-move-table_a2_a4_table1_room5_room4 ?dd - dummy)
(pre-flj_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(dummy-right-n09_observe-table_a5_table4_room6 ?dd - dummy)
(pre-jp9_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
(pre-4qe_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
(pre-0nv_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(dummy-right-a7l_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-ij1_observe-table_a5_table1_room4 ?dd - dummy)
(dummy-left-ij1_observe-table_a5_table1_room4 ?dd - dummy)
(immediate-dummy-z13_observe-table_a4_table3_room5 ?dd - dummy)
(dummy-left-z13_observe-table_a4_table3_room5 ?dd - dummy)
(immediate-dummy-k2h_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-k2h_observe-table_a4_table4_room6 ?dd - dummy)
(pre-oq6_joint-lift-table_a2_a5_table1_room3 ?dd - dummy)
(pre-aqt_joint-move-table_a2_a5_table1_room3_room4 ?dd - dummy)
(pre-cnj_joint-move-table_a2_a5_table1_room4_room5 ?dd - dummy)
(pre-ygn_joint-move-table_a2_a5_table1_room5_room6 ?dd - dummy)
(pre-6ix_joint-drop-table_a2_a5_table1_room6 ?dd - dummy)
(pre-4sm_joint-lift-table_a2_a4_table1_room6 ?dd - dummy)
(pre-99j_joint-move-table_a2_a4_table1_room6_room5 ?dd - dummy)
(pre-2sl_joint-move-table_a2_a4_table1_room5_room4 ?dd - dummy)
(pre-2pp_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
(dummy-right-k2h_observe-table_a4_table4_room6 ?dd - dummy)
(pre-akz_joint-lift-table_a2_a5_table1_room3 ?dd - dummy)
(pre-s2n_joint-move-table_a2_a5_table1_room3_room4 ?dd - dummy)
(pre-y15_joint-drop-table_a2_a5_table1_room4 ?dd - dummy)
(dummy-right-z13_observe-table_a4_table3_room5 ?dd - dummy)
(pre-nj9_joint-lift-table_a2_a5_table1_room3 ?dd - dummy)
(pre-q1d_joint-move-table_a2_a5_table1_room3_room4 ?dd - dummy)
(pre-5ch_joint-drop-table_a2_a5_table1_room4 ?dd - dummy)
(dummy-right-ij1_observe-table_a5_table1_room4 ?dd - dummy)
(immediate-dummy-hla_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-hla_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-right-hla_observe-table_a4_table4_room6 ?dd - dummy)
(immediate-dummy-d4j_observe-table_a2_table3_room5 ?dd - dummy)
(dummy-left-d4j_observe-table_a2_table3_room5 ?dd - dummy)
(pre-rk2_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
(pre-8v7_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
(pre-uhb_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
(dummy-right-d4j_observe-table_a2_table3_room5 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-a7l_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (init-a7l_observe-table_a3_table2_room1 dd) (immediate-dummy-a7l_observe-table_a3_table2_room1 dd) (in a2 room1) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-a7l_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (init-a7l_observe-table_a3_table2_room1 dd) (immediate-dummy-a7l_observe-table_a3_table2_room1 dd) (in a2 room1) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-a7l_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-a7l_observe-table_a3_table2_room1 dd) (not (dummy-left-a7l_observe-table_a3_table2_room1 dd)) (not (dummy-right-a7l_observe-table_a3_table2_room1 dd)))
:effect 
(and (immediate-dummy-a7l_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-a7l_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-a7l_observe-table_a3_table2_room1 dd) (in a2 room1) (not (inroom table2 room1)) (immediate-dummy-a7l_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (init-a7l_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-a7l_observe-table_a3_table2_room1 dd)) (dummy-left-a7l_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-a7l_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-a7l_observe-table_a3_table2_room1 dd) (in a2 room1) (inroom table2 room1) (immediate-dummy-a7l_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (init-a7l_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-a7l_observe-table_a3_table2_room1 dd)) (dummy-right-a7l_observe-table_a3_table2_room1 dd))
)
(:action act-24r_observe-table_a4_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a7l_observe-table_a3_table2_room1 dd) (immediate-dummy-24r_observe-table_a4_table1_room3 dd) (not (inroom table2 room1)) (in a2 room3) (Kinroom table2 room1 V_FALSE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-24r_observe-table_a4_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a7l_observe-table_a3_table2_room1 dd) (immediate-dummy-24r_observe-table_a4_table1_room3 dd) (not (inroom table2 room1)) (in a2 room3) (Kinroom table2 room1 V_FALSE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-24r_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a7l_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a2 room3) (not (dummy-left-24r_observe-table_a4_table1_room3 dd)) (not (dummy-right-24r_observe-table_a4_table1_room3 dd)) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-24r_observe-table_a4_table1_room3 dd))
)
(:action dummy-left-24r_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a7l_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a2 room3) (not (inroom table1 room3)) (immediate-dummy-24r_observe-table_a4_table1_room3 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-24r_observe-table_a4_table1_room3 dd)) (dummy-left-24r_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-24r_observe-table_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a7l_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a2 room3) (inroom table1 room3) (immediate-dummy-24r_observe-table_a4_table1_room3 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-24r_observe-table_a4_table1_room3 dd)) (dummy-right-24r_observe-table_a4_table1_room3 dd))
)
(:action act-a5w_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-24r_observe-table_a4_table1_room3 dd) (immediate-dummy-a5w_observe-table_a4_table4_room6 dd) (not (inroom table1 room3)) (not (inroom table2 room1)) (in a2 room6) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-a5w_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-24r_observe-table_a4_table1_room3 dd) (immediate-dummy-a5w_observe-table_a4_table4_room6 dd) (not (inroom table1 room3)) (not (inroom table2 room1)) (in a2 room6) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-a5w_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-24r_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table2 room1)) (in a2 room6) (not (dummy-left-a5w_observe-table_a4_table4_room6 dd)) (not (dummy-right-a5w_observe-table_a4_table4_room6 dd)) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-a5w_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-a5w_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-24r_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table2 room1)) (in a2 room6) (not (inroom table4 room6)) (immediate-dummy-a5w_observe-table_a4_table4_room6 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-a5w_observe-table_a4_table4_room6 dd)) (dummy-left-a5w_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-a5w_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-24r_observe-table_a4_table1_room3 dd) (not (inroom table1 room3)) (not (inroom table2 room1)) (in a2 room6) (inroom table4 room6) (immediate-dummy-a5w_observe-table_a4_table4_room6 dd) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-a5w_observe-table_a4_table4_room6 dd)) (dummy-right-a5w_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-a5w_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a5w_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table1 room3)) (not (inroom table2 room1)) (Kinroom table4 room6 V_FALSE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-a5w_observe-table_a4_table4_room6 dd)))
)
(:action act-uhz_observe-table_a2_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a5w_observe-table_a4_table4_room6 dd) (immediate-dummy-uhz_observe-table_a2_table3_room5 dd) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room1)) (in a2 room5) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-uhz_observe-table_a2_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a5w_observe-table_a4_table4_room6 dd) (immediate-dummy-uhz_observe-table_a2_table3_room5 dd) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room1)) (in a2 room5) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-uhz_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a5w_observe-table_a4_table4_room6 dd) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room1)) (in a2 room5) (not (dummy-left-uhz_observe-table_a2_table3_room5 dd)) (not (dummy-right-uhz_observe-table_a2_table3_room5 dd)) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-uhz_observe-table_a2_table3_room5 dd))
)
(:action dummy-left-uhz_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a5w_observe-table_a4_table4_room6 dd) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room1)) (in a2 room5) (not (inroom table3 room5)) (immediate-dummy-uhz_observe-table_a2_table3_room5 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-uhz_observe-table_a2_table3_room5 dd)) (dummy-left-uhz_observe-table_a2_table3_room5 dd))
)
(:action dummy-right-uhz_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a5w_observe-table_a4_table4_room6 dd) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room1)) (in a2 room5) (inroom table3 room5) (immediate-dummy-uhz_observe-table_a2_table3_room5 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-uhz_observe-table_a2_table3_room5 dd)) (dummy-right-uhz_observe-table_a2_table3_room5 dd))
)
(:action act-450_joint-lift-table_a2_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-uhz_observe-table_a2_table3_room5 dd) (not (inroom table3 room5)) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room1)) (available a2) (in a2 room6) (Kinroom table3 room5 V_FALSE) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-450_joint-lift-table_a2_a5_table3_room6 dd) (not (available a2)))
)
(:action act-wdb_joint-move-table_a2_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-450_joint-lift-table_a2_a5_table3_room6 dd) (in a2 room6))
:effect 
(and (pre-wdb_joint-move-table_a2_a5_table3_room6_room5 dd) (not (pre-450_joint-lift-table_a2_a5_table3_room6 dd)) (not (in a2 room6)) (in a2 room5))
)
(:action act-xz3_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-wdb_joint-move-table_a2_a5_table3_room6_room5 dd) (in a2 room5))
:effect 
(and (pre-xz3_joint-drop-table_a2_a5_table3_room5 dd) (not (pre-wdb_joint-move-table_a2_a5_table3_room6_room5 dd)) (available a2))
)
(:action goal-achieve-xz3_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-xz3_joint-drop-table_a2_a5_table3_room5 dd))
:effect 
(and (done-goal dd) (not (pre-xz3_joint-drop-table_a2_a5_table3_room5 dd)))
)
(:action goal-achieve-right-uhz_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-uhz_observe-table_a2_table3_room5 dd) (inroom table3 room5) (inroom table4 room6) (not (inroom table1 room3)) (not (inroom table2 room1)) (Kinroom table3 room5 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-uhz_observe-table_a2_table3_room5 dd)))
)
(:action act-twj_observe-table_a5_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-24r_observe-table_a4_table1_room3 dd) (immediate-dummy-twj_observe-table_a5_table3_room6 dd) (inroom table1 room3) (not (inroom table2 room1)) (in a2 room6) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-twj_observe-table_a5_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-24r_observe-table_a4_table1_room3 dd) (immediate-dummy-twj_observe-table_a5_table3_room6 dd) (inroom table1 room3) (not (inroom table2 room1)) (in a2 room6) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-twj_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-24r_observe-table_a4_table1_room3 dd) (inroom table1 room3) (not (inroom table2 room1)) (in a2 room6) (not (dummy-left-twj_observe-table_a5_table3_room6 dd)) (not (dummy-right-twj_observe-table_a5_table3_room6 dd)) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-twj_observe-table_a5_table3_room6 dd))
)
(:action dummy-left-twj_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-24r_observe-table_a4_table1_room3 dd) (inroom table1 room3) (not (inroom table2 room1)) (in a2 room6) (not (inroom table3 room6)) (immediate-dummy-twj_observe-table_a5_table3_room6 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-twj_observe-table_a5_table3_room6 dd)) (dummy-left-twj_observe-table_a5_table3_room6 dd))
)
(:action dummy-right-twj_observe-table_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-24r_observe-table_a4_table1_room3 dd) (inroom table1 room3) (not (inroom table2 room1)) (in a2 room6) (inroom table3 room6) (immediate-dummy-twj_observe-table_a5_table3_room6 dd) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-twj_observe-table_a5_table3_room6 dd)) (dummy-right-twj_observe-table_a5_table3_room6 dd))
)
(:action act-w8l_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-twj_observe-table_a5_table3_room6 dd) (not (inroom table3 room6)) (inroom table1 room3) (not (inroom table2 room1)) (available a2) (in a2 room3) (Kinroom table3 room6 V_FALSE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-w8l_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-yvn_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-w8l_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-yvn_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-w8l_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-ei4_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-yvn_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-ei4_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-yvn_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action goal-achieve-ei4_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ei4_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-ei4_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-n09_observe-table_a5_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-twj_observe-table_a5_table3_room6 dd) (immediate-dummy-n09_observe-table_a5_table4_room6 dd) (inroom table3 room6) (inroom table1 room3) (not (inroom table2 room1)) (in a2 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-n09_observe-table_a5_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-twj_observe-table_a5_table3_room6 dd) (immediate-dummy-n09_observe-table_a5_table4_room6 dd) (inroom table3 room6) (inroom table1 room3) (not (inroom table2 room1)) (in a2 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-n09_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-twj_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table1 room3) (not (inroom table2 room1)) (in a2 room6) (not (dummy-left-n09_observe-table_a5_table4_room6 dd)) (not (dummy-right-n09_observe-table_a5_table4_room6 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-n09_observe-table_a5_table4_room6 dd))
)
(:action dummy-left-n09_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-twj_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table1 room3) (not (inroom table2 room1)) (in a2 room6) (not (inroom table4 room6)) (immediate-dummy-n09_observe-table_a5_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-n09_observe-table_a5_table4_room6 dd)) (dummy-left-n09_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-n09_observe-table_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-twj_observe-table_a5_table3_room6 dd) (inroom table3 room6) (inroom table1 room3) (not (inroom table2 room1)) (in a2 room6) (inroom table4 room6) (immediate-dummy-n09_observe-table_a5_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-n09_observe-table_a5_table4_room6 dd)) (dummy-right-n09_observe-table_a5_table4_room6 dd))
)
(:action act-is3_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n09_observe-table_a5_table4_room6 dd) (not (inroom table4 room6)) (inroom table3 room6) (inroom table1 room3) (not (inroom table2 room1)) (available a2) (in a2 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-is3_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-o8e_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-is3_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-o8e_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-is3_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-129_joint-move-table_a2_a4_table1_room4_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-o8e_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-129_joint-move-table_a2_a4_table1_room4_room5 dd) (not (pre-o8e_joint-move-table_a2_a4_table1_room3_room4 dd)) (not (in a2 room4)) (in a2 room5))
)
(:action act-407_joint-move-table_a2_a4_table1_room5_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-129_joint-move-table_a2_a4_table1_room4_room5 dd) (in a2 room5))
:effect 
(and (pre-407_joint-move-table_a2_a4_table1_room5_room6 dd) (not (pre-129_joint-move-table_a2_a4_table1_room4_room5 dd)) (not (in a2 room5)) (in a2 room6))
)
(:action act-izn_joint-drop-table_a2_a4_table1_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-407_joint-move-table_a2_a4_table1_room5_room6 dd) (in a2 room6))
:effect 
(and (pre-izn_joint-drop-table_a2_a4_table1_room6 dd) (not (pre-407_joint-move-table_a2_a4_table1_room5_room6 dd)) (available a2))
)
(:action act-xy1_joint-lift-table_a2_a4_table1_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-izn_joint-drop-table_a2_a4_table1_room6 dd) (available a2) (in a2 room6))
:effect 
(and (pre-xy1_joint-lift-table_a2_a4_table1_room6 dd) (not (pre-izn_joint-drop-table_a2_a4_table1_room6 dd)) (not (available a2)))
)
(:action act-arl_joint-move-table_a2_a4_table1_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-xy1_joint-lift-table_a2_a4_table1_room6 dd) (in a2 room6))
:effect 
(and (pre-arl_joint-move-table_a2_a4_table1_room6_room5 dd) (not (pre-xy1_joint-lift-table_a2_a4_table1_room6 dd)) (not (in a2 room6)) (in a2 room5))
)
(:action act-cf6_joint-move-table_a2_a4_table1_room5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-arl_joint-move-table_a2_a4_table1_room6_room5 dd) (in a2 room5))
:effect 
(and (pre-cf6_joint-move-table_a2_a4_table1_room5_room4 dd) (not (pre-arl_joint-move-table_a2_a4_table1_room6_room5 dd)) (not (in a2 room5)) (in a2 room4))
)
(:action act-flj_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-cf6_joint-move-table_a2_a4_table1_room5_room4 dd) (in a2 room4))
:effect 
(and (pre-flj_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-cf6_joint-move-table_a2_a4_table1_room5_room4 dd)) (available a2))
)
(:action goal-achieve-flj_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-flj_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-flj_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-jp9_joint-lift-table_a2_a4_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n09_observe-table_a5_table4_room6 dd) (inroom table4 room6) (inroom table3 room6) (inroom table1 room3) (not (inroom table2 room1)) (available a2) (in a2 room3) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table1 room3 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-jp9_joint-lift-table_a2_a4_table1_room3 dd) (not (available a2)))
)
(:action act-4qe_joint-move-table_a2_a4_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-jp9_joint-lift-table_a2_a4_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-4qe_joint-move-table_a2_a4_table1_room3_room4 dd) (not (pre-jp9_joint-lift-table_a2_a4_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-0nv_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-4qe_joint-move-table_a2_a4_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-0nv_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-4qe_joint-move-table_a2_a4_table1_room3_room4 dd)) (available a2))
)
(:action goal-achieve-0nv_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-0nv_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-0nv_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-ij1_observe-table_a5_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7l_observe-table_a3_table2_room1 dd) (immediate-dummy-ij1_observe-table_a5_table1_room4 dd) (inroom table2 room1) (in a2 room4) (Kinroom table2 room1 V_TRUE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-ij1_observe-table_a5_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7l_observe-table_a3_table2_room1 dd) (immediate-dummy-ij1_observe-table_a5_table1_room4 dd) (inroom table2 room1) (in a2 room4) (Kinroom table2 room1 V_TRUE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-ij1_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7l_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a2 room4) (not (dummy-left-ij1_observe-table_a5_table1_room4 dd)) (not (dummy-right-ij1_observe-table_a5_table1_room4 dd)) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-ij1_observe-table_a5_table1_room4 dd))
)
(:action dummy-left-ij1_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7l_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a2 room4) (not (inroom table1 room4)) (immediate-dummy-ij1_observe-table_a5_table1_room4 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-ij1_observe-table_a5_table1_room4 dd)) (dummy-left-ij1_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-ij1_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7l_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a2 room4) (inroom table1 room4) (immediate-dummy-ij1_observe-table_a5_table1_room4 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-ij1_observe-table_a5_table1_room4 dd)) (dummy-right-ij1_observe-table_a5_table1_room4 dd))
)
(:action act-z13_observe-table_a4_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ij1_observe-table_a5_table1_room4 dd) (immediate-dummy-z13_observe-table_a4_table3_room5 dd) (not (inroom table1 room4)) (inroom table2 room1) (in a2 room5) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-z13_observe-table_a4_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ij1_observe-table_a5_table1_room4 dd) (immediate-dummy-z13_observe-table_a4_table3_room5 dd) (not (inroom table1 room4)) (inroom table2 room1) (in a2 room5) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-z13_observe-table_a4_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ij1_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (inroom table2 room1) (in a2 room5) (not (dummy-left-z13_observe-table_a4_table3_room5 dd)) (not (dummy-right-z13_observe-table_a4_table3_room5 dd)) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-z13_observe-table_a4_table3_room5 dd))
)
(:action dummy-left-z13_observe-table_a4_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ij1_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (inroom table2 room1) (in a2 room5) (not (inroom table3 room5)) (immediate-dummy-z13_observe-table_a4_table3_room5 dd) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-z13_observe-table_a4_table3_room5 dd)) (dummy-left-z13_observe-table_a4_table3_room5 dd))
)
(:action dummy-right-z13_observe-table_a4_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ij1_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (inroom table2 room1) (in a2 room5) (inroom table3 room5) (immediate-dummy-z13_observe-table_a4_table3_room5 dd) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-z13_observe-table_a4_table3_room5 dd)) (dummy-right-z13_observe-table_a4_table3_room5 dd))
)
(:action act-k2h_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-z13_observe-table_a4_table3_room5 dd) (immediate-dummy-k2h_observe-table_a4_table4_room6 dd) (not (inroom table3 room5)) (not (inroom table1 room4)) (inroom table2 room1) (in a2 room6) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-k2h_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-z13_observe-table_a4_table3_room5 dd) (immediate-dummy-k2h_observe-table_a4_table4_room6 dd) (not (inroom table3 room5)) (not (inroom table1 room4)) (inroom table2 room1) (in a2 room6) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-k2h_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-z13_observe-table_a4_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table1 room4)) (inroom table2 room1) (in a2 room6) (not (dummy-left-k2h_observe-table_a4_table4_room6 dd)) (not (dummy-right-k2h_observe-table_a4_table4_room6 dd)) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-k2h_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-k2h_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-z13_observe-table_a4_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table1 room4)) (inroom table2 room1) (in a2 room6) (not (inroom table4 room6)) (immediate-dummy-k2h_observe-table_a4_table4_room6 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-k2h_observe-table_a4_table4_room6 dd)) (dummy-left-k2h_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-k2h_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-z13_observe-table_a4_table3_room5 dd) (not (inroom table3 room5)) (not (inroom table1 room4)) (inroom table2 room1) (in a2 room6) (inroom table4 room6) (immediate-dummy-k2h_observe-table_a4_table4_room6 dd) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-k2h_observe-table_a4_table4_room6 dd)) (dummy-right-k2h_observe-table_a4_table4_room6 dd))
)
(:action act-oq6_joint-lift-table_a2_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-k2h_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room5)) (not (inroom table1 room4)) (inroom table2 room1) (available a2) (in a2 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-oq6_joint-lift-table_a2_a5_table1_room3 dd) (not (available a2)))
)
(:action act-aqt_joint-move-table_a2_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-oq6_joint-lift-table_a2_a5_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-aqt_joint-move-table_a2_a5_table1_room3_room4 dd) (not (pre-oq6_joint-lift-table_a2_a5_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-cnj_joint-move-table_a2_a5_table1_room4_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-aqt_joint-move-table_a2_a5_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-cnj_joint-move-table_a2_a5_table1_room4_room5 dd) (not (pre-aqt_joint-move-table_a2_a5_table1_room3_room4 dd)) (not (in a2 room4)) (in a2 room5))
)
(:action act-ygn_joint-move-table_a2_a5_table1_room5_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-cnj_joint-move-table_a2_a5_table1_room4_room5 dd) (in a2 room5))
:effect 
(and (pre-ygn_joint-move-table_a2_a5_table1_room5_room6 dd) (not (pre-cnj_joint-move-table_a2_a5_table1_room4_room5 dd)) (not (in a2 room5)) (in a2 room6))
)
(:action act-6ix_joint-drop-table_a2_a5_table1_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-ygn_joint-move-table_a2_a5_table1_room5_room6 dd) (in a2 room6))
:effect 
(and (pre-6ix_joint-drop-table_a2_a5_table1_room6 dd) (not (pre-ygn_joint-move-table_a2_a5_table1_room5_room6 dd)) (available a2))
)
(:action act-4sm_joint-lift-table_a2_a4_table1_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-6ix_joint-drop-table_a2_a5_table1_room6 dd) (available a2) (in a2 room6))
:effect 
(and (pre-4sm_joint-lift-table_a2_a4_table1_room6 dd) (not (pre-6ix_joint-drop-table_a2_a5_table1_room6 dd)) (not (available a2)))
)
(:action act-99j_joint-move-table_a2_a4_table1_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-4sm_joint-lift-table_a2_a4_table1_room6 dd) (in a2 room6))
:effect 
(and (pre-99j_joint-move-table_a2_a4_table1_room6_room5 dd) (not (pre-4sm_joint-lift-table_a2_a4_table1_room6 dd)) (not (in a2 room6)) (in a2 room5))
)
(:action act-2sl_joint-move-table_a2_a4_table1_room5_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-99j_joint-move-table_a2_a4_table1_room6_room5 dd) (in a2 room5))
:effect 
(and (pre-2sl_joint-move-table_a2_a4_table1_room5_room4 dd) (not (pre-99j_joint-move-table_a2_a4_table1_room6_room5 dd)) (not (in a2 room5)) (in a2 room4))
)
(:action act-2pp_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-2sl_joint-move-table_a2_a4_table1_room5_room4 dd) (in a2 room4))
:effect 
(and (pre-2pp_joint-drop-table_a2_a4_table1_room4 dd) (not (pre-2sl_joint-move-table_a2_a4_table1_room5_room4 dd)) (available a2))
)
(:action goal-achieve-2pp_joint-drop-table_a2_a4_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-2pp_joint-drop-table_a2_a4_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-2pp_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-akz_joint-lift-table_a2_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-k2h_observe-table_a4_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room5)) (not (inroom table1 room4)) (inroom table2 room1) (available a2) (in a2 room3) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room5 V_FALSE) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-akz_joint-lift-table_a2_a5_table1_room3 dd) (not (available a2)))
)
(:action act-s2n_joint-move-table_a2_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-akz_joint-lift-table_a2_a5_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-s2n_joint-move-table_a2_a5_table1_room3_room4 dd) (not (pre-akz_joint-lift-table_a2_a5_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-y15_joint-drop-table_a2_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-s2n_joint-move-table_a2_a5_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-y15_joint-drop-table_a2_a5_table1_room4 dd) (not (pre-s2n_joint-move-table_a2_a5_table1_room3_room4 dd)) (available a2))
)
(:action goal-achieve-y15_joint-drop-table_a2_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-y15_joint-drop-table_a2_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-y15_joint-drop-table_a2_a5_table1_room4 dd)))
)
(:action act-nj9_joint-lift-table_a2_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-z13_observe-table_a4_table3_room5 dd) (inroom table3 room5) (not (inroom table1 room4)) (inroom table2 room1) (available a2) (in a2 room3) (Kinroom table3 room5 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-nj9_joint-lift-table_a2_a5_table1_room3 dd) (not (available a2)))
)
(:action act-q1d_joint-move-table_a2_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-nj9_joint-lift-table_a2_a5_table1_room3 dd) (in a2 room3))
:effect 
(and (pre-q1d_joint-move-table_a2_a5_table1_room3_room4 dd) (not (pre-nj9_joint-lift-table_a2_a5_table1_room3 dd)) (not (in a2 room3)) (in a2 room4))
)
(:action act-5ch_joint-drop-table_a2_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-q1d_joint-move-table_a2_a5_table1_room3_room4 dd) (in a2 room4))
:effect 
(and (pre-5ch_joint-drop-table_a2_a5_table1_room4 dd) (not (pre-q1d_joint-move-table_a2_a5_table1_room3_room4 dd)) (available a2))
)
(:action goal-achieve-5ch_joint-drop-table_a2_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-5ch_joint-drop-table_a2_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-5ch_joint-drop-table_a2_a5_table1_room4 dd)))
)
(:action act-hla_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ij1_observe-table_a5_table1_room4 dd) (immediate-dummy-hla_observe-table_a4_table4_room6 dd) (inroom table1 room4) (inroom table2 room1) (in a2 room6) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-hla_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ij1_observe-table_a5_table1_room4 dd) (immediate-dummy-hla_observe-table_a4_table4_room6 dd) (inroom table1 room4) (inroom table2 room1) (in a2 room6) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-hla_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ij1_observe-table_a5_table1_room4 dd) (inroom table1 room4) (inroom table2 room1) (in a2 room6) (not (dummy-left-hla_observe-table_a4_table4_room6 dd)) (not (dummy-right-hla_observe-table_a4_table4_room6 dd)) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-hla_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-hla_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ij1_observe-table_a5_table1_room4 dd) (inroom table1 room4) (inroom table2 room1) (in a2 room6) (not (inroom table4 room6)) (immediate-dummy-hla_observe-table_a4_table4_room6 dd) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-hla_observe-table_a4_table4_room6 dd)) (dummy-left-hla_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-hla_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ij1_observe-table_a5_table1_room4 dd) (inroom table1 room4) (inroom table2 room1) (in a2 room6) (inroom table4 room6) (immediate-dummy-hla_observe-table_a4_table4_room6 dd) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-hla_observe-table_a4_table4_room6 dd)) (dummy-right-hla_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-hla_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hla_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (inroom table1 room4) (inroom table2 room1) (Kinroom table4 room6 V_FALSE) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-hla_observe-table_a4_table4_room6 dd)))
)
(:action act-d4j_observe-table_a2_table3_room5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hla_observe-table_a4_table4_room6 dd) (immediate-dummy-d4j_observe-table_a2_table3_room5 dd) (inroom table4 room6) (inroom table1 room4) (inroom table2 room1) (in a2 room5) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE) (inroom table3 room5) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_TRUE))
)
(:action act-d4j_observe-table_a2_table3_room5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hla_observe-table_a4_table4_room6 dd) (immediate-dummy-d4j_observe-table_a2_table3_room5 dd) (inroom table4 room6) (inroom table1 room4) (inroom table2 room1) (in a2 room5) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE) (not (inroom table3 room5)) (not (Kinroom table3 room5 V_TRUE)) (not (Kinroom table3 room5 V_FALSE)))
:effect 
(and (Kinroom table3 room5 V_FALSE))
)
(:action act-dummy-d4j_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hla_observe-table_a4_table4_room6 dd) (inroom table4 room6) (inroom table1 room4) (inroom table2 room1) (in a2 room5) (not (dummy-left-d4j_observe-table_a2_table3_room5 dd)) (not (dummy-right-d4j_observe-table_a2_table3_room5 dd)) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-d4j_observe-table_a2_table3_room5 dd))
)
(:action dummy-left-d4j_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hla_observe-table_a4_table4_room6 dd) (inroom table4 room6) (inroom table1 room4) (inroom table2 room1) (in a2 room5) (not (inroom table3 room5)) (immediate-dummy-d4j_observe-table_a2_table3_room5 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room5 V_FALSE))
:effect 
(and (not (immediate-dummy-d4j_observe-table_a2_table3_room5 dd)) (dummy-left-d4j_observe-table_a2_table3_room5 dd))
)
(:action dummy-right-d4j_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hla_observe-table_a4_table4_room6 dd) (inroom table4 room6) (inroom table1 room4) (inroom table2 room1) (in a2 room5) (inroom table3 room5) (immediate-dummy-d4j_observe-table_a2_table3_room5 dd) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room5 V_TRUE))
:effect 
(and (not (immediate-dummy-d4j_observe-table_a2_table3_room5 dd)) (dummy-right-d4j_observe-table_a2_table3_room5 dd))
)
(:action act-rk2_joint-lift-table_a2_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-d4j_observe-table_a2_table3_room5 dd) (not (inroom table3 room5)) (inroom table4 room6) (inroom table1 room4) (inroom table2 room1) (available a2) (in a2 room6) (Kinroom table3 room5 V_FALSE) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-rk2_joint-lift-table_a2_a5_table3_room6 dd) (not (available a2)))
)
(:action act-8v7_joint-move-table_a2_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-rk2_joint-lift-table_a2_a5_table3_room6 dd) (in a2 room6))
:effect 
(and (pre-8v7_joint-move-table_a2_a5_table3_room6_room5 dd) (not (pre-rk2_joint-lift-table_a2_a5_table3_room6 dd)) (not (in a2 room6)) (in a2 room5))
)
(:action act-uhb_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-8v7_joint-move-table_a2_a5_table3_room6_room5 dd) (in a2 room5))
:effect 
(and (pre-uhb_joint-drop-table_a2_a5_table3_room5 dd) (not (pre-8v7_joint-move-table_a2_a5_table3_room6_room5 dd)) (available a2))
)
(:action goal-achieve-uhb_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-uhb_joint-drop-table_a2_a5_table3_room5 dd))
:effect 
(and (done-goal dd) (not (pre-uhb_joint-drop-table_a2_a5_table3_room5 dd)))
)
(:action goal-achieve-right-d4j_observe-table_a2_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-d4j_observe-table_a2_table3_room5 dd) (inroom table3 room5) (inroom table4 room6) (inroom table1 room4) (inroom table2 room1) (Kinroom table3 room5 V_TRUE) (Kinroom table4 room6 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-d4j_observe-table_a2_table3_room5 dd)))
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
