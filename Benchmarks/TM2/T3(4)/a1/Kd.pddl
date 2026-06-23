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
 tag0 - TAG_TYPE ; (inroom table1 room4)
 tag1 - TAG_TYPE ; (inroom table1 room3)
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
(init-fec_observe-table_a2_table2_room2 ?dd - dummy)
(immediate-dummy-fec_observe-table_a2_table2_room2 ?dd - dummy)
(dummy-left-fec_observe-table_a2_table2_room2 ?dd - dummy)
(immediate-dummy-j1f_observe-table_a3_table1_room4 ?dd - dummy)
(dummy-left-j1f_observe-table_a3_table1_room4 ?dd - dummy)
(immediate-dummy-5kp_observe-table_a1_table3_room1 ?dd - dummy)
(dummy-left-5kp_observe-table_a1_table3_room1 ?dd - dummy)
(pre-10t_joint-lift-table_a3_a1_table1_room3 ?dd - dummy)
(pre-ur5_joint-move-table_a3_a1_table1_room3_room4 ?dd - dummy)
(pre-1yw_joint-drop-table_a3_a1_table1_room4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-5kp_observe-table_a1_table3_room1 ?dd - dummy)
(pre-bb6_joint-lift-table_a2_a1_table3_room1 ?dd - dummy)
(pre-9iz_joint-move-table_a2_a1_table3_room1_room2 ?dd - dummy)
(pre-9sl_joint-drop-table_a2_a1_table3_room2 ?dd - dummy)
(pre-hgj_joint-lift-table_a3_a1_table1_room3 ?dd - dummy)
(pre-499_joint-move-table_a3_a1_table1_room3_room4 ?dd - dummy)
(pre-57k_joint-drop-table_a3_a1_table1_room4 ?dd - dummy)
(dummy-right-j1f_observe-table_a3_table1_room4 ?dd - dummy)
(immediate-dummy-xhd_observe-table_a1_table3_room1 ?dd - dummy)
(dummy-left-xhd_observe-table_a1_table3_room1 ?dd - dummy)
(dummy-right-xhd_observe-table_a1_table3_room1 ?dd - dummy)
(pre-0xz_joint-lift-table_a2_a1_table3_room1 ?dd - dummy)
(pre-m31_joint-move-table_a2_a1_table3_room1_room2 ?dd - dummy)
(pre-kjl_joint-drop-table_a2_a1_table3_room2 ?dd - dummy)
(dummy-right-fec_observe-table_a2_table2_room2 ?dd - dummy)
(immediate-dummy-qer_observe-table_a1_table3_room1 ?dd - dummy)
(dummy-left-qer_observe-table_a1_table3_room1 ?dd - dummy)
(pre-ba1_joint-lift-table_a2_a1_table2_room2 ?dd - dummy)
(pre-ff5_joint-move-table_a2_a1_table2_room2_room1 ?dd - dummy)
(pre-mji_joint-drop-table_a2_a1_table2_room1 ?dd - dummy)
(dummy-right-qer_observe-table_a1_table3_room1 ?dd - dummy)
(immediate-dummy-4xd_observe-table_a3_table1_room4 ?dd - dummy)
(dummy-left-4xd_observe-table_a3_table1_room4 ?dd - dummy)
(pre-g70_joint-lift-table_a2_a1_table3_room1 ?dd - dummy)
(pre-tyu_joint-move-table_a2_a1_table3_room1_room2 ?dd - dummy)
(pre-ueq_joint-drop-table_a2_a1_table3_room2 ?dd - dummy)
(pre-sko_joint-lift-table_a2_a1_table2_room2 ?dd - dummy)
(pre-hxp_joint-move-table_a2_a1_table2_room2_room1 ?dd - dummy)
(pre-8zj_joint-drop-table_a2_a1_table2_room1 ?dd - dummy)
(pre-a1c_joint-lift-table_a3_a1_table1_room3 ?dd - dummy)
(pre-229_joint-move-table_a3_a1_table1_room3_room4 ?dd - dummy)
(pre-h02_joint-drop-table_a3_a1_table1_room4 ?dd - dummy)
(dummy-right-4xd_observe-table_a3_table1_room4 ?dd - dummy)
(pre-ok8_joint-lift-table_a2_a1_table3_room1 ?dd - dummy)
(pre-569_joint-move-table_a2_a1_table3_room1_room2 ?dd - dummy)
(pre-vg5_joint-drop-table_a2_a1_table3_room2 ?dd - dummy)
(pre-a0u_joint-lift-table_a2_a1_table2_room2 ?dd - dummy)
(pre-15a_joint-move-table_a2_a1_table2_room2_room1 ?dd - dummy)
(pre-asz_joint-drop-table_a2_a1_table2_room1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move-agent
:parameters ( ?a - agent ?r1 - room ?r2 - room)
:precondition 
(and (in ?a ?r1) (connected ?r1 ?r2) (available ?a))
:effect 
(and (not (in ?a ?r1)) (in ?a ?r2))
)
(:action act-fec_observe-table_a2_table2_room2-T
:parameters ( ?a - agent)
:precondition 
(and (init-fec_observe-table_a2_table2_room2 dd) (immediate-dummy-fec_observe-table_a2_table2_room2 dd) (in a1 room2) (available a1) (inroom table2 room2) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_TRUE))
)
(:action act-fec_observe-table_a2_table2_room2-F
:parameters ( ?a - agent)
:precondition 
(and (init-fec_observe-table_a2_table2_room2 dd) (immediate-dummy-fec_observe-table_a2_table2_room2 dd) (in a1 room2) (available a1) (not (inroom table2 room2)) (not (Kinroom table2 room2 V_TRUE)) (not (Kinroom table2 room2 V_FALSE)))
:effect 
(and (Kinroom table2 room2 V_FALSE))
)
(:action act-dummy-fec_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-fec_observe-table_a2_table2_room2 dd) (not (dummy-left-fec_observe-table_a2_table2_room2 dd)) (not (dummy-right-fec_observe-table_a2_table2_room2 dd)))
:effect 
(and (immediate-dummy-fec_observe-table_a2_table2_room2 dd))
)
(:action dummy-left-fec_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-fec_observe-table_a2_table2_room2 dd) (in a1 room2) (available a1) (not (inroom table2 room2)) (immediate-dummy-fec_observe-table_a2_table2_room2 dd) (Kinroom table2 room2 V_FALSE))
:effect 
(and (not (init-fec_observe-table_a2_table2_room2 dd)) (not (immediate-dummy-fec_observe-table_a2_table2_room2 dd)) (dummy-left-fec_observe-table_a2_table2_room2 dd))
)
(:action dummy-right-fec_observe-table_a2_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (init-fec_observe-table_a2_table2_room2 dd) (in a1 room2) (available a1) (inroom table2 room2) (immediate-dummy-fec_observe-table_a2_table2_room2 dd) (Kinroom table2 room2 V_TRUE))
:effect 
(and (not (init-fec_observe-table_a2_table2_room2 dd)) (not (immediate-dummy-fec_observe-table_a2_table2_room2 dd)) (dummy-right-fec_observe-table_a2_table2_room2 dd))
)
(:action act-j1f_observe-table_a3_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fec_observe-table_a2_table2_room2 dd) (immediate-dummy-j1f_observe-table_a3_table1_room4 dd) (not (inroom table2 room2)) (in a1 room4) (available a1) (Kinroom table2 room2 V_FALSE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-j1f_observe-table_a3_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fec_observe-table_a2_table2_room2 dd) (immediate-dummy-j1f_observe-table_a3_table1_room4 dd) (not (inroom table2 room2)) (in a1 room4) (available a1) (Kinroom table2 room2 V_FALSE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-j1f_observe-table_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fec_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (in a1 room4) (available a1) (not (dummy-left-j1f_observe-table_a3_table1_room4 dd)) (not (dummy-right-j1f_observe-table_a3_table1_room4 dd)) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-j1f_observe-table_a3_table1_room4 dd))
)
(:action dummy-left-j1f_observe-table_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fec_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (in a1 room4) (available a1) (not (inroom table1 room4)) (immediate-dummy-j1f_observe-table_a3_table1_room4 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-j1f_observe-table_a3_table1_room4 dd)) (dummy-left-j1f_observe-table_a3_table1_room4 dd))
)
(:action dummy-right-j1f_observe-table_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fec_observe-table_a2_table2_room2 dd) (not (inroom table2 room2)) (in a1 room4) (available a1) (inroom table1 room4) (immediate-dummy-j1f_observe-table_a3_table1_room4 dd) (Kinroom table2 room2 V_FALSE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-j1f_observe-table_a3_table1_room4 dd)) (dummy-right-j1f_observe-table_a3_table1_room4 dd))
)
(:action act-5kp_observe-table_a1_table3_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1f_observe-table_a3_table1_room4 dd) (immediate-dummy-5kp_observe-table_a1_table3_room1 dd) (not (inroom table1 room4)) (not (inroom table2 room2)) (in a1 room1) (available a1) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room2 V_FALSE) (inroom table3 room1) (not (Kinroom table3 room1 V_TRUE)) (not (Kinroom table3 room1 V_FALSE)))
:effect 
(and (Kinroom table3 room1 V_TRUE))
)
(:action act-5kp_observe-table_a1_table3_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1f_observe-table_a3_table1_room4 dd) (immediate-dummy-5kp_observe-table_a1_table3_room1 dd) (not (inroom table1 room4)) (not (inroom table2 room2)) (in a1 room1) (available a1) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room2 V_FALSE) (not (inroom table3 room1)) (not (Kinroom table3 room1 V_TRUE)) (not (Kinroom table3 room1 V_FALSE)))
:effect 
(and (Kinroom table3 room1 V_FALSE))
)
(:action act-dummy-5kp_observe-table_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1f_observe-table_a3_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table2 room2)) (in a1 room1) (available a1) (not (dummy-left-5kp_observe-table_a1_table3_room1 dd)) (not (dummy-right-5kp_observe-table_a1_table3_room1 dd)) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-5kp_observe-table_a1_table3_room1 dd))
)
(:action dummy-left-5kp_observe-table_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1f_observe-table_a3_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table2 room2)) (in a1 room1) (available a1) (not (inroom table3 room1)) (immediate-dummy-5kp_observe-table_a1_table3_room1 dd) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-5kp_observe-table_a1_table3_room1 dd)) (dummy-left-5kp_observe-table_a1_table3_room1 dd))
)
(:action dummy-right-5kp_observe-table_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1f_observe-table_a3_table1_room4 dd) (not (inroom table1 room4)) (not (inroom table2 room2)) (in a1 room1) (available a1) (inroom table3 room1) (immediate-dummy-5kp_observe-table_a1_table3_room1 dd) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-5kp_observe-table_a1_table3_room1 dd)) (dummy-right-5kp_observe-table_a1_table3_room1 dd))
)
(:action act-10t_joint-lift-table_a3_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5kp_observe-table_a1_table3_room1 dd) (not (inroom table3 room1)) (not (inroom table1 room4)) (not (inroom table2 room2)) (available a1) (in a1 room3) (Kinroom table3 room1 V_FALSE) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (pre-10t_joint-lift-table_a3_a1_table1_room3 dd) (not (available a1)))
)
(:action act-ur5_joint-move-table_a3_a1_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-10t_joint-lift-table_a3_a1_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-ur5_joint-move-table_a3_a1_table1_room3_room4 dd) (not (pre-10t_joint-lift-table_a3_a1_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-1yw_joint-drop-table_a3_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-ur5_joint-move-table_a3_a1_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-1yw_joint-drop-table_a3_a1_table1_room4 dd) (not (pre-ur5_joint-move-table_a3_a1_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-1yw_joint-drop-table_a3_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-1yw_joint-drop-table_a3_a1_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-1yw_joint-drop-table_a3_a1_table1_room4 dd)))
)
(:action act-bb6_joint-lift-table_a2_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5kp_observe-table_a1_table3_room1 dd) (inroom table3 room1) (not (inroom table1 room4)) (not (inroom table2 room2)) (available a1) (in a1 room1) (Kinroom table3 room1 V_TRUE) (Kinroom table1 room4 V_FALSE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (pre-bb6_joint-lift-table_a2_a1_table3_room1 dd) (not (available a1)))
)
(:action act-9iz_joint-move-table_a2_a1_table3_room1_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-bb6_joint-lift-table_a2_a1_table3_room1 dd) (in a1 room1))
:effect 
(and (pre-9iz_joint-move-table_a2_a1_table3_room1_room2 dd) (not (pre-bb6_joint-lift-table_a2_a1_table3_room1 dd)) (not (in a1 room1)) (in a1 room2))
)
(:action act-9sl_joint-drop-table_a2_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-9iz_joint-move-table_a2_a1_table3_room1_room2 dd) (in a1 room2))
:effect 
(and (pre-9sl_joint-drop-table_a2_a1_table3_room2 dd) (not (pre-9iz_joint-move-table_a2_a1_table3_room1_room2 dd)) (available a1))
)
(:action act-hgj_joint-lift-table_a3_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-9sl_joint-drop-table_a2_a1_table3_room2 dd) (available a1) (in a1 room3))
:effect 
(and (pre-hgj_joint-lift-table_a3_a1_table1_room3 dd) (not (pre-9sl_joint-drop-table_a2_a1_table3_room2 dd)) (not (available a1)))
)
(:action act-499_joint-move-table_a3_a1_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-hgj_joint-lift-table_a3_a1_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-499_joint-move-table_a3_a1_table1_room3_room4 dd) (not (pre-hgj_joint-lift-table_a3_a1_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-57k_joint-drop-table_a3_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-499_joint-move-table_a3_a1_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-57k_joint-drop-table_a3_a1_table1_room4 dd) (not (pre-499_joint-move-table_a3_a1_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-57k_joint-drop-table_a3_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-57k_joint-drop-table_a3_a1_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-57k_joint-drop-table_a3_a1_table1_room4 dd)))
)
(:action act-xhd_observe-table_a1_table3_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1f_observe-table_a3_table1_room4 dd) (immediate-dummy-xhd_observe-table_a1_table3_room1 dd) (inroom table1 room4) (not (inroom table2 room2)) (in a1 room1) (available a1) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room2 V_FALSE) (inroom table3 room1) (not (Kinroom table3 room1 V_TRUE)) (not (Kinroom table3 room1 V_FALSE)))
:effect 
(and (Kinroom table3 room1 V_TRUE))
)
(:action act-xhd_observe-table_a1_table3_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1f_observe-table_a3_table1_room4 dd) (immediate-dummy-xhd_observe-table_a1_table3_room1 dd) (inroom table1 room4) (not (inroom table2 room2)) (in a1 room1) (available a1) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room2 V_FALSE) (not (inroom table3 room1)) (not (Kinroom table3 room1 V_TRUE)) (not (Kinroom table3 room1 V_FALSE)))
:effect 
(and (Kinroom table3 room1 V_FALSE))
)
(:action act-dummy-xhd_observe-table_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1f_observe-table_a3_table1_room4 dd) (inroom table1 room4) (not (inroom table2 room2)) (in a1 room1) (available a1) (not (dummy-left-xhd_observe-table_a1_table3_room1 dd)) (not (dummy-right-xhd_observe-table_a1_table3_room1 dd)) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (immediate-dummy-xhd_observe-table_a1_table3_room1 dd))
)
(:action dummy-left-xhd_observe-table_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1f_observe-table_a3_table1_room4 dd) (inroom table1 room4) (not (inroom table2 room2)) (in a1 room1) (available a1) (not (inroom table3 room1)) (immediate-dummy-xhd_observe-table_a1_table3_room1 dd) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-xhd_observe-table_a1_table3_room1 dd)) (dummy-left-xhd_observe-table_a1_table3_room1 dd))
)
(:action dummy-right-xhd_observe-table_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1f_observe-table_a3_table1_room4 dd) (inroom table1 room4) (not (inroom table2 room2)) (in a1 room1) (available a1) (inroom table3 room1) (immediate-dummy-xhd_observe-table_a1_table3_room1 dd) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room2 V_FALSE) (Kinroom table3 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-xhd_observe-table_a1_table3_room1 dd)) (dummy-right-xhd_observe-table_a1_table3_room1 dd))
)
(:action goal-achieve-left-xhd_observe-table_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xhd_observe-table_a1_table3_room1 dd) (not (inroom table3 room1)) (inroom table1 room4) (not (inroom table2 room2)) (Kinroom table3 room1 V_FALSE) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-xhd_observe-table_a1_table3_room1 dd)))
)
(:action act-0xz_joint-lift-table_a2_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xhd_observe-table_a1_table3_room1 dd) (inroom table3 room1) (inroom table1 room4) (not (inroom table2 room2)) (available a1) (in a1 room1) (Kinroom table3 room1 V_TRUE) (Kinroom table1 room4 V_TRUE) (Kinroom table2 room2 V_FALSE))
:effect 
(and (pre-0xz_joint-lift-table_a2_a1_table3_room1 dd) (not (available a1)))
)
(:action act-m31_joint-move-table_a2_a1_table3_room1_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-0xz_joint-lift-table_a2_a1_table3_room1 dd) (in a1 room1))
:effect 
(and (pre-m31_joint-move-table_a2_a1_table3_room1_room2 dd) (not (pre-0xz_joint-lift-table_a2_a1_table3_room1 dd)) (not (in a1 room1)) (in a1 room2))
)
(:action act-kjl_joint-drop-table_a2_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-m31_joint-move-table_a2_a1_table3_room1_room2 dd) (in a1 room2))
:effect 
(and (pre-kjl_joint-drop-table_a2_a1_table3_room2 dd) (not (pre-m31_joint-move-table_a2_a1_table3_room1_room2 dd)) (available a1))
)
(:action goal-achieve-kjl_joint-drop-table_a2_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-kjl_joint-drop-table_a2_a1_table3_room2 dd))
:effect 
(and (done-goal dd) (not (pre-kjl_joint-drop-table_a2_a1_table3_room2 dd)))
)
(:action act-qer_observe-table_a1_table3_room1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fec_observe-table_a2_table2_room2 dd) (immediate-dummy-qer_observe-table_a1_table3_room1 dd) (inroom table2 room2) (in a1 room1) (available a1) (Kinroom table2 room2 V_TRUE) (inroom table3 room1) (not (Kinroom table3 room1 V_TRUE)) (not (Kinroom table3 room1 V_FALSE)))
:effect 
(and (Kinroom table3 room1 V_TRUE))
)
(:action act-qer_observe-table_a1_table3_room1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fec_observe-table_a2_table2_room2 dd) (immediate-dummy-qer_observe-table_a1_table3_room1 dd) (inroom table2 room2) (in a1 room1) (available a1) (Kinroom table2 room2 V_TRUE) (not (inroom table3 room1)) (not (Kinroom table3 room1 V_TRUE)) (not (Kinroom table3 room1 V_FALSE)))
:effect 
(and (Kinroom table3 room1 V_FALSE))
)
(:action act-dummy-qer_observe-table_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fec_observe-table_a2_table2_room2 dd) (inroom table2 room2) (in a1 room1) (available a1) (not (dummy-left-qer_observe-table_a1_table3_room1 dd)) (not (dummy-right-qer_observe-table_a1_table3_room1 dd)) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-qer_observe-table_a1_table3_room1 dd))
)
(:action dummy-left-qer_observe-table_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fec_observe-table_a2_table2_room2 dd) (inroom table2 room2) (in a1 room1) (available a1) (not (inroom table3 room1)) (immediate-dummy-qer_observe-table_a1_table3_room1 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room1 V_FALSE))
:effect 
(and (not (immediate-dummy-qer_observe-table_a1_table3_room1 dd)) (dummy-left-qer_observe-table_a1_table3_room1 dd))
)
(:action dummy-right-qer_observe-table_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fec_observe-table_a2_table2_room2 dd) (inroom table2 room2) (in a1 room1) (available a1) (inroom table3 room1) (immediate-dummy-qer_observe-table_a1_table3_room1 dd) (Kinroom table2 room2 V_TRUE) (Kinroom table3 room1 V_TRUE))
:effect 
(and (not (immediate-dummy-qer_observe-table_a1_table3_room1 dd)) (dummy-right-qer_observe-table_a1_table3_room1 dd))
)
(:action act-ba1_joint-lift-table_a2_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qer_observe-table_a1_table3_room1 dd) (not (inroom table3 room1)) (inroom table2 room2) (available a1) (in a1 room2) (Kinroom table3 room1 V_FALSE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-ba1_joint-lift-table_a2_a1_table2_room2 dd) (not (available a1)))
)
(:action act-ff5_joint-move-table_a2_a1_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ba1_joint-lift-table_a2_a1_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-ff5_joint-move-table_a2_a1_table2_room2_room1 dd) (not (pre-ba1_joint-lift-table_a2_a1_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-mji_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-ff5_joint-move-table_a2_a1_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-mji_joint-drop-table_a2_a1_table2_room1 dd) (not (pre-ff5_joint-move-table_a2_a1_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-mji_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-mji_joint-drop-table_a2_a1_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-mji_joint-drop-table_a2_a1_table2_room1 dd)))
)
(:action act-4xd_observe-table_a3_table1_room4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qer_observe-table_a1_table3_room1 dd) (immediate-dummy-4xd_observe-table_a3_table1_room4 dd) (inroom table3 room1) (inroom table2 room2) (in a1 room4) (available a1) (Kinroom table3 room1 V_TRUE) (Kinroom table2 room2 V_TRUE) (inroom table1 room4) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_TRUE))
)
(:action act-4xd_observe-table_a3_table1_room4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qer_observe-table_a1_table3_room1 dd) (immediate-dummy-4xd_observe-table_a3_table1_room4 dd) (inroom table3 room1) (inroom table2 room2) (in a1 room4) (available a1) (Kinroom table3 room1 V_TRUE) (Kinroom table2 room2 V_TRUE) (not (inroom table1 room4)) (not (Kinroom table1 room4 V_TRUE)) (not (Kinroom table1 room4 V_FALSE)))
:effect 
(and (Kinroom table1 room4 V_FALSE))
)
(:action act-dummy-4xd_observe-table_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qer_observe-table_a1_table3_room1 dd) (inroom table3 room1) (inroom table2 room2) (in a1 room4) (available a1) (not (dummy-left-4xd_observe-table_a3_table1_room4 dd)) (not (dummy-right-4xd_observe-table_a3_table1_room4 dd)) (Kinroom table3 room1 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (immediate-dummy-4xd_observe-table_a3_table1_room4 dd))
)
(:action dummy-left-4xd_observe-table_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qer_observe-table_a1_table3_room1 dd) (inroom table3 room1) (inroom table2 room2) (in a1 room4) (available a1) (not (inroom table1 room4)) (immediate-dummy-4xd_observe-table_a3_table1_room4 dd) (Kinroom table3 room1 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_FALSE))
:effect 
(and (not (immediate-dummy-4xd_observe-table_a3_table1_room4 dd)) (dummy-left-4xd_observe-table_a3_table1_room4 dd))
)
(:action dummy-right-4xd_observe-table_a3_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qer_observe-table_a1_table3_room1 dd) (inroom table3 room1) (inroom table2 room2) (in a1 room4) (available a1) (inroom table1 room4) (immediate-dummy-4xd_observe-table_a3_table1_room4 dd) (Kinroom table3 room1 V_TRUE) (Kinroom table2 room2 V_TRUE) (Kinroom table1 room4 V_TRUE))
:effect 
(and (not (immediate-dummy-4xd_observe-table_a3_table1_room4 dd)) (dummy-right-4xd_observe-table_a3_table1_room4 dd))
)
(:action act-g70_joint-lift-table_a2_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4xd_observe-table_a3_table1_room4 dd) (not (inroom table1 room4)) (inroom table3 room1) (inroom table2 room2) (available a1) (in a1 room1) (Kinroom table1 room4 V_FALSE) (Kinroom table3 room1 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-g70_joint-lift-table_a2_a1_table3_room1 dd) (not (available a1)))
)
(:action act-tyu_joint-move-table_a2_a1_table3_room1_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-g70_joint-lift-table_a2_a1_table3_room1 dd) (in a1 room1))
:effect 
(and (pre-tyu_joint-move-table_a2_a1_table3_room1_room2 dd) (not (pre-g70_joint-lift-table_a2_a1_table3_room1 dd)) (not (in a1 room1)) (in a1 room2))
)
(:action act-ueq_joint-drop-table_a2_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-tyu_joint-move-table_a2_a1_table3_room1_room2 dd) (in a1 room2))
:effect 
(and (pre-ueq_joint-drop-table_a2_a1_table3_room2 dd) (not (pre-tyu_joint-move-table_a2_a1_table3_room1_room2 dd)) (available a1))
)
(:action act-sko_joint-lift-table_a2_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-ueq_joint-drop-table_a2_a1_table3_room2 dd) (available a1) (in a1 room2))
:effect 
(and (pre-sko_joint-lift-table_a2_a1_table2_room2 dd) (not (pre-ueq_joint-drop-table_a2_a1_table3_room2 dd)) (not (available a1)))
)
(:action act-hxp_joint-move-table_a2_a1_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-sko_joint-lift-table_a2_a1_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-hxp_joint-move-table_a2_a1_table2_room2_room1 dd) (not (pre-sko_joint-lift-table_a2_a1_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-8zj_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-hxp_joint-move-table_a2_a1_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-8zj_joint-drop-table_a2_a1_table2_room1 dd) (not (pre-hxp_joint-move-table_a2_a1_table2_room2_room1 dd)) (available a1))
)
(:action act-a1c_joint-lift-table_a3_a1_table1_room3
:parameters ( ?a - agent)
:precondition 
(and (pre-8zj_joint-drop-table_a2_a1_table2_room1 dd) (available a1) (in a1 room3))
:effect 
(and (pre-a1c_joint-lift-table_a3_a1_table1_room3 dd) (not (pre-8zj_joint-drop-table_a2_a1_table2_room1 dd)) (not (available a1)))
)
(:action act-229_joint-move-table_a3_a1_table1_room3_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-a1c_joint-lift-table_a3_a1_table1_room3 dd) (in a1 room3))
:effect 
(and (pre-229_joint-move-table_a3_a1_table1_room3_room4 dd) (not (pre-a1c_joint-lift-table_a3_a1_table1_room3 dd)) (not (in a1 room3)) (in a1 room4))
)
(:action act-h02_joint-drop-table_a3_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-229_joint-move-table_a3_a1_table1_room3_room4 dd) (in a1 room4))
:effect 
(and (pre-h02_joint-drop-table_a3_a1_table1_room4 dd) (not (pre-229_joint-move-table_a3_a1_table1_room3_room4 dd)) (available a1))
)
(:action goal-achieve-h02_joint-drop-table_a3_a1_table1_room4
:parameters ( ?a - agent)
:precondition 
(and (pre-h02_joint-drop-table_a3_a1_table1_room4 dd))
:effect 
(and (done-goal dd) (not (pre-h02_joint-drop-table_a3_a1_table1_room4 dd)))
)
(:action act-ok8_joint-lift-table_a2_a1_table3_room1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4xd_observe-table_a3_table1_room4 dd) (inroom table1 room4) (inroom table3 room1) (inroom table2 room2) (available a1) (in a1 room1) (Kinroom table1 room4 V_TRUE) (Kinroom table3 room1 V_TRUE) (Kinroom table2 room2 V_TRUE))
:effect 
(and (pre-ok8_joint-lift-table_a2_a1_table3_room1 dd) (not (available a1)))
)
(:action act-569_joint-move-table_a2_a1_table3_room1_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-ok8_joint-lift-table_a2_a1_table3_room1 dd) (in a1 room1))
:effect 
(and (pre-569_joint-move-table_a2_a1_table3_room1_room2 dd) (not (pre-ok8_joint-lift-table_a2_a1_table3_room1 dd)) (not (in a1 room1)) (in a1 room2))
)
(:action act-vg5_joint-drop-table_a2_a1_table3_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-569_joint-move-table_a2_a1_table3_room1_room2 dd) (in a1 room2))
:effect 
(and (pre-vg5_joint-drop-table_a2_a1_table3_room2 dd) (not (pre-569_joint-move-table_a2_a1_table3_room1_room2 dd)) (available a1))
)
(:action act-a0u_joint-lift-table_a2_a1_table2_room2
:parameters ( ?a - agent)
:precondition 
(and (pre-vg5_joint-drop-table_a2_a1_table3_room2 dd) (available a1) (in a1 room2))
:effect 
(and (pre-a0u_joint-lift-table_a2_a1_table2_room2 dd) (not (pre-vg5_joint-drop-table_a2_a1_table3_room2 dd)) (not (available a1)))
)
(:action act-15a_joint-move-table_a2_a1_table2_room2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-a0u_joint-lift-table_a2_a1_table2_room2 dd) (in a1 room2))
:effect 
(and (pre-15a_joint-move-table_a2_a1_table2_room2_room1 dd) (not (pre-a0u_joint-lift-table_a2_a1_table2_room2 dd)) (not (in a1 room2)) (in a1 room1))
)
(:action act-asz_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-15a_joint-move-table_a2_a1_table2_room2_room1 dd) (in a1 room1))
:effect 
(and (pre-asz_joint-drop-table_a2_a1_table2_room1 dd) (not (pre-15a_joint-move-table_a2_a1_table2_room2_room1 dd)) (available a1))
)
(:action goal-achieve-asz_joint-drop-table_a2_a1_table2_room1
:parameters ( ?a - agent)
:precondition 
(and (pre-asz_joint-drop-table_a2_a1_table2_room1 dd))
:effect 
(and (done-goal dd) (not (pre-asz_joint-drop-table_a2_a1_table2_room1 dd)))
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
