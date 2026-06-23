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
	(init-ij9_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-ij9_observe-table_a4_table1_room3 ?dd - dummy)
	(dummy-left-ij9_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-odi_observe-table_a5_table3_room5 ?dd - dummy)
	(dummy-left-odi_observe-table_a5_table3_room5 ?dd - dummy)
	(immediate-dummy-xzu_observe-table_a1_table2_room2 ?dd - dummy)
	(dummy-left-xzu_observe-table_a1_table2_room2 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-xzu_observe-table_a1_table2_room2 ?dd - dummy)
	(pre-ati_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
	(pre-kyx_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
	(pre-yu0_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
	(dummy-right-odi_observe-table_a5_table3_room5 ?dd - dummy)
	(dummy-right-ij9_observe-table_a4_table1_room3 ?dd - dummy)
	(pre-0v1_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
	(pre-2z5_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
	(pre-7lj_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-ij9_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ij9_observe-table_a4_table1_room3 dd)(immediate-dummy-ij9_observe-table_a4_table1_room3 dd)(in a2 room3)(available a2))
	:observe (inroom table1 room3)
)
(:action act-dummy-ij9_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ij9_observe-table_a4_table1_room3 dd)(not (dummy-left-ij9_observe-table_a4_table1_room3 dd))(not (dummy-right-ij9_observe-table_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-ij9_observe-table_a4_table1_room3 dd) )
)
(:action dummy-left-ij9_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ij9_observe-table_a4_table1_room3 dd)(in a2 room3)(available a2)(not (inroom table1 room3))(immediate-dummy-ij9_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-ij9_observe-table_a4_table1_room3 dd))(not (immediate-dummy-ij9_observe-table_a4_table1_room3 dd))(dummy-left-ij9_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-ij9_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-ij9_observe-table_a4_table1_room3 dd)(in a2 room3)(available a2)(inroom table1 room3)(immediate-dummy-ij9_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-ij9_observe-table_a4_table1_room3 dd))(not (immediate-dummy-ij9_observe-table_a4_table1_room3 dd))(dummy-right-ij9_observe-table_a4_table1_room3 dd))
)
(:action act-odi_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ij9_observe-table_a4_table1_room3 dd)(immediate-dummy-odi_observe-table_a5_table3_room5 dd)(not (inroom table1 room3))(in a2 room5)(available a2))
	:observe (inroom table3 room5)
)
(:action act-dummy-odi_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ij9_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a2 room5)(available a2)(not (dummy-left-odi_observe-table_a5_table3_room5 dd))(not (dummy-right-odi_observe-table_a5_table3_room5 dd)))
	:effect (and (immediate-dummy-odi_observe-table_a5_table3_room5 dd) )
)
(:action dummy-left-odi_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ij9_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a2 room5)(available a2)(not (inroom table3 room5))(immediate-dummy-odi_observe-table_a5_table3_room5 dd))
	:effect (and (not (immediate-dummy-odi_observe-table_a5_table3_room5 dd))(dummy-left-odi_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-odi_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ij9_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a2 room5)(available a2)(inroom table3 room5)(immediate-dummy-odi_observe-table_a5_table3_room5 dd))
	:effect (and (not (immediate-dummy-odi_observe-table_a5_table3_room5 dd))(dummy-right-odi_observe-table_a5_table3_room5 dd))
)
(:action act-xzu_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-odi_observe-table_a5_table3_room5 dd)(immediate-dummy-xzu_observe-table_a1_table2_room2 dd)(not (inroom table3 room5))(not (inroom table1 room3))(in a2 room2)(available a2))
	:observe (inroom table2 room2)
)
(:action act-dummy-xzu_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-odi_observe-table_a5_table3_room5 dd)(not (inroom table3 room5))(not (inroom table1 room3))(in a2 room2)(available a2)(not (dummy-left-xzu_observe-table_a1_table2_room2 dd))(not (dummy-right-xzu_observe-table_a1_table2_room2 dd)))
	:effect (and (immediate-dummy-xzu_observe-table_a1_table2_room2 dd) )
)
(:action dummy-left-xzu_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-odi_observe-table_a5_table3_room5 dd)(not (inroom table3 room5))(not (inroom table1 room3))(in a2 room2)(available a2)(not (inroom table2 room2))(immediate-dummy-xzu_observe-table_a1_table2_room2 dd))
	:effect (and (not (immediate-dummy-xzu_observe-table_a1_table2_room2 dd))(dummy-left-xzu_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-xzu_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-odi_observe-table_a5_table3_room5 dd)(not (inroom table3 room5))(not (inroom table1 room3))(in a2 room2)(available a2)(inroom table2 room2)(immediate-dummy-xzu_observe-table_a1_table2_room2 dd))
	:effect (and (not (immediate-dummy-xzu_observe-table_a1_table2_room2 dd))(dummy-right-xzu_observe-table_a1_table2_room2 dd))
)
(:action goal-achieve-left-xzu_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-xzu_observe-table_a1_table2_room2 dd)(not (inroom table2 room2))(not (inroom table3 room5))(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-xzu_observe-table_a1_table2_room2 dd)))
)
(:action act-ati_joint-lift-table_a1_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-xzu_observe-table_a1_table2_room2 dd)(inroom table2 room2)(not (inroom table3 room5))(not (inroom table1 room3))(available a2)(in a2 room2))
	:effect (and (pre-ati_joint-lift-table_a1_a2_table2_room2 dd)(not (available a2)))
)
(:action act-kyx_joint-move-table_a1_a2_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-ati_joint-lift-table_a1_a2_table2_room2 dd)(in a2 room2)(connected room2 room1))
	:effect (and (pre-kyx_joint-move-table_a1_a2_table2_room2_room1 dd)(not (pre-ati_joint-lift-table_a1_a2_table2_room2 dd))(not (in a2 room2))(in a2 room1))
)
(:action act-yu0_joint-drop-table_a1_a2_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-kyx_joint-move-table_a1_a2_table2_room2_room1 dd)(in a2 room1))
	:effect (and (pre-yu0_joint-drop-table_a1_a2_table2_room1 dd)(not (pre-kyx_joint-move-table_a1_a2_table2_room2_room1 dd))(available a2))
)
(:action goal-achieve-yu0_joint-drop-table_a1_a2_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-yu0_joint-drop-table_a1_a2_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-yu0_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action goal-achieve-right-odi_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-odi_observe-table_a5_table3_room5 dd)(inroom table3 room5)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-right-odi_observe-table_a5_table3_room5 dd)))
)
(:action act-0v1_joint-lift-table_a2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ij9_observe-table_a4_table1_room3 dd)(inroom table1 room3)(available a2)(in a2 room3))
	:effect (and (pre-0v1_joint-lift-table_a2_a4_table1_room3 dd)(not (available a2)))
)
(:action act-2z5_joint-move-table_a2_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-0v1_joint-lift-table_a2_a4_table1_room3 dd)(in a2 room3)(connected room3 room4))
	:effect (and (pre-2z5_joint-move-table_a2_a4_table1_room3_room4 dd)(not (pre-0v1_joint-lift-table_a2_a4_table1_room3 dd))(not (in a2 room3))(in a2 room4))
)
(:action act-7lj_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-2z5_joint-move-table_a2_a4_table1_room3_room4 dd)(in a2 room4))
	:effect (and (pre-7lj_joint-drop-table_a2_a4_table1_room4 dd)(not (pre-2z5_joint-move-table_a2_a4_table1_room3_room4 dd))(available a2))
)
(:action goal-achieve-7lj_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-7lj_joint-drop-table_a2_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-7lj_joint-drop-table_a2_a4_table1_room4 dd)))
)
)