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
	(init-moy_observe-table_a2_table1_room4 ?dd - dummy)
	(immediate-dummy-moy_observe-table_a2_table1_room4 ?dd - dummy)
	(dummy-left-moy_observe-table_a2_table1_room4 ?dd - dummy)
	(pre-15y_joint-lift-table_a2_a4_table1_room3 ?dd - dummy)
	(pre-o1c_joint-move-table_a2_a4_table1_room3_room4 ?dd - dummy)
	(pre-2ju_joint-drop-table_a2_a4_table1_room4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-moy_observe-table_a2_table1_room4 ?dd - dummy)
	(immediate-dummy-6ao_observe-table_a1_table3_room2 ?dd - dummy)
	(dummy-left-6ao_observe-table_a1_table3_room2 ?dd - dummy)
	(dummy-right-6ao_observe-table_a1_table3_room2 ?dd - dummy)
	(immediate-dummy-ryt_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-ryt_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-fms_observe-table_a3_table4_room1 ?dd - dummy)
	(dummy-left-fms_observe-table_a3_table4_room1 ?dd - dummy)
	(pre-5nz_joint-lift-table_a3_a4_table2_room2 ?dd - dummy)
	(pre-slk_joint-move-table_a3_a4_table2_room2_room1 ?dd - dummy)
	(pre-r6a_joint-drop-table_a3_a4_table2_room1 ?dd - dummy)
	(dummy-right-fms_observe-table_a3_table4_room1 ?dd - dummy)
	(dummy-right-ryt_observe-table_a3_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-moy_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-moy_observe-table_a2_table1_room4 dd)(immediate-dummy-moy_observe-table_a2_table1_room4 dd)(in a4 room4)(can-observe a4 table1)(available a4))
	:observe (inroom table1 room4)
)
(:action act-dummy-moy_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-moy_observe-table_a2_table1_room4 dd)(not (dummy-left-moy_observe-table_a2_table1_room4 dd))(not (dummy-right-moy_observe-table_a2_table1_room4 dd)))
	:effect (and (immediate-dummy-moy_observe-table_a2_table1_room4 dd) )
)
(:action dummy-left-moy_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-moy_observe-table_a2_table1_room4 dd)(in a4 room4)(can-observe a4 table1)(available a4)(not (inroom table1 room4))(immediate-dummy-moy_observe-table_a2_table1_room4 dd))
	:effect (and (not (init-moy_observe-table_a2_table1_room4 dd))(not (immediate-dummy-moy_observe-table_a2_table1_room4 dd))(dummy-left-moy_observe-table_a2_table1_room4 dd))
)
(:action dummy-right-moy_observe-table_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-moy_observe-table_a2_table1_room4 dd)(in a4 room4)(can-observe a4 table1)(available a4)(inroom table1 room4)(immediate-dummy-moy_observe-table_a2_table1_room4 dd))
	:effect (and (not (init-moy_observe-table_a2_table1_room4 dd))(not (immediate-dummy-moy_observe-table_a2_table1_room4 dd))(dummy-right-moy_observe-table_a2_table1_room4 dd))
)
(:action act-15y_joint-lift-table_a2_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-moy_observe-table_a2_table1_room4 dd)(not (inroom table1 room4))(available a4)(in a4 room3))
	:effect (and (pre-15y_joint-lift-table_a2_a4_table1_room3 dd)(not (available a4)))
)
(:action act-o1c_joint-move-table_a2_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-15y_joint-lift-table_a2_a4_table1_room3 dd)(in a4 room3)(connected room3 room4))
	:effect (and (pre-o1c_joint-move-table_a2_a4_table1_room3_room4 dd)(not (pre-15y_joint-lift-table_a2_a4_table1_room3 dd))(not (in a4 room3))(in a4 room4))
)
(:action act-2ju_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-o1c_joint-move-table_a2_a4_table1_room3_room4 dd)(in a4 room4))
	:effect (and (pre-2ju_joint-drop-table_a2_a4_table1_room4 dd)(not (pre-o1c_joint-move-table_a2_a4_table1_room3_room4 dd))(available a4))
)
(:action goal-achieve-2ju_joint-drop-table_a2_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-2ju_joint-drop-table_a2_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-2ju_joint-drop-table_a2_a4_table1_room4 dd)))
)
(:action act-6ao_observe-table_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-moy_observe-table_a2_table1_room4 dd)(immediate-dummy-6ao_observe-table_a1_table3_room2 dd)(inroom table1 room4)(in a4 room2)(can-observe a4 table3)(available a4))
	:observe (inroom table3 room2)
)
(:action act-dummy-6ao_observe-table_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-moy_observe-table_a2_table1_room4 dd)(inroom table1 room4)(in a4 room2)(can-observe a4 table3)(available a4)(not (dummy-left-6ao_observe-table_a1_table3_room2 dd))(not (dummy-right-6ao_observe-table_a1_table3_room2 dd)))
	:effect (and (immediate-dummy-6ao_observe-table_a1_table3_room2 dd) )
)
(:action dummy-left-6ao_observe-table_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-moy_observe-table_a2_table1_room4 dd)(inroom table1 room4)(in a4 room2)(can-observe a4 table3)(available a4)(not (inroom table3 room2))(immediate-dummy-6ao_observe-table_a1_table3_room2 dd))
	:effect (and (not (immediate-dummy-6ao_observe-table_a1_table3_room2 dd))(dummy-left-6ao_observe-table_a1_table3_room2 dd))
)
(:action dummy-right-6ao_observe-table_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-moy_observe-table_a2_table1_room4 dd)(inroom table1 room4)(in a4 room2)(can-observe a4 table3)(available a4)(inroom table3 room2)(immediate-dummy-6ao_observe-table_a1_table3_room2 dd))
	:effect (and (not (immediate-dummy-6ao_observe-table_a1_table3_room2 dd))(dummy-right-6ao_observe-table_a1_table3_room2 dd))
)
(:action goal-achieve-left-6ao_observe-table_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6ao_observe-table_a1_table3_room2 dd)(not (inroom table3 room2))(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-left-6ao_observe-table_a1_table3_room2 dd)))
)
(:action act-ryt_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6ao_observe-table_a1_table3_room2 dd)(immediate-dummy-ryt_observe-table_a3_table2_room1 dd)(inroom table3 room2)(inroom table1 room4)(in a4 room1)(can-observe a4 table2)(available a4))
	:observe (inroom table2 room1)
)
(:action act-dummy-ryt_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6ao_observe-table_a1_table3_room2 dd)(inroom table3 room2)(inroom table1 room4)(in a4 room1)(can-observe a4 table2)(available a4)(not (dummy-left-ryt_observe-table_a3_table2_room1 dd))(not (dummy-right-ryt_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-ryt_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-ryt_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6ao_observe-table_a1_table3_room2 dd)(inroom table3 room2)(inroom table1 room4)(in a4 room1)(can-observe a4 table2)(available a4)(not (inroom table2 room1))(immediate-dummy-ryt_observe-table_a3_table2_room1 dd))
	:effect (and (not (immediate-dummy-ryt_observe-table_a3_table2_room1 dd))(dummy-left-ryt_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-ryt_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6ao_observe-table_a1_table3_room2 dd)(inroom table3 room2)(inroom table1 room4)(in a4 room1)(can-observe a4 table2)(available a4)(inroom table2 room1)(immediate-dummy-ryt_observe-table_a3_table2_room1 dd))
	:effect (and (not (immediate-dummy-ryt_observe-table_a3_table2_room1 dd))(dummy-right-ryt_observe-table_a3_table2_room1 dd))
)
(:action act-fms_observe-table_a3_table4_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ryt_observe-table_a3_table2_room1 dd)(immediate-dummy-fms_observe-table_a3_table4_room1 dd)(not (inroom table2 room1))(inroom table3 room2)(inroom table1 room4)(in a4 room1)(can-observe a4 table4)(available a4))
	:observe (inroom table4 room1)
)
(:action act-dummy-fms_observe-table_a3_table4_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ryt_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(inroom table3 room2)(inroom table1 room4)(in a4 room1)(can-observe a4 table4)(available a4)(not (dummy-left-fms_observe-table_a3_table4_room1 dd))(not (dummy-right-fms_observe-table_a3_table4_room1 dd)))
	:effect (and (immediate-dummy-fms_observe-table_a3_table4_room1 dd) )
)
(:action dummy-left-fms_observe-table_a3_table4_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ryt_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(inroom table3 room2)(inroom table1 room4)(in a4 room1)(can-observe a4 table4)(available a4)(not (inroom table4 room1))(immediate-dummy-fms_observe-table_a3_table4_room1 dd))
	:effect (and (not (immediate-dummy-fms_observe-table_a3_table4_room1 dd))(dummy-left-fms_observe-table_a3_table4_room1 dd))
)
(:action dummy-right-fms_observe-table_a3_table4_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ryt_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(inroom table3 room2)(inroom table1 room4)(in a4 room1)(can-observe a4 table4)(available a4)(inroom table4 room1)(immediate-dummy-fms_observe-table_a3_table4_room1 dd))
	:effect (and (not (immediate-dummy-fms_observe-table_a3_table4_room1 dd))(dummy-right-fms_observe-table_a3_table4_room1 dd))
)
(:action act-5nz_joint-lift-table_a3_a4_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-fms_observe-table_a3_table4_room1 dd)(not (inroom table4 room1))(not (inroom table2 room1))(inroom table3 room2)(inroom table1 room4)(available a4)(in a4 room2))
	:effect (and (pre-5nz_joint-lift-table_a3_a4_table2_room2 dd)(not (available a4)))
)
(:action act-slk_joint-move-table_a3_a4_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-5nz_joint-lift-table_a3_a4_table2_room2 dd)(in a4 room2)(connected room2 room1))
	:effect (and (pre-slk_joint-move-table_a3_a4_table2_room2_room1 dd)(not (pre-5nz_joint-lift-table_a3_a4_table2_room2 dd))(not (in a4 room2))(in a4 room1))
)
(:action act-r6a_joint-drop-table_a3_a4_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-slk_joint-move-table_a3_a4_table2_room2_room1 dd)(in a4 room1))
	:effect (and (pre-r6a_joint-drop-table_a3_a4_table2_room1 dd)(not (pre-slk_joint-move-table_a3_a4_table2_room2_room1 dd))(available a4))
)
(:action goal-achieve-r6a_joint-drop-table_a3_a4_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-r6a_joint-drop-table_a3_a4_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-r6a_joint-drop-table_a3_a4_table2_room1 dd)))
)
(:action goal-achieve-right-fms_observe-table_a3_table4_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-fms_observe-table_a3_table4_room1 dd)(inroom table4 room1)(not (inroom table2 room1))(inroom table3 room2)(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-fms_observe-table_a3_table4_room1 dd)))
)
(:action goal-achieve-right-ryt_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ryt_observe-table_a3_table2_room1 dd)(inroom table2 room1)(inroom table3 room2)(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-ryt_observe-table_a3_table2_room1 dd)))
)
)