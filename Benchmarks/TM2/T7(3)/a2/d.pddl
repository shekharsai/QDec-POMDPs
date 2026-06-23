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
	(init-h4p_observe-table_a2_table1_room4 ?dd - dummy)
	(immediate-dummy-h4p_observe-table_a2_table1_room4 ?dd - dummy)
	(dummy-left-h4p_observe-table_a2_table1_room4 ?dd - dummy)
	(pre-6gg_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
	(pre-kdm_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
	(pre-n2u_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-h4p_observe-table_a2_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-h4p_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-h4p_observe-table_a2_table1_room4 dd)(immediate-dummy-h4p_observe-table_a2_table1_room4 dd)(in a2 room4)(can-observe a2 table1)(available a2))
	:observe (inroom table1 room4)
)
(:action act-dummy-h4p_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-h4p_observe-table_a2_table1_room4 dd)(not (dummy-left-h4p_observe-table_a2_table1_room4 dd))(not (dummy-right-h4p_observe-table_a2_table1_room4 dd)))
	:effect (and (immediate-dummy-h4p_observe-table_a2_table1_room4 dd) )
)
(:action dummy-left-h4p_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-h4p_observe-table_a2_table1_room4 dd)(in a2 room4)(can-observe a2 table1)(available a2)(not (inroom table1 room4))(immediate-dummy-h4p_observe-table_a2_table1_room4 dd))
	:effect (and (not (init-h4p_observe-table_a2_table1_room4 dd))(not (immediate-dummy-h4p_observe-table_a2_table1_room4 dd))(dummy-left-h4p_observe-table_a2_table1_room4 dd))
)
(:action dummy-right-h4p_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-h4p_observe-table_a2_table1_room4 dd)(in a2 room4)(can-observe a2 table1)(available a2)(inroom table1 room4)(immediate-dummy-h4p_observe-table_a2_table1_room4 dd))
	:effect (and (not (init-h4p_observe-table_a2_table1_room4 dd))(not (immediate-dummy-h4p_observe-table_a2_table1_room4 dd))(dummy-right-h4p_observe-table_a2_table1_room4 dd))
)
(:action act-6gg_joint-lift-table_a2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-h4p_observe-table_a2_table1_room4 dd)(not (inroom table1 room4))(available a2)(in a2 room3))
	:effect (and (pre-6gg_joint-lift-table_a2_a4_table1_room3 dd)(not (available a2)))
)
(:action act-kdm_joint-move-table_a2_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-6gg_joint-lift-table_a2_a4_table1_room3 dd)(in a2 room3)(connected room3 room4))
	:effect (and (pre-kdm_joint-move-table_a2_a4_table1_room3_room4 dd)(not (pre-6gg_joint-lift-table_a2_a4_table1_room3 dd))(not (in a2 room3))(in a2 room4))
)
(:action act-n2u_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-kdm_joint-move-table_a2_a4_table1_room3_room4 dd)(in a2 room4))
	:effect (and (pre-n2u_joint-drop-table_a2_a4_table1_room4 dd)(not (pre-kdm_joint-move-table_a2_a4_table1_room3_room4 dd))(available a2))
)
(:action goal-achieve-n2u_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-n2u_joint-drop-table_a2_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-n2u_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action goal-achieve-right-h4p_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-h4p_observe-table_a2_table1_room4 dd)(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-h4p_observe-table_a2_table1_room4 dd)))
)
)