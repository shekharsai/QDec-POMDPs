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
	(lifting ?a - agent ?t - table ?r - room )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a - agent ?t - table )
	(init-nbb_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-nbb_observe-table_a2_table1_room3 ?dd - dummy)
	(dummy-left-nbb_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-vvj_observe-table_a3_table3_room4 ?dd - dummy)
	(dummy-left-vvj_observe-table_a3_table3_room4 ?dd - dummy)
	(immediate-dummy-fqw_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-fqw_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-acp_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
	(pre-25z_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
	(pre-cgq_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-fqw_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-right-vvj_observe-table_a3_table3_room4 ?dd - dummy)
	(immediate-dummy-h0t_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-h0t_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-hen_joint-lift-table_a3_a4_table3_room4 ?dd - dummy)
	(pre-psq_joint-move-table_a3_a4_table3_room4_room3 ?dd - dummy)
	(pre-b2t_joint-drop-table_a3_a4_table3_room3 ?dd - dummy)
	(pre-5wc_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
	(pre-axu_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
	(pre-r6e_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
	(dummy-right-h0t_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-9pf_joint-lift-table_a3_a4_table3_room4 ?dd - dummy)
	(pre-qef_joint-move-table_a3_a4_table3_room4_room3 ?dd - dummy)
	(pre-q0r_joint-drop-table_a3_a4_table3_room3 ?dd - dummy)
	(dummy-right-nbb_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-hfh_observe-table_a1_table2_room1 ?dd - dummy)
	(dummy-left-hfh_observe-table_a1_table2_room1 ?dd - dummy)
	(immediate-dummy-jnu_observe-table_a3_table3_room4 ?dd - dummy)
	(dummy-left-jnu_observe-table_a3_table3_room4 ?dd - dummy)
	(immediate-dummy-fg6_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-fg6_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-xgc_joint-lift-table_a2_a4_table4_room7 ?dd - dummy)
	(pre-3dy_joint-move-table_a2_a4_table4_room7_room6 ?dd - dummy)
	(pre-cep_joint-drop-table_a2_a4_table4_room6 ?dd - dummy)
	(dummy-right-fg6_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-right-jnu_observe-table_a3_table3_room4 ?dd - dummy)
	(immediate-dummy-n2i_observe-table_a4_table4_room7 ?dd - dummy)
	(dummy-left-n2i_observe-table_a4_table4_room7 ?dd - dummy)
	(dummy-right-n2i_observe-table_a4_table4_room7 ?dd - dummy)
	(pre-fvk_joint-lift-table_a2_a4_table4_room7 ?dd - dummy)
	(pre-lhl_joint-move-table_a2_a4_table4_room7_room6 ?dd - dummy)
	(pre-n0a_joint-drop-table_a2_a4_table4_room6 ?dd - dummy)
	(dummy-right-hfh_observe-table_a1_table2_room1 ?dd - dummy)
	(immediate-dummy-i81_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-i81_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-83w_joint-lift-table_a3_a4_table4_room7 ?dd - dummy)
	(pre-lwj_joint-move-table_a3_a4_table4_room7_room6 ?dd - dummy)
	(pre-r4r_joint-drop-table_a3_a4_table4_room6 ?dd - dummy)
	(dummy-right-i81_observe-table_a4_table4_room6 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-nbb_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-nbb_observe-table_a2_table1_room3 dd)(immediate-dummy-nbb_observe-table_a2_table1_room3 dd)(in a4 room3)(can-observe a4 table1)(available a4))
	:observe (inroom table1 room3)
)
(:action act-dummy-nbb_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-nbb_observe-table_a2_table1_room3 dd)(not (dummy-left-nbb_observe-table_a2_table1_room3 dd))(not (dummy-right-nbb_observe-table_a2_table1_room3 dd)))
	:effect (and (immediate-dummy-nbb_observe-table_a2_table1_room3 dd) )
)
(:action dummy-left-nbb_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-nbb_observe-table_a2_table1_room3 dd)(in a4 room3)(can-observe a4 table1)(available a4)(not (inroom table1 room3))(immediate-dummy-nbb_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-nbb_observe-table_a2_table1_room3 dd))(not (immediate-dummy-nbb_observe-table_a2_table1_room3 dd))(dummy-left-nbb_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-nbb_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-nbb_observe-table_a2_table1_room3 dd)(in a4 room3)(can-observe a4 table1)(available a4)(inroom table1 room3)(immediate-dummy-nbb_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-nbb_observe-table_a2_table1_room3 dd))(not (immediate-dummy-nbb_observe-table_a2_table1_room3 dd))(dummy-right-nbb_observe-table_a2_table1_room3 dd))
)
(:action act-vvj_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-nbb_observe-table_a2_table1_room3 dd)(immediate-dummy-vvj_observe-table_a3_table3_room4 dd)(not (inroom table1 room3))(in a4 room4)(can-observe a4 table3)(available a4))
	:observe (inroom table3 room4)
)
(:action act-dummy-vvj_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-nbb_observe-table_a2_table1_room3 dd)(not (inroom table1 room3))(in a4 room4)(can-observe a4 table3)(available a4)(not (dummy-left-vvj_observe-table_a3_table3_room4 dd))(not (dummy-right-vvj_observe-table_a3_table3_room4 dd)))
	:effect (and (immediate-dummy-vvj_observe-table_a3_table3_room4 dd) )
)
(:action dummy-left-vvj_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-nbb_observe-table_a2_table1_room3 dd)(not (inroom table1 room3))(in a4 room4)(can-observe a4 table3)(available a4)(not (inroom table3 room4))(immediate-dummy-vvj_observe-table_a3_table3_room4 dd))
	:effect (and (not (immediate-dummy-vvj_observe-table_a3_table3_room4 dd))(dummy-left-vvj_observe-table_a3_table3_room4 dd))
)
(:action dummy-right-vvj_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-nbb_observe-table_a2_table1_room3 dd)(not (inroom table1 room3))(in a4 room4)(can-observe a4 table3)(available a4)(inroom table3 room4)(immediate-dummy-vvj_observe-table_a3_table3_room4 dd))
	:effect (and (not (immediate-dummy-vvj_observe-table_a3_table3_room4 dd))(dummy-right-vvj_observe-table_a3_table3_room4 dd))
)
(:action act-fqw_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vvj_observe-table_a3_table3_room4 dd)(immediate-dummy-fqw_observe-table_a4_table4_room6 dd)(not (inroom table3 room4))(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(available a4))
	:observe (inroom table4 room6)
)
(:action act-dummy-fqw_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vvj_observe-table_a3_table3_room4 dd)(not (inroom table3 room4))(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(available a4)(not (dummy-left-fqw_observe-table_a4_table4_room6 dd))(not (dummy-right-fqw_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-fqw_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-fqw_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vvj_observe-table_a3_table3_room4 dd)(not (inroom table3 room4))(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(available a4)(not (inroom table4 room6))(immediate-dummy-fqw_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-fqw_observe-table_a4_table4_room6 dd))(dummy-left-fqw_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-fqw_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vvj_observe-table_a3_table3_room4 dd)(not (inroom table3 room4))(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(available a4)(inroom table4 room6)(immediate-dummy-fqw_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-fqw_observe-table_a4_table4_room6 dd))(dummy-right-fqw_observe-table_a4_table4_room6 dd))
)
(:action act-acp_joint-lift-table_a3_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-fqw_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room4))(not (inroom table1 room3))(available a4)(in a4 room7))
	:effect (and (pre-acp_joint-lift-table_a3_a4_table4_room7 dd)(not (available a4)))
)
(:action act-25z_joint-move-table_a3_a4_table4_room7_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-acp_joint-lift-table_a3_a4_table4_room7 dd)(in a4 room7)(connected room7 room6))
	:effect (and (pre-25z_joint-move-table_a3_a4_table4_room7_room6 dd)(not (pre-acp_joint-lift-table_a3_a4_table4_room7 dd))(not (in a4 room7))(in a4 room6))
)
(:action act-cgq_joint-drop-table_a3_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-25z_joint-move-table_a3_a4_table4_room7_room6 dd)(in a4 room6))
	:effect (and (pre-cgq_joint-drop-table_a3_a4_table4_room6 dd)(not (pre-25z_joint-move-table_a3_a4_table4_room7_room6 dd))(available a4))
)
(:action goal-achieve-cgq_joint-drop-table_a3_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-cgq_joint-drop-table_a3_a4_table4_room6 dd))
	:effect (and (done-goal dd)(not (pre-cgq_joint-drop-table_a3_a4_table4_room6 dd)))
)
(:action goal-achieve-right-fqw_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-fqw_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room4))(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-right-fqw_observe-table_a4_table4_room6 dd)))
)
(:action act-h0t_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vvj_observe-table_a3_table3_room4 dd)(immediate-dummy-h0t_observe-table_a4_table4_room6 dd)(inroom table3 room4)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(available a4))
	:observe (inroom table4 room6)
)
(:action act-dummy-h0t_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vvj_observe-table_a3_table3_room4 dd)(inroom table3 room4)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(available a4)(not (dummy-left-h0t_observe-table_a4_table4_room6 dd))(not (dummy-right-h0t_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-h0t_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-h0t_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vvj_observe-table_a3_table3_room4 dd)(inroom table3 room4)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(available a4)(not (inroom table4 room6))(immediate-dummy-h0t_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-h0t_observe-table_a4_table4_room6 dd))(dummy-left-h0t_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-h0t_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vvj_observe-table_a3_table3_room4 dd)(inroom table3 room4)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(available a4)(inroom table4 room6)(immediate-dummy-h0t_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-h0t_observe-table_a4_table4_room6 dd))(dummy-right-h0t_observe-table_a4_table4_room6 dd))
)
(:action act-hen_joint-lift-table_a3_a4_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-h0t_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table3 room4)(not (inroom table1 room3))(available a4)(in a4 room4))
	:effect (and (pre-hen_joint-lift-table_a3_a4_table3_room4 dd)(not (available a4)))
)
(:action act-psq_joint-move-table_a3_a4_table3_room4_room3
	:parameters ( ?a - agent )
	:precondition (and (pre-hen_joint-lift-table_a3_a4_table3_room4 dd)(in a4 room4)(connected room4 room3))
	:effect (and (pre-psq_joint-move-table_a3_a4_table3_room4_room3 dd)(not (pre-hen_joint-lift-table_a3_a4_table3_room4 dd))(not (in a4 room4))(in a4 room3))
)
(:action act-b2t_joint-drop-table_a3_a4_table3_room3
	:parameters ( ?a - agent )
	:precondition (and (pre-psq_joint-move-table_a3_a4_table3_room4_room3 dd)(in a4 room3))
	:effect (and (pre-b2t_joint-drop-table_a3_a4_table3_room3 dd)(not (pre-psq_joint-move-table_a3_a4_table3_room4_room3 dd))(available a4))
)
(:action act-5wc_joint-lift-table_a3_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-b2t_joint-drop-table_a3_a4_table3_room3 dd)(available a4)(in a4 room7))
	:effect (and (pre-5wc_joint-lift-table_a3_a4_table4_room7 dd)(not (pre-b2t_joint-drop-table_a3_a4_table3_room3 dd))(not (available a4)))
)
(:action act-axu_joint-move-table_a3_a4_table4_room7_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-5wc_joint-lift-table_a3_a4_table4_room7 dd)(in a4 room7)(connected room7 room6))
	:effect (and (pre-axu_joint-move-table_a3_a4_table4_room7_room6 dd)(not (pre-5wc_joint-lift-table_a3_a4_table4_room7 dd))(not (in a4 room7))(in a4 room6))
)
(:action act-r6e_joint-drop-table_a3_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-axu_joint-move-table_a3_a4_table4_room7_room6 dd)(in a4 room6))
	:effect (and (pre-r6e_joint-drop-table_a3_a4_table4_room6 dd)(not (pre-axu_joint-move-table_a3_a4_table4_room7_room6 dd))(available a4))
)
(:action goal-achieve-r6e_joint-drop-table_a3_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-r6e_joint-drop-table_a3_a4_table4_room6 dd))
	:effect (and (done-goal dd)(not (pre-r6e_joint-drop-table_a3_a4_table4_room6 dd)))
)
(:action act-9pf_joint-lift-table_a3_a4_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-h0t_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table3 room4)(not (inroom table1 room3))(available a4)(in a4 room4))
	:effect (and (pre-9pf_joint-lift-table_a3_a4_table3_room4 dd)(not (available a4)))
)
(:action act-qef_joint-move-table_a3_a4_table3_room4_room3
	:parameters ( ?a - agent )
	:precondition (and (pre-9pf_joint-lift-table_a3_a4_table3_room4 dd)(in a4 room4)(connected room4 room3))
	:effect (and (pre-qef_joint-move-table_a3_a4_table3_room4_room3 dd)(not (pre-9pf_joint-lift-table_a3_a4_table3_room4 dd))(not (in a4 room4))(in a4 room3))
)
(:action act-q0r_joint-drop-table_a3_a4_table3_room3
	:parameters ( ?a - agent )
	:precondition (and (pre-qef_joint-move-table_a3_a4_table3_room4_room3 dd)(in a4 room3))
	:effect (and (pre-q0r_joint-drop-table_a3_a4_table3_room3 dd)(not (pre-qef_joint-move-table_a3_a4_table3_room4_room3 dd))(available a4))
)
(:action goal-achieve-q0r_joint-drop-table_a3_a4_table3_room3
	:parameters ( ?a - agent )
	:precondition (and (pre-q0r_joint-drop-table_a3_a4_table3_room3 dd))
	:effect (and (done-goal dd)(not (pre-q0r_joint-drop-table_a3_a4_table3_room3 dd)))
)
(:action act-hfh_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-nbb_observe-table_a2_table1_room3 dd)(immediate-dummy-hfh_observe-table_a1_table2_room1 dd)(inroom table1 room3)(in a4 room1)(can-observe a4 table2)(available a4))
	:observe (inroom table2 room1)
)
(:action act-dummy-hfh_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-nbb_observe-table_a2_table1_room3 dd)(inroom table1 room3)(in a4 room1)(can-observe a4 table2)(available a4)(not (dummy-left-hfh_observe-table_a1_table2_room1 dd))(not (dummy-right-hfh_observe-table_a1_table2_room1 dd)))
	:effect (and (immediate-dummy-hfh_observe-table_a1_table2_room1 dd) )
)
(:action dummy-left-hfh_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-nbb_observe-table_a2_table1_room3 dd)(inroom table1 room3)(in a4 room1)(can-observe a4 table2)(available a4)(not (inroom table2 room1))(immediate-dummy-hfh_observe-table_a1_table2_room1 dd))
	:effect (and (not (immediate-dummy-hfh_observe-table_a1_table2_room1 dd))(dummy-left-hfh_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-hfh_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-nbb_observe-table_a2_table1_room3 dd)(inroom table1 room3)(in a4 room1)(can-observe a4 table2)(available a4)(inroom table2 room1)(immediate-dummy-hfh_observe-table_a1_table2_room1 dd))
	:effect (and (not (immediate-dummy-hfh_observe-table_a1_table2_room1 dd))(dummy-right-hfh_observe-table_a1_table2_room1 dd))
)
(:action act-jnu_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hfh_observe-table_a1_table2_room1 dd)(immediate-dummy-jnu_observe-table_a3_table3_room4 dd)(not (inroom table2 room1))(inroom table1 room3)(in a4 room4)(can-observe a4 table3)(available a4))
	:observe (inroom table3 room4)
)
(:action act-dummy-jnu_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hfh_observe-table_a1_table2_room1 dd)(not (inroom table2 room1))(inroom table1 room3)(in a4 room4)(can-observe a4 table3)(available a4)(not (dummy-left-jnu_observe-table_a3_table3_room4 dd))(not (dummy-right-jnu_observe-table_a3_table3_room4 dd)))
	:effect (and (immediate-dummy-jnu_observe-table_a3_table3_room4 dd) )
)
(:action dummy-left-jnu_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hfh_observe-table_a1_table2_room1 dd)(not (inroom table2 room1))(inroom table1 room3)(in a4 room4)(can-observe a4 table3)(available a4)(not (inroom table3 room4))(immediate-dummy-jnu_observe-table_a3_table3_room4 dd))
	:effect (and (not (immediate-dummy-jnu_observe-table_a3_table3_room4 dd))(dummy-left-jnu_observe-table_a3_table3_room4 dd))
)
(:action dummy-right-jnu_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hfh_observe-table_a1_table2_room1 dd)(not (inroom table2 room1))(inroom table1 room3)(in a4 room4)(can-observe a4 table3)(available a4)(inroom table3 room4)(immediate-dummy-jnu_observe-table_a3_table3_room4 dd))
	:effect (and (not (immediate-dummy-jnu_observe-table_a3_table3_room4 dd))(dummy-right-jnu_observe-table_a3_table3_room4 dd))
)
(:action act-fg6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jnu_observe-table_a3_table3_room4 dd)(immediate-dummy-fg6_observe-table_a4_table4_room6 dd)(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(in a4 room6)(can-observe a4 table4)(available a4))
	:observe (inroom table4 room6)
)
(:action act-dummy-fg6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jnu_observe-table_a3_table3_room4 dd)(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(in a4 room6)(can-observe a4 table4)(available a4)(not (dummy-left-fg6_observe-table_a4_table4_room6 dd))(not (dummy-right-fg6_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-fg6_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-fg6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jnu_observe-table_a3_table3_room4 dd)(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(in a4 room6)(can-observe a4 table4)(available a4)(not (inroom table4 room6))(immediate-dummy-fg6_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-fg6_observe-table_a4_table4_room6 dd))(dummy-left-fg6_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-fg6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jnu_observe-table_a3_table3_room4 dd)(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(in a4 room6)(can-observe a4 table4)(available a4)(inroom table4 room6)(immediate-dummy-fg6_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-fg6_observe-table_a4_table4_room6 dd))(dummy-right-fg6_observe-table_a4_table4_room6 dd))
)
(:action act-xgc_joint-lift-table_a2_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-fg6_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(available a4)(in a4 room7))
	:effect (and (pre-xgc_joint-lift-table_a2_a4_table4_room7 dd)(not (available a4)))
)
(:action act-3dy_joint-move-table_a2_a4_table4_room7_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-xgc_joint-lift-table_a2_a4_table4_room7 dd)(in a4 room7)(connected room7 room6))
	:effect (and (pre-3dy_joint-move-table_a2_a4_table4_room7_room6 dd)(not (pre-xgc_joint-lift-table_a2_a4_table4_room7 dd))(not (in a4 room7))(in a4 room6))
)
(:action act-cep_joint-drop-table_a2_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-3dy_joint-move-table_a2_a4_table4_room7_room6 dd)(in a4 room6))
	:effect (and (pre-cep_joint-drop-table_a2_a4_table4_room6 dd)(not (pre-3dy_joint-move-table_a2_a4_table4_room7_room6 dd))(available a4))
)
(:action goal-achieve-cep_joint-drop-table_a2_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-cep_joint-drop-table_a2_a4_table4_room6 dd))
	:effect (and (done-goal dd)(not (pre-cep_joint-drop-table_a2_a4_table4_room6 dd)))
)
(:action goal-achieve-right-fg6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-fg6_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3))
	:effect (and (done-goal dd)(not (dummy-right-fg6_observe-table_a4_table4_room6 dd)))
)
(:action act-n2i_observe-table_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jnu_observe-table_a3_table3_room4 dd)(immediate-dummy-n2i_observe-table_a4_table4_room7 dd)(inroom table3 room4)(not (inroom table2 room1))(inroom table1 room3)(in a4 room7)(can-observe a4 table4)(available a4))
	:observe (inroom table4 room7)
)
(:action act-dummy-n2i_observe-table_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jnu_observe-table_a3_table3_room4 dd)(inroom table3 room4)(not (inroom table2 room1))(inroom table1 room3)(in a4 room7)(can-observe a4 table4)(available a4)(not (dummy-left-n2i_observe-table_a4_table4_room7 dd))(not (dummy-right-n2i_observe-table_a4_table4_room7 dd)))
	:effect (and (immediate-dummy-n2i_observe-table_a4_table4_room7 dd) )
)
(:action dummy-left-n2i_observe-table_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jnu_observe-table_a3_table3_room4 dd)(inroom table3 room4)(not (inroom table2 room1))(inroom table1 room3)(in a4 room7)(can-observe a4 table4)(available a4)(not (inroom table4 room7))(immediate-dummy-n2i_observe-table_a4_table4_room7 dd))
	:effect (and (not (immediate-dummy-n2i_observe-table_a4_table4_room7 dd))(dummy-left-n2i_observe-table_a4_table4_room7 dd))
)
(:action dummy-right-n2i_observe-table_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jnu_observe-table_a3_table3_room4 dd)(inroom table3 room4)(not (inroom table2 room1))(inroom table1 room3)(in a4 room7)(can-observe a4 table4)(available a4)(inroom table4 room7)(immediate-dummy-n2i_observe-table_a4_table4_room7 dd))
	:effect (and (not (immediate-dummy-n2i_observe-table_a4_table4_room7 dd))(dummy-right-n2i_observe-table_a4_table4_room7 dd))
)
(:action goal-achieve-left-n2i_observe-table_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-n2i_observe-table_a4_table4_room7 dd)(not (inroom table4 room7))(inroom table3 room4)(not (inroom table2 room1))(inroom table1 room3))
	:effect (and (done-goal dd)(not (dummy-left-n2i_observe-table_a4_table4_room7 dd)))
)
(:action act-fvk_joint-lift-table_a2_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-n2i_observe-table_a4_table4_room7 dd)(inroom table4 room7)(inroom table3 room4)(not (inroom table2 room1))(inroom table1 room3)(available a4)(in a4 room7))
	:effect (and (pre-fvk_joint-lift-table_a2_a4_table4_room7 dd)(not (available a4)))
)
(:action act-lhl_joint-move-table_a2_a4_table4_room7_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-fvk_joint-lift-table_a2_a4_table4_room7 dd)(in a4 room7)(connected room7 room6))
	:effect (and (pre-lhl_joint-move-table_a2_a4_table4_room7_room6 dd)(not (pre-fvk_joint-lift-table_a2_a4_table4_room7 dd))(not (in a4 room7))(in a4 room6))
)
(:action act-n0a_joint-drop-table_a2_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-lhl_joint-move-table_a2_a4_table4_room7_room6 dd)(in a4 room6))
	:effect (and (pre-n0a_joint-drop-table_a2_a4_table4_room6 dd)(not (pre-lhl_joint-move-table_a2_a4_table4_room7_room6 dd))(available a4))
)
(:action goal-achieve-n0a_joint-drop-table_a2_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-n0a_joint-drop-table_a2_a4_table4_room6 dd))
	:effect (and (done-goal dd)(not (pre-n0a_joint-drop-table_a2_a4_table4_room6 dd)))
)
(:action act-i81_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hfh_observe-table_a1_table2_room1 dd)(immediate-dummy-i81_observe-table_a4_table4_room6 dd)(inroom table2 room1)(inroom table1 room3)(in a4 room6)(can-observe a4 table4)(available a4))
	:observe (inroom table4 room6)
)
(:action act-dummy-i81_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hfh_observe-table_a1_table2_room1 dd)(inroom table2 room1)(inroom table1 room3)(in a4 room6)(can-observe a4 table4)(available a4)(not (dummy-left-i81_observe-table_a4_table4_room6 dd))(not (dummy-right-i81_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-i81_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-i81_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hfh_observe-table_a1_table2_room1 dd)(inroom table2 room1)(inroom table1 room3)(in a4 room6)(can-observe a4 table4)(available a4)(not (inroom table4 room6))(immediate-dummy-i81_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-i81_observe-table_a4_table4_room6 dd))(dummy-left-i81_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-i81_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hfh_observe-table_a1_table2_room1 dd)(inroom table2 room1)(inroom table1 room3)(in a4 room6)(can-observe a4 table4)(available a4)(inroom table4 room6)(immediate-dummy-i81_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-i81_observe-table_a4_table4_room6 dd))(dummy-right-i81_observe-table_a4_table4_room6 dd))
)
(:action act-83w_joint-lift-table_a3_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-i81_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table2 room1)(inroom table1 room3)(available a4)(in a4 room7))
	:effect (and (pre-83w_joint-lift-table_a3_a4_table4_room7 dd)(not (available a4)))
)
(:action act-lwj_joint-move-table_a3_a4_table4_room7_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-83w_joint-lift-table_a3_a4_table4_room7 dd)(in a4 room7)(connected room7 room6))
	:effect (and (pre-lwj_joint-move-table_a3_a4_table4_room7_room6 dd)(not (pre-83w_joint-lift-table_a3_a4_table4_room7 dd))(not (in a4 room7))(in a4 room6))
)
(:action act-r4r_joint-drop-table_a3_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-lwj_joint-move-table_a3_a4_table4_room7_room6 dd)(in a4 room6))
	:effect (and (pre-r4r_joint-drop-table_a3_a4_table4_room6 dd)(not (pre-lwj_joint-move-table_a3_a4_table4_room7_room6 dd))(available a4))
)
(:action goal-achieve-r4r_joint-drop-table_a3_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-r4r_joint-drop-table_a3_a4_table4_room6 dd))
	:effect (and (done-goal dd)(not (pre-r4r_joint-drop-table_a3_a4_table4_room6 dd)))
)
(:action goal-achieve-right-i81_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-i81_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table2 room1)(inroom table1 room3))
	:effect (and (done-goal dd)(not (dummy-right-i81_observe-table_a4_table4_room6 dd)))
)
)