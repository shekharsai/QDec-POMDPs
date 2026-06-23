(define (domain tablemover-2-a3)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	a3 - agent
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
	(init-g5a_observe-table_a3_table1_room4 ?dd - dummy)
	(immediate-dummy-g5a_observe-table_a3_table1_room4 ?dd - dummy)
	(dummy-left-g5a_observe-table_a3_table1_room4 ?dd - dummy)
	(pre-mbu_joint-lift-table_a3_a1_table1_room3 ?dd - dummy)
	(pre-8f6_joint-move-table_a3_a1_table1_room3_room4 ?dd - dummy)
	(pre-mw3_joint-drop-table_a3_a1_table1_room4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-g5a_observe-table_a3_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-g5a_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-g5a_observe-table_a3_table1_room4 dd)(immediate-dummy-g5a_observe-table_a3_table1_room4 dd)(in a3 room4)(can-observe a3 table1)(available a3))
	:observe (inroom table1 room4)
)
(:action act-dummy-g5a_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-g5a_observe-table_a3_table1_room4 dd)(not (dummy-left-g5a_observe-table_a3_table1_room4 dd))(not (dummy-right-g5a_observe-table_a3_table1_room4 dd)))
	:effect (and (immediate-dummy-g5a_observe-table_a3_table1_room4 dd) )
)
(:action dummy-left-g5a_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-g5a_observe-table_a3_table1_room4 dd)(in a3 room4)(can-observe a3 table1)(available a3)(not (inroom table1 room4))(immediate-dummy-g5a_observe-table_a3_table1_room4 dd))
	:effect (and (not (init-g5a_observe-table_a3_table1_room4 dd))(not (immediate-dummy-g5a_observe-table_a3_table1_room4 dd))(dummy-left-g5a_observe-table_a3_table1_room4 dd))
)
(:action dummy-right-g5a_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-g5a_observe-table_a3_table1_room4 dd)(in a3 room4)(can-observe a3 table1)(available a3)(inroom table1 room4)(immediate-dummy-g5a_observe-table_a3_table1_room4 dd))
	:effect (and (not (init-g5a_observe-table_a3_table1_room4 dd))(not (immediate-dummy-g5a_observe-table_a3_table1_room4 dd))(dummy-right-g5a_observe-table_a3_table1_room4 dd))
)
(:action act-mbu_joint-lift-table_a3_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g5a_observe-table_a3_table1_room4 dd)(not (inroom table1 room4))(available a3)(in a3 room3))
	:effect (and (pre-mbu_joint-lift-table_a3_a1_table1_room3 dd)(not (available a3)))
)
(:action act-8f6_joint-move-table_a3_a1_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-mbu_joint-lift-table_a3_a1_table1_room3 dd)(in a3 room3)(connected room3 room4))
	:effect (and (pre-8f6_joint-move-table_a3_a1_table1_room3_room4 dd)(not (pre-mbu_joint-lift-table_a3_a1_table1_room3 dd))(not (in a3 room3))(in a3 room4))
)
(:action act-mw3_joint-drop-table_a3_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-8f6_joint-move-table_a3_a1_table1_room3_room4 dd)(in a3 room4))
	:effect (and (pre-mw3_joint-drop-table_a3_a1_table1_room4 dd)(not (pre-8f6_joint-move-table_a3_a1_table1_room3_room4 dd))(available a3))
)
(:action goal-achieve-mw3_joint-drop-table_a3_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-mw3_joint-drop-table_a3_a1_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-mw3_joint-drop-table_a3_a1_table1_room4 dd)))
)
(:action goal-achieve-right-g5a_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g5a_observe-table_a3_table1_room4 dd)(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-g5a_observe-table_a3_table1_room4 dd)))
)
)