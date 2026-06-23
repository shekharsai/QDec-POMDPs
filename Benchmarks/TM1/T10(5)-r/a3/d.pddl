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
	(init-mht_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-mht_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-mht_observe-table_a3_table2_room1 ?dd - dummy)
	(pre-v29_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-lrz_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-mr4_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-mht_observe-table_a3_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-mht_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-mht_observe-table_a3_table2_room1 dd)(immediate-dummy-mht_observe-table_a3_table2_room1 dd)(in a3 room1))
	:observe (inroom table2 room1)
)
(:action act-dummy-mht_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-mht_observe-table_a3_table2_room1 dd)(not (dummy-left-mht_observe-table_a3_table2_room1 dd))(not (dummy-right-mht_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-mht_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-mht_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-mht_observe-table_a3_table2_room1 dd)(in a3 room1)(not (inroom table2 room1))(immediate-dummy-mht_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-mht_observe-table_a3_table2_room1 dd))(not (immediate-dummy-mht_observe-table_a3_table2_room1 dd))(dummy-left-mht_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-mht_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-mht_observe-table_a3_table2_room1 dd)(in a3 room1)(inroom table2 room1)(immediate-dummy-mht_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-mht_observe-table_a3_table2_room1 dd))(not (immediate-dummy-mht_observe-table_a3_table2_room1 dd))(dummy-right-mht_observe-table_a3_table2_room1 dd))
)
(:action act-v29_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mht_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(available a3)(in a3 room2))
	:effect (and (pre-v29_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-lrz_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-v29_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-lrz_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-v29_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-mr4_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-lrz_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-mr4_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-lrz_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-mr4_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-mr4_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-mr4_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-mht_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mht_observe-table_a3_table2_room1 dd)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-right-mht_observe-table_a3_table2_room1 dd)))
)
)