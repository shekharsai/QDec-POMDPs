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
	(init-o75_observe-table_a3_table2_room2 ?dd - dummy)
	(immediate-dummy-o75_observe-table_a3_table2_room2 ?dd - dummy)
	(dummy-left-o75_observe-table_a3_table2_room2 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-o75_observe-table_a3_table2_room2 ?dd - dummy)
	(immediate-dummy-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
	(dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-3a3_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-3a3_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-right-3a3_observe-table_a4_table4_room6 ?dd - dummy)
	(immediate-dummy-i94_observe-table_a2_table3_room5 ?dd - dummy)
	(dummy-left-i94_observe-table_a2_table3_room5 ?dd - dummy)
	(pre-im4_joint-lift-table_a2_a4_table3_room6 ?dd - dummy)
	(pre-u2k_joint-move-table_a2_a4_table3_room6_room5 ?dd - dummy)
	(pre-asi_joint-drop-table_a2_a4_table3_room5 ?dd - dummy)
	(dummy-right-i94_observe-table_a2_table3_room5 ?dd - dummy)
	(dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-m7w_observe-table_a5_table3_room6 ?dd - dummy)
	(dummy-left-m7w_observe-table_a5_table3_room6 ?dd - dummy)
	(immediate-dummy-d13_observe-table_a5_table4_room6 ?dd - dummy)
	(dummy-left-d13_observe-table_a5_table4_room6 ?dd - dummy)
	(dummy-right-d13_observe-table_a5_table4_room6 ?dd - dummy)
	(pre-bom_joint-lift-table_a2_a4_table2_room3 ?dd - dummy)
	(pre-8tk_joint-move-table_a2_a4_table2_room3_room2 ?dd - dummy)
	(pre-38g_joint-move-table_a2_a4_table2_room2_room1 ?dd - dummy)
	(pre-8pd_joint-drop-table_a2_a4_table2_room1 ?dd - dummy)
	(dummy-right-m7w_observe-table_a5_table3_room6 ?dd - dummy)
)

