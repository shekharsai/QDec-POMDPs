(define (domain tablemover-2-a5)
(:types agent table room dummy)
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
	dd - dummy)
(:predicates 
	(lifting ?a - agent ?t - table ?r - room )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a1 - agent ?table - table )
	(init-55e_observe-table_a5_table1_room4 ?dd - dummy)
	(immediate-dummy-55e_observe-table_a5_table1_room4 ?dd - dummy)
	(dummy-left-55e_observe-table_a5_table1_room4 ?dd - dummy)
	(pre-395_joint-lift-table_a1_a5_table1_room3 ?dd - dummy)
	(pre-61i_joint-move-table_a1_a5_table1_room3_room4 ?dd - dummy)
	(pre-536_joint-drop-table_a1_a5_table1_room4 ?dd - dummy)
	(immediate-dummy-m2t_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-m2t_observe-table_a4_table4_room6 ?dd - dummy)
	(immediate-dummy-zm2_observe-table_a5_table3_room5 ?dd - dummy)
	(dummy-left-zm2_observe-table_a5_table3_room5 ?dd - dummy)
	(pre-8qz_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
	(pre-mso_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
	(pre-57l_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-zm2_observe-table_a5_table3_room5 ?dd - dummy)
	(dummy-right-m2t_observe-table_a4_table4_room6 ?dd - dummy)
	(immediate-dummy-rrq_observe-table_a4_table3_room6 ?dd - dummy)
	(dummy-left-rrq_observe-table_a4_table3_room6 ?dd - dummy)
	(pre-lqk_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
	(pre-l7x_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
	(pre-qh4_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
	(dummy-right-rrq_observe-table_a4_table3_room6 ?dd - dummy)
	(pre-xzc_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
	(pre-s9i_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
	(pre-b50_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
	(pre-g8e_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
	(pre-gi3_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
	(pre-0tn_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
	(dummy-right-55e_observe-table_a5_table1_room4 ?dd - dummy)
	(immediate-dummy-z7b_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-z7b_observe-table_a4_table4_room6 ?dd - dummy)
	(immediate-dummy-toj_observe-table_a5_table3_room5 ?dd - dummy)
	(dummy-left-toj_observe-table_a5_table3_room5 ?dd - dummy)
	(pre-2un_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
	(pre-wb5_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
	(pre-6ie_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
	(dummy-right-toj_observe-table_a5_table3_room5 ?dd - dummy)
	(dummy-right-z7b_observe-table_a4_table4_room6 ?dd - dummy)
	(immediate-dummy-7k1_observe-table_a4_table3_room6 ?dd - dummy)
	(dummy-left-7k1_observe-table_a4_table3_room6 ?dd - dummy)
	(pre-w4s_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
	(pre-g3c_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
	(pre-vlt_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
	(dummy-right-7k1_observe-table_a4_table3_room6 ?dd - dummy)
	(pre-meh_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
	(pre-ruo_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
	(pre-j0j_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
	(pre-2ek_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
	(pre-3zo_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
	(pre-5p4_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-55e_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-55e_observe-table_a5_table1_room4 dd)(immediate-dummy-55e_observe-table_a5_table1_room4 dd)(in a5 room4)(can-observe a5 table1)(available a5))
	:observe (inroom table1 room4)
)
(:action act-dummy-55e_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-55e_observe-table_a5_table1_room4 dd)(not (dummy-left-55e_observe-table_a5_table1_room4 dd))(not (dummy-right-55e_observe-table_a5_table1_room4 dd)))
	:effect (and (immediate-dummy-55e_observe-table_a5_table1_room4 dd) )
)
(:action dummy-left-55e_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-55e_observe-table_a5_table1_room4 dd)(in a5 room4)(can-observe a5 table1)(available a5)(not (inroom table1 room4))(immediate-dummy-55e_observe-table_a5_table1_room4 dd))
	:effect (and (not (init-55e_observe-table_a5_table1_room4 dd))(not (immediate-dummy-55e_observe-table_a5_table1_room4 dd))(dummy-left-55e_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-55e_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-55e_observe-table_a5_table1_room4 dd)(in a5 room4)(can-observe a5 table1)(available a5)(inroom table1 room4)(immediate-dummy-55e_observe-table_a5_table1_room4 dd))
	:effect (and (not (init-55e_observe-table_a5_table1_room4 dd))(not (immediate-dummy-55e_observe-table_a5_table1_room4 dd))(dummy-right-55e_observe-table_a5_table1_room4 dd))
)
(:action act-395_joint-lift-table_a1_a5_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-55e_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(available a5)(in a5 room3))
	:effect (and (pre-395_joint-lift-table_a1_a5_table1_room3 dd)(not (available a5)))
)
(:action act-61i_joint-move-table_a1_a5_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-395_joint-lift-table_a1_a5_table1_room3 dd)(in a5 room3)(connected room3 room4))
	:effect (and (pre-61i_joint-move-table_a1_a5_table1_room3_room4 dd)(not (pre-395_joint-lift-table_a1_a5_table1_room3 dd))(not (in a5 room3))(in a5 room4))
)
(:action act-536_joint-drop-table_a1_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-61i_joint-move-table_a1_a5_table1_room3_room4 dd)(in a5 room4))
	:effect (and (pre-536_joint-drop-table_a1_a5_table1_room4 dd)(not (pre-61i_joint-move-table_a1_a5_table1_room3_room4 dd))(available a5))
)
(:action act-m2t_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-536_joint-drop-table_a1_a5_table1_room4 dd)(immediate-dummy-m2t_observe-table_a4_table4_room6 dd)(in a5 room6)(can-observe a5 table4)(available a5))
	:observe (inroom table4 room6)
)
(:action act-dummy-m2t_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-536_joint-drop-table_a1_a5_table1_room4 dd)(in a5 room6)(can-observe a5 table4)(available a5)(not (dummy-left-m2t_observe-table_a4_table4_room6 dd))(not (dummy-right-m2t_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-m2t_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-m2t_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (in a5 room6)(can-observe a5 table4)(available a5)(not (inroom table4 room6))(immediate-dummy-m2t_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-m2t_observe-table_a4_table4_room6 dd))(dummy-left-m2t_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-m2t_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (in a5 room6)(can-observe a5 table4)(available a5)(inroom table4 room6)(immediate-dummy-m2t_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-m2t_observe-table_a4_table4_room6 dd))(dummy-right-m2t_observe-table_a4_table4_room6 dd))
)
(:action act-zm2_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-m2t_observe-table_a4_table4_room6 dd)(immediate-dummy-zm2_observe-table_a5_table3_room5 dd)(not (inroom table4 room6))(in a5 room5)(can-observe a5 table3)(available a5))
	:observe (inroom table3 room5)
)
(:action act-dummy-zm2_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-m2t_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(in a5 room5)(can-observe a5 table3)(available a5)(not (dummy-left-zm2_observe-table_a5_table3_room5 dd))(not (dummy-right-zm2_observe-table_a5_table3_room5 dd)))
	:effect (and (immediate-dummy-zm2_observe-table_a5_table3_room5 dd) )
)
(:action dummy-left-zm2_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-m2t_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(in a5 room5)(can-observe a5 table3)(available a5)(not (inroom table3 room5))(immediate-dummy-zm2_observe-table_a5_table3_room5 dd))
	:effect (and (not (immediate-dummy-zm2_observe-table_a5_table3_room5 dd))(dummy-left-zm2_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-zm2_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-m2t_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(in a5 room5)(can-observe a5 table3)(available a5)(inroom table3 room5)(immediate-dummy-zm2_observe-table_a5_table3_room5 dd))
	:effect (and (not (immediate-dummy-zm2_observe-table_a5_table3_room5 dd))(dummy-right-zm2_observe-table_a5_table3_room5 dd))
)
(:action act-8qz_joint-lift-table_a4_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-zm2_observe-table_a5_table3_room5 dd)(not (inroom table3 room5))(not (inroom table4 room6))(available a5)(in a5 room6))
	:effect (and (pre-8qz_joint-lift-table_a4_a5_table3_room6 dd)(not (available a5)))
)
(:action act-mso_joint-move-table_a4_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-8qz_joint-lift-table_a4_a5_table3_room6 dd)(in a5 room6)(connected room6 room5))
	:effect (and (pre-mso_joint-move-table_a4_a5_table3_room6_room5 dd)(not (pre-8qz_joint-lift-table_a4_a5_table3_room6 dd))(not (in a5 room6))(in a5 room5))
)
(:action act-57l_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-mso_joint-move-table_a4_a5_table3_room6_room5 dd)(in a5 room5))
	:effect (and (pre-57l_joint-drop-table_a4_a5_table3_room5 dd)(not (pre-mso_joint-move-table_a4_a5_table3_room6_room5 dd))(available a5))
)
(:action goal-achieve-57l_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-57l_joint-drop-table_a4_a5_table3_room5 dd))
	:effect (and (done-goal dd)(not (pre-57l_joint-drop-table_a4_a5_table3_room5 dd)))
)
(:action goal-achieve-right-zm2_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-zm2_observe-table_a5_table3_room5 dd)(inroom table3 room5)(not (inroom table4 room6)))
	:effect (and (done-goal dd)(not (dummy-right-zm2_observe-table_a5_table3_room5 dd)))
)
(:action act-rrq_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-m2t_observe-table_a4_table4_room6 dd)(immediate-dummy-rrq_observe-table_a4_table3_room6 dd)(inroom table4 room6)(in a5 room6)(can-observe a5 table3)(available a5))
	:observe (inroom table3 room6)
)
(:action act-dummy-rrq_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-m2t_observe-table_a4_table4_room6 dd)(inroom table4 room6)(in a5 room6)(can-observe a5 table3)(available a5)(not (dummy-left-rrq_observe-table_a4_table3_room6 dd))(not (dummy-right-rrq_observe-table_a4_table3_room6 dd)))
	:effect (and (immediate-dummy-rrq_observe-table_a4_table3_room6 dd) )
)
(:action dummy-left-rrq_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-m2t_observe-table_a4_table4_room6 dd)(inroom table4 room6)(in a5 room6)(can-observe a5 table3)(available a5)(not (inroom table3 room6))(immediate-dummy-rrq_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-rrq_observe-table_a4_table3_room6 dd))(dummy-left-rrq_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-rrq_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-m2t_observe-table_a4_table4_room6 dd)(inroom table4 room6)(in a5 room6)(can-observe a5 table3)(available a5)(inroom table3 room6)(immediate-dummy-rrq_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-rrq_observe-table_a4_table3_room6 dd))(dummy-right-rrq_observe-table_a4_table3_room6 dd))
)
(:action act-lqk_joint-lift-table_a4_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-rrq_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(inroom table4 room6)(available a5)(in a5 room6))
	:effect (and (pre-lqk_joint-lift-table_a4_a5_table4_room6 dd)(not (available a5)))
)
(:action act-l7x_joint-move-table_a4_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-lqk_joint-lift-table_a4_a5_table4_room6 dd)(in a5 room6)(connected room6 room7))
	:effect (and (pre-l7x_joint-move-table_a4_a5_table4_room6_room7 dd)(not (pre-lqk_joint-lift-table_a4_a5_table4_room6 dd))(not (in a5 room6))(in a5 room7))
)
(:action act-qh4_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-l7x_joint-move-table_a4_a5_table4_room6_room7 dd)(in a5 room7))
	:effect (and (pre-qh4_joint-drop-table_a4_a5_table4_room7 dd)(not (pre-l7x_joint-move-table_a4_a5_table4_room6_room7 dd))(available a5))
)
(:action goal-achieve-qh4_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-qh4_joint-drop-table_a4_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-qh4_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-xzc_joint-lift-table_a4_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-rrq_observe-table_a4_table3_room6 dd)(inroom table3 room6)(inroom table4 room6)(available a5)(in a5 room6))
	:effect (and (pre-xzc_joint-lift-table_a4_a5_table3_room6 dd)(not (available a5)))
)
(:action act-s9i_joint-move-table_a4_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-xzc_joint-lift-table_a4_a5_table3_room6 dd)(in a5 room6)(connected room6 room5))
	:effect (and (pre-s9i_joint-move-table_a4_a5_table3_room6_room5 dd)(not (pre-xzc_joint-lift-table_a4_a5_table3_room6 dd))(not (in a5 room6))(in a5 room5))
)
(:action act-b50_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-s9i_joint-move-table_a4_a5_table3_room6_room5 dd)(in a5 room5))
	:effect (and (pre-b50_joint-drop-table_a4_a5_table3_room5 dd)(not (pre-s9i_joint-move-table_a4_a5_table3_room6_room5 dd))(available a5))
)
(:action act-g8e_joint-lift-table_a4_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-b50_joint-drop-table_a4_a5_table3_room5 dd)(available a5)(in a5 room6))
	:effect (and (pre-g8e_joint-lift-table_a4_a5_table4_room6 dd)(not (pre-b50_joint-drop-table_a4_a5_table3_room5 dd))(not (available a5)))
)
(:action act-gi3_joint-move-table_a4_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-g8e_joint-lift-table_a4_a5_table4_room6 dd)(in a5 room6)(connected room6 room7))
	:effect (and (pre-gi3_joint-move-table_a4_a5_table4_room6_room7 dd)(not (pre-g8e_joint-lift-table_a4_a5_table4_room6 dd))(not (in a5 room6))(in a5 room7))
)
(:action act-0tn_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-gi3_joint-move-table_a4_a5_table4_room6_room7 dd)(in a5 room7))
	:effect (and (pre-0tn_joint-drop-table_a4_a5_table4_room7 dd)(not (pre-gi3_joint-move-table_a4_a5_table4_room6_room7 dd))(available a5))
)
(:action goal-achieve-0tn_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-0tn_joint-drop-table_a4_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-0tn_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-z7b_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-55e_observe-table_a5_table1_room4 dd)(immediate-dummy-z7b_observe-table_a4_table4_room6 dd)(inroom table1 room4)(in a5 room6)(can-observe a5 table4)(available a5))
	:observe (inroom table4 room6)
)
(:action act-dummy-z7b_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-55e_observe-table_a5_table1_room4 dd)(inroom table1 room4)(in a5 room6)(can-observe a5 table4)(available a5)(not (dummy-left-z7b_observe-table_a4_table4_room6 dd))(not (dummy-right-z7b_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-z7b_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-z7b_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-55e_observe-table_a5_table1_room4 dd)(inroom table1 room4)(in a5 room6)(can-observe a5 table4)(available a5)(not (inroom table4 room6))(immediate-dummy-z7b_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-z7b_observe-table_a4_table4_room6 dd))(dummy-left-z7b_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-z7b_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-55e_observe-table_a5_table1_room4 dd)(inroom table1 room4)(in a5 room6)(can-observe a5 table4)(available a5)(inroom table4 room6)(immediate-dummy-z7b_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-z7b_observe-table_a4_table4_room6 dd))(dummy-right-z7b_observe-table_a4_table4_room6 dd))
)
(:action act-toj_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-z7b_observe-table_a4_table4_room6 dd)(immediate-dummy-toj_observe-table_a5_table3_room5 dd)(not (inroom table4 room6))(inroom table1 room4)(in a5 room5)(can-observe a5 table3)(available a5))
	:observe (inroom table3 room5)
)
(:action act-dummy-toj_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-z7b_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table1 room4)(in a5 room5)(can-observe a5 table3)(available a5)(not (dummy-left-toj_observe-table_a5_table3_room5 dd))(not (dummy-right-toj_observe-table_a5_table3_room5 dd)))
	:effect (and (immediate-dummy-toj_observe-table_a5_table3_room5 dd) )
)
(:action dummy-left-toj_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-z7b_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table1 room4)(in a5 room5)(can-observe a5 table3)(available a5)(not (inroom table3 room5))(immediate-dummy-toj_observe-table_a5_table3_room5 dd))
	:effect (and (not (immediate-dummy-toj_observe-table_a5_table3_room5 dd))(dummy-left-toj_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-toj_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-z7b_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table1 room4)(in a5 room5)(can-observe a5 table3)(available a5)(inroom table3 room5)(immediate-dummy-toj_observe-table_a5_table3_room5 dd))
	:effect (and (not (immediate-dummy-toj_observe-table_a5_table3_room5 dd))(dummy-right-toj_observe-table_a5_table3_room5 dd))
)
(:action act-2un_joint-lift-table_a4_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-toj_observe-table_a5_table3_room5 dd)(not (inroom table3 room5))(not (inroom table4 room6))(inroom table1 room4)(available a5)(in a5 room6))
	:effect (and (pre-2un_joint-lift-table_a4_a5_table3_room6 dd)(not (available a5)))
)
(:action act-wb5_joint-move-table_a4_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-2un_joint-lift-table_a4_a5_table3_room6 dd)(in a5 room6)(connected room6 room5))
	:effect (and (pre-wb5_joint-move-table_a4_a5_table3_room6_room5 dd)(not (pre-2un_joint-lift-table_a4_a5_table3_room6 dd))(not (in a5 room6))(in a5 room5))
)
(:action act-6ie_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-wb5_joint-move-table_a4_a5_table3_room6_room5 dd)(in a5 room5))
	:effect (and (pre-6ie_joint-drop-table_a4_a5_table3_room5 dd)(not (pre-wb5_joint-move-table_a4_a5_table3_room6_room5 dd))(available a5))
)
(:action goal-achieve-6ie_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-6ie_joint-drop-table_a4_a5_table3_room5 dd))
	:effect (and (done-goal dd)(not (pre-6ie_joint-drop-table_a4_a5_table3_room5 dd)))
)
(:action goal-achieve-right-toj_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-toj_observe-table_a5_table3_room5 dd)(inroom table3 room5)(not (inroom table4 room6))(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-toj_observe-table_a5_table3_room5 dd)))
)
(:action act-7k1_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-z7b_observe-table_a4_table4_room6 dd)(immediate-dummy-7k1_observe-table_a4_table3_room6 dd)(inroom table4 room6)(inroom table1 room4)(in a5 room6)(can-observe a5 table3)(available a5))
	:observe (inroom table3 room6)
)
(:action act-dummy-7k1_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-z7b_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table1 room4)(in a5 room6)(can-observe a5 table3)(available a5)(not (dummy-left-7k1_observe-table_a4_table3_room6 dd))(not (dummy-right-7k1_observe-table_a4_table3_room6 dd)))
	:effect (and (immediate-dummy-7k1_observe-table_a4_table3_room6 dd) )
)
(:action dummy-left-7k1_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-z7b_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table1 room4)(in a5 room6)(can-observe a5 table3)(available a5)(not (inroom table3 room6))(immediate-dummy-7k1_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-7k1_observe-table_a4_table3_room6 dd))(dummy-left-7k1_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-7k1_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-z7b_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table1 room4)(in a5 room6)(can-observe a5 table3)(available a5)(inroom table3 room6)(immediate-dummy-7k1_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-7k1_observe-table_a4_table3_room6 dd))(dummy-right-7k1_observe-table_a4_table3_room6 dd))
)
(:action act-w4s_joint-lift-table_a4_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7k1_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(inroom table4 room6)(inroom table1 room4)(available a5)(in a5 room6))
	:effect (and (pre-w4s_joint-lift-table_a4_a5_table4_room6 dd)(not (available a5)))
)
(:action act-g3c_joint-move-table_a4_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-w4s_joint-lift-table_a4_a5_table4_room6 dd)(in a5 room6)(connected room6 room7))
	:effect (and (pre-g3c_joint-move-table_a4_a5_table4_room6_room7 dd)(not (pre-w4s_joint-lift-table_a4_a5_table4_room6 dd))(not (in a5 room6))(in a5 room7))
)
(:action act-vlt_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-g3c_joint-move-table_a4_a5_table4_room6_room7 dd)(in a5 room7))
	:effect (and (pre-vlt_joint-drop-table_a4_a5_table4_room7 dd)(not (pre-g3c_joint-move-table_a4_a5_table4_room6_room7 dd))(available a5))
)
(:action goal-achieve-vlt_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-vlt_joint-drop-table_a4_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-vlt_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-meh_joint-lift-table_a4_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7k1_observe-table_a4_table3_room6 dd)(inroom table3 room6)(inroom table4 room6)(inroom table1 room4)(available a5)(in a5 room6))
	:effect (and (pre-meh_joint-lift-table_a4_a5_table3_room6 dd)(not (available a5)))
)
(:action act-ruo_joint-move-table_a4_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-meh_joint-lift-table_a4_a5_table3_room6 dd)(in a5 room6)(connected room6 room5))
	:effect (and (pre-ruo_joint-move-table_a4_a5_table3_room6_room5 dd)(not (pre-meh_joint-lift-table_a4_a5_table3_room6 dd))(not (in a5 room6))(in a5 room5))
)
(:action act-j0j_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-ruo_joint-move-table_a4_a5_table3_room6_room5 dd)(in a5 room5))
	:effect (and (pre-j0j_joint-drop-table_a4_a5_table3_room5 dd)(not (pre-ruo_joint-move-table_a4_a5_table3_room6_room5 dd))(available a5))
)
(:action act-2ek_joint-lift-table_a4_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-j0j_joint-drop-table_a4_a5_table3_room5 dd)(available a5)(in a5 room6))
	:effect (and (pre-2ek_joint-lift-table_a4_a5_table4_room6 dd)(not (pre-j0j_joint-drop-table_a4_a5_table3_room5 dd))(not (available a5)))
)
(:action act-3zo_joint-move-table_a4_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-2ek_joint-lift-table_a4_a5_table4_room6 dd)(in a5 room6)(connected room6 room7))
	:effect (and (pre-3zo_joint-move-table_a4_a5_table4_room6_room7 dd)(not (pre-2ek_joint-lift-table_a4_a5_table4_room6 dd))(not (in a5 room6))(in a5 room7))
)
(:action act-5p4_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-3zo_joint-move-table_a4_a5_table4_room6_room7 dd)(in a5 room7))
	:effect (and (pre-5p4_joint-drop-table_a4_a5_table4_room7 dd)(not (pre-3zo_joint-move-table_a4_a5_table4_room6_room7 dd))(available a5))
)
(:action goal-achieve-5p4_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-5p4_joint-drop-table_a4_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-5p4_joint-drop-table_a4_a5_table4_room7 dd)))
)
)