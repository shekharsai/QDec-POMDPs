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
	dd - dummy)
(:predicates 
	(lifting ?a - agent ?t - table )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a - agent ?t - table )
	(init-lj3_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-lj3_observe-table_a2_table1_room3 ?dd - dummy)
	(dummy-left-lj3_observe-table_a2_table1_room3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-lj3_observe-table_a2_table1_room3 ?dd - dummy)
	(pre-omb_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
	(pre-fj2_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
	(pre-eo9_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-lj3_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-lj3_observe-table_a2_table1_room3 dd)(immediate-dummy-lj3_observe-table_a2_table1_room3 dd)(in a2 room3)(can-observe a2 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-lj3_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-lj3_observe-table_a2_table1_room3 dd)(not (dummy-left-lj3_observe-table_a2_table1_room3 dd))(not (dummy-right-lj3_observe-table_a2_table1_room3 dd)))
	:effect (and (immediate-dummy-lj3_observe-table_a2_table1_room3 dd) )
)
(:action dummy-left-lj3_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-lj3_observe-table_a2_table1_room3 dd)(in a2 room3)(can-observe a2 table1)(not (inroom table1 room3))(immediate-dummy-lj3_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-lj3_observe-table_a2_table1_room3 dd))(not (immediate-dummy-lj3_observe-table_a2_table1_room3 dd))(dummy-left-lj3_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-lj3_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-lj3_observe-table_a2_table1_room3 dd)(in a2 room3)(can-observe a2 table1)(inroom table1 room3)(immediate-dummy-lj3_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-lj3_observe-table_a2_table1_room3 dd))(not (immediate-dummy-lj3_observe-table_a2_table1_room3 dd))(dummy-right-lj3_observe-table_a2_table1_room3 dd))
)
(:action goal-achieve-left-lj3_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-lj3_observe-table_a2_table1_room3 dd)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-lj3_observe-table_a2_table1_room3 dd)))
)
(:action act-omb_joint-lift-table_a2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-lj3_observe-table_a2_table1_room3 dd)(inroom table1 room3)(available a2)(in a2 room3))
	:effect (and (pre-omb_joint-lift-table_a2_a4_table1_room3 dd)(not (available a2)))
)
(:action act-fj2_joint-move-table_a2_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-omb_joint-lift-table_a2_a4_table1_room3 dd)(in a2 room3)(connected room3 room4))
	:effect (and (pre-fj2_joint-move-table_a2_a4_table1_room3_room4 dd)(not (pre-omb_joint-lift-table_a2_a4_table1_room3 dd))(not (in a2 room3))(in a2 room4))
)
(:action act-eo9_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-fj2_joint-move-table_a2_a4_table1_room3_room4 dd)(in a2 room4))
	:effect (and (pre-eo9_joint-drop-table_a2_a4_table1_room4 dd)(not (pre-fj2_joint-move-table_a2_a4_table1_room3_room4 dd))(available a2))
)
(:action goal-achieve-eo9_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-eo9_joint-drop-table_a2_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-eo9_joint-drop-table_a2_a4_table1_room4 dd)))
)
)