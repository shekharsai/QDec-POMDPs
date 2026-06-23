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
	(init-59o_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-59o_observe-table_a4_table1_room3 ?dd - dummy)
	(dummy-left-59o_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-up8_observe-table_a5_table3_room5 ?dd - dummy)
	(dummy-left-up8_observe-table_a5_table3_room5 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-up8_observe-table_a5_table3_room5 ?dd - dummy)
	(immediate-dummy-5pw_observe-table_a1_table2_room1 ?dd - dummy)
	(dummy-left-5pw_observe-table_a1_table2_room1 ?dd - dummy)
	(pre-ot2_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-32z_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-mlz_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(dummy-right-5pw_observe-table_a1_table2_room1 ?dd - dummy)
	(dummy-right-59o_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-hg6_observe-table_a1_table2_room2 ?dd - dummy)
	(dummy-left-hg6_observe-table_a1_table2_room2 ?dd - dummy)
	(dummy-right-hg6_observe-table_a1_table2_room2 ?dd - dummy)
	(pre-t0o_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-b4i_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-bth_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-59o_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-59o_observe-table_a4_table1_room3 dd)(immediate-dummy-59o_observe-table_a4_table1_room3 dd)(in a3 room3)(available a3))
	:observe (inroom table1 room3)
)
(:action act-dummy-59o_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-59o_observe-table_a4_table1_room3 dd)(not (dummy-left-59o_observe-table_a4_table1_room3 dd))(not (dummy-right-59o_observe-table_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-59o_observe-table_a4_table1_room3 dd) )
)
(:action dummy-left-59o_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-59o_observe-table_a4_table1_room3 dd)(in a3 room3)(available a3)(not (inroom table1 room3))(immediate-dummy-59o_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-59o_observe-table_a4_table1_room3 dd))(not (immediate-dummy-59o_observe-table_a4_table1_room3 dd))(dummy-left-59o_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-59o_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-59o_observe-table_a4_table1_room3 dd)(in a3 room3)(available a3)(inroom table1 room3)(immediate-dummy-59o_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-59o_observe-table_a4_table1_room3 dd))(not (immediate-dummy-59o_observe-table_a4_table1_room3 dd))(dummy-right-59o_observe-table_a4_table1_room3 dd))
)
(:action act-up8_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-59o_observe-table_a4_table1_room3 dd)(immediate-dummy-up8_observe-table_a5_table3_room5 dd)(not (inroom table1 room3))(in a3 room5)(available a3))
	:observe (inroom table3 room5)
)
(:action act-dummy-up8_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-59o_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a3 room5)(available a3)(not (dummy-left-up8_observe-table_a5_table3_room5 dd))(not (dummy-right-up8_observe-table_a5_table3_room5 dd)))
	:effect (and (immediate-dummy-up8_observe-table_a5_table3_room5 dd) )
)
(:action dummy-left-up8_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-59o_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a3 room5)(available a3)(not (inroom table3 room5))(immediate-dummy-up8_observe-table_a5_table3_room5 dd))
	:effect (and (not (immediate-dummy-up8_observe-table_a5_table3_room5 dd))(dummy-left-up8_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-up8_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-59o_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a3 room5)(available a3)(inroom table3 room5)(immediate-dummy-up8_observe-table_a5_table3_room5 dd))
	:effect (and (not (immediate-dummy-up8_observe-table_a5_table3_room5 dd))(dummy-right-up8_observe-table_a5_table3_room5 dd))
)
(:action goal-achieve-left-up8_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-up8_observe-table_a5_table3_room5 dd)(not (inroom table3 room5))(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-up8_observe-table_a5_table3_room5 dd)))
)
(:action act-5pw_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-up8_observe-table_a5_table3_room5 dd)(immediate-dummy-5pw_observe-table_a1_table2_room1 dd)(inroom table3 room5)(not (inroom table1 room3))(in a3 room1)(available a3))
	:observe (inroom table2 room1)
)
(:action act-dummy-5pw_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-up8_observe-table_a5_table3_room5 dd)(inroom table3 room5)(not (inroom table1 room3))(in a3 room1)(available a3)(not (dummy-left-5pw_observe-table_a1_table2_room1 dd))(not (dummy-right-5pw_observe-table_a1_table2_room1 dd)))
	:effect (and (immediate-dummy-5pw_observe-table_a1_table2_room1 dd) )
)
(:action dummy-left-5pw_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-up8_observe-table_a5_table3_room5 dd)(inroom table3 room5)(not (inroom table1 room3))(in a3 room1)(available a3)(not (inroom table2 room1))(immediate-dummy-5pw_observe-table_a1_table2_room1 dd))
	:effect (and (not (immediate-dummy-5pw_observe-table_a1_table2_room1 dd))(dummy-left-5pw_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-5pw_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-up8_observe-table_a5_table3_room5 dd)(inroom table3 room5)(not (inroom table1 room3))(in a3 room1)(available a3)(inroom table2 room1)(immediate-dummy-5pw_observe-table_a1_table2_room1 dd))
	:effect (and (not (immediate-dummy-5pw_observe-table_a1_table2_room1 dd))(dummy-right-5pw_observe-table_a1_table2_room1 dd))
)
(:action act-ot2_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-5pw_observe-table_a1_table2_room1 dd)(not (inroom table2 room1))(inroom table3 room5)(not (inroom table1 room3))(available a3)(in a3 room2))
	:effect (and (pre-ot2_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-32z_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-ot2_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-32z_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-ot2_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-mlz_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-32z_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-mlz_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-32z_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-mlz_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-mlz_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-mlz_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-5pw_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-5pw_observe-table_a1_table2_room1 dd)(inroom table2 room1)(inroom table3 room5)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-right-5pw_observe-table_a1_table2_room1 dd)))
)
(:action act-hg6_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-59o_observe-table_a4_table1_room3 dd)(immediate-dummy-hg6_observe-table_a1_table2_room2 dd)(inroom table1 room3)(in a3 room2)(available a3))
	:observe (inroom table2 room2)
)
(:action act-dummy-hg6_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-59o_observe-table_a4_table1_room3 dd)(inroom table1 room3)(in a3 room2)(available a3)(not (dummy-left-hg6_observe-table_a1_table2_room2 dd))(not (dummy-right-hg6_observe-table_a1_table2_room2 dd)))
	:effect (and (immediate-dummy-hg6_observe-table_a1_table2_room2 dd) )
)
(:action dummy-left-hg6_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-59o_observe-table_a4_table1_room3 dd)(inroom table1 room3)(in a3 room2)(available a3)(not (inroom table2 room2))(immediate-dummy-hg6_observe-table_a1_table2_room2 dd))
	:effect (and (not (immediate-dummy-hg6_observe-table_a1_table2_room2 dd))(dummy-left-hg6_observe-table_a1_table2_room2 dd))
)
(:action dummy-right-hg6_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-59o_observe-table_a4_table1_room3 dd)(inroom table1 room3)(in a3 room2)(available a3)(inroom table2 room2)(immediate-dummy-hg6_observe-table_a1_table2_room2 dd))
	:effect (and (not (immediate-dummy-hg6_observe-table_a1_table2_room2 dd))(dummy-right-hg6_observe-table_a1_table2_room2 dd))
)
(:action goal-achieve-left-hg6_observe-table_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hg6_observe-table_a1_table2_room2 dd)(not (inroom table2 room2))(inroom table1 room3))
	:effect (and (done-goal dd)(not (dummy-left-hg6_observe-table_a1_table2_room2 dd)))
)
(:action act-t0o_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hg6_observe-table_a1_table2_room2 dd)(inroom table2 room2)(inroom table1 room3)(available a3)(in a3 room2))
	:effect (and (pre-t0o_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-b4i_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-t0o_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-b4i_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-t0o_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-bth_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-b4i_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-bth_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-b4i_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-bth_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-bth_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-bth_joint-drop-table_a1_a3_table2_room1 dd)))
)
)