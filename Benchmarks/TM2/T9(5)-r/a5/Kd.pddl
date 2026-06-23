(define (domain Ktablemover-2-a5)
(:requirements :strips :typing)
(:types agent table room dummy TAG_TYPE VALUE_TYPE)
(:constants
 table1 - table
 table2 - table
 table3 - table
 table4 - table
 table5 - table
 a5 - agent
 room1 - room
 room2 - room
 room3 - room
 room4 - room
 dd - dummy
 tag0 - TAG_TYPE ; (inroom table4 room2)
 tag1 - TAG_TYPE ; (inroom table4 room1)
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
(init-ere_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-ere_observe-table_a2_table5_room3 ?dd - dummy)
(dummy-left-ere_observe-table_a2_table5_room3 ?dd - dummy)
(immediate-dummy-khy_observe-table_a5_table1_room4 ?dd - dummy)
(dummy-left-khy_observe-table_a5_table1_room4 ?dd - dummy)
(immediate-dummy-koz_observe-table_a1_table3_room2 ?dd - dummy)
(dummy-left-koz_observe-table_a1_table3_room2 ?dd - dummy)
(pre-rof_joint-lift-table_a4_a5_table1_room3 ?dd - dummy)
(pre-css_joint-move-table_a4_a5_table1_room3_room4 ?dd - dummy)
(pre-nt2_joint-drop-table_a4_a5_table1_room4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-koz_observe-table_a1_table3_room2 ?dd - dummy)
(immediate-dummy-mq6_observe-table_a3_table2_room1 ?dd - dummy)
(dummy-left-mq6_observe-table_a3_table2_room1 ?dd - dummy)
(pre-cxm_joint-lift-table_a4_a5_table1_room3 ?dd - dummy)
(pre-huv_joint-move-table_a4_a5_table1_room3_room4 ?dd - dummy)
(pre-gvq_joint-drop-table_a4_a5_table1_room4 ?dd - dummy)
(dummy-right-mq6_observe-table_a3_table2_room1 ?dd - dummy)
(immediate-dummy-wc7_observe-table_a3_table4_room1 ?dd - dummy)
(dummy-left-wc7_observe-table_a3_table4_room1 ?dd - dummy)
(dummy-right-wc7_observe-table_a3_table4_room1 ?dd - dummy)
(pre-pcz_joint-lift-table_a4_a5_table1_room3 ?dd - dummy)
(pre-xa9_joint-move-table_a4_a5_table1_room3_room4 ?dd - dummy)
(pre-c4b_joint-drop-table_a4_a5_table1_room4 ?dd - dummy)
(dummy-right-khy_observe-table_a5_table1_room4 ?dd - dummy)
(dummy-right-ere_observe-table_a2_table5_room3 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-ere_observe-table_a2_table5_room3-T
:parameters ( ?a - agent)
:precondition 
(and (init-ere_observe-table_a2_table5_room3 dd) (immediate-dummy-ere_observe-table_a2_table5_room3 dd) (in a5 room3) (available a5) (inroom table5 room3) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_TRUE))
)
(:action act-ere_observe-table_a2_table5_room3-F
:parameters ( ?a - agent)
:precondition 
(and (init-ere_observe-table_a2_table5_room3 dd) (immediate-dummy-ere_observe-table_a2_table5_room3 dd) (in a5 room3) (available a5) (not (inroom table5 room3)) (not (Kinroom table5 room3 V_TRUE)) (not (Kinroom table5 room3 V_FALSE)))
:effect 
(and (Kinroom table5 room3 V_FALSE))
)
(:action act-dummy-ere_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-ere_observe-table_a2_table5_room3 dd) (not (dummy-left-ere_observe-table_a2_table5_room3 dd)) (not (dummy-right-ere_observe-table_a2_table5_room3 dd)))
:effect 
(and (immediate-dummy-ere_observe-table_a2_table5_room3 dd))
)
(:action dummy-left-ere_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-ere_observe-table_a2_table5_room3 dd) (in a5 room3) (available a5) (not (inroom table5 room3)) (immediate-dummy-ere_observe-table_a2_table5_room3 dd) (Kinroom table5 room3 V_FALSE))
:effect 
(and (not (init-ere_observe-table_a2_table5_room3 dd)) (not (immediate-dummy-ere_observe-table_a2_table5_room3 dd)) (dummy-left-ere_observe-table_a2_table5_room3 dd))
)
(:action dummy-right-ere_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (init-ere_observe-table_a2_table5_room3 dd) (in a5 room3) (available a5) (inroom table5 room3) (immediate-dummy-ere_observe-table_a2_table5_room3 dd) (Kinroom table5 room3 V_TRUE))
:effect 
(and (not (init-ere_observe-table_a2_table5_room3 dd)) (not (immediate-dummy-ere_observe-table_a2_table5_room3 dd)) (dummy-right-ere_observe-table_a2_table5_room3 dd))
)
(:action act-khy_observe-table_a5_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ere_observe-table_a2_table5_room3 dd) (immediate-dummy-khy_observe-table_a5_table1_room4 dd) (not (inroom table5 room3)) (in a5 room4) (available a5) (Kinroom table5 room3 V_FALSE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-khy_observe-table_a5_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ere_observe-table_a2_table5_room3 dd) (immediate-dummy-khy_observe-table_a5_table1_room4 dd) (not (inroom table5 room3)) (in a5 room4) (available a5) (Kinroom table5 room3 V_FALSE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-khy_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ere_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a5 room4) (available a5) (not (dummy-left-khy_observe-table_a5_table1_room4 dd)) (not (dummy-right-khy_observe-table_a5_table1_room4 dd)) (Kinroom table5 room3 V_FALSE))
:effect 
(and (immediate-dummy-khy_observe-table_a5_table1_room4 dd))
)
(:action dummy-left-khy_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ere_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a5 room4) (available a5) (not (inroom table1 room4)) (immediate-dummy-khy_observe-table_a5_table1_room4 dd) (Kinroom table5 room3 V_FALSE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-khy_observe-table_a5_table1_room4 dd)) (dummy-left-khy_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-khy_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ere_observe-table_a2_table5_room3 dd) (not (inroom table5 room3)) (in a5 room4) (available a5) (inroom table1 room4) (immediate-dummy-khy_observe-table_a5_table1_room4 dd) (Kinroom table5 room3 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-khy_observe-table_a5_table1_room4 dd)) (dummy-right-khy_observe-table_a5_table1_room4 dd))
)
(:action act-koz_observe-table_a1_table3_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-khy_observe-table_a5_table1_room4 dd) (immediate-dummy-koz_observe-table_a1_table3_room2 dd) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room2) (available a5) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (inroom table3 room2) (not (Kinroom table3 room2 V_TRUE)) (not (Kinroom table3 room2 V_FALSE)))
:effect 
(and (Kinroom table3 room2 V_TRUE))
)
(:action act-koz_observe-table_a1_table3_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-khy_observe-table_a5_table1_room4 dd) (immediate-dummy-koz_observe-table_a1_table3_room2 dd) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room2) (available a5) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (not (inroom table3 room2)) (not (Kinroom table3 room2 V_TRUE)) (not (Kinroom table3 room2 V_FALSE)))
:effect 
(and (Kinroom table3 room2 V_FALSE))
)
(:action act-dummy-koz_observe-table_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-khy_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room2) (available a5) (not (dummy-left-koz_observe-table_a1_table3_room2 dd)) (not (dummy-right-koz_observe-table_a1_table3_room2 dd)) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (immediate-dummy-koz_observe-table_a1_table3_room2 dd))
)
(:action dummy-left-koz_observe-table_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-khy_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room2) (available a5) (not (inroom table3 room2)) (immediate-dummy-koz_observe-table_a1_table3_room2 dd) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-koz_observe-table_a1_table3_room2 dd)) (dummy-left-koz_observe-table_a1_table3_room2 dd))
)
(:action dummy-right-koz_observe-table_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-khy_observe-table_a5_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room2) (available a5) (inroom table3 room2) (immediate-dummy-koz_observe-table_a1_table3_room2 dd) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table3 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-koz_observe-table_a1_table3_room2 dd)) (dummy-right-koz_observe-table_a1_table3_room2 dd))
)
(:action act-rof_joint-lift-table_a4_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-koz_observe-table_a1_table3_room2 dd) (not (inroom table3 room2)) (not (inroom table1 room4)) (not (inroom table5 room3)) (available a5) (in a5 room3) (Kinroom table3 room2 V_FALSE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (pre-rof_joint-lift-table_a4_a5_table1_room3 dd) (not (available a5)))
)
(:action act-css_joint-move-table_a4_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-rof_joint-lift-table_a4_a5_table1_room3 dd) (in a5 room3))
:effect 
(and (pre-css_joint-move-table_a4_a5_table1_room3_room4 dd) (not (pre-rof_joint-lift-table_a4_a5_table1_room3 dd)) (not (in a5 room3)) (in a5 room4))
)
(:action act-nt2_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-css_joint-move-table_a4_a5_table1_room3_room4 dd) (in a5 room4))
:effect 
(and (pre-nt2_joint-drop-table_a4_a5_table1_room4 dd) (not (pre-css_joint-move-table_a4_a5_table1_room3_room4 dd)) (available a5))
)
(:action goal-achieve-nt2_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-nt2_joint-drop-table_a4_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-nt2_joint-drop-table_a4_a5_table1_room4 dd)))
)
(:action act-mq6_observe-table_a3_table2_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-koz_observe-table_a1_table3_room2 dd) (immediate-dummy-mq6_observe-table_a3_table2_room1 dd) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room1) (available a5) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (inroom table2 room1) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_TRUE))
)
(:action act-mq6_observe-table_a3_table2_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-koz_observe-table_a1_table3_room2 dd) (immediate-dummy-mq6_observe-table_a3_table2_room1 dd) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room1) (available a5) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (not (inroom table2 room1)) (not (Kinroom table2 room1 V_TRUE)) (not (Kinroom table2 room1 V_FALSE)))
:effect 
(and (Kinroom table2 room1 V_FALSE))
)
(:action act-dummy-mq6_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-koz_observe-table_a1_table3_room2 dd) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room1) (available a5) (not (dummy-left-mq6_observe-table_a3_table2_room1 dd)) (not (dummy-right-mq6_observe-table_a3_table2_room1 dd)) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (immediate-dummy-mq6_observe-table_a3_table2_room1 dd))
)
(:action dummy-left-mq6_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-koz_observe-table_a1_table3_room2 dd) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room1) (available a5) (not (inroom table2 room1)) (immediate-dummy-mq6_observe-table_a3_table2_room1 dd) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table2 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-mq6_observe-table_a3_table2_room1 dd)) (dummy-left-mq6_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-mq6_observe-table_a3_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-koz_observe-table_a1_table3_room2 dd) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room1) (available a5) (inroom table2 room1) (immediate-dummy-mq6_observe-table_a3_table2_room1 dd) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table2 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-mq6_observe-table_a3_table2_room1 dd)) (dummy-right-mq6_observe-table_a3_table2_room1 dd))
)
(:action act-cxm_joint-lift-table_a4_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mq6_observe-table_a3_table2_room1 dd) (not (inroom table2 room1)) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (available a5) (in a5 room3) (Kinroom table2 room1 V_FALSE) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (pre-cxm_joint-lift-table_a4_a5_table1_room3 dd) (not (available a5)))
)
(:action act-huv_joint-move-table_a4_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-cxm_joint-lift-table_a4_a5_table1_room3 dd) (in a5 room3))
:effect 
(and (pre-huv_joint-move-table_a4_a5_table1_room3_room4 dd) (not (pre-cxm_joint-lift-table_a4_a5_table1_room3 dd)) (not (in a5 room3)) (in a5 room4))
)
(:action act-gvq_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-huv_joint-move-table_a4_a5_table1_room3_room4 dd) (in a5 room4))
:effect 
(and (pre-gvq_joint-drop-table_a4_a5_table1_room4 dd) (not (pre-huv_joint-move-table_a4_a5_table1_room3_room4 dd)) (available a5))
)
(:action goal-achieve-gvq_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-gvq_joint-drop-table_a4_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-gvq_joint-drop-table_a4_a5_table1_room4 dd)))
)
(:action act-wc7_observe-table_a3_table4_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mq6_observe-table_a3_table2_room1 dd) (immediate-dummy-wc7_observe-table_a3_table4_room1 dd) (inroom table2 room1) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room1) (available a5) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (inroom table4 room1) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_TRUE))
)
(:action act-wc7_observe-table_a3_table4_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mq6_observe-table_a3_table2_room1 dd) (immediate-dummy-wc7_observe-table_a3_table4_room1 dd) (inroom table2 room1) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room1) (available a5) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (not (inroom table4 room1)) (not (Kinroom table4 room1 V_TRUE)) (not (Kinroom table4 room1 V_FALSE)))
:effect 
(and (Kinroom table4 room1 V_FALSE))
)
(:action act-dummy-wc7_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mq6_observe-table_a3_table2_room1 dd) (inroom table2 room1) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room1) (available a5) (not (dummy-left-wc7_observe-table_a3_table4_room1 dd)) (not (dummy-right-wc7_observe-table_a3_table4_room1 dd)) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (immediate-dummy-wc7_observe-table_a3_table4_room1 dd))
)
(:action dummy-left-wc7_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mq6_observe-table_a3_table2_room1 dd) (inroom table2 room1) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room1) (available a5) (not (inroom table4 room1)) (immediate-dummy-wc7_observe-table_a3_table4_room1 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table4 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-wc7_observe-table_a3_table4_room1 dd)) (dummy-left-wc7_observe-table_a3_table4_room1 dd))
)
(:action dummy-right-wc7_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mq6_observe-table_a3_table2_room1 dd) (inroom table2 room1) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (in a5 room1) (available a5) (inroom table4 room1) (immediate-dummy-wc7_observe-table_a3_table4_room1 dd) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE) (Kinroom table4 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-wc7_observe-table_a3_table4_room1 dd)) (dummy-right-wc7_observe-table_a3_table4_room1 dd))
)
(:action goal-achieve-left-wc7_observe-table_a3_table4_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wc7_observe-table_a3_table4_room1 dd) (not (inroom table4 room1)) (inroom table2 room1) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (Kinroom table4 room1 V_FALSE) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-wc7_observe-table_a3_table4_room1 dd)))
)
(:action act-pcz_joint-lift-table_a4_a5_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wc7_observe-table_a3_table4_room1 dd) (inroom table4 room1) (inroom table2 room1) (inroom table3 room2) (not (inroom table1 room4)) (not (inroom table5 room3)) (available a5) (in a5 room3) (Kinroom table4 room1 V_TRUE) (Kinroom table2 room1 V_TRUE) (Kinroom table3 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (pre-pcz_joint-lift-table_a4_a5_table1_room3 dd) (not (available a5)))
)
(:action act-xa9_joint-move-table_a4_a5_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-pcz_joint-lift-table_a4_a5_table1_room3 dd) (in a5 room3))
:effect 
(and (pre-xa9_joint-move-table_a4_a5_table1_room3_room4 dd) (not (pre-pcz_joint-lift-table_a4_a5_table1_room3 dd)) (not (in a5 room3)) (in a5 room4))
)
(:action act-c4b_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-xa9_joint-move-table_a4_a5_table1_room3_room4 dd) (in a5 room4))
:effect 
(and (pre-c4b_joint-drop-table_a4_a5_table1_room4 dd) (not (pre-xa9_joint-move-table_a4_a5_table1_room3_room4 dd)) (available a5))
)
(:action goal-achieve-c4b_joint-drop-table_a4_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-c4b_joint-drop-table_a4_a5_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-c4b_joint-drop-table_a4_a5_table1_room4 dd)))
)
(:action goal-achieve-right-khy_observe-table_a5_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-khy_observe-table_a5_table1_room4 dd) (inroom table1 room4) (not (inroom table5 room3)) (Kinroom table1 room4 V_TRUE) (Kinroom table5 room3 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-khy_observe-table_a5_table1_room4 dd)))
)
(:action goal-achieve-right-ere_observe-table_a2_table5_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ere_observe-table_a2_table5_room3 dd) (inroom table5 room3) (Kinroom table5 room3 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-ere_observe-table_a2_table5_room3 dd)))
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
