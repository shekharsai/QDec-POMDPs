(define (domain tablemover-2-a2)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	a2 - agent
	room1 - room
	room2 - room
	room3 - room
	room4 - room
	dd - dummy)
(:predicates 
	(lifting ?a - agent ?t - table )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a - agent ?t - table )
	(init-dtj_observe-table_a2_table1_room4 ?dd - dummy)
	(immediate-dummy-dtj_observe-table_a2_table1_room4 ?dd - dummy)
	(dummy-left-dtj_observe-table_a2_table1_room4 ?dd - dummy)
	(pre-s46_joint-lift-table_a1_a2_table1_room3 ?dd - dummy)
	(pre-d6h_joint-move-table_a1_a2_table1_room3_room4 ?dd - dummy)
	(pre-an0_joint-drop-table_a1_a2_table1_room4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-dtj_observe-table_a2_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-dtj_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-dtj_observe-table_a2_table1_room4 dd)(immediate-dummy-dtj_observe-table_a2_table1_room4 dd)(in a2 room4)(can-observe a2 table1))
	:observe (inroom table1 room4)
)
(:action act-dummy-dtj_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-dtj_observe-table_a2_table1_room4 dd)(not (dummy-left-dtj_observe-table_a2_table1_room4 dd))(not (dummy-right-dtj_observe-table_a2_table1_room4 dd)))
	:effect (and (immediate-dummy-dtj_observe-table_a2_table1_room4 dd) )
)
(:action dummy-left-dtj_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-dtj_observe-table_a2_table1_room4 dd)(in a2 room4)(can-observe a2 table1)(not (inroom table1 room4))(immediate-dummy-dtj_observe-table_a2_table1_room4 dd))
	:effect (and (not (init-dtj_observe-table_a2_table1_room4 dd))(not (immediate-dummy-dtj_observe-table_a2_table1_room4 dd))(dummy-left-dtj_observe-table_a2_table1_room4 dd))
)
(:action dummy-right-dtj_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-dtj_observe-table_a2_table1_room4 dd)(in a2 room4)(can-observe a2 table1)(inroom table1 room4)(immediate-dummy-dtj_observe-table_a2_table1_room4 dd))
	:effect (and (not (init-dtj_observe-table_a2_table1_room4 dd))(not (immediate-dummy-dtj_observe-table_a2_table1_room4 dd))(dummy-right-dtj_observe-table_a2_table1_room4 dd))
)
(:action act-s46_joint-lift-table_a1_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-dtj_observe-table_a2_table1_room4 dd)(not (inroom table1 room4))(available a2)(in a2 room3))
	:effect (and (pre-s46_joint-lift-table_a1_a2_table1_room3 dd)(not (available a2)))
)
(:action act-d6h_joint-move-table_a1_a2_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-s46_joint-lift-table_a1_a2_table1_room3 dd)(in a2 room3)(connected room3 room4))
	:effect (and (pre-d6h_joint-move-table_a1_a2_table1_room3_room4 dd)(not (pre-s46_joint-lift-table_a1_a2_table1_room3 dd))(not (in a2 room3))(in a2 room4))
)
(:action act-an0_joint-drop-table_a1_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-d6h_joint-move-table_a1_a2_table1_room3_room4 dd)(in a2 room4))
	:effect (and (pre-an0_joint-drop-table_a1_a2_table1_room4 dd)(not (pre-d6h_joint-move-table_a1_a2_table1_room3_room4 dd))(available a2))
)
(:action goal-achieve-an0_joint-drop-table_a1_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-an0_joint-drop-table_a1_a2_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-an0_joint-drop-table_a1_a2_table1_room4 dd)))
)
(:action goal-achieve-right-dtj_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dtj_observe-table_a2_table1_room4 dd)(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-dtj_observe-table_a2_table1_room4 dd)))
)
)