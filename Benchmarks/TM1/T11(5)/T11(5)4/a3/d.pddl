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
	(init-j71_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-j71_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-j71_observe-table_a3_table2_room1 ?dd - dummy)
	(pre-naa_joint-lift-table_a3_a4_table2_room2 ?dd - dummy)
	(pre-vua_joint-move-table_a3_a4_table2_room2_room1 ?dd - dummy)
	(pre-jwm_joint-drop-table_a3_a4_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-j71_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-nb8_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(dummy-left-nb8_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(dummy-right-nb8_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(pre-967_joint-lift-table_a3_a4_table1_room3 ?dd - dummy)
	(pre-d7z_joint-move-table_a3_a4_table1_room3_room4 ?dd - dummy)
	(pre-b81_joint-drop-table_a3_a4_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-j71_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-j71_observe-table_a3_table2_room1 dd)(immediate-dummy-j71_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-j71_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-j71_observe-table_a3_table2_room1 dd)(not (dummy-left-j71_observe-table_a3_table2_room1 dd))(not (dummy-right-j71_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-j71_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-j71_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-j71_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(not (inroom table2 room1))(immediate-dummy-j71_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-j71_observe-table_a3_table2_room1 dd))(not (immediate-dummy-j71_observe-table_a3_table2_room1 dd))(dummy-left-j71_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-j71_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-j71_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(inroom table2 room1)(immediate-dummy-j71_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-j71_observe-table_a3_table2_room1 dd))(not (immediate-dummy-j71_observe-table_a3_table2_room1 dd))(dummy-right-j71_observe-table_a3_table2_room1 dd))
)
(:action act-naa_joint-lift-table_a3_a4_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j71_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(available a3)(in a3 room2))
	:effect (and (pre-naa_joint-lift-table_a3_a4_table2_room2 dd)(not (available a3)))
)
(:action act-vua_joint-move-table_a3_a4_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-naa_joint-lift-table_a3_a4_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-vua_joint-move-table_a3_a4_table2_room2_room1 dd)(not (pre-naa_joint-lift-table_a3_a4_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-jwm_joint-drop-table_a3_a4_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-vua_joint-move-table_a3_a4_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-jwm_joint-drop-table_a3_a4_table2_room1 dd)(not (pre-vua_joint-move-table_a3_a4_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-jwm_joint-drop-table_a3_a4_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-jwm_joint-drop-table_a3_a4_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-jwm_joint-drop-table_a3_a4_table2_room1 dd)))
)
(:action act-nb8_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j71_observe-table_a3_table2_room1 dd)(immediate-dummy-nb8_observe-table-lsq_a4_table1_room3 dd)(inroom table2 room1)(in a3 room3)(can-observe a3 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-nb8_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j71_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a3 room3)(can-observe a3 table1)(not (dummy-left-nb8_observe-table-lsq_a4_table1_room3 dd))(not (dummy-right-nb8_observe-table-lsq_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-nb8_observe-table-lsq_a4_table1_room3 dd) )
)
(:action dummy-left-nb8_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j71_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a3 room3)(can-observe a3 table1)(not (inroom table1 room3))(immediate-dummy-nb8_observe-table-lsq_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-nb8_observe-table-lsq_a4_table1_room3 dd))(dummy-left-nb8_observe-table-lsq_a4_table1_room3 dd))
)
(:action dummy-right-nb8_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j71_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a3 room3)(can-observe a3 table1)(inroom table1 room3)(immediate-dummy-nb8_observe-table-lsq_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-nb8_observe-table-lsq_a4_table1_room3 dd))(dummy-right-nb8_observe-table-lsq_a4_table1_room3 dd))
)
(:action goal-achieve-left-nb8_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-nb8_observe-table-lsq_a4_table1_room3 dd)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-left-nb8_observe-table-lsq_a4_table1_room3 dd)))
)
(:action act-967_joint-lift-table_a3_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-nb8_observe-table-lsq_a4_table1_room3 dd)(inroom table2 room1)(available a3)(in a3 room3))
	:effect (and (pre-967_joint-lift-table_a3_a4_table1_room3 dd)(not (available a3)))
)
(:action act-d7z_joint-move-table_a3_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-967_joint-lift-table_a3_a4_table1_room3 dd)(in a3 room3)(connected room3 room4))
	:effect (and (pre-d7z_joint-move-table_a3_a4_table1_room3_room4 dd)(not (pre-967_joint-lift-table_a3_a4_table1_room3 dd))(not (in a3 room3))(in a3 room4))
)
(:action act-b81_joint-drop-table_a3_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-d7z_joint-move-table_a3_a4_table1_room3_room4 dd)(in a3 room4))
	:effect (and (pre-b81_joint-drop-table_a3_a4_table1_room4 dd)(not (pre-d7z_joint-move-table_a3_a4_table1_room3_room4 dd))(available a3))
)
(:action goal-achieve-b81_joint-drop-table_a3_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-b81_joint-drop-table_a3_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-b81_joint-drop-table_a3_a4_table1_room4 dd)))
)
)