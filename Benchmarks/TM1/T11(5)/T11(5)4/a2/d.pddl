(define (domain tablemover-2-a2)
(:types agent table room dummy)
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
	dd - dummy)
(:predicates 
	(p-dummy-agnt)
	(lifting ?a - agent ?t - table )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a1 - agent ?table - table )
	(init-5kv_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-5kv_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-5kv_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-3uo_observe-table_a2_table3_room6 ?dd - dummy)
	(dummy-left-3uo_observe-table_a2_table3_room6 ?dd - dummy)
	(immediate-dummy-x9k_observe-table_a5_table1_room4 ?dd - dummy)
	(dummy-left-x9k_observe-table_a5_table1_room4 ?dd - dummy)
	(immediate-dummy-mm3_observe-table_a2_table4_room6 ?dd - dummy)
	(dummy-left-mm3_observe-table_a2_table4_room6 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-mm3_observe-table_a2_table4_room6 ?dd - dummy)
	(pre-mj6_joint-lift-table_a2_a4_table4_room6 ?dd - dummy)
	(pre-w0f_joint-move-table_a2_a4_table4_room6_room7 ?dd - dummy)
	(pre-jt1_joint-drop-table_a2_a4_table4_room7 ?dd - dummy)
	(dummy-right-x9k_observe-table_a5_table1_room4 ?dd - dummy)
	(immediate-dummy-71w_observe-table_a2_table4_room7 ?dd - dummy)
	(dummy-left-71w_observe-table_a2_table4_room7 ?dd - dummy)
	(pre-ags_joint-lift-table_a2_a5_table4_room6 ?dd - dummy)
	(pre-19s_joint-move-table_a2_a5_table4_room6_room7 ?dd - dummy)
	(pre-7h8_joint-drop-table_a2_a5_table4_room7 ?dd - dummy)
	(dummy-right-71w_observe-table_a2_table4_room7 ?dd - dummy)
	(dummy-right-3uo_observe-table_a2_table3_room6 ?dd - dummy)
	(pre-9r0_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
	(pre-o19_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
	(pre-vwx_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
	(immediate-dummy-bbz_observe-table_a5_table1_room4 ?dd - dummy)
	(dummy-left-bbz_observe-table_a5_table1_room4 ?dd - dummy)
	(immediate-dummy-fxx_observe-table_a2_table4_room6 ?dd - dummy)
	(dummy-left-fxx_observe-table_a2_table4_room6 ?dd - dummy)
	(dummy-right-fxx_observe-table_a2_table4_room6 ?dd - dummy)
	(pre-bqg_joint-lift-table_a2_a4_table4_room6 ?dd - dummy)
	(pre-t2p_joint-move-table_a2_a4_table4_room6_room7 ?dd - dummy)
	(pre-a8s_joint-drop-table_a2_a4_table4_room7 ?dd - dummy)
	(dummy-right-bbz_observe-table_a5_table1_room4 ?dd - dummy)
	(immediate-dummy-82o_observe-table_a2_table4_room7 ?dd - dummy)
	(dummy-left-82o_observe-table_a2_table4_room7 ?dd - dummy)
	(pre-659_joint-lift-table_a2_a5_table4_room6 ?dd - dummy)
	(pre-2oe_joint-move-table_a2_a5_table4_room6_room7 ?dd - dummy)
	(pre-4m1_joint-drop-table_a2_a5_table4_room7 ?dd - dummy)
	(dummy-right-82o_observe-table_a2_table4_room7 ?dd - dummy)
	(dummy-right-5kv_observe-table_a3_table2_room1 ?dd - dummy)
)

(:action dummyPrivateAction 
	:effect (and (p-dummy-agnt))
)
(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-5kv_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-5kv_observe-table_a3_table2_room1 dd)(immediate-dummy-5kv_observe-table_a3_table2_room1 dd)(in a2 room1)(can-observe a2 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-5kv_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-5kv_observe-table_a3_table2_room1 dd)(not (dummy-left-5kv_observe-table_a3_table2_room1 dd))(not (dummy-right-5kv_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-5kv_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-5kv_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-5kv_observe-table_a3_table2_room1 dd)(in a2 room1)(can-observe a2 table2)(not (inroom table2 room1))(immediate-dummy-5kv_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-5kv_observe-table_a3_table2_room1 dd))(not (immediate-dummy-5kv_observe-table_a3_table2_room1 dd))(dummy-left-5kv_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-5kv_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-5kv_observe-table_a3_table2_room1 dd)(in a2 room1)(can-observe a2 table2)(inroom table2 room1)(immediate-dummy-5kv_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-5kv_observe-table_a3_table2_room1 dd))(not (immediate-dummy-5kv_observe-table_a3_table2_room1 dd))(dummy-right-5kv_observe-table_a3_table2_room1 dd))
)
(:action act-3uo_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-5kv_observe-table_a3_table2_room1 dd)(immediate-dummy-3uo_observe-table_a2_table3_room6 dd)(not (inroom table2 room1))(in a2 room6)(can-observe a2 table3))
	:observe (inroom table3 room6)
)
(:action act-dummy-3uo_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-5kv_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a2 room6)(can-observe a2 table3)(not (dummy-left-3uo_observe-table_a2_table3_room6 dd))(not (dummy-right-3uo_observe-table_a2_table3_room6 dd)))
	:effect (and (immediate-dummy-3uo_observe-table_a2_table3_room6 dd) )
)
(:action dummy-left-3uo_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-5kv_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a2 room6)(can-observe a2 table3)(not (inroom table3 room6))(immediate-dummy-3uo_observe-table_a2_table3_room6 dd))
	:effect (and (not (immediate-dummy-3uo_observe-table_a2_table3_room6 dd))(dummy-left-3uo_observe-table_a2_table3_room6 dd))
)
(:action dummy-right-3uo_observe-table_a2_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-5kv_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a2 room6)(can-observe a2 table3)(inroom table3 room6)(immediate-dummy-3uo_observe-table_a2_table3_room6 dd))
	:effect (and (not (immediate-dummy-3uo_observe-table_a2_table3_room6 dd))(dummy-right-3uo_observe-table_a2_table3_room6 dd))
)
(:action act-x9k_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3uo_observe-table_a2_table3_room6 dd)(immediate-dummy-x9k_observe-table_a5_table1_room4 dd)(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room4)(can-observe a2 table1))
	:observe (inroom table1 room4)
)
(:action act-dummy-x9k_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3uo_observe-table_a2_table3_room6 dd)(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room4)(can-observe a2 table1)(not (dummy-left-x9k_observe-table_a5_table1_room4 dd))(not (dummy-right-x9k_observe-table_a5_table1_room4 dd)))
	:effect (and (immediate-dummy-x9k_observe-table_a5_table1_room4 dd) )
)
(:action dummy-left-x9k_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3uo_observe-table_a2_table3_room6 dd)(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room4)(can-observe a2 table1)(not (inroom table1 room4))(immediate-dummy-x9k_observe-table_a5_table1_room4 dd))
	:effect (and (not (immediate-dummy-x9k_observe-table_a5_table1_room4 dd))(dummy-left-x9k_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-x9k_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3uo_observe-table_a2_table3_room6 dd)(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room4)(can-observe a2 table1)(inroom table1 room4)(immediate-dummy-x9k_observe-table_a5_table1_room4 dd))
	:effect (and (not (immediate-dummy-x9k_observe-table_a5_table1_room4 dd))(dummy-right-x9k_observe-table_a5_table1_room4 dd))
)
(:action act-mm3_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-x9k_observe-table_a5_table1_room4 dd)(immediate-dummy-mm3_observe-table_a2_table4_room6 dd)(not (inroom table1 room4))(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room6)(can-observe a2 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-mm3_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-x9k_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room6)(can-observe a2 table4)(not (dummy-left-mm3_observe-table_a2_table4_room6 dd))(not (dummy-right-mm3_observe-table_a2_table4_room6 dd)))
	:effect (and (immediate-dummy-mm3_observe-table_a2_table4_room6 dd) )
)
(:action dummy-left-mm3_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-x9k_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room6)(can-observe a2 table4)(not (inroom table4 room6))(immediate-dummy-mm3_observe-table_a2_table4_room6 dd))
	:effect (and (not (immediate-dummy-mm3_observe-table_a2_table4_room6 dd))(dummy-left-mm3_observe-table_a2_table4_room6 dd))
)
(:action dummy-right-mm3_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-x9k_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room6)(can-observe a2 table4)(inroom table4 room6)(immediate-dummy-mm3_observe-table_a2_table4_room6 dd))
	:effect (and (not (immediate-dummy-mm3_observe-table_a2_table4_room6 dd))(dummy-right-mm3_observe-table_a2_table4_room6 dd))
)
(:action goal-achieve-left-mm3_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mm3_observe-table_a2_table4_room6 dd)(not (inroom table4 room6))(not (inroom table1 room4))(not (inroom table3 room6))(not (inroom table2 room1)))
	:effect (and (done-goal dd)(not (dummy-left-mm3_observe-table_a2_table4_room6 dd)))
)
(:action act-mj6_joint-lift-table_a2_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mm3_observe-table_a2_table4_room6 dd)(inroom table4 room6)(not (inroom table1 room4))(not (inroom table3 room6))(not (inroom table2 room1))(available a2)(in a2 room6))
	:effect (and (pre-mj6_joint-lift-table_a2_a4_table4_room6 dd)(not (available a2)))
)
(:action act-w0f_joint-move-table_a2_a4_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-mj6_joint-lift-table_a2_a4_table4_room6 dd)(in a2 room6)(connected room6 room7))
	:effect (and (pre-w0f_joint-move-table_a2_a4_table4_room6_room7 dd)(not (pre-mj6_joint-lift-table_a2_a4_table4_room6 dd))(not (in a2 room6))(in a2 room7))
)
(:action act-jt1_joint-drop-table_a2_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-w0f_joint-move-table_a2_a4_table4_room6_room7 dd)(in a2 room7))
	:effect (and (pre-jt1_joint-drop-table_a2_a4_table4_room7 dd)(not (pre-w0f_joint-move-table_a2_a4_table4_room6_room7 dd))(available a2))
)
(:action goal-achieve-jt1_joint-drop-table_a2_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-jt1_joint-drop-table_a2_a4_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-jt1_joint-drop-table_a2_a4_table4_room7 dd)))
)
(:action act-71w_observe-table_a2_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-x9k_observe-table_a5_table1_room4 dd)(immediate-dummy-71w_observe-table_a2_table4_room7 dd)(inroom table1 room4)(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room7)(can-observe a2 table4))
	:observe (inroom table4 room7)
)
(:action act-dummy-71w_observe-table_a2_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-x9k_observe-table_a5_table1_room4 dd)(inroom table1 room4)(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room7)(can-observe a2 table4)(not (dummy-left-71w_observe-table_a2_table4_room7 dd))(not (dummy-right-71w_observe-table_a2_table4_room7 dd)))
	:effect (and (immediate-dummy-71w_observe-table_a2_table4_room7 dd) )
)
(:action dummy-left-71w_observe-table_a2_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-x9k_observe-table_a5_table1_room4 dd)(inroom table1 room4)(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room7)(can-observe a2 table4)(not (inroom table4 room7))(immediate-dummy-71w_observe-table_a2_table4_room7 dd))
	:effect (and (not (immediate-dummy-71w_observe-table_a2_table4_room7 dd))(dummy-left-71w_observe-table_a2_table4_room7 dd))
)
(:action dummy-right-71w_observe-table_a2_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-x9k_observe-table_a5_table1_room4 dd)(inroom table1 room4)(not (inroom table3 room6))(not (inroom table2 room1))(in a2 room7)(can-observe a2 table4)(inroom table4 room7)(immediate-dummy-71w_observe-table_a2_table4_room7 dd))
	:effect (and (not (immediate-dummy-71w_observe-table_a2_table4_room7 dd))(dummy-right-71w_observe-table_a2_table4_room7 dd))
)
(:action act-ags_joint-lift-table_a2_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-71w_observe-table_a2_table4_room7 dd)(not (inroom table4 room7))(inroom table1 room4)(not (inroom table3 room6))(not (inroom table2 room1))(available a2)(in a2 room6))
	:effect (and (pre-ags_joint-lift-table_a2_a5_table4_room6 dd)(not (available a2)))
)
(:action act-19s_joint-move-table_a2_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-ags_joint-lift-table_a2_a5_table4_room6 dd)(in a2 room6)(connected room6 room7))
	:effect (and (pre-19s_joint-move-table_a2_a5_table4_room6_room7 dd)(not (pre-ags_joint-lift-table_a2_a5_table4_room6 dd))(not (in a2 room6))(in a2 room7))
)
(:action act-7h8_joint-drop-table_a2_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-19s_joint-move-table_a2_a5_table4_room6_room7 dd)(in a2 room7))
	:effect (and (pre-7h8_joint-drop-table_a2_a5_table4_room7 dd)(not (pre-19s_joint-move-table_a2_a5_table4_room6_room7 dd))(available a2))
)
(:action goal-achieve-7h8_joint-drop-table_a2_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-7h8_joint-drop-table_a2_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-7h8_joint-drop-table_a2_a5_table4_room7 dd)))
)
(:action goal-achieve-right-71w_observe-table_a2_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-71w_observe-table_a2_table4_room7 dd)(inroom table4 room7)(inroom table1 room4)(not (inroom table3 room6))(not (inroom table2 room1)))
	:effect (and (done-goal dd)(not (dummy-right-71w_observe-table_a2_table4_room7 dd)))
)
(:action act-9r0_joint-lift-table_a2_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3uo_observe-table_a2_table3_room6 dd)(inroom table3 room6)(not (inroom table2 room1))(available a2)(in a2 room6))
	:effect (and (pre-9r0_joint-lift-table_a2_a5_table3_room6 dd)(not (available a2)))
)
(:action act-o19_joint-move-table_a2_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-9r0_joint-lift-table_a2_a5_table3_room6 dd)(in a2 room6)(connected room6 room5))
	:effect (and (pre-o19_joint-move-table_a2_a5_table3_room6_room5 dd)(not (pre-9r0_joint-lift-table_a2_a5_table3_room6 dd))(not (in a2 room6))(in a2 room5))
)
(:action act-vwx_joint-drop-table_a2_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-o19_joint-move-table_a2_a5_table3_room6_room5 dd)(in a2 room5))
	:effect (and (pre-vwx_joint-drop-table_a2_a5_table3_room5 dd)(not (pre-o19_joint-move-table_a2_a5_table3_room6_room5 dd))(available a2))
)
(:action act-bbz_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-vwx_joint-drop-table_a2_a5_table3_room5 dd)(immediate-dummy-bbz_observe-table_a5_table1_room4 dd)(in a2 room4)(can-observe a2 table1))
	:observe (inroom table1 room4)
)
(:action act-dummy-bbz_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-vwx_joint-drop-table_a2_a5_table3_room5 dd)(in a2 room4)(can-observe a2 table1)(not (dummy-left-bbz_observe-table_a5_table1_room4 dd))(not (dummy-right-bbz_observe-table_a5_table1_room4 dd)))
	:effect (and (immediate-dummy-bbz_observe-table_a5_table1_room4 dd) )
)
(:action dummy-left-bbz_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (in a2 room4)(can-observe a2 table1)(not (inroom table1 room4))(immediate-dummy-bbz_observe-table_a5_table1_room4 dd))
	:effect (and (not (immediate-dummy-bbz_observe-table_a5_table1_room4 dd))(dummy-left-bbz_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-bbz_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (in a2 room4)(can-observe a2 table1)(inroom table1 room4)(immediate-dummy-bbz_observe-table_a5_table1_room4 dd))
	:effect (and (not (immediate-dummy-bbz_observe-table_a5_table1_room4 dd))(dummy-right-bbz_observe-table_a5_table1_room4 dd))
)
(:action act-fxx_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bbz_observe-table_a5_table1_room4 dd)(immediate-dummy-fxx_observe-table_a2_table4_room6 dd)(not (inroom table1 room4))(in a2 room6)(can-observe a2 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-fxx_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bbz_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(in a2 room6)(can-observe a2 table4)(not (dummy-left-fxx_observe-table_a2_table4_room6 dd))(not (dummy-right-fxx_observe-table_a2_table4_room6 dd)))
	:effect (and (immediate-dummy-fxx_observe-table_a2_table4_room6 dd) )
)
(:action dummy-left-fxx_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bbz_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(in a2 room6)(can-observe a2 table4)(not (inroom table4 room6))(immediate-dummy-fxx_observe-table_a2_table4_room6 dd))
	:effect (and (not (immediate-dummy-fxx_observe-table_a2_table4_room6 dd))(dummy-left-fxx_observe-table_a2_table4_room6 dd))
)
(:action dummy-right-fxx_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bbz_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(in a2 room6)(can-observe a2 table4)(inroom table4 room6)(immediate-dummy-fxx_observe-table_a2_table4_room6 dd))
	:effect (and (not (immediate-dummy-fxx_observe-table_a2_table4_room6 dd))(dummy-right-fxx_observe-table_a2_table4_room6 dd))
)
(:action goal-achieve-left-fxx_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-fxx_observe-table_a2_table4_room6 dd)(not (inroom table4 room6))(not (inroom table1 room4)))
	:effect (and (done-goal dd)(not (dummy-left-fxx_observe-table_a2_table4_room6 dd)))
)
(:action act-bqg_joint-lift-table_a2_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-fxx_observe-table_a2_table4_room6 dd)(inroom table4 room6)(not (inroom table1 room4))(available a2)(in a2 room6))
	:effect (and (pre-bqg_joint-lift-table_a2_a4_table4_room6 dd)(not (available a2)))
)
(:action act-t2p_joint-move-table_a2_a4_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-bqg_joint-lift-table_a2_a4_table4_room6 dd)(in a2 room6)(connected room6 room7))
	:effect (and (pre-t2p_joint-move-table_a2_a4_table4_room6_room7 dd)(not (pre-bqg_joint-lift-table_a2_a4_table4_room6 dd))(not (in a2 room6))(in a2 room7))
)
(:action act-a8s_joint-drop-table_a2_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-t2p_joint-move-table_a2_a4_table4_room6_room7 dd)(in a2 room7))
	:effect (and (pre-a8s_joint-drop-table_a2_a4_table4_room7 dd)(not (pre-t2p_joint-move-table_a2_a4_table4_room6_room7 dd))(available a2))
)
(:action goal-achieve-a8s_joint-drop-table_a2_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-a8s_joint-drop-table_a2_a4_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-a8s_joint-drop-table_a2_a4_table4_room7 dd)))
)
(:action act-82o_observe-table_a2_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bbz_observe-table_a5_table1_room4 dd)(immediate-dummy-82o_observe-table_a2_table4_room7 dd)(inroom table1 room4)(in a2 room7)(can-observe a2 table4))
	:observe (inroom table4 room7)
)
(:action act-dummy-82o_observe-table_a2_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bbz_observe-table_a5_table1_room4 dd)(inroom table1 room4)(in a2 room7)(can-observe a2 table4)(not (dummy-left-82o_observe-table_a2_table4_room7 dd))(not (dummy-right-82o_observe-table_a2_table4_room7 dd)))
	:effect (and (immediate-dummy-82o_observe-table_a2_table4_room7 dd) )
)
(:action dummy-left-82o_observe-table_a2_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bbz_observe-table_a5_table1_room4 dd)(inroom table1 room4)(in a2 room7)(can-observe a2 table4)(not (inroom table4 room7))(immediate-dummy-82o_observe-table_a2_table4_room7 dd))
	:effect (and (not (immediate-dummy-82o_observe-table_a2_table4_room7 dd))(dummy-left-82o_observe-table_a2_table4_room7 dd))
)
(:action dummy-right-82o_observe-table_a2_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bbz_observe-table_a5_table1_room4 dd)(inroom table1 room4)(in a2 room7)(can-observe a2 table4)(inroom table4 room7)(immediate-dummy-82o_observe-table_a2_table4_room7 dd))
	:effect (and (not (immediate-dummy-82o_observe-table_a2_table4_room7 dd))(dummy-right-82o_observe-table_a2_table4_room7 dd))
)
(:action act-659_joint-lift-table_a2_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-82o_observe-table_a2_table4_room7 dd)(not (inroom table4 room7))(inroom table1 room4)(available a2)(in a2 room6))
	:effect (and (pre-659_joint-lift-table_a2_a5_table4_room6 dd)(not (available a2)))
)
(:action act-2oe_joint-move-table_a2_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-659_joint-lift-table_a2_a5_table4_room6 dd)(in a2 room6)(connected room6 room7))
	:effect (and (pre-2oe_joint-move-table_a2_a5_table4_room6_room7 dd)(not (pre-659_joint-lift-table_a2_a5_table4_room6 dd))(not (in a2 room6))(in a2 room7))
)
(:action act-4m1_joint-drop-table_a2_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-2oe_joint-move-table_a2_a5_table4_room6_room7 dd)(in a2 room7))
	:effect (and (pre-4m1_joint-drop-table_a2_a5_table4_room7 dd)(not (pre-2oe_joint-move-table_a2_a5_table4_room6_room7 dd))(available a2))
)
(:action goal-achieve-4m1_joint-drop-table_a2_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-4m1_joint-drop-table_a2_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-4m1_joint-drop-table_a2_a5_table4_room7 dd)))
)
(:action goal-achieve-right-82o_observe-table_a2_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-82o_observe-table_a2_table4_room7 dd)(inroom table4 room7)(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-82o_observe-table_a2_table4_room7 dd)))
)
(:action goal-achieve-right-5kv_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-5kv_observe-table_a3_table2_room1 dd)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-right-5kv_observe-table_a3_table2_room1 dd)))
)
)