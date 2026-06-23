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
 tag0 - TAG_TYPE ; (inroom table1 room3)
 tag1 - TAG_TYPE ; (inroom table1 room4)
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
(init-ud0_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-ud0_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-ud0_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-m70_observe-table_a2_table3_room6 ?dd - dummy)
(dummy-left-m70_observe-table_a2_table3_room6 ?dd - dummy)
(immediate-dummy-g14_observe-table_a2_table4_room6 ?dd - dummy)
(dummy-left-g14_observe-table_a2_table4_room6 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-g14_observe-table_a2_table4_room6 ?dd - dummy)
(pre-418_joint-lift-table_a2_a5_table4_room6 ?dd - dummy)
(pre-kgd_joint-move-table_a2_a5_table4_room6_room7 ?dd - dummy)
(pre-0rc_joint-drop-table_a2_a5_table4_room7 ?dd - dummy)
(dummy-right-m70_observe-table_a2_table3_room6 ?dd - dummy)
(immediate-dummy-8re_observe-table_a2_table4_room6 ?dd - dummy)
(dummy-left-8re_observe-table_a2_table4_room6 ?dd - dummy)
(pre-mt4_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
(pre-an9_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
(pre-hsu_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
(immediate-dummy-osj_observe-table_a5_table1_room4 ?dd - dummy)
(dummy-left-osj_observe-table_a5_table1_room4 ?dd - dummy)
(pre-1v3_joint-lift-table_a4_a5_table1_room3 ?dd - dummy)
(pre-pit_joint-move-table_a4_a5_table1_room3_room4 ?dd - dummy)
(pre-mcg_joint-drop-table_a4_a5_table1_room4 ?dd - dummy)
(dummy-right-osj_observe-table_a5_table1_room4 ?dd - dummy)
(dummy-right-8re_observe-table_a2_table4_room6 ?dd - dummy)
(pre-fu2_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
(pre-93a_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
(pre-k2b_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
(pre-i3c_joint-lift-table_a2_a5_table4_room6 ?dd - dummy)
(pre-biu_joint-move-table_a2_a5_table4_room6_room7 ?dd - dummy)
(pre-5mu_joint-drop-table_a2_a5_table4_room7 ?dd - dummy)
(dummy-right-ud0_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-09i_observe-table_a4_table3_room6 ?dd - dummy)
(dummy-left-09i_observe-table_a4_table3_room6 ?dd - dummy)
(immediate-dummy-kqj_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-kqj_observe-table_a4_table4_room6 ?dd - dummy)
(immediate-dummy-ysu_observe-table-twk_a3_table1_room3 ?dd - dummy)
(dummy-left-ysu_observe-table-twk_a3_table1_room3 ?dd - dummy)
(dummy-right-ysu_observe-table-twk_a3_table1_room3 ?dd - dummy)
(pre-kkj_joint-lift-table_a3_a5_table1_room3 ?dd - dummy)
(pre-swp_joint-move-table_a3_a5_table1_room3_room4 ?dd - dummy)
(pre-8h8_joint-drop-table_a3_a5_table1_room4 ?dd - dummy)
(dummy-right-kqj_observe-table_a4_table4_room6 ?dd - dummy)
(pre-cat_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
(pre-960_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
(pre-tfy_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
(dummy-right-09i_observe-table_a4_table3_room6 ?dd - dummy)
(immediate-dummy-g0n_observe-table_a4_table4_room6 ?dd - dummy)
(dummy-left-g0n_observe-table_a4_table4_room6 ?dd - dummy)
(pre-iu5_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
(pre-8vd_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
(pre-75e_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
(dummy-right-g0n_observe-table_a4_table4_room6 ?dd - dummy)
(pre-tkk_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
(pre-qar_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
(pre-2zh_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
(pre-xda_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
(pre-v3l_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
(pre-b1c_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-ud0_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (init-ud0_observe-table_a3_table2_room1 dd) (immediate-dummy-ud0_observe-table_a3_table2_room1 dd) (in a5 room1) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-ud0_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (init-ud0_observe-table_a3_table2_room1 dd) (immediate-dummy-ud0_observe-table_a3_table2_room1 dd) (in a5 room1) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-ud0_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-ud0_observe-table_a3_table2_room1 dd) (not (dummy-left-ud0_observe-table_a3_table2_room1 dd)) (not (dummy-right-ud0_observe-table_a3_table2_room1 dd)))
:effect 
(and (immediate-dummy-ud0_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-ud0_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-ud0_observe-table_a3_table2_room1 dd) (in a5 room1) (not (inroom table2 room1)) (immediate-dummy-ud0_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (init-ud0_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-ud0_observe-table_a3_table2_room1 dd)) (dummy-left-ud0_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-ud0_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (init-ud0_observe-table_a3_table2_room1 dd) (in a5 room1) (inroom table2 room1) (immediate-dummy-ud0_observe-table_a3_table2_room1 dd) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (init-ud0_observe-table_a3_table2_room1 dd)) (not (immediate-dummy-ud0_observe-table_a3_table2_room1 dd)) (dummy-right-ud0_observe-table_a3_table2_room1 dd))
)
(:action act-m70_observe-table_a2_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ud0_observe-table_a3_table2_room1 dd) (immediate-dummy-m70_observe-table_a2_table3_room6 dd) (not (inroom table2 room1)) (in a5 room6) (Kinroom table2 room1 V_FALSE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-m70_observe-table_a2_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ud0_observe-table_a3_table2_room1 dd) (immediate-dummy-m70_observe-table_a2_table3_room6 dd) (not (inroom table2 room1)) (in a5 room6) (Kinroom table2 room1 V_FALSE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-m70_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ud0_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a5 room6) (not (dummy-left-m70_observe-table_a2_table3_room6 dd)) (not (dummy-right-m70_observe-table_a2_table3_room6 dd)) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-m70_observe-table_a2_table3_room6 dd))
)
(:action dummy-left-m70_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ud0_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a5 room6) (not (inroom table3 room6)) (immediate-dummy-m70_observe-table_a2_table3_room6 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-m70_observe-table_a2_table3_room6 dd)) (dummy-left-m70_observe-table_a2_table3_room6 dd))
)
(:action dummy-right-m70_observe-table_a2_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ud0_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (in a5 room6) (inroom table3 room6) (immediate-dummy-m70_observe-table_a2_table3_room6 dd) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-m70_observe-table_a2_table3_room6 dd)) (dummy-right-m70_observe-table_a2_table3_room6 dd))
)
(:action act-g14_observe-table_a2_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m70_observe-table_a2_table3_room6 dd) (immediate-dummy-g14_observe-table_a2_table4_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-g14_observe-table_a2_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m70_observe-table_a2_table3_room6 dd) (immediate-dummy-g14_observe-table_a2_table4_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-g14_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m70_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room6) (not (dummy-left-g14_observe-table_a2_table4_room6 dd)) (not (dummy-right-g14_observe-table_a2_table4_room6 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-g14_observe-table_a2_table4_room6 dd))
)
(:action dummy-left-g14_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m70_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room6) (not (inroom table4 room6)) (immediate-dummy-g14_observe-table_a2_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-g14_observe-table_a2_table4_room6 dd)) (dummy-left-g14_observe-table_a2_table4_room6 dd))
)
(:action dummy-right-g14_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m70_observe-table_a2_table3_room6 dd) (not (inroom table3 room6)) (not (inroom table2 room1)) (in a5 room6) (inroom table4 room6) (immediate-dummy-g14_observe-table_a2_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-g14_observe-table_a2_table4_room6 dd)) (dummy-right-g14_observe-table_a2_table4_room6 dd))
)
(:action goal-achieve-left-g14_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g14_observe-table_a2_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (not (inroom table2 room1)) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-g14_observe-table_a2_table4_room6 dd)))
)
(:action act-418_joint-lift-table_a2_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-g14_observe-table_a2_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (not (inroom table2 room1)) (available a5) (in a5 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-418_joint-lift-table_a2_a5_table4_room6 dd) (not (available a5)))
)
(:action act-kgd_joint-move-table_a2_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-418_joint-lift-table_a2_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-kgd_joint-move-table_a2_a5_table4_room6_room7 dd) (not (pre-418_joint-lift-table_a2_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-0rc_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-kgd_joint-move-table_a2_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-0rc_joint-drop-table_a2_a5_table4_room7 dd) (not (pre-kgd_joint-move-table_a2_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-0rc_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-0rc_joint-drop-table_a2_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-0rc_joint-drop-table_a2_a5_table4_room7 dd)))
)
(:action act-8re_observe-table_a2_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m70_observe-table_a2_table3_room6 dd) (immediate-dummy-8re_observe-table_a2_table4_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (in a5 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-8re_observe-table_a2_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m70_observe-table_a2_table3_room6 dd) (immediate-dummy-8re_observe-table_a2_table4_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (in a5 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-8re_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m70_observe-table_a2_table3_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (in a5 room6) (not (dummy-left-8re_observe-table_a2_table4_room6 dd)) (not (dummy-right-8re_observe-table_a2_table4_room6 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (immediate-dummy-8re_observe-table_a2_table4_room6 dd))
)
(:action dummy-left-8re_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m70_observe-table_a2_table3_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (in a5 room6) (not (inroom table4 room6)) (immediate-dummy-8re_observe-table_a2_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-8re_observe-table_a2_table4_room6 dd)) (dummy-left-8re_observe-table_a2_table4_room6 dd))
)
(:action dummy-right-8re_observe-table_a2_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m70_observe-table_a2_table3_room6 dd) (inroom table3 room6) (not (inroom table2 room1)) (in a5 room6) (inroom table4 room6) (immediate-dummy-8re_observe-table_a2_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-8re_observe-table_a2_table4_room6 dd)) (dummy-right-8re_observe-table_a2_table4_room6 dd))
)
(:action act-mt4_joint-lift-table_a2_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-8re_observe-table_a2_table4_room6 dd) (not (inroom table4 room6)) (inroom table3 room6) (not (inroom table2 room1)) (available a5) (in a5 room6) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-mt4_joint-lift-table_a2_a5_table3_room6 dd) (not (available a5)))
)
(:action act-an9_joint-move-table_a2_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-mt4_joint-lift-table_a2_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-an9_joint-move-table_a2_a5_table3_room6_room5 dd) (not (pre-mt4_joint-lift-table_a2_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-hsu_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-an9_joint-move-table_a2_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-hsu_joint-drop-table_a2_a5_table3_room5 dd) (not (pre-an9_joint-move-table_a2_a5_table3_room6_room5 dd)) (available a5))
)
(:action act-osj_observe-table_a5_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (pre-hsu_joint-drop-table_a2_a5_table3_room5 dd) (immediate-dummy-osj_observe-table_a5_table1_room4 dd) (in a5 room4) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-osj_observe-table_a5_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (pre-hsu_joint-drop-table_a2_a5_table3_room5 dd) (immediate-dummy-osj_observe-table_a5_table1_room4 dd) (in a5 room4) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-osj_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-hsu_joint-drop-table_a2_a5_table3_room5 dd) (in a5 room4) (not (dummy-left-osj_observe-table_a5_table1_room4 dd)) (not (dummy-right-osj_observe-table_a5_table1_room4 dd)))
:effect 
(and (immediate-dummy-osj_observe-table_a5_table1_room4 dd))
)
(:action dummy-left-osj_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (in a5 room4) (not (inroom table1 room4)) (immediate-dummy-osj_observe-table_a5_table1_room4 dd) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-osj_observe-table_a5_table1_room4 dd)) (dummy-left-osj_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-osj_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (in a5 room4) (inroom table1 room4) (immediate-dummy-osj_observe-table_a5_table1_room4 dd) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-osj_observe-table_a5_table1_room4 dd)) (dummy-right-osj_observe-table_a5_table1_room4 dd))
)
(:action act-1v3_joint-lift-table_a4_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-osj_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (available a5) (in a5 room3) (Kinroom table1 room4 V_FALSE))
:effect 
(and (pre-1v3_joint-lift-table_a4_a5_table1_room3 dd) (not (available a5)))
)
(:action act-pit_joint-move-table_a4_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-1v3_joint-lift-table_a4_a5_table1_room3 dd) (in a5 room3))
:effect 
(and (pre-pit_joint-move-table_a4_a5_table1_room3_room4 dd) (not (pre-1v3_joint-lift-table_a4_a5_table1_room3 dd)) (not (in a5 room3)) (in a5 room4))
)
(:action act-mcg_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-pit_joint-move-table_a4_a5_table1_room3_room4 dd) (in a5 room4))
:effect 
(and (pre-mcg_joint-drop-table_a4_a5_table1_room4 dd) (not (pre-pit_joint-move-table_a4_a5_table1_room3_room4 dd)) (available a5))
)
(:action goal-achieve-mcg_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-mcg_joint-drop-table_a4_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-mcg_joint-drop-table_a4_a5_table1_room4 dd)))
)
(:action goal-achieve-right-osj_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-osj_observe-table_a5_table1_room4 dd) (inroom table1 room4) (Kinroom table1 room4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-osj_observe-table_a5_table1_room4 dd)))
)
(:action act-fu2_joint-lift-table_a2_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-8re_observe-table_a2_table4_room6 dd) (inroom table4 room6) (inroom table3 room6) (not (inroom table2 room1)) (available a5) (in a5 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (pre-fu2_joint-lift-table_a2_a5_table3_room6 dd) (not (available a5)))
)
(:action act-93a_joint-move-table_a2_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-fu2_joint-lift-table_a2_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-93a_joint-move-table_a2_a5_table3_room6_room5 dd) (not (pre-fu2_joint-lift-table_a2_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-k2b_joint-drop-table_a2_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-93a_joint-move-table_a2_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-k2b_joint-drop-table_a2_a5_table3_room5 dd) (not (pre-93a_joint-move-table_a2_a5_table3_room6_room5 dd)) (available a5))
)
(:action act-i3c_joint-lift-table_a2_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-k2b_joint-drop-table_a2_a5_table3_room5 dd) (available a5) (in a5 room6))
:effect 
(and (pre-i3c_joint-lift-table_a2_a5_table4_room6 dd) (not (pre-k2b_joint-drop-table_a2_a5_table3_room5 dd)) (not (available a5)))
)
(:action act-biu_joint-move-table_a2_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-i3c_joint-lift-table_a2_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-biu_joint-move-table_a2_a5_table4_room6_room7 dd) (not (pre-i3c_joint-lift-table_a2_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-5mu_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-biu_joint-move-table_a2_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-5mu_joint-drop-table_a2_a5_table4_room7 dd) (not (pre-biu_joint-move-table_a2_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-5mu_joint-drop-table_a2_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-5mu_joint-drop-table_a2_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-5mu_joint-drop-table_a2_a5_table4_room7 dd)))
)
(:action act-09i_observe-table_a4_table3_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ud0_observe-table_a3_table2_room1 dd) (immediate-dummy-09i_observe-table_a4_table3_room6 dd) (inroom table2 room1) (in a5 room6) (Kinroom table2 room1 V_TRUE) (inroom table3 room6) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_TRUE))
)
(:action act-09i_observe-table_a4_table3_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ud0_observe-table_a3_table2_room1 dd) (immediate-dummy-09i_observe-table_a4_table3_room6 dd) (inroom table2 room1) (in a5 room6) (Kinroom table2 room1 V_TRUE) (not (inroom table3 room6)) (not (Kinroom table3 room6 V_TRUE)) (not (Kinroom table3 room6 V_FALSE)))
:effect 
(and (Kinroom table3 room6 V_FALSE))
)
(:action act-dummy-09i_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ud0_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a5 room6) (not (dummy-left-09i_observe-table_a4_table3_room6 dd)) (not (dummy-right-09i_observe-table_a4_table3_room6 dd)) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-09i_observe-table_a4_table3_room6 dd))
)
(:action dummy-left-09i_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ud0_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a5 room6) (not (inroom table3 room6)) (immediate-dummy-09i_observe-table_a4_table3_room6 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-09i_observe-table_a4_table3_room6 dd)) (dummy-left-09i_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-09i_observe-table_a4_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ud0_observe-table_a3_table2_room1 dd) (inroom table2 room1) (in a5 room6) (inroom table3 room6) (immediate-dummy-09i_observe-table_a4_table3_room6 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-09i_observe-table_a4_table3_room6 dd)) (dummy-right-09i_observe-table_a4_table3_room6 dd))
)
(:action act-kqj_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-09i_observe-table_a4_table3_room6 dd) (immediate-dummy-kqj_observe-table_a4_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-kqj_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-09i_observe-table_a4_table3_room6 dd) (immediate-dummy-kqj_observe-table_a4_table4_room6 dd) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room6) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-kqj_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-09i_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room6) (not (dummy-left-kqj_observe-table_a4_table4_room6 dd)) (not (dummy-right-kqj_observe-table_a4_table4_room6 dd)) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-kqj_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-kqj_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-09i_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room6) (not (inroom table4 room6)) (immediate-dummy-kqj_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-kqj_observe-table_a4_table4_room6 dd)) (dummy-left-kqj_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-kqj_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-09i_observe-table_a4_table3_room6 dd) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room6) (inroom table4 room6) (immediate-dummy-kqj_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-kqj_observe-table_a4_table4_room6 dd)) (dummy-right-kqj_observe-table_a4_table4_room6 dd))
)
(:action act-ysu_observe-table-twk_a3_table1_room3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kqj_observe-table_a4_table4_room6 dd) (immediate-dummy-ysu_observe-table-twk_a3_table1_room3 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (inroom table1 room3) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_TRUE))
)
(:action act-ysu_observe-table-twk_a3_table1_room3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kqj_observe-table_a4_table4_room6 dd) (immediate-dummy-ysu_observe-table-twk_a3_table1_room3 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (not (inroom table1 room3)) (not (Kinroom table1 room3 V_TRUE)) (not (Kinroom table1 room3 V_FALSE)))
:effect 
(and (Kinroom table1 room3 V_FALSE))
)
(:action act-dummy-ysu_observe-table-twk_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kqj_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room3) (not (dummy-left-ysu_observe-table-twk_a3_table1_room3 dd)) (not (dummy-right-ysu_observe-table-twk_a3_table1_room3 dd)) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-ysu_observe-table-twk_a3_table1_room3 dd))
)
(:action dummy-left-ysu_observe-table-twk_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kqj_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room3) (not (inroom table1 room3)) (immediate-dummy-ysu_observe-table-twk_a3_table1_room3 dd) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_FALSE))
:effect 
(and (not (immediate-dummy-ysu_observe-table-twk_a3_table1_room3 dd)) (dummy-left-ysu_observe-table-twk_a3_table1_room3 dd))
)
(:action dummy-right-ysu_observe-table-twk_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kqj_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room1) (in a5 room3) (inroom table1 room3) (immediate-dummy-ysu_observe-table-twk_a3_table1_room3 dd) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table1 room3 V_TRUE))
:effect 
(and (not (immediate-dummy-ysu_observe-table-twk_a3_table1_room3 dd)) (dummy-right-ysu_observe-table-twk_a3_table1_room3 dd))
)
(:action goal-achieve-left-ysu_observe-table-twk_a3_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ysu_observe-table-twk_a3_table1_room3 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room1) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-ysu_observe-table-twk_a3_table1_room3 dd)))
)
(:action act-kkj_joint-lift-table_a3_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ysu_observe-table-twk_a3_table1_room3 dd) (not (inroom table4 room6)) (not (inroom table3 room6)) (inroom table2 room1) (available a5) (in a5 room3) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-kkj_joint-lift-table_a3_a5_table1_room3 dd) (not (available a5)))
)
(:action act-swp_joint-move-table_a3_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-kkj_joint-lift-table_a3_a5_table1_room3 dd) (in a5 room3))
:effect 
(and (pre-swp_joint-move-table_a3_a5_table1_room3_room4 dd) (not (pre-kkj_joint-lift-table_a3_a5_table1_room3 dd)) (not (in a5 room3)) (in a5 room4))
)
(:action act-8h8_joint-drop-table_a3_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-swp_joint-move-table_a3_a5_table1_room3_room4 dd) (in a5 room4))
:effect 
(and (pre-8h8_joint-drop-table_a3_a5_table1_room4 dd) (not (pre-swp_joint-move-table_a3_a5_table1_room3_room4 dd)) (available a5))
)
(:action goal-achieve-8h8_joint-drop-table_a3_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-8h8_joint-drop-table_a3_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-8h8_joint-drop-table_a3_a5_table1_room4 dd)))
)
(:action act-cat_joint-lift-table_a4_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kqj_observe-table_a4_table4_room6 dd) (inroom table4 room6) (not (inroom table3 room6)) (inroom table2 room1) (available a5) (in a5 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-cat_joint-lift-table_a4_a5_table4_room6 dd) (not (available a5)))
)
(:action act-960_joint-move-table_a4_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-cat_joint-lift-table_a4_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-960_joint-move-table_a4_a5_table4_room6_room7 dd) (not (pre-cat_joint-lift-table_a4_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-tfy_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-960_joint-move-table_a4_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-tfy_joint-drop-table_a4_a5_table4_room7 dd) (not (pre-960_joint-move-table_a4_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-tfy_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-tfy_joint-drop-table_a4_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-tfy_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-g0n_observe-table_a4_table4_room6-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-09i_observe-table_a4_table3_room6 dd) (immediate-dummy-g0n_observe-table_a4_table4_room6 dd) (inroom table3 room6) (inroom table2 room1) (in a5 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE) (inroom table4 room6) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_TRUE))
)
(:action act-g0n_observe-table_a4_table4_room6-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-09i_observe-table_a4_table3_room6 dd) (immediate-dummy-g0n_observe-table_a4_table4_room6 dd) (inroom table3 room6) (inroom table2 room1) (in a5 room6) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE) (not (inroom table4 room6)) (not (Kinroom table4 room6 V_TRUE)) (not (Kinroom table4 room6 V_FALSE)))
:effect 
(and (Kinroom table4 room6 V_FALSE))
)
(:action act-dummy-g0n_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-09i_observe-table_a4_table3_room6 dd) (inroom table3 room6) (inroom table2 room1) (in a5 room6) (not (dummy-left-g0n_observe-table_a4_table4_room6 dd)) (not (dummy-right-g0n_observe-table_a4_table4_room6 dd)) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (immediate-dummy-g0n_observe-table_a4_table4_room6 dd))
)
(:action dummy-left-g0n_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-09i_observe-table_a4_table3_room6 dd) (inroom table3 room6) (inroom table2 room1) (in a5 room6) (not (inroom table4 room6)) (immediate-dummy-g0n_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_FALSE))
:effect 
(and (not (immediate-dummy-g0n_observe-table_a4_table4_room6 dd)) (dummy-left-g0n_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-g0n_observe-table_a4_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-09i_observe-table_a4_table3_room6 dd) (inroom table3 room6) (inroom table2 room1) (in a5 room6) (inroom table4 room6) (immediate-dummy-g0n_observe-table_a4_table4_room6 dd) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table4 room6 V_TRUE))
:effect 
(and (not (immediate-dummy-g0n_observe-table_a4_table4_room6 dd)) (dummy-right-g0n_observe-table_a4_table4_room6 dd))
)
(:action act-iu5_joint-lift-table_a4_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g0n_observe-table_a4_table4_room6 dd) (not (inroom table4 room6)) (inroom table3 room6) (inroom table2 room1) (available a5) (in a5 room6) (Kinroom table4 room6 V_FALSE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-iu5_joint-lift-table_a4_a5_table3_room6 dd) (not (available a5)))
)
(:action act-8vd_joint-move-table_a4_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-iu5_joint-lift-table_a4_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-8vd_joint-move-table_a4_a5_table3_room6_room5 dd) (not (pre-iu5_joint-lift-table_a4_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-75e_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-8vd_joint-move-table_a4_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-75e_joint-drop-table_a4_a5_table3_room5 dd) (not (pre-8vd_joint-move-table_a4_a5_table3_room6_room5 dd)) (available a5))
)
(:action goal-achieve-75e_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-75e_joint-drop-table_a4_a5_table3_room5 dd))
:effect 
(and (done-goal dd) (not (pre-75e_joint-drop-table_a4_a5_table3_room5 dd)))
)
(:action act-tkk_joint-lift-table_a4_a5_table3_room6
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-g0n_observe-table_a4_table4_room6 dd) (inroom table4 room6) (inroom table3 room6) (inroom table2 room1) (available a5) (in a5 room6) (Kinroom table4 room6 V_TRUE) (Kinroom table3 room6 V_TRUE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (pre-tkk_joint-lift-table_a4_a5_table3_room6 dd) (not (available a5)))
)
(:action act-qar_joint-move-table_a4_a5_table3_room6_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-tkk_joint-lift-table_a4_a5_table3_room6 dd) (in a5 room6))
:effect 
(and (pre-qar_joint-move-table_a4_a5_table3_room6_room5 dd) (not (pre-tkk_joint-lift-table_a4_a5_table3_room6 dd)) (not (in a5 room6)) (in a5 room5))
)
(:action act-2zh_joint-drop-table_a4_a5_table3_room5
:parameters ( ?a - agent)
:precondition 
(and (pre-qar_joint-move-table_a4_a5_table3_room6_room5 dd) (in a5 room5))
:effect 
(and (pre-2zh_joint-drop-table_a4_a5_table3_room5 dd) (not (pre-qar_joint-move-table_a4_a5_table3_room6_room5 dd)) (available a5))
)
(:action act-xda_joint-lift-table_a4_a5_table4_room6
:parameters ( ?a - agent)
:precondition 
(and (pre-2zh_joint-drop-table_a4_a5_table3_room5 dd) (available a5) (in a5 room6))
:effect 
(and (pre-xda_joint-lift-table_a4_a5_table4_room6 dd) (not (pre-2zh_joint-drop-table_a4_a5_table3_room5 dd)) (not (available a5)))
)
(:action act-v3l_joint-move-table_a4_a5_table4_room6_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-xda_joint-lift-table_a4_a5_table4_room6 dd) (in a5 room6))
:effect 
(and (pre-v3l_joint-move-table_a4_a5_table4_room6_room7 dd) (not (pre-xda_joint-lift-table_a4_a5_table4_room6 dd)) (not (in a5 room6)) (in a5 room7))
)
(:action act-b1c_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-v3l_joint-move-table_a4_a5_table4_room6_room7 dd) (in a5 room7))
:effect 
(and (pre-b1c_joint-drop-table_a4_a5_table4_room7 dd) (not (pre-v3l_joint-move-table_a4_a5_table4_room6_room7 dd)) (available a5))
)
(:action goal-achieve-b1c_joint-drop-table_a4_a5_table4_room7
:parameters ( ?a - agent)
:precondition 
(and (pre-b1c_joint-drop-table_a4_a5_table4_room7 dd))
:effect 
(and (done-goal dd) (not (pre-b1c_joint-drop-table_a4_a5_table4_room7 dd)))
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