(:action dummyPrivateAction 
	:effect (and (p-dummy-agnt))
)
(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-o75_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (init-o75_observe-table_a3_table2_room2 dd)(immediate-dummy-o75_observe-table_a3_table2_room2 dd)(in a2 room2)(can-observe a2 table2))
	:observe (inroom table2 room2)
)
(:action act-dummy-o75_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (init-o75_observe-table_a3_table2_room2 dd)(not (dummy-left-o75_observe-table_a3_table2_room2 dd))(not (dummy-right-o75_observe-table_a3_table2_room2 dd)))
	:effect (and (immediate-dummy-o75_observe-table_a3_table2_room2 dd) )
)
(:action dummy-left-o75_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (init-o75_observe-table_a3_table2_room2 dd)(in a2 room2)(can-observe a2 table2)(not (inroom table2 room2))(immediate-dummy-o75_observe-table_a3_table2_room2 dd))
	:effect (and (not (init-o75_observe-table_a3_table2_room2 dd))(not (immediate-dummy-o75_observe-table_a3_table2_room2 dd))(dummy-left-o75_observe-table_a3_table2_room2 dd))
)
(:action dummy-right-o75_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (init-o75_observe-table_a3_table2_room2 dd)(in a2 room2)(can-observe a2 table2)(inroom table2 room2)(immediate-dummy-o75_observe-table_a3_table2_room2 dd))
	:effect (and (not (init-o75_observe-table_a3_table2_room2 dd))(not (immediate-dummy-o75_observe-table_a3_table2_room2 dd))(dummy-right-o75_observe-table_a3_table2_room2 dd))
)
(:action goal-achieve-left-o75_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-o75_observe-table_a3_table2_room2 dd)(not (inroom table2 room2)))
	:effect (and (done-goal dd)(not (dummy-left-o75_observe-table_a3_table2_room2 dd)))
)
(:action act-izf_observe-table-vjr-8gg-7n2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-o75_observe-table_a3_table2_room2 dd)(immediate-dummy-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)(inroom table2 room2)(in a2 room3)(can-observe a2 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-izf_observe-table-vjr-8gg-7n2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-o75_observe-table_a3_table2_room2 dd)(inroom table2 room2)(in a2 room3)(can-observe a2 table1)(not (dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))(not (dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd) )
)
(:action dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-o75_observe-table_a3_table2_room2 dd)(inroom table2 room2)(in a2 room3)(can-observe a2 table1)(not (inroom table1 room3))(immediate-dummy-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))(dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-o75_observe-table_a3_table2_room2 dd)(inroom table2 room2)(in a2 room3)(can-observe a2 table1)(inroom table1 room3)(immediate-dummy-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))(dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd))
)
(:action act-3a3_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)(immediate-dummy-3a3_observe-table_a4_table4_room6 dd)(inroom table2 room2)(in a2 room6)(can-observe a2 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-3a3_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)(inroom table2 room2)(in a2 room6)(can-observe a2 table4)(not (dummy-left-3a3_observe-table_a4_table4_room6 dd))(not (dummy-right-3a3_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-3a3_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-3a3_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)(inroom table2 room2)(in a2 room6)(can-observe a2 table4)(not (inroom table4 room6))(immediate-dummy-3a3_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-3a3_observe-table_a4_table4_room6 dd))(dummy-left-3a3_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-3a3_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)(inroom table2 room2)(in a2 room6)(can-observe a2 table4)(inroom table4 room6)(immediate-dummy-3a3_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-3a3_observe-table_a4_table4_room6 dd))(dummy-right-3a3_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-3a3_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3a3_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table2 room2))
	:effect (and (done-goal dd)(not (dummy-left-3a3_observe-table_a4_table4_room6 dd)))
)
(:action act-i94_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3a3_observe-table_a4_table4_room6 dd)(immediate-dummy-i94_observe-table_a2_table3_room5 dd)(inroom table4 room6)(inroom table2 room2)(in a2 room5)(can-observe a2 table3))
	:observe (inroom table3 room5)
)
(:action act-dummy-i94_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3a3_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table2 room2)(in a2 room5)(can-observe a2 table3)(not (dummy-left-i94_observe-table_a2_table3_room5 dd))(not (dummy-right-i94_observe-table_a2_table3_room5 dd)))
	:effect (and (immediate-dummy-i94_observe-table_a2_table3_room5 dd) )
)
(:action dummy-left-i94_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3a3_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table2 room2)(in a2 room5)(can-observe a2 table3)(not (inroom table3 room5))(immediate-dummy-i94_observe-table_a2_table3_room5 dd))
	:effect (and (not (immediate-dummy-i94_observe-table_a2_table3_room5 dd))(dummy-left-i94_observe-table_a2_table3_room5 dd))
)
(:action dummy-right-i94_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3a3_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table2 room2)(in a2 room5)(can-observe a2 table3)(inroom table3 room5)(immediate-dummy-i94_observe-table_a2_table3_room5 dd))
	:effect (and (not (immediate-dummy-i94_observe-table_a2_table3_room5 dd))(dummy-right-i94_observe-table_a2_table3_room5 dd))
)
(:action act-im4_joint-lift-table_a2_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-i94_observe-table_a2_table3_room5 dd)(not (inroom table3 room5))(inroom table4 room6)(inroom table2 room2)(available a2)(in a2 room6))
	:effect (and (pre-im4_joint-lift-table_a2_a4_table3_room6 dd)(not (available a2)))
)
(:action act-u2k_joint-move-table_a2_a4_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-im4_joint-lift-table_a2_a4_table3_room6 dd)(in a2 room6)(connected room6 room5))
	:effect (and (pre-u2k_joint-move-table_a2_a4_table3_room6_room5 dd)(not (pre-im4_joint-lift-table_a2_a4_table3_room6 dd))(not (in a2 room6))(in a2 room5))
)
(:action act-asi_joint-drop-table_a2_a4_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-u2k_joint-move-table_a2_a4_table3_room6_room5 dd)(in a2 room5))
	:effect (and (pre-asi_joint-drop-table_a2_a4_table3_room5 dd)(not (pre-u2k_joint-move-table_a2_a4_table3_room6_room5 dd))(available a2))
)
(:action goal-achieve-asi_joint-drop-table_a2_a4_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-asi_joint-drop-table_a2_a4_table3_room5 dd))
	:effect (and (done-goal dd)(not (pre-asi_joint-drop-table_a2_a4_table3_room5 dd)))
)
(:action goal-achieve-right-i94_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-i94_observe-table_a2_table3_room5 dd)(inroom table3 room5)(inroom table4 room6)(inroom table2 room2))
	:effect (and (done-goal dd)(not (dummy-right-i94_observe-table_a2_table3_room5 dd)))
)
(:action act-m7w_observe-table_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)(immediate-dummy-m7w_observe-table_a5_table3_room6 dd)(inroom table2 room2)(in a2 room6)(can-observe a2 table3))
	:observe (inroom table3 room6)
)
(:action act-dummy-m7w_observe-table_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)(inroom table2 room2)(in a2 room6)(can-observe a2 table3)(not (dummy-left-m7w_observe-table_a5_table3_room6 dd))(not (dummy-right-m7w_observe-table_a5_table3_room6 dd)))
	:effect (and (immediate-dummy-m7w_observe-table_a5_table3_room6 dd) )
)
(:action dummy-left-m7w_observe-table_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)(inroom table2 room2)(in a2 room6)(can-observe a2 table3)(not (inroom table3 room6))(immediate-dummy-m7w_observe-table_a5_table3_room6 dd))
	:effect (and (not (immediate-dummy-m7w_observe-table_a5_table3_room6 dd))(dummy-left-m7w_observe-table_a5_table3_room6 dd))
)
(:action dummy-right-m7w_observe-table_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-izf_observe-table-vjr-8gg-7n2_a4_table1_room3 dd)(inroom table2 room2)(in a2 room6)(can-observe a2 table3)(inroom table3 room6)(immediate-dummy-m7w_observe-table_a5_table3_room6 dd))
	:effect (and (not (immediate-dummy-m7w_observe-table_a5_table3_room6 dd))(dummy-right-m7w_observe-table_a5_table3_room6 dd))
)
(:action act-d13_observe-table_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-m7w_observe-table_a5_table3_room6 dd)(immediate-dummy-d13_observe-table_a5_table4_room6 dd)(not (inroom table3 room6))(inroom table2 room2)(in a2 room6)(can-observe a2 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-d13_observe-table_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-m7w_observe-table_a5_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room2)(in a2 room6)(can-observe a2 table4)(not (dummy-left-d13_observe-table_a5_table4_room6 dd))(not (dummy-right-d13_observe-table_a5_table4_room6 dd)))
	:effect (and (immediate-dummy-d13_observe-table_a5_table4_room6 dd) )
)
(:action dummy-left-d13_observe-table_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-m7w_observe-table_a5_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room2)(in a2 room6)(can-observe a2 table4)(not (inroom table4 room6))(immediate-dummy-d13_observe-table_a5_table4_room6 dd))
	:effect (and (not (immediate-dummy-d13_observe-table_a5_table4_room6 dd))(dummy-left-d13_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-d13_observe-table_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-m7w_observe-table_a5_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room2)(in a2 room6)(can-observe a2 table4)(inroom table4 room6)(immediate-dummy-d13_observe-table_a5_table4_room6 dd))
	:effect (and (not (immediate-dummy-d13_observe-table_a5_table4_room6 dd))(dummy-right-d13_observe-table_a5_table4_room6 dd))
)
(:action goal-achieve-left-d13_observe-table_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-d13_observe-table_a5_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(inroom table2 room2))
	:effect (and (done-goal dd)(not (dummy-left-d13_observe-table_a5_table4_room6 dd)))
)
(:action act-bom_joint-lift-table_a2_a4_table2_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-d13_observe-table_a5_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(inroom table2 room2)(available a2)(in a2 room3))
	:effect (and (pre-bom_joint-lift-table_a2_a4_table2_room3 dd)(not (available a2)))
)
(:action act-8tk_joint-move-table_a2_a4_table2_room3_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-bom_joint-lift-table_a2_a4_table2_room3 dd)(in a2 room3)(connected room3 room2))
	:effect (and (pre-8tk_joint-move-table_a2_a4_table2_room3_room2 dd)(not (pre-bom_joint-lift-table_a2_a4_table2_room3 dd))(not (in a2 room3))(in a2 room2))
)
(:action act-38g_joint-move-table_a2_a4_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-8tk_joint-move-table_a2_a4_table2_room3_room2 dd)(in a2 room2)(connected room2 room1))
	:effect (and (pre-38g_joint-move-table_a2_a4_table2_room2_room1 dd)(not (pre-8tk_joint-move-table_a2_a4_table2_room3_room2 dd))(not (in a2 room2))(in a2 room1))
)
(:action act-8pd_joint-drop-table_a2_a4_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-38g_joint-move-table_a2_a4_table2_room2_room1 dd)(in a2 room1))
	:effect (and (pre-8pd_joint-drop-table_a2_a4_table2_room1 dd)(not (pre-38g_joint-move-table_a2_a4_table2_room2_room1 dd))(available a2))
)
(:action goal-achieve-8pd_joint-drop-table_a2_a4_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-8pd_joint-drop-table_a2_a4_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-8pd_joint-drop-table_a2_a4_table2_room1 dd)))
)
(:action goal-achieve-right-m7w_observe-table_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-m7w_observe-table_a5_table3_room6 dd)(inroom table3 room6)(inroom table2 room2))
	:effect (and (done-goal dd)(not (dummy-right-m7w_observe-table_a5_table3_room6 dd)))
)
)