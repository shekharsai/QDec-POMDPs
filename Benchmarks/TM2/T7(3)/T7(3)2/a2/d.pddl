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
	(lifting ?a - agent ?t - table ?r - room )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a - agent ?t - table )
	(init-mb2_observe-table_a2_table1_room4 ?dd - dummy)
	(immediate-dummy-mb2_observe-table_a2_table1_room4 ?dd - dummy)
	(dummy-left-mb2_observe-table_a2_table1_room4 ?dd - dummy)
	(pre-ott_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
	(pre-921_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
	(pre-s0x_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-mb2_observe-table_a2_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-mb2_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-mb2_observe-table_a2_table1_room4 dd)(immediate-dummy-mb2_observe-table_a2_table1_room4 dd)(in a2 room4)(can-observe a2 table1)(available a2))
	:observe (inroom table1 room4)
)
(:action act-dummy-mb2_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-mb2_observe-table_a2_table1_room4 dd)(not (dummy-left-mb2_observe-table_a2_table1_room4 dd))(not (dummy-right-mb2_observe-table_a2_table1_room4 dd)))
	:effect (and (immediate-dummy-mb2_observe-table_a2_table1_room4 dd) )
)
(:action dummy-left-mb2_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-mb2_observe-table_a2_table1_room4 dd)(in a2 room4)(can-observe a2 table1)(available a2)(not (inroom table1 room4))(immediate-dummy-mb2_observe-table_a2_table1_room4 dd))
	:effect (and (not (init-mb2_observe-table_a2_table1_room4 dd))(not (immediate-dummy-mb2_observe-table_a2_table1_room4 dd))(dummy-left-mb2_observe-table_a2_table1_room4 dd))
)
(:action dummy-right-mb2_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-mb2_observe-table_a2_table1_room4 dd)(in a2 room4)(can-observe a2 table1)(available a2)(inroom table1 room4)(immediate-dummy-mb2_observe-table_a2_table1_room4 dd))
	:effect (and (not (init-mb2_observe-table_a2_table1_room4 dd))(not (immediate-dummy-mb2_observe-table_a2_table1_room4 dd))(dummy-right-mb2_observe-table_a2_table1_room4 dd))
)
(:action act-ott_joint-lift-table_a2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mb2_observe-table_a2_table1_room4 dd)(not (inroom table1 room4))(available a2)(in a2 room3))
	:effect (and (pre-ott_joint-lift-table_a2_a4_table1_room3 dd)(not (available a2)))
)
(:action act-921_joint-move-table_a2_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-ott_joint-lift-table_a2_a4_table1_room3 dd)(in a2 room3)(connected room3 room4))
	:effect (and (pre-921_joint-move-table_a2_a4_table1_room3_room4 dd)(not (pre-ott_joint-lift-table_a2_a4_table1_room3 dd))(not (in a2 room3))(in a2 room4))
)
(:action act-s0x_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-921_joint-move-table_a2_a4_table1_room3_room4 dd)(in a2 room4))
	:effect (and (pre-s0x_joint-drop-table_a2_a4_table1_room4 dd)(not (pre-921_joint-move-table_a2_a4_table1_room3_room4 dd))(available a2))
)
(:action goal-achieve-s0x_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-s0x_joint-drop-table_a2_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-s0x_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action goal-achieve-right-mb2_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mb2_observe-table_a2_table1_room4 dd)(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-mb2_observe-table_a2_table1_room4 dd)))
)
)