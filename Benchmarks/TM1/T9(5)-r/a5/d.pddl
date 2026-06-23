(define (domain tablemover-2-a5)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	table4 - table
	table5 - table
	a5 - agent
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
	(init-6w5_observe-table_a2_table5_room3 ?dd - dummy)
	(immediate-dummy-6w5_observe-table_a2_table5_room3 ?dd - dummy)
	(dummy-left-6w5_observe-table_a2_table5_room3 ?dd - dummy)
	(immediate-dummy-kr3_observe-table_a5_table1_room4 ?dd - dummy)
	(dummy-left-kr3_observe-table_a5_table1_room4 ?dd - dummy)
	(pre-oys_joint-lift-table_a4_a5_table1_room3 ?dd - dummy)
	(pre-j7k_joint-move-table_a4_a5_table1_room3_room4 ?dd - dummy)
	(pre-633_joint-drop-table_a4_a5_table1_room4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-kr3_observe-table_a5_table1_room4 ?dd - dummy)
	(dummy-right-6w5_observe-table_a2_table5_room3 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-6w5_observe-table_a2_table5_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6w5_observe-table_a2_table5_room3 dd)(immediate-dummy-6w5_observe-table_a2_table5_room3 dd)(in a5 room3))
	:observe (inroom table5 room3)
)
(:action act-dummy-6w5_observe-table_a2_table5_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6w5_observe-table_a2_table5_room3 dd)(not (dummy-left-6w5_observe-table_a2_table5_room3 dd))(not (dummy-right-6w5_observe-table_a2_table5_room3 dd)))
	:effect (and (immediate-dummy-6w5_observe-table_a2_table5_room3 dd) )
)
(:action dummy-left-6w5_observe-table_a2_table5_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6w5_observe-table_a2_table5_room3 dd)(in a5 room3)(not (inroom table5 room3))(immediate-dummy-6w5_observe-table_a2_table5_room3 dd))
	:effect (and (not (init-6w5_observe-table_a2_table5_room3 dd))(not (immediate-dummy-6w5_observe-table_a2_table5_room3 dd))(dummy-left-6w5_observe-table_a2_table5_room3 dd))
)
(:action dummy-right-6w5_observe-table_a2_table5_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6w5_observe-table_a2_table5_room3 dd)(in a5 room3)(inroom table5 room3)(immediate-dummy-6w5_observe-table_a2_table5_room3 dd))
	:effect (and (not (init-6w5_observe-table_a2_table5_room3 dd))(not (immediate-dummy-6w5_observe-table_a2_table5_room3 dd))(dummy-right-6w5_observe-table_a2_table5_room3 dd))
)
(:action act-kr3_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6w5_observe-table_a2_table5_room3 dd)(immediate-dummy-kr3_observe-table_a5_table1_room4 dd)(not (inroom table5 room3))(in a5 room4))
	:observe (inroom table1 room4)
)
(:action act-dummy-kr3_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6w5_observe-table_a2_table5_room3 dd)(not (inroom table5 room3))(in a5 room4)(not (dummy-left-kr3_observe-table_a5_table1_room4 dd))(not (dummy-right-kr3_observe-table_a5_table1_room4 dd)))
	:effect (and (immediate-dummy-kr3_observe-table_a5_table1_room4 dd) )
)
(:action dummy-left-kr3_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6w5_observe-table_a2_table5_room3 dd)(not (inroom table5 room3))(in a5 room4)(not (inroom table1 room4))(immediate-dummy-kr3_observe-table_a5_table1_room4 dd))
	:effect (and (not (immediate-dummy-kr3_observe-table_a5_table1_room4 dd))(dummy-left-kr3_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-kr3_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6w5_observe-table_a2_table5_room3 dd)(not (inroom table5 room3))(in a5 room4)(inroom table1 room4)(immediate-dummy-kr3_observe-table_a5_table1_room4 dd))
	:effect (and (not (immediate-dummy-kr3_observe-table_a5_table1_room4 dd))(dummy-right-kr3_observe-table_a5_table1_room4 dd))
)
(:action act-oys_joint-lift-table_a4_a5_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-kr3_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(not (inroom table5 room3))(available a5)(in a5 room3))
	:effect (and (pre-oys_joint-lift-table_a4_a5_table1_room3 dd)(not (available a5)))
)
(:action act-j7k_joint-move-table_a4_a5_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-oys_joint-lift-table_a4_a5_table1_room3 dd)(in a5 room3)(connected room3 room4))
	:effect (and (pre-j7k_joint-move-table_a4_a5_table1_room3_room4 dd)(not (pre-oys_joint-lift-table_a4_a5_table1_room3 dd))(not (in a5 room3))(in a5 room4))
)
(:action act-633_joint-drop-table_a4_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-j7k_joint-move-table_a4_a5_table1_room3_room4 dd)(in a5 room4))
	:effect (and (pre-633_joint-drop-table_a4_a5_table1_room4 dd)(not (pre-j7k_joint-move-table_a4_a5_table1_room3_room4 dd))(available a5))
)
(:action goal-achieve-633_joint-drop-table_a4_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-633_joint-drop-table_a4_a5_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-633_joint-drop-table_a4_a5_table1_room4 dd)))
)
(:action goal-achieve-right-kr3_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kr3_observe-table_a5_table1_room4 dd)(inroom table1 room4)(not (inroom table5 room3)))
	:effect (and (done-goal dd)(not (dummy-right-kr3_observe-table_a5_table1_room4 dd)))
)
(:action goal-achieve-right-6w5_observe-table_a2_table5_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6w5_observe-table_a2_table5_room3 dd)(inroom table5 room3))
	:effect (and (done-goal dd)(not (dummy-right-6w5_observe-table_a2_table5_room3 dd)))
)
)