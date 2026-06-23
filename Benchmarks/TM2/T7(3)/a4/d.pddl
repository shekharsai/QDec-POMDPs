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
	dd - dummy)
(:predicates 
	(lifting ?a - agent ?t - table ?r - room )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a - agent ?t - table )
	(init-ar2_observe-table_a2_table1_room4 ?dd - dummy)
	(immediate-dummy-ar2_observe-table_a2_table1_room4 ?dd - dummy)
	(dummy-left-ar2_observe-table_a2_table1_room4 ?dd - dummy)
	(pre-yfh_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
	(pre-mtm_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
	(pre-m5a_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-ar2_observe-table_a2_table1_room4 ?dd - dummy)
	(immediate-dummy-e6f_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-e6f_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-bse_observe-table_a1_table3_room2 ?dd - dummy)
	(dummy-left-bse_observe-table_a1_table3_room2 ?dd - dummy)
	(dummy-right-bse_observe-table_a1_table3_room2 ?dd - dummy)
	(immediate-dummy-dth_observe-table_a3_table4_room1 ?dd - dummy)
	(dummy-left-dth_observe-table_a3_table4_room1 ?dd - dummy)
	(pre-qjd_joint-lift-table_a3_a4_table2_room2 ?dd - dummy)
	(pre-b7k_joint-move-table_a3_a4_table2_room2_room1 ?dd - dummy)
	(pre-x48_joint-drop-table_a3_a4_table2_room1 ?dd - dummy)
	(dummy-right-dth_observe-table_a3_table4_room1 ?dd - dummy)
	(dummy-right-e6f_observe-table_a3_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-ar2_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-ar2_observe-table_a2_table1_room4 dd)(immediate-dummy-ar2_observe-table_a2_table1_room4 dd)(in a4 room4)(can-observe a4 table1)(available a4))
	:observe (inroom table1 room4)
)
(:action act-dummy-ar2_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-ar2_observe-table_a2_table1_room4 dd)(not (dummy-left-ar2_observe-table_a2_table1_room4 dd))(not (dummy-right-ar2_observe-table_a2_table1_room4 dd)))
	:effect (and (immediate-dummy-ar2_observe-table_a2_table1_room4 dd) )
)
(:action dummy-left-ar2_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-ar2_observe-table_a2_table1_room4 dd)(in a4 room4)(can-observe a4 table1)(available a4)(not (inroom table1 room4))(immediate-dummy-ar2_observe-table_a2_table1_room4 dd))
	:effect (and (not (init-ar2_observe-table_a2_table1_room4 dd))(not (immediate-dummy-ar2_observe-table_a2_table1_room4 dd))(dummy-left-ar2_observe-table_a2_table1_room4 dd))
)
(:action dummy-right-ar2_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-ar2_observe-table_a2_table1_room4 dd)(in a4 room4)(can-observe a4 table1)(available a4)(inroom table1 room4)(immediate-dummy-ar2_observe-table_a2_table1_room4 dd))
	:effect (and (not (init-ar2_observe-table_a2_table1_room4 dd))(not (immediate-dummy-ar2_observe-table_a2_table1_room4 dd))(dummy-right-ar2_observe-table_a2_table1_room4 dd))
)
(:action act-yfh_joint-lift-table_a2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ar2_observe-table_a2_table1_room4 dd)(not (inroom table1 room4))(available a4)(in a4 room3))
	:effect (and (pre-yfh_joint-lift-table_a2_a4_table1_room3 dd)(not (available a4)))
)
(:action act-mtm_joint-move-table_a2_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-yfh_joint-lift-table_a2_a4_table1_room3 dd)(in a4 room3)(connected room3 room4))
	:effect (and (pre-mtm_joint-move-table_a2_a4_table1_room3_room4 dd)(not (pre-yfh_joint-lift-table_a2_a4_table1_room3 dd))(not (in a4 room3))(in a4 room4))
)
(:action act-m5a_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-mtm_joint-move-table_a2_a4_table1_room3_room4 dd)(in a4 room4))
	:effect (and (pre-m5a_joint-drop-table_a2_a4_table1_room4 dd)(not (pre-mtm_joint-move-table_a2_a4_table1_room3_room4 dd))(available a4))
)
(:action goal-achieve-m5a_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-m5a_joint-drop-table_a2_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-m5a_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-e6f_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ar2_observe-table_a2_table1_room4 dd)(immediate-dummy-e6f_observe-table_a3_table2_room1 dd)(inroom table1 room4)(in a4 room1)(can-observe a4 table2)(available a4))
	:observe (inroom table2 room1)
)
(:action act-dummy-e6f_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ar2_observe-table_a2_table1_room4 dd)(inroom table1 room4)(in a4 room1)(can-observe a4 table2)(available a4)(not (dummy-left-e6f_observe-table_a3_table2_room1 dd))(not (dummy-right-e6f_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-e6f_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-e6f_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ar2_observe-table_a2_table1_room4 dd)(inroom table1 room4)(in a4 room1)(can-observe a4 table2)(available a4)(not (inroom table2 room1))(immediate-dummy-e6f_observe-table_a3_table2_room1 dd))
	:effect (and (not (immediate-dummy-e6f_observe-table_a3_table2_room1 dd))(dummy-left-e6f_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-e6f_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ar2_observe-table_a2_table1_room4 dd)(inroom table1 room4)(in a4 room1)(can-observe a4 table2)(available a4)(inroom table2 room1)(immediate-dummy-e6f_observe-table_a3_table2_room1 dd))
	:effect (and (not (immediate-dummy-e6f_observe-table_a3_table2_room1 dd))(dummy-right-e6f_observe-table_a3_table2_room1 dd))
)
(:action act-bse_observe-table_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-e6f_observe-table_a3_table2_room1 dd)(immediate-dummy-bse_observe-table_a1_table3_room2 dd)(not (inroom table2 room1))(inroom table1 room4)(in a4 room2)(can-observe a4 table3)(available a4))
	:observe (inroom table3 room2)
)
(:action act-dummy-bse_observe-table_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-e6f_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(inroom table1 room4)(in a4 room2)(can-observe a4 table3)(available a4)(not (dummy-left-bse_observe-table_a1_table3_room2 dd))(not (dummy-right-bse_observe-table_a1_table3_room2 dd)))
	:effect (and (immediate-dummy-bse_observe-table_a1_table3_room2 dd) )
)
(:action dummy-left-bse_observe-table_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-e6f_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(inroom table1 room4)(in a4 room2)(can-observe a4 table3)(available a4)(not (inroom table3 room2))(immediate-dummy-bse_observe-table_a1_table3_room2 dd))
	:effect (and (not (immediate-dummy-bse_observe-table_a1_table3_room2 dd))(dummy-left-bse_observe-table_a1_table3_room2 dd))
)
(:action dummy-right-bse_observe-table_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-e6f_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(inroom table1 room4)(in a4 room2)(can-observe a4 table3)(available a4)(inroom table3 room2)(immediate-dummy-bse_observe-table_a1_table3_room2 dd))
	:effect (and (not (immediate-dummy-bse_observe-table_a1_table3_room2 dd))(dummy-right-bse_observe-table_a1_table3_room2 dd))
)
(:action goal-achieve-left-bse_observe-table_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bse_observe-table_a1_table3_room2 dd)(not (inroom table3 room2))(not (inroom table2 room1))(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-left-bse_observe-table_a1_table3_room2 dd)))
)
(:action act-dth_observe-table_a3_table4_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bse_observe-table_a1_table3_room2 dd)(immediate-dummy-dth_observe-table_a3_table4_room1 dd)(inroom table3 room2)(not (inroom table2 room1))(inroom table1 room4)(in a4 room1)(can-observe a4 table4)(available a4))
	:observe (inroom table4 room1)
)
(:action act-dummy-dth_observe-table_a3_table4_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bse_observe-table_a1_table3_room2 dd)(inroom table3 room2)(not (inroom table2 room1))(inroom table1 room4)(in a4 room1)(can-observe a4 table4)(available a4)(not (dummy-left-dth_observe-table_a3_table4_room1 dd))(not (dummy-right-dth_observe-table_a3_table4_room1 dd)))
	:effect (and (immediate-dummy-dth_observe-table_a3_table4_room1 dd) )
)
(:action dummy-left-dth_observe-table_a3_table4_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bse_observe-table_a1_table3_room2 dd)(inroom table3 room2)(not (inroom table2 room1))(inroom table1 room4)(in a4 room1)(can-observe a4 table4)(available a4)(not (inroom table4 room1))(immediate-dummy-dth_observe-table_a3_table4_room1 dd))
	:effect (and (not (immediate-dummy-dth_observe-table_a3_table4_room1 dd))(dummy-left-dth_observe-table_a3_table4_room1 dd))
)
(:action dummy-right-dth_observe-table_a3_table4_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bse_observe-table_a1_table3_room2 dd)(inroom table3 room2)(not (inroom table2 room1))(inroom table1 room4)(in a4 room1)(can-observe a4 table4)(available a4)(inroom table4 room1)(immediate-dummy-dth_observe-table_a3_table4_room1 dd))
	:effect (and (not (immediate-dummy-dth_observe-table_a3_table4_room1 dd))(dummy-right-dth_observe-table_a3_table4_room1 dd))
)
(:action act-qjd_joint-lift-table_a3_a4_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-dth_observe-table_a3_table4_room1 dd)(not (inroom table4 room1))(inroom table3 room2)(not (inroom table2 room1))(inroom table1 room4)(available a4)(in a4 room2))
	:effect (and (pre-qjd_joint-lift-table_a3_a4_table2_room2 dd)(not (available a4)))
)
(:action act-b7k_joint-move-table_a3_a4_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-qjd_joint-lift-table_a3_a4_table2_room2 dd)(in a4 room2)(connected room2 room1))
	:effect (and (pre-b7k_joint-move-table_a3_a4_table2_room2_room1 dd)(not (pre-qjd_joint-lift-table_a3_a4_table2_room2 dd))(not (in a4 room2))(in a4 room1))
)
(:action act-x48_joint-drop-table_a3_a4_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-b7k_joint-move-table_a3_a4_table2_room2_room1 dd)(in a4 room1))
	:effect (and (pre-x48_joint-drop-table_a3_a4_table2_room1 dd)(not (pre-b7k_joint-move-table_a3_a4_table2_room2_room1 dd))(available a4))
)
(:action goal-achieve-x48_joint-drop-table_a3_a4_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-x48_joint-drop-table_a3_a4_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-x48_joint-drop-table_a3_a4_table2_room1 dd)))
)
(:action goal-achieve-right-dth_observe-table_a3_table4_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dth_observe-table_a3_table4_room1 dd)(inroom table4 room1)(inroom table3 room2)(not (inroom table2 room1))(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-dth_observe-table_a3_table4_room1 dd)))
)
(:action goal-achieve-right-e6f_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-e6f_observe-table_a3_table2_room1 dd)(inroom table2 room1)(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-e6f_observe-table_a3_table2_room1 dd)))
)
)