(define (domain tablemover-2-a4)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	table4 - table
	a4 - agent
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
	(init-ado_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-ado_observe-table_a2_table1_room3 ?dd - dummy)
	(dummy-left-ado_observe-table_a2_table1_room3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-ado_observe-table_a2_table1_room3 ?dd - dummy)
	(pre-1l5_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
	(pre-iws_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
	(pre-t9q_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-ado_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ado_observe-table_a2_table1_room3 dd)(immediate-dummy-ado_observe-table_a2_table1_room3 dd)(in a4 room3)(can-observe a4 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-ado_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ado_observe-table_a2_table1_room3 dd)(not (dummy-left-ado_observe-table_a2_table1_room3 dd))(not (dummy-right-ado_observe-table_a2_table1_room3 dd)))
	:effect (and (immediate-dummy-ado_observe-table_a2_table1_room3 dd) )
)
(:action dummy-left-ado_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ado_observe-table_a2_table1_room3 dd)(in a4 room3)(can-observe a4 table1)(not (inroom table1 room3))(immediate-dummy-ado_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-ado_observe-table_a2_table1_room3 dd))(not (immediate-dummy-ado_observe-table_a2_table1_room3 dd))(dummy-left-ado_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-ado_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ado_observe-table_a2_table1_room3 dd)(in a4 room3)(can-observe a4 table1)(inroom table1 room3)(immediate-dummy-ado_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-ado_observe-table_a2_table1_room3 dd))(not (immediate-dummy-ado_observe-table_a2_table1_room3 dd))(dummy-right-ado_observe-table_a2_table1_room3 dd))
)
(:action goal-achieve-left-ado_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ado_observe-table_a2_table1_room3 dd)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-ado_observe-table_a2_table1_room3 dd)))
)
(:action act-1l5_joint-lift-table_a2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ado_observe-table_a2_table1_room3 dd)(inroom table1 room3)(available a4)(in a4 room3))
	:effect (and (pre-1l5_joint-lift-table_a2_a4_table1_room3 dd)(not (available a4)))
)
(:action act-iws_joint-move-table_a2_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-1l5_joint-lift-table_a2_a4_table1_room3 dd)(in a4 room3)(connected room3 room4))
	:effect (and (pre-iws_joint-move-table_a2_a4_table1_room3_room4 dd)(not (pre-1l5_joint-lift-table_a2_a4_table1_room3 dd))(not (in a4 room3))(in a4 room4))
)
(:action act-t9q_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-iws_joint-move-table_a2_a4_table1_room3_room4 dd)(in a4 room4))
	:effect (and (pre-t9q_joint-drop-table_a2_a4_table1_room4 dd)(not (pre-iws_joint-move-table_a2_a4_table1_room3_room4 dd))(available a4))
)
(:action goal-achieve-t9q_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-t9q_joint-drop-table_a2_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-t9q_joint-drop-table_a2_a4_table1_room4 dd)))
)
)