(define (domain tablemover-2-a3)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	table4 - table
	a3 - agent
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
	(init-dee_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-dee_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-dee_observe-table_a3_table2_room1 ?dd - dummy)
	(pre-h1k_joint-lift-table_a3_a4_table2_room2 ?dd - dummy)
	(pre-slh_joint-move-table_a3_a4_table2_room2_room1 ?dd - dummy)
	(pre-ogk_joint-drop-table_a3_a4_table2_room1 ?dd - dummy)
	(immediate-dummy-2rf_observe-table_a2_table3_room6 ?dd - dummy)
	(dummy-left-2rf_observe-table_a2_table3_room6 ?dd - dummy)
	(immediate-dummy-rmc_observe-table_a2_table4_room6 ?dd - dummy)
	(dummy-left-rmc_observe-table_a2_table4_room6 ?dd - dummy)
	(immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(dummy-left-3o5_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-3o5_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(pre-aca_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
	(pre-y9o_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
	(pre-dl2_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
	(dummy-right-rmc_observe-table_a2_table4_room6 ?dd - dummy)
	(dummy-right-2rf_observe-table_a2_table3_room6 ?dd - dummy)
	(dummy-right-dee_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-s4i_observe-table-twk_a3_table1_room3 ?dd - dummy)
	(dummy-left-s4i_observe-table-twk_a3_table1_room3 ?dd - dummy)
	(dummy-right-s4i_observe-table-twk_a3_table1_room3 ?dd - dummy)
	(pre-jx0_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
	(pre-0p2_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
	(pre-46q_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-dee_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-dee_observe-table_a3_table2_room1 dd)(immediate-dummy-dee_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-dee_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-dee_observe-table_a3_table2_room1 dd)(not (dummy-left-dee_observe-table_a3_table2_room1 dd))(not (dummy-right-dee_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-dee_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-dee_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-dee_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(not (inroom table2 room1))(immediate-dummy-dee_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-dee_observe-table_a3_table2_room1 dd))(not (immediate-dummy-dee_observe-table_a3_table2_room1 dd))(dummy-left-dee_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-dee_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-dee_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(inroom table2 room1)(immediate-dummy-dee_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-dee_observe-table_a3_table2_room1 dd))(not (immediate-dummy-dee_observe-table_a3_table2_room1 dd))(dummy-right-dee_observe-table_a3_table2_room1 dd))
)
(:action act-h1k_joint-lift-table_a3_a4_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-dee_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(available a3)(in a3 room2))
	:effect (and (pre-h1k_joint-lift-table_a3_a4_table2_room2 dd)(not (available a3)))
)
(:action act-slh_joint-move-table_a3_a4_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-h1k_joint-lift-table_a3_a4_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-slh_joint-move-table_a3_a4_table2_room2_room1 dd)(not (pre-h1k_joint-lift-table_a3_a4_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-ogk_joint-drop-table_a3_a4_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-slh_joint-move-table_a3_a4_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-ogk_joint-drop-table_a3_a4_table2_room1 dd)(not (pre-slh_joint-move-table_a3_a4_table2_room2_room1 dd))(available a3))
)
(:action act-2rf_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-ogk_joint-drop-table_a3_a4_table2_room1 dd)(immediate-dummy-2rf_observe-table_a2_table3_room6 dd)(in a3 room6)(can-observe a3 table3))
	:observe (inroom table3 room6)
)
(:action act-dummy-2rf_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-ogk_joint-drop-table_a3_a4_table2_room1 dd)(in a3 room6)(can-observe a3 table3)(not (dummy-left-2rf_observe-table_a2_table3_room6 dd))(not (dummy-right-2rf_observe-table_a2_table3_room6 dd)))
	:effect (and (immediate-dummy-2rf_observe-table_a2_table3_room6 dd) )
)
(:action dummy-left-2rf_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (in a3 room6)(can-observe a3 table3)(not (inroom table3 room6))(immediate-dummy-2rf_observe-table_a2_table3_room6 dd))
	:effect (and (not (immediate-dummy-2rf_observe-table_a2_table3_room6 dd))(dummy-left-2rf_observe-table_a2_table3_room6 dd))
)
(:action dummy-right-2rf_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (in a3 room6)(can-observe a3 table3)(inroom table3 room6)(immediate-dummy-2rf_observe-table_a2_table3_room6 dd))
	:effect (and (not (immediate-dummy-2rf_observe-table_a2_table3_room6 dd))(dummy-right-2rf_observe-table_a2_table3_room6 dd))
)
(:action act-rmc_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2rf_observe-table_a2_table3_room6 dd)(immediate-dummy-rmc_observe-table_a2_table4_room6 dd)(not (inroom table3 room6))(in a3 room6)(can-observe a3 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-rmc_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2rf_observe-table_a2_table3_room6 dd)(not (inroom table3 room6))(in a3 room6)(can-observe a3 table4)(not (dummy-left-rmc_observe-table_a2_table4_room6 dd))(not (dummy-right-rmc_observe-table_a2_table4_room6 dd)))
	:effect (and (immediate-dummy-rmc_observe-table_a2_table4_room6 dd) )
)
(:action dummy-left-rmc_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2rf_observe-table_a2_table3_room6 dd)(not (inroom table3 room6))(in a3 room6)(can-observe a3 table4)(not (inroom table4 room6))(immediate-dummy-rmc_observe-table_a2_table4_room6 dd))
	:effect (and (not (immediate-dummy-rmc_observe-table_a2_table4_room6 dd))(dummy-left-rmc_observe-table_a2_table4_room6 dd))
)
(:action dummy-right-rmc_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2rf_observe-table_a2_table3_room6 dd)(not (inroom table3 room6))(in a3 room6)(can-observe a3 table4)(inroom table4 room6)(immediate-dummy-rmc_observe-table_a2_table4_room6 dd))
	:effect (and (not (immediate-dummy-rmc_observe-table_a2_table4_room6 dd))(dummy-right-rmc_observe-table_a2_table4_room6 dd))
)
(:action act-3o5_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-rmc_observe-table_a2_table4_room6 dd)(immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd)(not (inroom table4 room6))(not (inroom table3 room6))(in a3 room3)(can-observe a3 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-3o5_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-rmc_observe-table_a2_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(in a3 room3)(can-observe a3 table1)(not (dummy-left-3o5_observe-table-lsq_a4_table1_room3 dd))(not (dummy-right-3o5_observe-table-lsq_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd) )
)
(:action dummy-left-3o5_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-rmc_observe-table_a2_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(in a3 room3)(can-observe a3 table1)(not (inroom table1 room3))(immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd))(dummy-left-3o5_observe-table-lsq_a4_table1_room3 dd))
)
(:action dummy-right-3o5_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-rmc_observe-table_a2_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(in a3 room3)(can-observe a3 table1)(inroom table1 room3)(immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-3o5_observe-table-lsq_a4_table1_room3 dd))(dummy-right-3o5_observe-table-lsq_a4_table1_room3 dd))
)
(:action goal-achieve-left-3o5_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3o5_observe-table-lsq_a4_table1_room3 dd)(not (inroom table4 room6))(not (inroom table3 room6)))
	:effect (and (done-goal dd)(not (dummy-left-3o5_observe-table-lsq_a4_table1_room3 dd)))
)
(:action act-aca_joint-lift-table_a3_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3o5_observe-table-lsq_a4_table1_room3 dd)(not (inroom table4 room6))(not (inroom table3 room6))(available a3)(in a3 room3))
	:effect (and (pre-aca_joint-lift-table_a3_a4_table1_room3 dd)(not (available a3)))
)
(:action act-y9o_joint-move-table_a3_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-aca_joint-lift-table_a3_a4_table1_room3 dd)(in a3 room3)(connected room3 room4))
	:effect (and (pre-y9o_joint-move-table_a3_a4_table1_room3_room4 dd)(not (pre-aca_joint-lift-table_a3_a4_table1_room3 dd))(not (in a3 room3))(in a3 room4))
)
(:action act-dl2_joint-drop-table_a3_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-y9o_joint-move-table_a3_a4_table1_room3_room4 dd)(in a3 room4))
	:effect (and (pre-dl2_joint-drop-table_a3_a4_table1_room4 dd)(not (pre-y9o_joint-move-table_a3_a4_table1_room3_room4 dd))(available a3))
)
(:action goal-achieve-dl2_joint-drop-table_a3_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-dl2_joint-drop-table_a3_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-dl2_joint-drop-table_a3_a4_table1_room4 dd)))
)
(:action goal-achieve-right-rmc_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-rmc_observe-table_a2_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6)))
	:effect (and (done-goal dd)(not (dummy-right-rmc_observe-table_a2_table4_room6 dd)))
)
(:action goal-achieve-right-2rf_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2rf_observe-table_a2_table3_room6 dd)(inroom table3 room6))
	:effect (and (done-goal dd)(not (dummy-right-2rf_observe-table_a2_table3_room6 dd)))
)
(:action act-s4i_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dee_observe-table_a3_table2_room1 dd)(immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd)(inroom table2 room1)(in a3 room3)(can-observe a3 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-s4i_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dee_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a3 room3)(can-observe a3 table1)(not (dummy-left-s4i_observe-table-twk_a3_table1_room3 dd))(not (dummy-right-s4i_observe-table-twk_a3_table1_room3 dd)))
	:effect (and (immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd) )
)
(:action dummy-left-s4i_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dee_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a3 room3)(can-observe a3 table1)(not (inroom table1 room3))(immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd))
	:effect (and (not (immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd))(dummy-left-s4i_observe-table-twk_a3_table1_room3 dd))
)
(:action dummy-right-s4i_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dee_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a3 room3)(can-observe a3 table1)(inroom table1 room3)(immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd))
	:effect (and (not (immediate-dummy-s4i_observe-table-twk_a3_table1_room3 dd))(dummy-right-s4i_observe-table-twk_a3_table1_room3 dd))
)
(:action goal-achieve-left-s4i_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-s4i_observe-table-twk_a3_table1_room3 dd)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-left-s4i_observe-table-twk_a3_table1_room3 dd)))
)
(:action act-jx0_joint-lift-table_a1_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-s4i_observe-table-twk_a3_table1_room3 dd)(inroom table2 room1)(available a3)(in a3 room3))
	:effect (and (pre-jx0_joint-lift-table_a1_a3_table1_room3 dd)(not (available a3)))
)
(:action act-0p2_joint-move-table_a1_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-jx0_joint-lift-table_a1_a3_table1_room3 dd)(in a3 room3)(connected room3 room4))
	:effect (and (pre-0p2_joint-move-table_a1_a3_table1_room3_room4 dd)(not (pre-jx0_joint-lift-table_a1_a3_table1_room3 dd))(not (in a3 room3))(in a3 room4))
)
(:action act-46q_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-0p2_joint-move-table_a1_a3_table1_room3_room4 dd)(in a3 room4))
	:effect (and (pre-46q_joint-drop-table_a1_a3_table1_room4 dd)(not (pre-0p2_joint-move-table_a1_a3_table1_room3_room4 dd))(available a3))
)
(:action goal-achieve-46q_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-46q_joint-drop-table_a1_a3_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-46q_joint-drop-table_a1_a3_table1_room4 dd)))
)
)