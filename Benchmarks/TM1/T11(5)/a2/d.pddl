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
	(lifting ?a - agent ?t - table )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a1 - agent ?table - table )
	(init-vsj_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-vsj_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-vsj_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-kfn_observe-table_a4_table1_room3 ?dd - dummy)
	(dummy-left-kfn_observe-table_a4_table1_room3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-kfn_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-hp1_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-hp1_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-right-hp1_observe-table_a4_table4_room6 ?dd - dummy)
	(immediate-dummy-q8v_observe-table_a2_table3_room5 ?dd - dummy)
	(dummy-left-q8v_observe-table_a2_table3_room5 ?dd - dummy)
	(pre-e46_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
	(pre-5ub_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
	(pre-mmv_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
	(dummy-right-q8v_observe-table_a2_table3_room5 ?dd - dummy)
	(dummy-right-vsj_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-1jb_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-1jb_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-right-1jb_observe-table_a4_table4_room6 ?dd - dummy)
	(immediate-dummy-5t8_observe-table_a2_table3_room5 ?dd - dummy)
	(dummy-left-5t8_observe-table_a2_table3_room5 ?dd - dummy)
	(pre-trp_joint-lift-table_a2_a5_table3_room6 ?dd - dummy)
	(pre-6s8_joint-move-table_a2_a5_table3_room6_room5 ?dd - dummy)
	(pre-7yc_joint-drop-table_a2_a5_table3_room5 ?dd - dummy)
	(dummy-right-5t8_observe-table_a2_table3_room5 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-vsj_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-vsj_observe-table_a3_table2_room1 dd)(immediate-dummy-vsj_observe-table_a3_table2_room1 dd)(in a2 room1)(can-observe a2 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-vsj_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-vsj_observe-table_a3_table2_room1 dd)(not (dummy-left-vsj_observe-table_a3_table2_room1 dd))(not (dummy-right-vsj_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-vsj_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-vsj_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-vsj_observe-table_a3_table2_room1 dd)(in a2 room1)(can-observe a2 table2)(not (inroom table2 room1))(immediate-dummy-vsj_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-vsj_observe-table_a3_table2_room1 dd))(not (immediate-dummy-vsj_observe-table_a3_table2_room1 dd))(dummy-left-vsj_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-vsj_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-vsj_observe-table_a3_table2_room1 dd)(in a2 room1)(can-observe a2 table2)(inroom table2 room1)(immediate-dummy-vsj_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-vsj_observe-table_a3_table2_room1 dd))(not (immediate-dummy-vsj_observe-table_a3_table2_room1 dd))(dummy-right-vsj_observe-table_a3_table2_room1 dd))
)
(:action act-kfn_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vsj_observe-table_a3_table2_room1 dd)(immediate-dummy-kfn_observe-table_a4_table1_room3 dd)(not (inroom table2 room1))(in a2 room3)(can-observe a2 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-kfn_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vsj_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a2 room3)(can-observe a2 table1)(not (dummy-left-kfn_observe-table_a4_table1_room3 dd))(not (dummy-right-kfn_observe-table_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-kfn_observe-table_a4_table1_room3 dd) )
)
(:action dummy-left-kfn_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vsj_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a2 room3)(can-observe a2 table1)(not (inroom table1 room3))(immediate-dummy-kfn_observe-table_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-kfn_observe-table_a4_table1_room3 dd))(dummy-left-kfn_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-kfn_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vsj_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a2 room3)(can-observe a2 table1)(inroom table1 room3)(immediate-dummy-kfn_observe-table_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-kfn_observe-table_a4_table1_room3 dd))(dummy-right-kfn_observe-table_a4_table1_room3 dd))
)
(:action goal-achieve-left-kfn_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-kfn_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(not (inroom table2 room1)))
	:effect (and (done-goal dd)(not (dummy-left-kfn_observe-table_a4_table1_room3 dd)))
)
(:action act-hp1_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kfn_observe-table_a4_table1_room3 dd)(immediate-dummy-hp1_observe-table_a4_table4_room6 dd)(inroom table1 room3)(not (inroom table2 room1))(in a2 room6)(can-observe a2 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-hp1_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kfn_observe-table_a4_table1_room3 dd)(inroom table1 room3)(not (inroom table2 room1))(in a2 room6)(can-observe a2 table4)(not (dummy-left-hp1_observe-table_a4_table4_room6 dd))(not (dummy-right-hp1_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-hp1_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-hp1_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kfn_observe-table_a4_table1_room3 dd)(inroom table1 room3)(not (inroom table2 room1))(in a2 room6)(can-observe a2 table4)(not (inroom table4 room6))(immediate-dummy-hp1_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-hp1_observe-table_a4_table4_room6 dd))(dummy-left-hp1_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-hp1_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kfn_observe-table_a4_table1_room3 dd)(inroom table1 room3)(not (inroom table2 room1))(in a2 room6)(can-observe a2 table4)(inroom table4 room6)(immediate-dummy-hp1_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-hp1_observe-table_a4_table4_room6 dd))(dummy-right-hp1_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-hp1_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hp1_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table1 room3)(not (inroom table2 room1)))
	:effect (and (done-goal dd)(not (dummy-left-hp1_observe-table_a4_table4_room6 dd)))
)
(:action act-q8v_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hp1_observe-table_a4_table4_room6 dd)(immediate-dummy-q8v_observe-table_a2_table3_room5 dd)(inroom table4 room6)(inroom table1 room3)(not (inroom table2 room1))(in a2 room5)(can-observe a2 table3))
	:observe (inroom table3 room5)
)
(:action act-dummy-q8v_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hp1_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table1 room3)(not (inroom table2 room1))(in a2 room5)(can-observe a2 table3)(not (dummy-left-q8v_observe-table_a2_table3_room5 dd))(not (dummy-right-q8v_observe-table_a2_table3_room5 dd)))
	:effect (and (immediate-dummy-q8v_observe-table_a2_table3_room5 dd) )
)
(:action dummy-left-q8v_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hp1_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table1 room3)(not (inroom table2 room1))(in a2 room5)(can-observe a2 table3)(not (inroom table3 room5))(immediate-dummy-q8v_observe-table_a2_table3_room5 dd))
	:effect (and (not (immediate-dummy-q8v_observe-table_a2_table3_room5 dd))(dummy-left-q8v_observe-table_a2_table3_room5 dd))
)
(:action dummy-right-q8v_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hp1_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table1 room3)(not (inroom table2 room1))(in a2 room5)(can-observe a2 table3)(inroom table3 room5)(immediate-dummy-q8v_observe-table_a2_table3_room5 dd))
	:effect (and (not (immediate-dummy-q8v_observe-table_a2_table3_room5 dd))(dummy-right-q8v_observe-table_a2_table3_room5 dd))
)
(:action act-e46_joint-lift-table_a2_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-q8v_observe-table_a2_table3_room5 dd)(not (inroom table3 room5))(inroom table4 room6)(inroom table1 room3)(not (inroom table2 room1))(available a2)(in a2 room6))
	:effect (and (pre-e46_joint-lift-table_a2_a5_table3_room6 dd)(not (available a2)))
)
(:action act-5ub_joint-move-table_a2_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-e46_joint-lift-table_a2_a5_table3_room6 dd)(in a2 room6)(connected room6 room5))
	:effect (and (pre-5ub_joint-move-table_a2_a5_table3_room6_room5 dd)(not (pre-e46_joint-lift-table_a2_a5_table3_room6 dd))(not (in a2 room6))(in a2 room5))
)
(:action act-mmv_joint-drop-table_a2_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-5ub_joint-move-table_a2_a5_table3_room6_room5 dd)(in a2 room5))
	:effect (and (pre-mmv_joint-drop-table_a2_a5_table3_room5 dd)(not (pre-5ub_joint-move-table_a2_a5_table3_room6_room5 dd))(available a2))
)
(:action goal-achieve-mmv_joint-drop-table_a2_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-mmv_joint-drop-table_a2_a5_table3_room5 dd))
	:effect (and (done-goal dd)(not (pre-mmv_joint-drop-table_a2_a5_table3_room5 dd)))
)
(:action goal-achieve-right-q8v_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-q8v_observe-table_a2_table3_room5 dd)(inroom table3 room5)(inroom table4 room6)(inroom table1 room3)(not (inroom table2 room1)))
	:effect (and (done-goal dd)(not (dummy-right-q8v_observe-table_a2_table3_room5 dd)))
)
(:action act-1jb_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vsj_observe-table_a3_table2_room1 dd)(immediate-dummy-1jb_observe-table_a4_table4_room6 dd)(inroom table2 room1)(in a2 room6)(can-observe a2 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-1jb_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vsj_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a2 room6)(can-observe a2 table4)(not (dummy-left-1jb_observe-table_a4_table4_room6 dd))(not (dummy-right-1jb_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-1jb_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-1jb_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vsj_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a2 room6)(can-observe a2 table4)(not (inroom table4 room6))(immediate-dummy-1jb_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-1jb_observe-table_a4_table4_room6 dd))(dummy-left-1jb_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-1jb_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vsj_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a2 room6)(can-observe a2 table4)(inroom table4 room6)(immediate-dummy-1jb_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-1jb_observe-table_a4_table4_room6 dd))(dummy-right-1jb_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-1jb_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1jb_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-left-1jb_observe-table_a4_table4_room6 dd)))
)
(:action act-5t8_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1jb_observe-table_a4_table4_room6 dd)(immediate-dummy-5t8_observe-table_a2_table3_room5 dd)(inroom table4 room6)(inroom table2 room1)(in a2 room5)(can-observe a2 table3))
	:observe (inroom table3 room5)
)
(:action act-dummy-5t8_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1jb_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table2 room1)(in a2 room5)(can-observe a2 table3)(not (dummy-left-5t8_observe-table_a2_table3_room5 dd))(not (dummy-right-5t8_observe-table_a2_table3_room5 dd)))
	:effect (and (immediate-dummy-5t8_observe-table_a2_table3_room5 dd) )
)
(:action dummy-left-5t8_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1jb_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table2 room1)(in a2 room5)(can-observe a2 table3)(not (inroom table3 room5))(immediate-dummy-5t8_observe-table_a2_table3_room5 dd))
	:effect (and (not (immediate-dummy-5t8_observe-table_a2_table3_room5 dd))(dummy-left-5t8_observe-table_a2_table3_room5 dd))
)
(:action dummy-right-5t8_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1jb_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table2 room1)(in a2 room5)(can-observe a2 table3)(inroom table3 room5)(immediate-dummy-5t8_observe-table_a2_table3_room5 dd))
	:effect (and (not (immediate-dummy-5t8_observe-table_a2_table3_room5 dd))(dummy-right-5t8_observe-table_a2_table3_room5 dd))
)
(:action act-trp_joint-lift-table_a2_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-5t8_observe-table_a2_table3_room5 dd)(not (inroom table3 room5))(inroom table4 room6)(inroom table2 room1)(available a2)(in a2 room6))
	:effect (and (pre-trp_joint-lift-table_a2_a5_table3_room6 dd)(not (available a2)))
)
(:action act-6s8_joint-move-table_a2_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-trp_joint-lift-table_a2_a5_table3_room6 dd)(in a2 room6)(connected room6 room5))
	:effect (and (pre-6s8_joint-move-table_a2_a5_table3_room6_room5 dd)(not (pre-trp_joint-lift-table_a2_a5_table3_room6 dd))(not (in a2 room6))(in a2 room5))
)
(:action act-7yc_joint-drop-table_a2_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-6s8_joint-move-table_a2_a5_table3_room6_room5 dd)(in a2 room5))
	:effect (and (pre-7yc_joint-drop-table_a2_a5_table3_room5 dd)(not (pre-6s8_joint-move-table_a2_a5_table3_room6_room5 dd))(available a2))
)
(:action goal-achieve-7yc_joint-drop-table_a2_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-7yc_joint-drop-table_a2_a5_table3_room5 dd))
	:effect (and (done-goal dd)(not (pre-7yc_joint-drop-table_a2_a5_table3_room5 dd)))
)
(:action goal-achieve-right-5t8_observe-table_a2_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-5t8_observe-table_a2_table3_room5 dd)(inroom table3 room5)(inroom table4 room6)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-right-5t8_observe-table_a2_table3_room5 dd)))
)
)