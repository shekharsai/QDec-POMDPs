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
	(init-l0l_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-l0l_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-l0l_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-wj3_observe-table_a5_table1_room4 ?dd - dummy)
	(dummy-left-wj3_observe-table_a5_table1_room4 ?dd - dummy)
	(immediate-dummy-iyi_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-iyi_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-2ds_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-6k5_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-ueh_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-iyi_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-8ri_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-rvq_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-eay_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(pre-tur_joint-lift-table_a2_a3_table1_room3 ?dd - dummy)
	(pre-niq_joint-move-table_a2_a3_table1_room3_room4 ?dd - dummy)
	(pre-li7_joint-drop-table_a2_a3_table1_room4 ?dd - dummy)
	(dummy-right-wj3_observe-table_a5_table1_room4 ?dd - dummy)
	(pre-7a4_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-4rv_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-lve_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(dummy-right-l0l_observe-table_a3_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-l0l_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-l0l_observe-table_a3_table2_room1 dd)(immediate-dummy-l0l_observe-table_a3_table2_room1 dd)(in a3 room1)(available a3))
	:observe (inroom table2 room1)
)
(:action act-dummy-l0l_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-l0l_observe-table_a3_table2_room1 dd)(not (dummy-left-l0l_observe-table_a3_table2_room1 dd))(not (dummy-right-l0l_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-l0l_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-l0l_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-l0l_observe-table_a3_table2_room1 dd)(in a3 room1)(available a3)(not (inroom table2 room1))(immediate-dummy-l0l_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-l0l_observe-table_a3_table2_room1 dd))(not (immediate-dummy-l0l_observe-table_a3_table2_room1 dd))(dummy-left-l0l_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-l0l_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-l0l_observe-table_a3_table2_room1 dd)(in a3 room1)(available a3)(inroom table2 room1)(immediate-dummy-l0l_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-l0l_observe-table_a3_table2_room1 dd))(not (immediate-dummy-l0l_observe-table_a3_table2_room1 dd))(dummy-right-l0l_observe-table_a3_table2_room1 dd))
)
(:action act-wj3_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-l0l_observe-table_a3_table2_room1 dd)(immediate-dummy-wj3_observe-table_a5_table1_room4 dd)(not (inroom table2 room1))(in a3 room4)(available a3))
	:observe (inroom table1 room4)
)
(:action act-dummy-wj3_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-l0l_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a3 room4)(available a3)(not (dummy-left-wj3_observe-table_a5_table1_room4 dd))(not (dummy-right-wj3_observe-table_a5_table1_room4 dd)))
	:effect (and (immediate-dummy-wj3_observe-table_a5_table1_room4 dd) )
)
(:action dummy-left-wj3_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-l0l_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a3 room4)(available a3)(not (inroom table1 room4))(immediate-dummy-wj3_observe-table_a5_table1_room4 dd))
	:effect (and (not (immediate-dummy-wj3_observe-table_a5_table1_room4 dd))(dummy-left-wj3_observe-table_a5_table1_room4 dd))
)
(:action dummy-right-wj3_observe-table_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-l0l_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a3 room4)(available a3)(inroom table1 room4)(immediate-dummy-wj3_observe-table_a5_table1_room4 dd))
	:effect (and (not (immediate-dummy-wj3_observe-table_a5_table1_room4 dd))(dummy-right-wj3_observe-table_a5_table1_room4 dd))
)
(:action act-iyi_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wj3_observe-table_a5_table1_room4 dd)(immediate-dummy-iyi_observe-table_a4_table4_room6 dd)(not (inroom table1 room4))(not (inroom table2 room1))(in a3 room6)(available a3))
	:observe (inroom table4 room6)
)
(:action act-dummy-iyi_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wj3_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(not (inroom table2 room1))(in a3 room6)(available a3)(not (dummy-left-iyi_observe-table_a4_table4_room6 dd))(not (dummy-right-iyi_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-iyi_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-iyi_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wj3_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(not (inroom table2 room1))(in a3 room6)(available a3)(not (inroom table4 room6))(immediate-dummy-iyi_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-iyi_observe-table_a4_table4_room6 dd))(dummy-left-iyi_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-iyi_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wj3_observe-table_a5_table1_room4 dd)(not (inroom table1 room4))(not (inroom table2 room1))(in a3 room6)(available a3)(inroom table4 room6)(immediate-dummy-iyi_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-iyi_observe-table_a4_table4_room6 dd))(dummy-right-iyi_observe-table_a4_table4_room6 dd))
)
(:action act-2ds_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-iyi_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(not (inroom table1 room4))(not (inroom table2 room1))(available a3)(in a3 room2))
	:effect (and (pre-2ds_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-6k5_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-2ds_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-6k5_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-2ds_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-ueh_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-6k5_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-ueh_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-6k5_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-ueh_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-ueh_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-ueh_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-8ri_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-iyi_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table1 room4))(not (inroom table2 room1))(available a3)(in a3 room2))
	:effect (and (pre-8ri_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-rvq_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-8ri_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-rvq_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-8ri_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-eay_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-rvq_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-eay_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-rvq_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action act-tur_joint-lift-table_a2_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (pre-eay_joint-drop-table_a1_a3_table2_room1 dd)(available a3)(in a3 room3))
	:effect (and (pre-tur_joint-lift-table_a2_a3_table1_room3 dd)(not (pre-eay_joint-drop-table_a1_a3_table2_room1 dd))(not (available a3)))
)
(:action act-niq_joint-move-table_a2_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-tur_joint-lift-table_a2_a3_table1_room3 dd)(in a3 room3)(connected room3 room4))
	:effect (and (pre-niq_joint-move-table_a2_a3_table1_room3_room4 dd)(not (pre-tur_joint-lift-table_a2_a3_table1_room3 dd))(not (in a3 room3))(in a3 room4))
)
(:action act-li7_joint-drop-table_a2_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-niq_joint-move-table_a2_a3_table1_room3_room4 dd)(in a3 room4))
	:effect (and (pre-li7_joint-drop-table_a2_a3_table1_room4 dd)(not (pre-niq_joint-move-table_a2_a3_table1_room3_room4 dd))(available a3))
)
(:action goal-achieve-li7_joint-drop-table_a2_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-li7_joint-drop-table_a2_a3_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-li7_joint-drop-table_a2_a3_table1_room4 dd)))
)
(:action act-7a4_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wj3_observe-table_a5_table1_room4 dd)(inroom table1 room4)(not (inroom table2 room1))(available a3)(in a3 room2))
	:effect (and (pre-7a4_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-4rv_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-7a4_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-4rv_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-7a4_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-lve_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-4rv_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-lve_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-4rv_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-lve_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-lve_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-lve_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-l0l_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-l0l_observe-table_a3_table2_room1 dd)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-right-l0l_observe-table_a3_table2_room1 dd)))
)
)