(define (domain tablemover-2-a3)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	table4 - table
	a3 - agent
	room1 - room
	room2 - room
	room3 - room
	room4 - room
	room5 - room
	room6 - room
	room7 - room
	dd - dummy)
(:predicates 
	(lifting ?a - agent ?t - table ?r - room )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a - agent ?t - table )
	(init-2an_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-2an_observe-table_a4_table1_room3 ?dd - dummy)
	(dummy-left-2an_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-b67_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-b67_observe-table_a3_table2_room1 ?dd - dummy)
	(pre-rws_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-pmb_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-xgq_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-b67_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-right-2an_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-ud8_observe-table_a1_table2_room2 ?dd - dummy)
	(dummy-left-ud8_observe-table_a1_table2_room2 ?dd - dummy)
	(dummy-right-ud8_observe-table_a1_table2_room2 ?dd - dummy)
	(pre-iu6_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-b7n_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-5mq_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-2an_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-2an_observe-table_a4_table1_room3 dd)(immediate-dummy-2an_observe-table_a4_table1_room3 dd)(in a3 room3)(available a3))
	:observe (inroom table1 room3)
)
(:action act-dummy-2an_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-2an_observe-table_a4_table1_room3 dd)(not (dummy-left-2an_observe-table_a4_table1_room3 dd))(not (dummy-right-2an_observe-table_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-2an_observe-table_a4_table1_room3 dd) )
)
(:action dummy-left-2an_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-2an_observe-table_a4_table1_room3 dd)(in a3 room3)(available a3)(not (inroom table1 room3))(immediate-dummy-2an_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-2an_observe-table_a4_table1_room3 dd))(not (immediate-dummy-2an_observe-table_a4_table1_room3 dd))(dummy-left-2an_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-2an_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-2an_observe-table_a4_table1_room3 dd)(in a3 room3)(available a3)(inroom table1 room3)(immediate-dummy-2an_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-2an_observe-table_a4_table1_room3 dd))(not (immediate-dummy-2an_observe-table_a4_table1_room3 dd))(dummy-right-2an_observe-table_a4_table1_room3 dd))
)
(:action act-b67_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2an_observe-table_a4_table1_room3 dd)(immediate-dummy-b67_observe-table_a3_table2_room1 dd)(not (inroom table1 room3))(in a3 room1)(available a3))
	:observe (inroom table2 room1)
)
(:action act-dummy-b67_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2an_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a3 room1)(available a3)(not (dummy-left-b67_observe-table_a3_table2_room1 dd))(not (dummy-right-b67_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-b67_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-b67_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2an_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a3 room1)(available a3)(not (inroom table2 room1))(immediate-dummy-b67_observe-table_a3_table2_room1 dd))
	:effect (and (not (immediate-dummy-b67_observe-table_a3_table2_room1 dd))(dummy-left-b67_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-b67_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2an_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a3 room1)(available a3)(inroom table2 room1)(immediate-dummy-b67_observe-table_a3_table2_room1 dd))
	:effect (and (not (immediate-dummy-b67_observe-table_a3_table2_room1 dd))(dummy-right-b67_observe-table_a3_table2_room1 dd))
)
(:action act-rws_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-b67_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(not (inroom table1 room3))(available a3)(in a3 room2))
	:effect (and (pre-rws_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-pmb_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-rws_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-pmb_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-rws_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-xgq_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-pmb_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-xgq_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-pmb_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-xgq_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-xgq_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-xgq_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-b67_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-b67_observe-table_a3_table2_room1 dd)(inroom table2 room1)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-right-b67_observe-table_a3_table2_room1 dd)))
)
(:action act-ud8_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2an_observe-table_a4_table1_room3 dd)(immediate-dummy-ud8_observe-table_a1_table2_room2 dd)(inroom table1 room3)(in a3 room2)(available a3))
	:observe (inroom table2 room2)
)
(:action act-dummy-ud8_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2an_observe-table_a4_table1_room3 dd)(inroom table1 room3)(in a3 room2)(available a3)(not (dummy-left-ud8_observe-table_a1_table2_room2 dd))(not (dummy-right-ud8_observe-table_a1_table2_room2 dd)))
	:effect (and (immediate-dummy-ud8_observe-table_a1_table2_room2 dd) )
)
(:action dummy-left-ud8_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2an_observe-table_a4_table1_room3 dd)(inroom table1 room3)(in a3 room2)(available a3)(not (inroom table2 room2))(immediate-dummy-ud8_observe-table_a1_table2_room2 dd))
	:effect (and (not (immediate-dummy-ud8_observe-table_a1_table2_room2 dd))(dummy-left-ud8_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-ud8_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2an_observe-table_a4_table1_room3 dd)(inroom table1 room3)(in a3 room2)(available a3)(inroom table2 room2)(immediate-dummy-ud8_observe-table_a1_table2_room2 dd))
	:effect (and (not (immediate-dummy-ud8_observe-table_a1_table2_room2 dd))(dummy-right-ud8_observe-table_a1_table2_room2 dd))
)
(:action goal-achieve-left-ud8_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ud8_observe-table_a1_table2_room2 dd)(not (inroom table2 room2))(inroom table1 room3))
	:effect (and (done-goal dd)(not (dummy-left-ud8_observe-table_a1_table2_room2 dd)))
)
(:action act-iu6_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ud8_observe-table_a1_table2_room2 dd)(inroom table2 room2)(inroom table1 room3)(available a3)(in a3 room2))
	:effect (and (pre-iu6_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-b7n_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-iu6_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-b7n_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-iu6_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-5mq_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-b7n_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-5mq_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-b7n_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-5mq_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-5mq_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-5mq_joint-drop-table_a1_a3_table2_room1 dd)))
)
)