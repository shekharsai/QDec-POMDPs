(define (domain tablemover-2-a4)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	table4 - table
	a4 - agent
	room1 - room
	room2 - room
	room3 - room
	room4 - room
	room5 - room
	room6 - room
	room7 - room
	dd - dummy)
(:predicates 
	(lifting ?a - agent ?t - table )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a1 - agent ?table - table )
	(init-9pr_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-9pr_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-9pr_observe-table_a3_table2_room1 ?dd - dummy)
	(pre-9g9_joint-lift-table_a3_a4_table2_room2 ?dd - dummy)
	(pre-oa2_joint-move-table_a3_a4_table2_room2_room1 ?dd - dummy)
	(pre-3l7_joint-drop-table_a3_a4_table2_room1 ?dd - dummy)
	(immediate-dummy-6z4_observe-table_a2_table3_room6 ?dd - dummy)
	(dummy-left-6z4_observe-table_a2_table3_room6 ?dd - dummy)
	(immediate-dummy-0bs_observe-table_a2_table4_room6 ?dd - dummy)
	(dummy-left-0bs_observe-table_a2_table4_room6 ?dd - dummy)
	(immediate-dummy-0sb_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(dummy-left-0sb_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-0sb_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(pre-gge_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
	(pre-8j6_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
	(pre-59b_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
	(dummy-right-0bs_observe-table_a2_table4_room6 ?dd - dummy)
	(immediate-dummy-199_observe-table_a1_table1_room4 ?dd - dummy)
	(dummy-left-199_observe-table_a1_table1_room4 ?dd - dummy)
	(pre-t1n_joint-lift-table_a1_a4_table1_room3 ?dd - dummy)
	(pre-tpq_joint-move-table_a1_a4_table1_room3_room4 ?dd - dummy)
	(pre-w31_joint-drop-table_a1_a4_table1_room4 ?dd - dummy)
	(dummy-right-199_observe-table_a1_table1_room4 ?dd - dummy)
	(dummy-right-6z4_observe-table_a2_table3_room6 ?dd - dummy)
	(immediate-dummy-li7_observe-table_a1_table1_room4 ?dd - dummy)
	(dummy-left-li7_observe-table_a1_table1_room4 ?dd - dummy)
	(pre-cdk_joint-lift-table_a1_a4_table1_room3 ?dd - dummy)
	(pre-p72_joint-move-table_a1_a4_table1_room3_room4 ?dd - dummy)
	(pre-38t_joint-drop-table_a1_a4_table1_room4 ?dd - dummy)
	(dummy-right-li7_observe-table_a1_table1_room4 ?dd - dummy)
	(dummy-right-9pr_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-a3i_observe-table_a4_table3_room6 ?dd - dummy)
	(dummy-left-a3i_observe-table_a4_table3_room6 ?dd - dummy)
	(immediate-dummy-ma6_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-ma6_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-right-ma6_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-dsa_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
	(pre-0cm_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
	(pre-8n8_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
	(dummy-right-a3i_observe-table_a4_table3_room6 ?dd - dummy)
	(immediate-dummy-rgv_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-rgv_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-cdz_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
	(pre-j48_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
	(pre-g6g_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
	(dummy-right-rgv_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-vqc_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
	(pre-j7a_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
	(pre-pt7_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
	(pre-ego_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
	(pre-ttk_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
	(pre-1ug_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-9pr_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-9pr_observe-table_a3_table2_room1 dd)(immediate-dummy-9pr_observe-table_a3_table2_room1 dd)(in a4 room1)(can-observe a4 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-9pr_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-9pr_observe-table_a3_table2_room1 dd)(not (dummy-left-9pr_observe-table_a3_table2_room1 dd))(not (dummy-right-9pr_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-9pr_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-9pr_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-9pr_observe-table_a3_table2_room1 dd)(in a4 room1)(can-observe a4 table2)(not (inroom table2 room1))(immediate-dummy-9pr_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-9pr_observe-table_a3_table2_room1 dd))(not (immediate-dummy-9pr_observe-table_a3_table2_room1 dd))(dummy-left-9pr_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-9pr_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-9pr_observe-table_a3_table2_room1 dd)(in a4 room1)(can-observe a4 table2)(inroom table2 room1)(immediate-dummy-9pr_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-9pr_observe-table_a3_table2_room1 dd))(not (immediate-dummy-9pr_observe-table_a3_table2_room1 dd))(dummy-right-9pr_observe-table_a3_table2_room1 dd))
)
(:action act-9g9_joint-lift-table_a3_a4_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-9pr_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(available a4)(in a4 room2))
	:effect (and (pre-9g9_joint-lift-table_a3_a4_table2_room2 dd)(not (available a4)))
)
(:action act-oa2_joint-move-table_a3_a4_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-9g9_joint-lift-table_a3_a4_table2_room2 dd)(in a4 room2)(connected room2 room1))
	:effect (and (pre-oa2_joint-move-table_a3_a4_table2_room2_room1 dd)(not (pre-9g9_joint-lift-table_a3_a4_table2_room2 dd))(not (in a4 room2))(in a4 room1))
)
(:action act-3l7_joint-drop-table_a3_a4_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-oa2_joint-move-table_a3_a4_table2_room2_room1 dd)(in a4 room1))
	:effect (and (pre-3l7_joint-drop-table_a3_a4_table2_room1 dd)(not (pre-oa2_joint-move-table_a3_a4_table2_room2_room1 dd))(available a4))
)
(:action act-6z4_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-3l7_joint-drop-table_a3_a4_table2_room1 dd)(immediate-dummy-6z4_observe-table_a2_table3_room6 dd)(in a4 room6)(can-observe a4 table3))
	:observe (inroom table3 room6)
)
(:action act-dummy-6z4_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-3l7_joint-drop-table_a3_a4_table2_room1 dd)(in a4 room6)(can-observe a4 table3)(not (dummy-left-6z4_observe-table_a2_table3_room6 dd))(not (dummy-right-6z4_observe-table_a2_table3_room6 dd)))
	:effect (and (immediate-dummy-6z4_observe-table_a2_table3_room6 dd) )
)
(:action dummy-left-6z4_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (in a4 room6)(can-observe a4 table3)(not (inroom table3 room6))(immediate-dummy-6z4_observe-table_a2_table3_room6 dd))
	:effect (and (not (immediate-dummy-6z4_observe-table_a2_table3_room6 dd))(dummy-left-6z4_observe-table_a2_table3_room6 dd))
)
(:action dummy-right-6z4_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (in a4 room6)(can-observe a4 table3)(inroom table3 room6)(immediate-dummy-6z4_observe-table_a2_table3_room6 dd))
	:effect (and (not (immediate-dummy-6z4_observe-table_a2_table3_room6 dd))(dummy-right-6z4_observe-table_a2_table3_room6 dd))
)
(:action act-0bs_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6z4_observe-table_a2_table3_room6 dd)(immediate-dummy-0bs_observe-table_a2_table4_room6 dd)(not (inroom table3 room6))(in a4 room6)(can-observe a4 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-0bs_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6z4_observe-table_a2_table3_room6 dd)(not (inroom table3 room6))(in a4 room6)(can-observe a4 table4)(not (dummy-left-0bs_observe-table_a2_table4_room6 dd))(not (dummy-right-0bs_observe-table_a2_table4_room6 dd)))
	:effect (and (immediate-dummy-0bs_observe-table_a2_table4_room6 dd) )
)
(:action dummy-left-0bs_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6z4_observe-table_a2_table3_room6 dd)(not (inroom table3 room6))(in a4 room6)(can-observe a4 table4)(not (inroom table4 room6))(immediate-dummy-0bs_observe-table_a2_table4_room6 dd))
	:effect (and (not (immediate-dummy-0bs_observe-table_a2_table4_room6 dd))(dummy-left-0bs_observe-table_a2_table4_room6 dd))
)
(:action dummy-right-0bs_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6z4_observe-table_a2_table3_room6 dd)(not (inroom table3 room6))(in a4 room6)(can-observe a4 table4)(inroom table4 room6)(immediate-dummy-0bs_observe-table_a2_table4_room6 dd))
	:effect (and (not (immediate-dummy-0bs_observe-table_a2_table4_room6 dd))(dummy-right-0bs_observe-table_a2_table4_room6 dd))
)
(:action act-0sb_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0bs_observe-table_a2_table4_room6 dd)(immediate-dummy-0sb_observe-table-lsq_a4_table1_room3 dd)(not (inroom table4 room6))(not (inroom table3 room6))(in a4 room3)(can-observe a4 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-0sb_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0bs_observe-table_a2_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(in a4 room3)(can-observe a4 table1)(not (dummy-left-0sb_observe-table-lsq_a4_table1_room3 dd))(not (dummy-right-0sb_observe-table-lsq_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-0sb_observe-table-lsq_a4_table1_room3 dd) )
)
(:action dummy-left-0sb_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0bs_observe-table_a2_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(in a4 room3)(can-observe a4 table1)(not (inroom table1 room3))(immediate-dummy-0sb_observe-table-lsq_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-0sb_observe-table-lsq_a4_table1_room3 dd))(dummy-left-0sb_observe-table-lsq_a4_table1_room3 dd))
)
(:action dummy-right-0sb_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0bs_observe-table_a2_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(in a4 room3)(can-observe a4 table1)(inroom table1 room3)(immediate-dummy-0sb_observe-table-lsq_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-0sb_observe-table-lsq_a4_table1_room3 dd))(dummy-right-0sb_observe-table-lsq_a4_table1_room3 dd))
)
(:action goal-achieve-left-0sb_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0sb_observe-table-lsq_a4_table1_room3 dd)(not (inroom table4 room6))(not (inroom table3 room6)))
	:effect (and (done-goal dd)(not (dummy-left-0sb_observe-table-lsq_a4_table1_room3 dd)))
)
(:action act-gge_joint-lift-table_a3_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0sb_observe-table-lsq_a4_table1_room3 dd)(not (inroom table4 room6))(not (inroom table3 room6))(available a4)(in a4 room3))
	:effect (and (pre-gge_joint-lift-table_a3_a4_table1_room3 dd)(not (available a4)))
)
(:action act-8j6_joint-move-table_a3_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-gge_joint-lift-table_a3_a4_table1_room3 dd)(in a4 room3)(connected room3 room4))
	:effect (and (pre-8j6_joint-move-table_a3_a4_table1_room3_room4 dd)(not (pre-gge_joint-lift-table_a3_a4_table1_room3 dd))(not (in a4 room3))(in a4 room4))
)
(:action act-59b_joint-drop-table_a3_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-8j6_joint-move-table_a3_a4_table1_room3_room4 dd)(in a4 room4))
	:effect (and (pre-59b_joint-drop-table_a3_a4_table1_room4 dd)(not (pre-8j6_joint-move-table_a3_a4_table1_room3_room4 dd))(available a4))
)
(:action goal-achieve-59b_joint-drop-table_a3_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-59b_joint-drop-table_a3_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-59b_joint-drop-table_a3_a4_table1_room4 dd)))
)
(:action act-199_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0bs_observe-table_a2_table4_room6 dd)(immediate-dummy-199_observe-table_a1_table1_room4 dd)(inroom table4 room6)(not (inroom table3 room6))(in a4 room4)(can-observe a4 table1))
	:observe (inroom table1 room4)
)
(:action act-dummy-199_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0bs_observe-table_a2_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(in a4 room4)(can-observe a4 table1)(not (dummy-left-199_observe-table_a1_table1_room4 dd))(not (dummy-right-199_observe-table_a1_table1_room4 dd)))
	:effect (and (immediate-dummy-199_observe-table_a1_table1_room4 dd) )
)
(:action dummy-left-199_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0bs_observe-table_a2_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(in a4 room4)(can-observe a4 table1)(not (inroom table1 room4))(immediate-dummy-199_observe-table_a1_table1_room4 dd))
	:effect (and (not (immediate-dummy-199_observe-table_a1_table1_room4 dd))(dummy-left-199_observe-table_a1_table1_room4 dd))
)
(:action dummy-right-199_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0bs_observe-table_a2_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(in a4 room4)(can-observe a4 table1)(inroom table1 room4)(immediate-dummy-199_observe-table_a1_table1_room4 dd))
	:effect (and (not (immediate-dummy-199_observe-table_a1_table1_room4 dd))(dummy-right-199_observe-table_a1_table1_room4 dd))
)
(:action act-t1n_joint-lift-table_a1_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-199_observe-table_a1_table1_room4 dd)(not (inroom table1 room4))(inroom table4 room6)(not (inroom table3 room6))(available a4)(in a4 room3))
	:effect (and (pre-t1n_joint-lift-table_a1_a4_table1_room3 dd)(not (available a4)))
)
(:action act-tpq_joint-move-table_a1_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-t1n_joint-lift-table_a1_a4_table1_room3 dd)(in a4 room3)(connected room3 room4))
	:effect (and (pre-tpq_joint-move-table_a1_a4_table1_room3_room4 dd)(not (pre-t1n_joint-lift-table_a1_a4_table1_room3 dd))(not (in a4 room3))(in a4 room4))
)
(:action act-w31_joint-drop-table_a1_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-tpq_joint-move-table_a1_a4_table1_room3_room4 dd)(in a4 room4))
	:effect (and (pre-w31_joint-drop-table_a1_a4_table1_room4 dd)(not (pre-tpq_joint-move-table_a1_a4_table1_room3_room4 dd))(available a4))
)
(:action goal-achieve-w31_joint-drop-table_a1_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-w31_joint-drop-table_a1_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-w31_joint-drop-table_a1_a4_table1_room4 dd)))
)
(:action goal-achieve-right-199_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-199_observe-table_a1_table1_room4 dd)(inroom table1 room4)(inroom table4 room6)(not (inroom table3 room6)))
	:effect (and (done-goal dd)(not (dummy-right-199_observe-table_a1_table1_room4 dd)))
)
(:action act-li7_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6z4_observe-table_a2_table3_room6 dd)(immediate-dummy-li7_observe-table_a1_table1_room4 dd)(inroom table3 room6)(in a4 room4)(can-observe a4 table1))
	:observe (inroom table1 room4)
)
(:action act-dummy-li7_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6z4_observe-table_a2_table3_room6 dd)(inroom table3 room6)(in a4 room4)(can-observe a4 table1)(not (dummy-left-li7_observe-table_a1_table1_room4 dd))(not (dummy-right-li7_observe-table_a1_table1_room4 dd)))
	:effect (and (immediate-dummy-li7_observe-table_a1_table1_room4 dd) )
)
(:action dummy-left-li7_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6z4_observe-table_a2_table3_room6 dd)(inroom table3 room6)(in a4 room4)(can-observe a4 table1)(not (inroom table1 room4))(immediate-dummy-li7_observe-table_a1_table1_room4 dd))
	:effect (and (not (immediate-dummy-li7_observe-table_a1_table1_room4 dd))(dummy-left-li7_observe-table_a1_table1_room4 dd))
)
(:action dummy-right-li7_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6z4_observe-table_a2_table3_room6 dd)(inroom table3 room6)(in a4 room4)(can-observe a4 table1)(inroom table1 room4)(immediate-dummy-li7_observe-table_a1_table1_room4 dd))
	:effect (and (not (immediate-dummy-li7_observe-table_a1_table1_room4 dd))(dummy-right-li7_observe-table_a1_table1_room4 dd))
)
(:action act-cdk_joint-lift-table_a1_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-li7_observe-table_a1_table1_room4 dd)(not (inroom table1 room4))(inroom table3 room6)(available a4)(in a4 room3))
	:effect (and (pre-cdk_joint-lift-table_a1_a4_table1_room3 dd)(not (available a4)))
)
(:action act-p72_joint-move-table_a1_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-cdk_joint-lift-table_a1_a4_table1_room3 dd)(in a4 room3)(connected room3 room4))
	:effect (and (pre-p72_joint-move-table_a1_a4_table1_room3_room4 dd)(not (pre-cdk_joint-lift-table_a1_a4_table1_room3 dd))(not (in a4 room3))(in a4 room4))
)
(:action act-38t_joint-drop-table_a1_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-p72_joint-move-table_a1_a4_table1_room3_room4 dd)(in a4 room4))
	:effect (and (pre-38t_joint-drop-table_a1_a4_table1_room4 dd)(not (pre-p72_joint-move-table_a1_a4_table1_room3_room4 dd))(available a4))
)
(:action goal-achieve-38t_joint-drop-table_a1_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-38t_joint-drop-table_a1_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-38t_joint-drop-table_a1_a4_table1_room4 dd)))
)
(:action goal-achieve-right-li7_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-li7_observe-table_a1_table1_room4 dd)(inroom table1 room4)(inroom table3 room6))
	:effect (and (done-goal dd)(not (dummy-right-li7_observe-table_a1_table1_room4 dd)))
)
(:action act-a3i_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-9pr_observe-table_a3_table2_room1 dd)(immediate-dummy-a3i_observe-table_a4_table3_room6 dd)(inroom table2 room1)(in a4 room6)(can-observe a4 table3))
	:observe (inroom table3 room6)
)
(:action act-dummy-a3i_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-9pr_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a4 room6)(can-observe a4 table3)(not (dummy-left-a3i_observe-table_a4_table3_room6 dd))(not (dummy-right-a3i_observe-table_a4_table3_room6 dd)))
	:effect (and (immediate-dummy-a3i_observe-table_a4_table3_room6 dd) )
)
(:action dummy-left-a3i_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-9pr_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a4 room6)(can-observe a4 table3)(not (inroom table3 room6))(immediate-dummy-a3i_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-a3i_observe-table_a4_table3_room6 dd))(dummy-left-a3i_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-a3i_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-9pr_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a4 room6)(can-observe a4 table3)(inroom table3 room6)(immediate-dummy-a3i_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-a3i_observe-table_a4_table3_room6 dd))(dummy-right-a3i_observe-table_a4_table3_room6 dd))
)
(:action act-ma6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-a3i_observe-table_a4_table3_room6 dd)(immediate-dummy-ma6_observe-table_a4_table4_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a4 room6)(can-observe a4 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-ma6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-a3i_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a4 room6)(can-observe a4 table4)(not (dummy-left-ma6_observe-table_a4_table4_room6 dd))(not (dummy-right-ma6_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-ma6_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-ma6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-a3i_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a4 room6)(can-observe a4 table4)(not (inroom table4 room6))(immediate-dummy-ma6_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-ma6_observe-table_a4_table4_room6 dd))(dummy-left-ma6_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-ma6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-a3i_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a4 room6)(can-observe a4 table4)(inroom table4 room6)(immediate-dummy-ma6_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-ma6_observe-table_a4_table4_room6 dd))(dummy-right-ma6_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-ma6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ma6_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-left-ma6_observe-table_a4_table4_room6 dd)))
)
(:action act-dsa_joint-lift-table_a4_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ma6_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(inroom table2 room1)(available a4)(in a4 room6))
	:effect (and (pre-dsa_joint-lift-table_a4_a5_table4_room6 dd)(not (available a4)))
)
(:action act-0cm_joint-move-table_a4_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-dsa_joint-lift-table_a4_a5_table4_room6 dd)(in a4 room6)(connected room6 room7))
	:effect (and (pre-0cm_joint-move-table_a4_a5_table4_room6_room7 dd)(not (pre-dsa_joint-lift-table_a4_a5_table4_room6 dd))(not (in a4 room6))(in a4 room7))
)
(:action act-8n8_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-0cm_joint-move-table_a4_a5_table4_room6_room7 dd)(in a4 room7))
	:effect (and (pre-8n8_joint-drop-table_a4_a5_table4_room7 dd)(not (pre-0cm_joint-move-table_a4_a5_table4_room6_room7 dd))(available a4))
)
(:action goal-achieve-8n8_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-8n8_joint-drop-table_a4_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-8n8_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-rgv_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-a3i_observe-table_a4_table3_room6 dd)(immediate-dummy-rgv_observe-table_a4_table4_room6 dd)(inroom table3 room6)(inroom table2 room1)(in a4 room6)(can-observe a4 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-rgv_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-a3i_observe-table_a4_table3_room6 dd)(inroom table3 room6)(inroom table2 room1)(in a4 room6)(can-observe a4 table4)(not (dummy-left-rgv_observe-table_a4_table4_room6 dd))(not (dummy-right-rgv_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-rgv_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-rgv_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-a3i_observe-table_a4_table3_room6 dd)(inroom table3 room6)(inroom table2 room1)(in a4 room6)(can-observe a4 table4)(not (inroom table4 room6))(immediate-dummy-rgv_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-rgv_observe-table_a4_table4_room6 dd))(dummy-left-rgv_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-rgv_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-a3i_observe-table_a4_table3_room6 dd)(inroom table3 room6)(inroom table2 room1)(in a4 room6)(can-observe a4 table4)(inroom table4 room6)(immediate-dummy-rgv_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-rgv_observe-table_a4_table4_room6 dd))(dummy-right-rgv_observe-table_a4_table4_room6 dd))
)
(:action act-cdz_joint-lift-table_a4_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-rgv_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table3 room6)(inroom table2 room1)(available a4)(in a4 room6))
	:effect (and (pre-cdz_joint-lift-table_a4_a5_table3_room6 dd)(not (available a4)))
)
(:action act-j48_joint-move-table_a4_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-cdz_joint-lift-table_a4_a5_table3_room6 dd)(in a4 room6)(connected room6 room5))
	:effect (and (pre-j48_joint-move-table_a4_a5_table3_room6_room5 dd)(not (pre-cdz_joint-lift-table_a4_a5_table3_room6 dd))(not (in a4 room6))(in a4 room5))
)
(:action act-g6g_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-j48_joint-move-table_a4_a5_table3_room6_room5 dd)(in a4 room5))
	:effect (and (pre-g6g_joint-drop-table_a4_a5_table3_room5 dd)(not (pre-j48_joint-move-table_a4_a5_table3_room6_room5 dd))(available a4))
)
(:action goal-achieve-g6g_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-g6g_joint-drop-table_a4_a5_table3_room5 dd))
	:effect (and (done-goal dd)(not (pre-g6g_joint-drop-table_a4_a5_table3_room5 dd)))
)
(:action act-vqc_joint-lift-table_a4_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-rgv_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table3 room6)(inroom table2 room1)(available a4)(in a4 room6))
	:effect (and (pre-vqc_joint-lift-table_a4_a5_table3_room6 dd)(not (available a4)))
)
(:action act-j7a_joint-move-table_a4_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-vqc_joint-lift-table_a4_a5_table3_room6 dd)(in a4 room6)(connected room6 room5))
	:effect (and (pre-j7a_joint-move-table_a4_a5_table3_room6_room5 dd)(not (pre-vqc_joint-lift-table_a4_a5_table3_room6 dd))(not (in a4 room6))(in a4 room5))
)
(:action act-pt7_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-j7a_joint-move-table_a4_a5_table3_room6_room5 dd)(in a4 room5))
	:effect (and (pre-pt7_joint-drop-table_a4_a5_table3_room5 dd)(not (pre-j7a_joint-move-table_a4_a5_table3_room6_room5 dd))(available a4))
)
(:action act-ego_joint-lift-table_a4_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-pt7_joint-drop-table_a4_a5_table3_room5 dd)(available a4)(in a4 room6))
	:effect (and (pre-ego_joint-lift-table_a4_a5_table4_room6 dd)(not (pre-pt7_joint-drop-table_a4_a5_table3_room5 dd))(not (available a4)))
)
(:action act-ttk_joint-move-table_a4_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-ego_joint-lift-table_a4_a5_table4_room6 dd)(in a4 room6)(connected room6 room7))
	:effect (and (pre-ttk_joint-move-table_a4_a5_table4_room6_room7 dd)(not (pre-ego_joint-lift-table_a4_a5_table4_room6 dd))(not (in a4 room6))(in a4 room7))
)
(:action act-1ug_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-ttk_joint-move-table_a4_a5_table4_room6_room7 dd)(in a4 room7))
	:effect (and (pre-1ug_joint-drop-table_a4_a5_table4_room7 dd)(not (pre-ttk_joint-move-table_a4_a5_table4_room6_room7 dd))(available a4))
)
(:action goal-achieve-1ug_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-1ug_joint-drop-table_a4_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-1ug_joint-drop-table_a4_a5_table4_room7 dd)))
)
)