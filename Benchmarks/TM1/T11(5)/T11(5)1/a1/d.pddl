(define (domain tablemover-2-a1)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	table4 - table
	a1 - agent
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
	(init-wqq_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-wqq_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-wqq_observe-table_a3_table2_room1 ?dd - dummy)
	(pre-97l_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-gcy_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-sf1_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-wqq_observe-table_a3_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-wqq_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-wqq_observe-table_a3_table2_room1 dd)(immediate-dummy-wqq_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-wqq_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-wqq_observe-table_a3_table2_room1 dd)(not (dummy-left-wqq_observe-table_a3_table2_room1 dd))(not (dummy-right-wqq_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-wqq_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-wqq_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-wqq_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2)(not (inroom table2 room1))(immediate-dummy-wqq_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-wqq_observe-table_a3_table2_room1 dd))(not (immediate-dummy-wqq_observe-table_a3_table2_room1 dd))(dummy-left-wqq_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-wqq_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-wqq_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2)(inroom table2 room1)(immediate-dummy-wqq_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-wqq_observe-table_a3_table2_room1 dd))(not (immediate-dummy-wqq_observe-table_a3_table2_room1 dd))(dummy-right-wqq_observe-table_a3_table2_room1 dd))
)
(:action act-97l_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wqq_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(available a1)(in a1 room2))
	:effect (and (pre-97l_joint-lift-table_a1_a3_table2_room2 dd)(not (available a1)))
)
(:action act-gcy_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-97l_joint-lift-table_a1_a3_table2_room2 dd)(in a1 room2)(connected room2 room1))
	:effect (and (pre-gcy_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-97l_joint-lift-table_a1_a3_table2_room2 dd))(not (in a1 room2))(in a1 room1))
)
(:action act-sf1_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-gcy_joint-move-table_a1_a3_table2_room2_room1 dd)(in a1 room1))
	:effect (and (pre-sf1_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-gcy_joint-move-table_a1_a3_table2_room2_room1 dd))(available a1))
)
(:action goal-achieve-sf1_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-sf1_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-sf1_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-wqq_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wqq_observe-table_a3_table2_room1 dd)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-right-wqq_observe-table_a3_table2_room1 dd)))
)
)