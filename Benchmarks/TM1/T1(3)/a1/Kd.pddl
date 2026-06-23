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
(lifting ?a - agent ?t - table)
(inroom ?t - table ?r - room)
(Kinroom ?t - table ?r - room ?V_PARAM - VALUE_TYPE)
(KGiveninroom ?t - table ?r - room ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(in ?a - agent ?r - room)
(connected ?r1 - room ?r2 - room)
(available ?a - agent)
(can-observe ?a - agent ?t - table)
(init-in1_observe-table_a3_table1_room4 ?dd - dummy)
(immediate-dummy-in1_observe-table_a3_table1_room4 ?dd - dummy)
(dummy-left-in1_observe-table_a3_table1_room4 ?dd - dummy)
(immediate-dummy-h7x_observe-table_a2_table2_room2 ?dd - dummy)
(dummy-left-h7x_observe-table_a2_table2_room2 ?dd - dummy)
(pre-15i_joint-lift-table_a3_a1_table1_room3 ?dd - dummy)
(pre-x7j_joint-move-table_a3_a1_table1_room3_room4 ?dd - dummy)
(pre-wms_joint-drop-table_a3_a1_table1_room4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-h7x_observe-table_a2_table2_room2 ?dd - dummy)
(immediate-dummy-bxp_observe-table_a2_table3_room1 ?dd - dummy)
(dummy-left-bxp_observe-table_a2_table3_room1 ?dd - dummy)
(pre-yii_joint-lift-table_a3_a1_table1_room3 ?dd - dummy)
(pre-j46_joint-move-table_a3_a1_table1_room3_room4 ?dd - dummy)
(pre-0ig_joint-drop-table_a3_a1_table1_room4 ?dd - dummy)
(pre-g1f_joint-lift-table_a2_a1_table2_room2 ?dd - dummy)
(pre-mq2_joint-move-table_a2_a1_table2_room2_room1 ?dd - dummy)
(pre-6sh_joint-drop-table_a2_a1_table2_room1 ?dd - dummy)
(dummy-right-bxp_observe-table_a2_table3_room1 ?dd - dummy)
(pre-32r_joint-lift-table_a3_a1_table1_room3 ?dd - dummy)
(pre-fwo_joint-move-table_a3_a1_table1_room3_room4 ?dd - dummy)
(pre-b00_joint-drop-table_a3_a1_table1_room4 ?dd - dummy)
(pre-xg1_joint-lift-table_a2_a1_table3_room1 ?dd - dummy)
(pre-rhs_joint-move-table_a2_a1_table3_room1_room2 ?dd - dummy)
(pre-w1n_joint-drop-table_a2_a1_table3_room2 ?dd - dummy)
(pre-x9t_joint-lift-table_a2_a1_table2_room2 ?dd - dummy)
(pre-4rz_joint-move-table_a2_a1_table2_room2_room1 ?dd - dummy)
(pre-que_joint-drop-table_a2_a1_table2_room1 ?dd - dummy)
(dummy-right-in1_observe-table_a3_table1_room4 ?dd - dummy)
(immediate-dummy-dkr_observe-table_a2_table2_room2 ?dd - dummy)
(dummy-left-dkr_observe-table_a2_table2_room2 ?dd - dummy)
(immediate-dummy-rz3_observe-table_a2_table3_room2 ?dd - dummy)
(dummy-left-rz3_observe-table_a2_table3_room2 ?dd - dummy)
(pre-lh5_joint-lift-table_a2_a1_table3_room1 ?dd - dummy)
(pre-7tw_joint-move-table_a2_a1_table3_room1_room2 ?dd - dummy)
(pre-3he_joint-drop-table_a2_a1_table3_room2 ?dd - dummy)
(dummy-right-rz3_observe-table_a2_table3_room2 ?dd - dummy)
(dummy-right-dkr_observe-table_a2_table2_room2 ?dd - dummy)
(immediate-dummy-gcc_observe-table_a2_table3_room2 ?dd - dummy)
(dummy-left-gcc_observe-table_a2_table3_room2 ?dd - dummy)
(pre-pzt_joint-lift-table_a2_a1_table2_room2 ?dd - dummy)
(pre-x0y_joint-move-table_a2_a1_table2_room2_room1 ?dd - dummy)
(pre-oit_joint-drop-table_a2_a1_table2_room1 ?dd - dummy)
(pre-x8l_joint-lift-table_a2_a1_table3_room1 ?dd - dummy)
(pre-2yb_joint-move-table_a2_a1_table3_room1_room2 ?dd - dummy)
(pre-k8p_joint-drop-table_a2_a1_table3_room2 ?dd - dummy)
(dummy-right-gcc_observe-table_a2_table3_room2 ?dd - dummy)
(pre-igq_joint-lift-table_a2_a1_table2_room2 ?dd - dummy)
(pre-7g9_joint-move-table_a2_a1_table2_room2_room1 ?dd - dummy)
(pre-wyi_joint-drop-table_a2_a1_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-in1_observe-table_a3_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (init-in1_observe-table_a3_table1_room4 dd) (immediate-dummy-in1_observe-table_a3_table1_room4 dd) (in a1 room4) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-in1_observe-table_a3_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (init-in1_observe-table_a3_table1_room4 dd) (immediate-dummy-in1_observe-table_a3_table1_room4 dd) (in a1 room4) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-in1_observe-table_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (init-in1_observe-table_a3_table1_room4 dd) (not (dummy-left-in1_observe-table_a3_table1_room4 dd)) (not (dummy-right-in1_observe-table_a3_table1_room4 dd)))
:effect 
(and (immediate-dummy-in1_observe-table_a3_table1_room4 dd))
)
(:action dummy-left-in1_observe-table_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (init-in1_observe-table_a3_table1_room4 dd) (in a1 room4) (not (inroom table1 room4)) (immediate-dummy-in1_observe-table_a3_table1_room4 dd) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (init-in1_observe-table_a3_table1_room4 dd)) (not (immediate-dummy-in1_observe-table_a3_table1_room4 dd)) (dummy-left-in1_observe-table_a3_table1_room4 dd))
)
(:action dummy-right-in1_observe-table_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (init-in1_observe-table_a3_table1_room4 dd) (in a1 room4) (inroom table1 room4) (immediate-dummy-in1_observe-table_a3_table1_room4 dd) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (init-in1_observe-table_a3_table1_room4 dd)) (not (immediate-dummy-in1_observe-table_a3_table1_room4 dd)) (dummy-right-in1_observe-table_a3_table1_room4 dd))
)
(:action act-h7x_observe-table_a2_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-in1_observe-table_a3_table1_room4 dd) (immediate-dummy-h7x_observe-table_a2_table2_room2 dd) (not (inroom table1 room4)) (in a1 room2) (Kinroom table1 room4 V_FALSE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-h7x_observe-table_a2_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-in1_observe-table_a3_table1_room4 dd) (immediate-dummy-h7x_observe-table_a2_table2_room2 dd) (not (inroom table1 room4)) (in a1 room2) (Kinroom table1 room4 V_FALSE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-h7x_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-in1_observe-table_a3_table1_room4 dd) (not (inroom table1 room4)) (in a1 room2) (not (dummy-left-h7x_observe-table_a2_table2_room2 dd)) (not (dummy-right-h7x_observe-table_a2_table2_room2 dd)) (Kinroom table1 room4 V_FALSE))
:effect 
(and (immediate-dummy-h7x_observe-table_a2_table2_room2 dd))
)
(:action dummy-left-h7x_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-in1_observe-table_a3_table1_room4 dd) (not (inroom table1 room4)) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-h7x_observe-table_a2_table2_room2 dd) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-h7x_observe-table_a2_table2_room2 dd)) (dummy-left-h7x_observe-table_a2_table2_room2 dd))
)
(:action dummy-right-h7x_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-in1_observe-table_a3_table1_room4 dd) (not (inroom table1 room4)) (in a1 room2) (inroom table2 room2) (immediate-dummy-h7x_observe-table_a2_table2_room2 dd) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-h7x_observe-table_a2_table2_room2 dd)) (dummy-right-h7x_observe-table_a2_table2_room2 dd))
)
(:action act-15i_joint-lift-table_a3_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-h7x_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (not (inroom table1 room4)) (available a1) (in a1 room3) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (pre-15i_joint-lift-table_a3_a1_table1_room3 dd) (not (available a1)))
)
(:action act-x7j_joint-move-table_a3_a1_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-15i_joint-lift-table_a3_a1_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-x7j_joint-move-table_a3_a1_table1_room3_room4 dd) (not (pre-15i_joint-lift-table_a3_a1_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-wms_joint-drop-table_a3_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-x7j_joint-move-table_a3_a1_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-wms_joint-drop-table_a3_a1_table1_room4 dd) (not (pre-x7j_joint-move-table_a3_a1_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-wms_joint-drop-table_a3_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-wms_joint-drop-table_a3_a1_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-wms_joint-drop-table_a3_a1_table1_room4 dd)))
)
(:action act-bxp_observe-table_a2_table3_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h7x_observe-table_a2_table2_room2 dd) (immediate-dummy-bxp_observe-table_a2_table3_room1 dd) (inroom table2 room2) (not (inroom table1 room4)) (in a1 room1) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (inroom table3 room1) (not (Kinroom table3 room1 V_TRUE)) (not (Kinroom table3 room1 V_FALSE)))
:effect 
(and (Kinroom table3 room1 V_TRUE))
)
(:action act-bxp_observe-table_a2_table3_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h7x_observe-table_a2_table2_room2 dd) (immediate-dummy-bxp_observe-table_a2_table3_room1 dd) (inroom table2 room2) (not (inroom table1 room4)) (in a1 room1) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (not (inroom table3 room1)) (not (Kinroom table3 room1 V_TRUE)) (not (Kinroom table3 room1 V_FALSE)))
:effect 
(and (Kinroom table3 room1 V_FALSE))
)
(:action act-dummy-bxp_observe-table_a2_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h7x_observe-table_a2_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room4)) (in a1 room1) (not (dummy-left-bxp_observe-table_a2_table3_room1 dd)) (not (dummy-right-bxp_observe-table_a2_table3_room1 dd)) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (immediate-dummy-bxp_observe-table_a2_table3_room1 dd))
)
(:action dummy-left-bxp_observe-table_a2_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h7x_observe-table_a2_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room4)) (in a1 room1) (not (inroom table3 room1)) (immediate-dummy-bxp_observe-table_a2_table3_room1 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table3 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-bxp_observe-table_a2_table3_room1 dd)) (dummy-left-bxp_observe-table_a2_table3_room1 dd))
)
(:action dummy-right-bxp_observe-table_a2_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h7x_observe-table_a2_table2_room2 dd) (inroom table2 room2) (not (inroom table1 room4)) (in a1 room1) (inroom table3 room1) (immediate-dummy-bxp_observe-table_a2_table3_room1 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table3 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-bxp_observe-table_a2_table3_room1 dd)) (dummy-right-bxp_observe-table_a2_table3_room1 dd))
)
(:action act-yii_joint-lift-table_a3_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bxp_observe-table_a2_table3_room1 dd) (not (inroom table3 room1)) (inroom table2 room2) (not (inroom table1 room4)) (available a1) (in a1 room3) (Kinroom table3 room1 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (pre-yii_joint-lift-table_a3_a1_table1_room3 dd) (not (available a1)))
)
(:action act-j46_joint-move-table_a3_a1_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-yii_joint-lift-table_a3_a1_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-j46_joint-move-table_a3_a1_table1_room3_room4 dd) (not (pre-yii_joint-lift-table_a3_a1_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-0ig_joint-drop-table_a3_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-j46_joint-move-table_a3_a1_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-0ig_joint-drop-table_a3_a1_table1_room4 dd) (not (pre-j46_joint-move-table_a3_a1_table1_room3_room4 dd)) (available a1))
)
(:action act-g1f_joint-lift-table_a2_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-0ig_joint-drop-table_a3_a1_table1_room4 dd) (available a1) (in a1 room2))
:effect 
(and (pre-g1f_joint-lift-table_a2_a1_table2_room2 dd) (not (pre-0ig_joint-drop-table_a3_a1_table1_room4 dd)) (not (available a1)))
)
(:action act-mq2_joint-move-table_a2_a1_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-g1f_joint-lift-table_a2_a1_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-mq2_joint-move-table_a2_a1_table2_room2_room1 dd) (not (pre-g1f_joint-lift-table_a2_a1_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-6sh_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-mq2_joint-move-table_a2_a1_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-6sh_joint-drop-table_a2_a1_table2_room1 dd) (not (pre-mq2_joint-move-table_a2_a1_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-6sh_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-6sh_joint-drop-table_a2_a1_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-6sh_joint-drop-table_a2_a1_table2_room1 dd)))
)
(:action act-32r_joint-lift-table_a3_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bxp_observe-table_a2_table3_room1 dd) (inroom table3 room1) (inroom table2 room2) (not (inroom table1 room4)) (available a1) (in a1 room3) (Kinroom table3 room1 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (pre-32r_joint-lift-table_a3_a1_table1_room3 dd) (not (available a1)))
)
(:action act-fwo_joint-move-table_a3_a1_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-32r_joint-lift-table_a3_a1_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-fwo_joint-move-table_a3_a1_table1_room3_room4 dd) (not (pre-32r_joint-lift-table_a3_a1_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-b00_joint-drop-table_a3_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-fwo_joint-move-table_a3_a1_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-b00_joint-drop-table_a3_a1_table1_room4 dd) (not (pre-fwo_joint-move-table_a3_a1_table1_room3_room4 dd)) (available a1))
)
(:action act-xg1_joint-lift-table_a2_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-b00_joint-drop-table_a3_a1_table1_room4 dd) (available a1) (in a1 room1))
:effect 
(and (pre-xg1_joint-lift-table_a2_a1_table3_room1 dd) (not (pre-b00_joint-drop-table_a3_a1_table1_room4 dd)) (not (available a1)))
)
(:action act-rhs_joint-move-table_a2_a1_table3_room1_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-xg1_joint-lift-table_a2_a1_table3_room1 dd) (in a1 room1))
:effect 
(and (pre-rhs_joint-move-table_a2_a1_table3_room1_room2 dd) (not (pre-xg1_joint-lift-table_a2_a1_table3_room1 dd)) (not (in a1 room1)) (in a1 room2))
)
(:action act-w1n_joint-drop-table_a2_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-rhs_joint-move-table_a2_a1_table3_room1_room2 dd) (in a1 room2))
:effect 
(and (pre-w1n_joint-drop-table_a2_a1_table3_room2 dd) (not (pre-rhs_joint-move-table_a2_a1_table3_room1_room2 dd)) (available a1))
)
(:action act-x9t_joint-lift-table_a2_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-w1n_joint-drop-table_a2_a1_table3_room2 dd) (available a1) (in a1 room2))
:effect 
(and (pre-x9t_joint-lift-table_a2_a1_table2_room2 dd) (not (pre-w1n_joint-drop-table_a2_a1_table3_room2 dd)) (not (available a1)))
)
(:action act-4rz_joint-move-table_a2_a1_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-x9t_joint-lift-table_a2_a1_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-4rz_joint-move-table_a2_a1_table2_room2_room1 dd) (not (pre-x9t_joint-lift-table_a2_a1_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-que_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-4rz_joint-move-table_a2_a1_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-que_joint-drop-table_a2_a1_table2_room1 dd) (not (pre-4rz_joint-move-table_a2_a1_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-que_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-que_joint-drop-table_a2_a1_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-que_joint-drop-table_a2_a1_table2_room1 dd)))
)
(:action act-dkr_observe-table_a2_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-in1_observe-table_a3_table1_room4 dd) (immediate-dummy-dkr_observe-table_a2_table2_room2 dd) (inroom table1 room4) (in a1 room2) (Kinroom table1 room4 V_TRUE) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-dkr_observe-table_a2_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-in1_observe-table_a3_table1_room4 dd) (immediate-dummy-dkr_observe-table_a2_table2_room2 dd) (inroom table1 room4) (in a1 room2) (Kinroom table1 room4 V_TRUE) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-dkr_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-in1_observe-table_a3_table1_room4 dd) (inroom table1 room4) (in a1 room2) (not (dummy-left-dkr_observe-table_a2_table2_room2 dd)) (not (dummy-right-dkr_observe-table_a2_table2_room2 dd)) (Kinroom table1 room4 V_TRUE))
:effect 
(and (immediate-dummy-dkr_observe-table_a2_table2_room2 dd))
)
(:action dummy-left-dkr_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-in1_observe-table_a3_table1_room4 dd) (inroom table1 room4) (in a1 room2) (not (inroom table2 room2)) (immediate-dummy-dkr_observe-table_a2_table2_room2 dd) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-dkr_observe-table_a2_table2_room2 dd)) (dummy-left-dkr_observe-table_a2_table2_room2 dd))
)
(:action dummy-right-dkr_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-in1_observe-table_a3_table1_room4 dd) (inroom table1 room4) (in a1 room2) (inroom table2 room2) (immediate-dummy-dkr_observe-table_a2_table2_room2 dd) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-dkr_observe-table_a2_table2_room2 dd)) (dummy-right-dkr_observe-table_a2_table2_room2 dd))
)
(:action act-rz3_observe-table_a2_table3_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dkr_observe-table_a2_table2_room2 dd) (immediate-dummy-rz3_observe-table_a2_table3_room2 dd) (not (inroom table2 room2)) (inroom table1 room4) (in a1 room2) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room4 V_TRUE) (inroom table3 room2) (not (Kinroom table3 room2 V_TRUE)) (not (Kinroom table3 room2 V_FALSE)))
:effect 
(and (Kinroom table3 room2 V_TRUE))
)
(:action act-rz3_observe-table_a2_table3_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dkr_observe-table_a2_table2_room2 dd) (immediate-dummy-rz3_observe-table_a2_table3_room2 dd) (not (inroom table2 room2)) (inroom table1 room4) (in a1 room2) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room4 V_TRUE) (not (inroom table3 room2)) (not (Kinroom table3 room2 V_TRUE)) (not (Kinroom table3 room2 V_FALSE)))
:effect 
(and (Kinroom table3 room2 V_FALSE))
)
(:action act-dummy-rz3_observe-table_a2_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dkr_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room4) (in a1 room2) (not (dummy-left-rz3_observe-table_a2_table3_room2 dd)) (not (dummy-right-rz3_observe-table_a2_table3_room2 dd)) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (immediate-dummy-rz3_observe-table_a2_table3_room2 dd))
)
(:action dummy-left-rz3_observe-table_a2_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dkr_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room4) (in a1 room2) (not (inroom table3 room2)) (immediate-dummy-rz3_observe-table_a2_table3_room2 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-rz3_observe-table_a2_table3_room2 dd)) (dummy-left-rz3_observe-table_a2_table3_room2 dd))
)
(:action dummy-right-rz3_observe-table_a2_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dkr_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (inroom table1 room4) (in a1 room2) (inroom table3 room2) (immediate-dummy-rz3_observe-table_a2_table3_room2 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-rz3_observe-table_a2_table3_room2 dd)) (dummy-right-rz3_observe-table_a2_table3_room2 dd))
)
(:action act-lh5_joint-lift-table_a2_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rz3_observe-table_a2_table3_room2 dd) (not (inroom table3 room2)) (not (inroom table2 room2)) (inroom table1 room4) (available a1) (in a1 room1) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (pre-lh5_joint-lift-table_a2_a1_table3_room1 dd) (not (available a1)))
)
(:action act-7tw_joint-move-table_a2_a1_table3_room1_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-lh5_joint-lift-table_a2_a1_table3_room1 dd) (in a1 room1))
:effect 
(and (pre-7tw_joint-move-table_a2_a1_table3_room1_room2 dd) (not (pre-lh5_joint-lift-table_a2_a1_table3_room1 dd)) (not (in a1 room1)) (in a1 room2))
)
(:action act-3he_joint-drop-table_a2_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-7tw_joint-move-table_a2_a1_table3_room1_room2 dd) (in a1 room2))
:effect 
(and (pre-3he_joint-drop-table_a2_a1_table3_room2 dd) (not (pre-7tw_joint-move-table_a2_a1_table3_room1_room2 dd)) (available a1))
)
(:action goal-achieve-3he_joint-drop-table_a2_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-3he_joint-drop-table_a2_a1_table3_room2 dd))
:effect 
(and (done-goal dd) (not (pre-3he_joint-drop-table_a2_a1_table3_room2 dd)))
)
(:action goal-achieve-right-rz3_observe-table_a2_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-rz3_observe-table_a2_table3_room2 dd) (inroom table3 room2) (not (inroom table2 room2)) (inroom table1 room4) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-rz3_observe-table_a2_table3_room2 dd)))
)
(:action act-gcc_observe-table_a2_table3_room2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dkr_observe-table_a2_table2_room2 dd) (immediate-dummy-gcc_observe-table_a2_table3_room2 dd) (inroom table2 room2) (inroom table1 room4) (in a1 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_TRUE) (inroom table3 room2) (not (Kinroom table3 room2 V_TRUE)) (not (Kinroom table3 room2 V_FALSE)))
:effect 
(and (Kinroom table3 room2 V_TRUE))
)
(:action act-gcc_observe-table_a2_table3_room2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dkr_observe-table_a2_table2_room2 dd) (immediate-dummy-gcc_observe-table_a2_table3_room2 dd) (inroom table2 room2) (inroom table1 room4) (in a1 room2) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_TRUE) (not (inroom table3 room2)) (not (Kinroom table3 room2 V_TRUE)) (not (Kinroom table3 room2 V_FALSE)))
:effect 
(and (Kinroom table3 room2 V_FALSE))
)
(:action act-dummy-gcc_observe-table_a2_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dkr_observe-table_a2_table2_room2 dd) (inroom table2 room2) (inroom table1 room4) (in a1 room2) (not (dummy-left-gcc_observe-table_a2_table3_room2 dd)) (not (dummy-right-gcc_observe-table_a2_table3_room2 dd)) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (immediate-dummy-gcc_observe-table_a2_table3_room2 dd))
)
(:action dummy-left-gcc_observe-table_a2_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dkr_observe-table_a2_table2_room2 dd) (inroom table2 room2) (inroom table1 room4) (in a1 room2) (not (inroom table3 room2)) (immediate-dummy-gcc_observe-table_a2_table3_room2 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room2 V_FALSE))
:effect 
(and (not (immediate-dummy-gcc_observe-table_a2_table3_room2 dd)) (dummy-left-gcc_observe-table_a2_table3_room2 dd))
)
(:action dummy-right-gcc_observe-table_a2_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dkr_observe-table_a2_table2_room2 dd) (inroom table2 room2) (inroom table1 room4) (in a1 room2) (inroom table3 room2) (immediate-dummy-gcc_observe-table_a2_table3_room2 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room2 V_TRUE))
:effect 
(and (not (immediate-dummy-gcc_observe-table_a2_table3_room2 dd)) (dummy-right-gcc_observe-table_a2_table3_room2 dd))
)
(:action act-pzt_joint-lift-table_a2_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gcc_observe-table_a2_table3_room2 dd) (not (inroom table3 room2)) (inroom table2 room2) (inroom table1 room4) (available a1) (in a1 room2) (Kinroom table3 room2 V_FALSE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (pre-pzt_joint-lift-table_a2_a1_table2_room2 dd) (not (available a1)))
)
(:action act-x0y_joint-move-table_a2_a1_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-pzt_joint-lift-table_a2_a1_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-x0y_joint-move-table_a2_a1_table2_room2_room1 dd) (not (pre-pzt_joint-lift-table_a2_a1_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-oit_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-x0y_joint-move-table_a2_a1_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-oit_joint-drop-table_a2_a1_table2_room1 dd) (not (pre-x0y_joint-move-table_a2_a1_table2_room2_room1 dd)) (available a1))
)
(:action act-x8l_joint-lift-table_a2_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-oit_joint-drop-table_a2_a1_table2_room1 dd) (available a1) (in a1 room1))
:effect 
(and (pre-x8l_joint-lift-table_a2_a1_table3_room1 dd) (not (pre-oit_joint-drop-table_a2_a1_table2_room1 dd)) (not (available a1)))
)
(:action act-2yb_joint-move-table_a2_a1_table3_room1_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-x8l_joint-lift-table_a2_a1_table3_room1 dd) (in a1 room1))
:effect 
(and (pre-2yb_joint-move-table_a2_a1_table3_room1_room2 dd) (not (pre-x8l_joint-lift-table_a2_a1_table3_room1 dd)) (not (in a1 room1)) (in a1 room2))
)
(:action act-k8p_joint-drop-table_a2_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-2yb_joint-move-table_a2_a1_table3_room1_room2 dd) (in a1 room2))
:effect 
(and (pre-k8p_joint-drop-table_a2_a1_table3_room2 dd) (not (pre-2yb_joint-move-table_a2_a1_table3_room1_room2 dd)) (available a1))
)
(:action goal-achieve-k8p_joint-drop-table_a2_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-k8p_joint-drop-table_a2_a1_table3_room2 dd))
:effect 
(and (done-goal dd) (not (pre-k8p_joint-drop-table_a2_a1_table3_room2 dd)))
)
(:action act-igq_joint-lift-table_a2_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gcc_observe-table_a2_table3_room2 dd) (inroom table3 room2) (inroom table2 room2) (inroom table1 room4) (available a1) (in a1 room2) (Kinroom table3 room2 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (pre-igq_joint-lift-table_a2_a1_table2_room2 dd) (not (available a1)))
)
(:action act-7g9_joint-move-table_a2_a1_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-igq_joint-lift-table_a2_a1_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-7g9_joint-move-table_a2_a1_table2_room2_room1 dd) (not (pre-igq_joint-lift-table_a2_a1_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-wyi_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-7g9_joint-move-table_a2_a1_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-wyi_joint-drop-table_a2_a1_table2_room1 dd) (not (pre-7g9_joint-move-table_a2_a1_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-wyi_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-wyi_joint-drop-table_a2_a1_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-wyi_joint-drop-table_a2_a1_table2_room1 dd)))
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
