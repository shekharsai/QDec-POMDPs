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
	(lifting ?a - agent ?t - table )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a - agent ?t - table )
	(init-ify_observe-table_a1_table1_room3 ?dd - dummy)
	(immediate-dummy-ify_observe-table_a1_table1_room3 ?dd - dummy)
	(dummy-left-ify_observe-table_a1_table1_room3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-ify_observe-table_a1_table1_room3 ?dd - dummy)
	(pre-pat_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
	(pre-grt_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
	(pre-eys_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-ify_observe-table_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ify_observe-table_a1_table1_room3 dd)(immediate-dummy-ify_observe-table_a1_table1_room3 dd)(in a1 room3)(can-observe a1 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-ify_observe-table_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ify_observe-table_a1_table1_room3 dd)(not (dummy-left-ify_observe-table_a1_table1_room3 dd))(not (dummy-right-ify_observe-table_a1_table1_room3 dd)))
	:effect (and (immediate-dummy-ify_observe-table_a1_table1_room3 dd) )
)
(:action dummy-left-ify_observe-table_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ify_observe-table_a1_table1_room3 dd)(in a1 room3)(can-observe a1 table1)(not (inroom table1 room3))(immediate-dummy-ify_observe-table_a1_table1_room3 dd))
	:effect (and (not (init-ify_observe-table_a1_table1_room3 dd))(not (immediate-dummy-ify_observe-table_a1_table1_room3 dd))(dummy-left-ify_observe-table_a1_table1_room3 dd))
)
(:action dummy-right-ify_observe-table_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ify_observe-table_a1_table1_room3 dd)(in a1 room3)(can-observe a1 table1)(inroom table1 room3)(immediate-dummy-ify_observe-table_a1_table1_room3 dd))
	:effect (and (not (init-ify_observe-table_a1_table1_room3 dd))(not (immediate-dummy-ify_observe-table_a1_table1_room3 dd))(dummy-right-ify_observe-table_a1_table1_room3 dd))
)
(:action goal-achieve-left-ify_observe-table_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ify_observe-table_a1_table1_room3 dd)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-ify_observe-table_a1_table1_room3 dd)))
)
(:action act-pat_joint-lift-table_a1_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ify_observe-table_a1_table1_room3 dd)(inroom table1 room3)(available a1)(in a1 room3))
	:effect (and (pre-pat_joint-lift-table_a1_a3_table1_room3 dd)(not (available a1)))
)
(:action act-grt_joint-move-table_a1_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-pat_joint-lift-table_a1_a3_table1_room3 dd)(in a1 room3)(connected room3 room4))
	:effect (and (pre-grt_joint-move-table_a1_a3_table1_room3_room4 dd)(not (pre-pat_joint-lift-table_a1_a3_table1_room3 dd))(not (in a1 room3))(in a1 room4))
)
(:action act-eys_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-grt_joint-move-table_a1_a3_table1_room3_room4 dd)(in a1 room4))
	:effect (and (pre-eys_joint-drop-table_a1_a3_table1_room4 dd)(not (pre-grt_joint-move-table_a1_a3_table1_room3_room4 dd))(available a1))
)
(:action goal-achieve-eys_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-eys_joint-drop-table_a1_a3_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-eys_joint-drop-table_a1_a3_table1_room4 dd)))
)
)