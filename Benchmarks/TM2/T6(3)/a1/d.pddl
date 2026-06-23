(define (domain tablemover-2-a1)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	a1 - agent
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
	(init-kzp_observe-table_a1_table1_room4 ?dd - dummy)
	(immediate-dummy-kzp_observe-table_a1_table1_room4 ?dd - dummy)
	(dummy-left-kzp_observe-table_a1_table1_room4 ?dd - dummy)
	(pre-n1l_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
	(pre-w8s_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
	(pre-jx6_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-kzp_observe-table_a1_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-kzp_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-kzp_observe-table_a1_table1_room4 dd)(immediate-dummy-kzp_observe-table_a1_table1_room4 dd)(in a1 room4)(can-observe a1 table1)(available a1))
	:observe (inroom table1 room4)
)
(:action act-dummy-kzp_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-kzp_observe-table_a1_table1_room4 dd)(not (dummy-left-kzp_observe-table_a1_table1_room4 dd))(not (dummy-right-kzp_observe-table_a1_table1_room4 dd)))
	:effect (and (immediate-dummy-kzp_observe-table_a1_table1_room4 dd) )
)
(:action dummy-left-kzp_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-kzp_observe-table_a1_table1_room4 dd)(in a1 room4)(can-observe a1 table1)(available a1)(not (inroom table1 room4))(immediate-dummy-kzp_observe-table_a1_table1_room4 dd))
	:effect (and (not (init-kzp_observe-table_a1_table1_room4 dd))(not (immediate-dummy-kzp_observe-table_a1_table1_room4 dd))(dummy-left-kzp_observe-table_a1_table1_room4 dd))
)
(:action dummy-right-kzp_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-kzp_observe-table_a1_table1_room4 dd)(in a1 room4)(can-observe a1 table1)(available a1)(inroom table1 room4)(immediate-dummy-kzp_observe-table_a1_table1_room4 dd))
	:effect (and (not (init-kzp_observe-table_a1_table1_room4 dd))(not (immediate-dummy-kzp_observe-table_a1_table1_room4 dd))(dummy-right-kzp_observe-table_a1_table1_room4 dd))
)
(:action act-n1l_joint-lift-table_a1_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-kzp_observe-table_a1_table1_room4 dd)(not (inroom table1 room4))(available a1)(in a1 room3))
	:effect (and (pre-n1l_joint-lift-table_a1_a3_table1_room3 dd)(not (available a1)))
)
(:action act-w8s_joint-move-table_a1_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-n1l_joint-lift-table_a1_a3_table1_room3 dd)(in a1 room3)(connected room3 room4))
	:effect (and (pre-w8s_joint-move-table_a1_a3_table1_room3_room4 dd)(not (pre-n1l_joint-lift-table_a1_a3_table1_room3 dd))(not (in a1 room3))(in a1 room4))
)
(:action act-jx6_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-w8s_joint-move-table_a1_a3_table1_room3_room4 dd)(in a1 room4))
	:effect (and (pre-jx6_joint-drop-table_a1_a3_table1_room4 dd)(not (pre-w8s_joint-move-table_a1_a3_table1_room3_room4 dd))(available a1))
)
(:action goal-achieve-jx6_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-jx6_joint-drop-table_a1_a3_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-jx6_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action goal-achieve-right-kzp_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kzp_observe-table_a1_table1_room4 dd)(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-kzp_observe-table_a1_table1_room4 dd)))
)
)