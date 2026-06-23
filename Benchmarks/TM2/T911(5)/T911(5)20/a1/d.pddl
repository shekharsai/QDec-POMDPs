(define (domain tablemover-2-a1)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	table4 - table
	a1 - agent
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
	(can-observe ?a1 - agent ?table - table )
	(init-rm3_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-rm3_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-rm3_observe-table_a3_table2_room1 ?dd - dummy)
	(pre-x56_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-xhk_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-k7p_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-rm3_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-2r2_observe-table_a5_table1_room4 ?dd - dummy)
	(dummy-left-2r2_observe-table_a5_table1_room4 ?dd - dummy)
	(pre-xot_joint-lift-table_a1_a5_table1_room3 ?dd - dummy)
	(pre-b3g_joint-move-table_a1_a5_table1_room3_room4 ?dd - dummy)
	(pre-1aa_joint-drop-table_a1_a5_table1_room4 ?dd - dummy)
	(dummy-right-2r2_observe-table_a5_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-rm3_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-rm3_observe-table_a3_table2_room1 dd)(immediate-dummy-rm3_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2)(available a1))
	:observe (inroom table2 room1)
)
(:action act-dummy-rm3_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-rm3_observe-table_a3_table2_room1 dd)(not (dummy-left-rm3_observe-table_a3_table2_room1 dd))(not (dummy-right-rm3_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-rm3_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-rm3_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-rm3_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2)(available a1)(not (inroom table2 room1))(immediate-dummy-rm3_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-rm3_observe-table_a3_table2_room1 dd))(not (immediate-dummy-rm3_observe-table_a3_table2_room1 dd))(dummy-left-rm3_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-rm3_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-rm3_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2)(available a1)(inroom table2 room1)(immediate-dummy-rm3_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-rm3_observe-table_a3_table2_room1 dd))(not (immediate-dummy-rm3_observe-table_a3_table2_room1 dd))(dummy-right-rm3_observe-table_a3_table2_room1 dd))
)
(:action act-x56_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-rm3_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(available a1)(in a1 room2))
	:effect (and (pre-x56_joint-lift-table_a1_a3_table2_room2 dd)(not (available a1)))
)
(:action act-xhk_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-x56_joint-lift-table_a1_a3_table2_room2 dd)(in a1 room2)(connected room2 room1))
	:effect (and (pre-xhk_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-x56_joint-lift-table_a1_a3_table2_room2 dd))(not (in a1 room2))(in a1 room1))
)
(:action act-k7p_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-xhk_joint-move-table_a1_a3_table2_room2_room1 dd)(in a1 room1))
	:effect (and (pre-k7p_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-xhk_joint-move-table_a1_a3_table2_room2_room1 dd))(available a1))
)
(:action goal-achieve-k7p_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-k7p_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-k7p_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-2r2_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-rm3_observe-table_a3_table2_room1 dd)(immediate-dummy-2r2_observe-table_a5_table1_room4 dd)(inroom table2 room1)(in a1 room4)(can-observe a1 table1)(available a1))
	:observe (inroom table1 room4)
)
(:action act-dummy-2r2_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-rm3_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a1 room4)(can-observe a1 table1)(available a1)(not (dummy-left-2r2_observe-table_a5_table1_room4 dd))(not (dummy-right-2r2_observe-table_a5_table1_room4 dd)))
	:effect (and (immediate-dummy-2r2_observe-table_a5_table1_room4 dd) )
)
(:action dummy-left-2r2_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-rm3_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a1 room4)(can-observe a1 table1)(available a1)(not (inroom table1 room4))(immediate-dummy-2r2_observe-table_a5_table1_room4 dd))
	:effect (and (not (immediate-dummy-2r2_observe-table_a5_table1_room4 dd))(dummy-left-2r2_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-2r2_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-rm3_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a1 room4)(can-observe a1 table1)(available a1)(inroom table1 room4)(immediate-dummy-2r2_observe-table_a5_table1_room4 dd))
	:effect (and (not (immediate-dummy-2r2_observe-table_a5_table1_room4 dd))(dummy-right-2r2_observe-table_a5_table1_room4 dd))
)
(:action act-xot_joint-lift-table_a1_a5_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2r2_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(inroom table2 room1)(available a1)(in a1 room3))
	:effect (and (pre-xot_joint-lift-table_a1_a5_table1_room3 dd)(not (available a1)))
)
(:action act-b3g_joint-move-table_a1_a5_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-xot_joint-lift-table_a1_a5_table1_room3 dd)(in a1 room3)(connected room3 room4))
	:effect (and (pre-b3g_joint-move-table_a1_a5_table1_room3_room4 dd)(not (pre-xot_joint-lift-table_a1_a5_table1_room3 dd))(not (in a1 room3))(in a1 room4))
)
(:action act-1aa_joint-drop-table_a1_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-b3g_joint-move-table_a1_a5_table1_room3_room4 dd)(in a1 room4))
	:effect (and (pre-1aa_joint-drop-table_a1_a5_table1_room4 dd)(not (pre-b3g_joint-move-table_a1_a5_table1_room3_room4 dd))(available a1))
)
(:action goal-achieve-1aa_joint-drop-table_a1_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-1aa_joint-drop-table_a1_a5_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-1aa_joint-drop-table_a1_a5_table1_room4 dd)))
)
(:action goal-achieve-right-2r2_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2r2_observe-table_a5_table1_room4 dd)(inroom table1 room4)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-right-2r2_observe-table_a5_table1_room4 dd)))
)
)