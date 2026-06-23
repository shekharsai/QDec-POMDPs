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
	(init-u7p_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-u7p_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-u7p_observe-table_a3_table2_room1 ?dd - dummy)
	(pre-9u3_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-cxd_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-3e4_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-u7p_observe-table_a3_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-u7p_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-u7p_observe-table_a3_table2_room1 dd)(immediate-dummy-u7p_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-u7p_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-u7p_observe-table_a3_table2_room1 dd)(not (dummy-left-u7p_observe-table_a3_table2_room1 dd))(not (dummy-right-u7p_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-u7p_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-u7p_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-u7p_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(not (inroom table2 room1))(immediate-dummy-u7p_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-u7p_observe-table_a3_table2_room1 dd))(not (immediate-dummy-u7p_observe-table_a3_table2_room1 dd))(dummy-left-u7p_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-u7p_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-u7p_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(inroom table2 room1)(immediate-dummy-u7p_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-u7p_observe-table_a3_table2_room1 dd))(not (immediate-dummy-u7p_observe-table_a3_table2_room1 dd))(dummy-right-u7p_observe-table_a3_table2_room1 dd))
)
(:action act-9u3_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u7p_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(available a3)(in a3 room2))
	:effect (and (pre-9u3_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-cxd_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-9u3_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-cxd_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-9u3_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-3e4_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-cxd_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-3e4_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-cxd_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-3e4_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-3e4_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-3e4_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-u7p_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u7p_observe-table_a3_table2_room1 dd)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-right-u7p_observe-table_a3_table2_room1 dd)))
)
)