(define (domain tablemover-2-a3)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	a3 - agent
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
	(init-4az_observe-table_a1_table1_room3 ?dd - dummy)
	(immediate-dummy-4az_observe-table_a1_table1_room3 ?dd - dummy)
	(dummy-left-4az_observe-table_a1_table1_room3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-4az_observe-table_a1_table1_room3 ?dd - dummy)
	(pre-9c6_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
	(pre-lxh_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
	(pre-5s2_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-4az_observe-table_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-4az_observe-table_a1_table1_room3 dd)(immediate-dummy-4az_observe-table_a1_table1_room3 dd)(in a3 room3)(can-observe a3 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-4az_observe-table_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-4az_observe-table_a1_table1_room3 dd)(not (dummy-left-4az_observe-table_a1_table1_room3 dd))(not (dummy-right-4az_observe-table_a1_table1_room3 dd)))
	:effect (and (immediate-dummy-4az_observe-table_a1_table1_room3 dd) )
)
(:action dummy-left-4az_observe-table_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-4az_observe-table_a1_table1_room3 dd)(in a3 room3)(can-observe a3 table1)(not (inroom table1 room3))(immediate-dummy-4az_observe-table_a1_table1_room3 dd))
	:effect (and (not (init-4az_observe-table_a1_table1_room3 dd))(not (immediate-dummy-4az_observe-table_a1_table1_room3 dd))(dummy-left-4az_observe-table_a1_table1_room3 dd))
)
(:action dummy-right-4az_observe-table_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-4az_observe-table_a1_table1_room3 dd)(in a3 room3)(can-observe a3 table1)(inroom table1 room3)(immediate-dummy-4az_observe-table_a1_table1_room3 dd))
	:effect (and (not (init-4az_observe-table_a1_table1_room3 dd))(not (immediate-dummy-4az_observe-table_a1_table1_room3 dd))(dummy-right-4az_observe-table_a1_table1_room3 dd))
)
(:action goal-achieve-left-4az_observe-table_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4az_observe-table_a1_table1_room3 dd)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-4az_observe-table_a1_table1_room3 dd)))
)
(:action act-9c6_joint-lift-table_a1_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4az_observe-table_a1_table1_room3 dd)(inroom table1 room3)(available a3)(in a3 room3))
	:effect (and (pre-9c6_joint-lift-table_a1_a3_table1_room3 dd)(not (available a3)))
)
(:action act-lxh_joint-move-table_a1_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-9c6_joint-lift-table_a1_a3_table1_room3 dd)(in a3 room3)(connected room3 room4))
	:effect (and (pre-lxh_joint-move-table_a1_a3_table1_room3_room4 dd)(not (pre-9c6_joint-lift-table_a1_a3_table1_room3 dd))(not (in a3 room3))(in a3 room4))
)
(:action act-5s2_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-lxh_joint-move-table_a1_a3_table1_room3_room4 dd)(in a3 room4))
	:effect (and (pre-5s2_joint-drop-table_a1_a3_table1_room4 dd)(not (pre-lxh_joint-move-table_a1_a3_table1_room3_room4 dd))(available a3))
)
(:action goal-achieve-5s2_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-5s2_joint-drop-table_a1_a3_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-5s2_joint-drop-table_a1_a3_table1_room4 dd)))
)
)