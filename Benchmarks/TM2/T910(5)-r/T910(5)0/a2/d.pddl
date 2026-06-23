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
	(lifting ?a - agent ?t - table ?r - room )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a - agent ?t - table )
	(init-jod_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-jod_observe-table_a4_table1_room3 ?dd - dummy)
	(dummy-left-jod_observe-table_a4_table1_room3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-jod_observe-table_a4_table1_room3 ?dd - dummy)
	(pre-8ce_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
	(pre-b47_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
	(pre-rlq_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-jod_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-jod_observe-table_a4_table1_room3 dd)(immediate-dummy-jod_observe-table_a4_table1_room3 dd)(in a2 room3)(available a2))
	:observe (inroom table1 room3)
)
(:action act-dummy-jod_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-jod_observe-table_a4_table1_room3 dd)(not (dummy-left-jod_observe-table_a4_table1_room3 dd))(not (dummy-right-jod_observe-table_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-jod_observe-table_a4_table1_room3 dd) )
)
(:action dummy-left-jod_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-jod_observe-table_a4_table1_room3 dd)(in a2 room3)(available a2)(not (inroom table1 room3))(immediate-dummy-jod_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-jod_observe-table_a4_table1_room3 dd))(not (immediate-dummy-jod_observe-table_a4_table1_room3 dd))(dummy-left-jod_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-jod_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-jod_observe-table_a4_table1_room3 dd)(in a2 room3)(available a2)(inroom table1 room3)(immediate-dummy-jod_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-jod_observe-table_a4_table1_room3 dd))(not (immediate-dummy-jod_observe-table_a4_table1_room3 dd))(dummy-right-jod_observe-table_a4_table1_room3 dd))
)
(:action goal-achieve-left-jod_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jod_observe-table_a4_table1_room3 dd)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-jod_observe-table_a4_table1_room3 dd)))
)
(:action act-8ce_joint-lift-table_a2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jod_observe-table_a4_table1_room3 dd)(inroom table1 room3)(available a2)(in a2 room3))
	:effect (and (pre-8ce_joint-lift-table_a2_a4_table1_room3 dd)(not (available a2)))
)
(:action act-b47_joint-move-table_a2_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-8ce_joint-lift-table_a2_a4_table1_room3 dd)(in a2 room3)(connected room3 room4))
	:effect (and (pre-b47_joint-move-table_a2_a4_table1_room3_room4 dd)(not (pre-8ce_joint-lift-table_a2_a4_table1_room3 dd))(not (in a2 room3))(in a2 room4))
)
(:action act-rlq_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-b47_joint-move-table_a2_a4_table1_room3_room4 dd)(in a2 room4))
	:effect (and (pre-rlq_joint-drop-table_a2_a4_table1_room4 dd)(not (pre-b47_joint-move-table_a2_a4_table1_room3_room4 dd))(available a2))
)
(:action goal-achieve-rlq_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-rlq_joint-drop-table_a2_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-rlq_joint-drop-table_a2_a4_table1_room4 dd)))
)
)