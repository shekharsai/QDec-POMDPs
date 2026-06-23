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
	(lifting ?a - agent ?t - table ?r - room )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a - agent ?t - table )
	(init-0tj_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-0tj_observe-table_a2_table1_room3 ?dd - dummy)
	(dummy-left-0tj_observe-table_a2_table1_room3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-0tj_observe-table_a2_table1_room3 ?dd - dummy)
	(pre-0ls_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
	(pre-5gv_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
	(pre-0cw_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-0tj_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-0tj_observe-table_a2_table1_room3 dd)(immediate-dummy-0tj_observe-table_a2_table1_room3 dd)(in a4 room3)(can-observe a4 table1)(available a4))
	:observe (inroom table1 room3)
)
(:action act-dummy-0tj_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-0tj_observe-table_a2_table1_room3 dd)(not (dummy-left-0tj_observe-table_a2_table1_room3 dd))(not (dummy-right-0tj_observe-table_a2_table1_room3 dd)))
	:effect (and (immediate-dummy-0tj_observe-table_a2_table1_room3 dd) )
)
(:action dummy-left-0tj_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-0tj_observe-table_a2_table1_room3 dd)(in a4 room3)(can-observe a4 table1)(available a4)(not (inroom table1 room3))(immediate-dummy-0tj_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-0tj_observe-table_a2_table1_room3 dd))(not (immediate-dummy-0tj_observe-table_a2_table1_room3 dd))(dummy-left-0tj_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-0tj_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-0tj_observe-table_a2_table1_room3 dd)(in a4 room3)(can-observe a4 table1)(available a4)(inroom table1 room3)(immediate-dummy-0tj_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-0tj_observe-table_a2_table1_room3 dd))(not (immediate-dummy-0tj_observe-table_a2_table1_room3 dd))(dummy-right-0tj_observe-table_a2_table1_room3 dd))
)
(:action goal-achieve-left-0tj_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0tj_observe-table_a2_table1_room3 dd)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-0tj_observe-table_a2_table1_room3 dd)))
)
(:action act-0ls_joint-lift-table_a2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0tj_observe-table_a2_table1_room3 dd)(inroom table1 room3)(available a4)(in a4 room3))
	:effect (and (pre-0ls_joint-lift-table_a2_a4_table1_room3 dd)(not (available a4)))
)
(:action act-5gv_joint-move-table_a2_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-0ls_joint-lift-table_a2_a4_table1_room3 dd)(in a4 room3)(connected room3 room4))
	:effect (and (pre-5gv_joint-move-table_a2_a4_table1_room3_room4 dd)(not (pre-0ls_joint-lift-table_a2_a4_table1_room3 dd))(not (in a4 room3))(in a4 room4))
)
(:action act-0cw_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-5gv_joint-move-table_a2_a4_table1_room3_room4 dd)(in a4 room4))
	:effect (and (pre-0cw_joint-drop-table_a2_a4_table1_room4 dd)(not (pre-5gv_joint-move-table_a2_a4_table1_room3_room4 dd))(available a4))
)
(:action goal-achieve-0cw_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-0cw_joint-drop-table_a2_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-0cw_joint-drop-table_a2_a4_table1_room4 dd)))
)
)