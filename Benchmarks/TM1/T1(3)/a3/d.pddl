(define (domain tablemover-2-a3)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
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
	(init-uit_observe-table_a3_table1_room4 ?dd - dummy)
	(immediate-dummy-uit_observe-table_a3_table1_room4 ?dd - dummy)
	(dummy-left-uit_observe-table_a3_table1_room4 ?dd - dummy)
	(immediate-dummy-q80_observe-table_a2_table2_room2 ?dd - dummy)
	(dummy-left-q80_observe-table_a2_table2_room2 ?dd - dummy)
	(immediate-dummy-kxn_observe-table_a2_table3_room1 ?dd - dummy)
	(dummy-left-kxn_observe-table_a2_table3_room1 ?dd - dummy)
	(pre-icw_joint-lift-table_a3_a1_table1_room3 ?dd - dummy)
	(pre-ip7_joint-move-table_a3_a1_table1_room3_room4 ?dd - dummy)
	(pre-t0e_joint-drop-table_a3_a1_table1_room4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-kxn_observe-table_a2_table3_room1 ?dd - dummy)
	(pre-744_joint-lift-table_a3_a1_table1_room3 ?dd - dummy)
	(pre-mmo_joint-move-table_a3_a1_table1_room3_room4 ?dd - dummy)
	(pre-ffd_joint-drop-table_a3_a1_table1_room4 ?dd - dummy)
	(pre-deh_joint-lift-table_a3_a2_table3_room1 ?dd - dummy)
	(pre-mgi_joint-move-table_a3_a2_table3_room1_room2 ?dd - dummy)
	(pre-rf1_joint-drop-table_a3_a2_table3_room2 ?dd - dummy)
	(dummy-right-q80_observe-table_a2_table2_room2 ?dd - dummy)
	(pre-zmx_joint-lift-table_a3_a1_table1_room3 ?dd - dummy)
	(pre-lww_joint-move-table_a3_a1_table1_room3_room4 ?dd - dummy)
	(pre-jru_joint-drop-table_a3_a1_table1_room4 ?dd - dummy)
	(dummy-right-uit_observe-table_a3_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-uit_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-uit_observe-table_a3_table1_room4 dd)(immediate-dummy-uit_observe-table_a3_table1_room4 dd)(in a3 room4)(can-observe a3 table1))
	:observe (inroom table1 room4)
)
(:action act-dummy-uit_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-uit_observe-table_a3_table1_room4 dd)(not (dummy-left-uit_observe-table_a3_table1_room4 dd))(not (dummy-right-uit_observe-table_a3_table1_room4 dd)))
	:effect (and (immediate-dummy-uit_observe-table_a3_table1_room4 dd) )
)
(:action dummy-left-uit_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-uit_observe-table_a3_table1_room4 dd)(in a3 room4)(can-observe a3 table1)(not (inroom table1 room4))(immediate-dummy-uit_observe-table_a3_table1_room4 dd))
	:effect (and (not (init-uit_observe-table_a3_table1_room4 dd))(not (immediate-dummy-uit_observe-table_a3_table1_room4 dd))(dummy-left-uit_observe-table_a3_table1_room4 dd))
)
(:action dummy-right-uit_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (init-uit_observe-table_a3_table1_room4 dd)(in a3 room4)(can-observe a3 table1)(inroom table1 room4)(immediate-dummy-uit_observe-table_a3_table1_room4 dd))
	:effect (and (not (init-uit_observe-table_a3_table1_room4 dd))(not (immediate-dummy-uit_observe-table_a3_table1_room4 dd))(dummy-right-uit_observe-table_a3_table1_room4 dd))
)
(:action act-q80_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uit_observe-table_a3_table1_room4 dd)(immediate-dummy-q80_observe-table_a2_table2_room2 dd)(not (inroom table1 room4))(in a3 room2)(can-observe a3 table2))
	:observe (inroom table2 room2)
)
(:action act-dummy-q80_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uit_observe-table_a3_table1_room4 dd)(not (inroom table1 room4))(in a3 room2)(can-observe a3 table2)(not (dummy-left-q80_observe-table_a2_table2_room2 dd))(not (dummy-right-q80_observe-table_a2_table2_room2 dd)))
	:effect (and (immediate-dummy-q80_observe-table_a2_table2_room2 dd) )
)
(:action dummy-left-q80_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uit_observe-table_a3_table1_room4 dd)(not (inroom table1 room4))(in a3 room2)(can-observe a3 table2)(not (inroom table2 room2))(immediate-dummy-q80_observe-table_a2_table2_room2 dd))
	:effect (and (not (immediate-dummy-q80_observe-table_a2_table2_room2 dd))(dummy-left-q80_observe-table_a2_table2_room2 dd))
)
(:action dummy-right-q80_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uit_observe-table_a3_table1_room4 dd)(not (inroom table1 room4))(in a3 room2)(can-observe a3 table2)(inroom table2 room2)(immediate-dummy-q80_observe-table_a2_table2_room2 dd))
	:effect (and (not (immediate-dummy-q80_observe-table_a2_table2_room2 dd))(dummy-right-q80_observe-table_a2_table2_room2 dd))
)
(:action act-kxn_observe-table_a2_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-q80_observe-table_a2_table2_room2 dd)(immediate-dummy-kxn_observe-table_a2_table3_room1 dd)(not (inroom table2 room2))(not (inroom table1 room4))(in a3 room1)(can-observe a3 table3))
	:observe (inroom table3 room1)
)
(:action act-dummy-kxn_observe-table_a2_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-q80_observe-table_a2_table2_room2 dd)(not (inroom table2 room2))(not (inroom table1 room4))(in a3 room1)(can-observe a3 table3)(not (dummy-left-kxn_observe-table_a2_table3_room1 dd))(not (dummy-right-kxn_observe-table_a2_table3_room1 dd)))
	:effect (and (immediate-dummy-kxn_observe-table_a2_table3_room1 dd) )
)
(:action dummy-left-kxn_observe-table_a2_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-q80_observe-table_a2_table2_room2 dd)(not (inroom table2 room2))(not (inroom table1 room4))(in a3 room1)(can-observe a3 table3)(not (inroom table3 room1))(immediate-dummy-kxn_observe-table_a2_table3_room1 dd))
	:effect (and (not (immediate-dummy-kxn_observe-table_a2_table3_room1 dd))(dummy-left-kxn_observe-table_a2_table3_room1 dd))
)
(:action dummy-right-kxn_observe-table_a2_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-q80_observe-table_a2_table2_room2 dd)(not (inroom table2 room2))(not (inroom table1 room4))(in a3 room1)(can-observe a3 table3)(inroom table3 room1)(immediate-dummy-kxn_observe-table_a2_table3_room1 dd))
	:effect (and (not (immediate-dummy-kxn_observe-table_a2_table3_room1 dd))(dummy-right-kxn_observe-table_a2_table3_room1 dd))
)
(:action act-icw_joint-lift-table_a3_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-kxn_observe-table_a2_table3_room1 dd)(not (inroom table3 room1))(not (inroom table2 room2))(not (inroom table1 room4))(available a3)(in a3 room3))
	:effect (and (pre-icw_joint-lift-table_a3_a1_table1_room3 dd)(not (available a3)))
)
(:action act-ip7_joint-move-table_a3_a1_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-icw_joint-lift-table_a3_a1_table1_room3 dd)(in a3 room3)(connected room3 room4))
	:effect (and (pre-ip7_joint-move-table_a3_a1_table1_room3_room4 dd)(not (pre-icw_joint-lift-table_a3_a1_table1_room3 dd))(not (in a3 room3))(in a3 room4))
)
(:action act-t0e_joint-drop-table_a3_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-ip7_joint-move-table_a3_a1_table1_room3_room4 dd)(in a3 room4))
	:effect (and (pre-t0e_joint-drop-table_a3_a1_table1_room4 dd)(not (pre-ip7_joint-move-table_a3_a1_table1_room3_room4 dd))(available a3))
)
(:action goal-achieve-t0e_joint-drop-table_a3_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-t0e_joint-drop-table_a3_a1_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-t0e_joint-drop-table_a3_a1_table1_room4 dd)))
)
(:action act-744_joint-lift-table_a3_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kxn_observe-table_a2_table3_room1 dd)(inroom table3 room1)(not (inroom table2 room2))(not (inroom table1 room4))(available a3)(in a3 room3))
	:effect (and (pre-744_joint-lift-table_a3_a1_table1_room3 dd)(not (available a3)))
)
(:action act-mmo_joint-move-table_a3_a1_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-744_joint-lift-table_a3_a1_table1_room3 dd)(in a3 room3)(connected room3 room4))
	:effect (and (pre-mmo_joint-move-table_a3_a1_table1_room3_room4 dd)(not (pre-744_joint-lift-table_a3_a1_table1_room3 dd))(not (in a3 room3))(in a3 room4))
)
(:action act-ffd_joint-drop-table_a3_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-mmo_joint-move-table_a3_a1_table1_room3_room4 dd)(in a3 room4))
	:effect (and (pre-ffd_joint-drop-table_a3_a1_table1_room4 dd)(not (pre-mmo_joint-move-table_a3_a1_table1_room3_room4 dd))(available a3))
)
(:action act-deh_joint-lift-table_a3_a2_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-ffd_joint-drop-table_a3_a1_table1_room4 dd)(available a3)(in a3 room1))
	:effect (and (pre-deh_joint-lift-table_a3_a2_table3_room1 dd)(not (pre-ffd_joint-drop-table_a3_a1_table1_room4 dd))(not (available a3)))
)
(:action act-mgi_joint-move-table_a3_a2_table3_room1_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-deh_joint-lift-table_a3_a2_table3_room1 dd)(in a3 room1)(connected room1 room2))
	:effect (and (pre-mgi_joint-move-table_a3_a2_table3_room1_room2 dd)(not (pre-deh_joint-lift-table_a3_a2_table3_room1 dd))(not (in a3 room1))(in a3 room2))
)
(:action act-rf1_joint-drop-table_a3_a2_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-mgi_joint-move-table_a3_a2_table3_room1_room2 dd)(in a3 room2))
	:effect (and (pre-rf1_joint-drop-table_a3_a2_table3_room2 dd)(not (pre-mgi_joint-move-table_a3_a2_table3_room1_room2 dd))(available a3))
)
(:action goal-achieve-rf1_joint-drop-table_a3_a2_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-rf1_joint-drop-table_a3_a2_table3_room2 dd))
	:effect (and (done-goal dd)(not (pre-rf1_joint-drop-table_a3_a2_table3_room2 dd)))
)
(:action act-zmx_joint-lift-table_a3_a1_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-q80_observe-table_a2_table2_room2 dd)(inroom table2 room2)(not (inroom table1 room4))(available a3)(in a3 room3))
	:effect (and (pre-zmx_joint-lift-table_a3_a1_table1_room3 dd)(not (available a3)))
)
(:action act-lww_joint-move-table_a3_a1_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-zmx_joint-lift-table_a3_a1_table1_room3 dd)(in a3 room3)(connected room3 room4))
	:effect (and (pre-lww_joint-move-table_a3_a1_table1_room3_room4 dd)(not (pre-zmx_joint-lift-table_a3_a1_table1_room3 dd))(not (in a3 room3))(in a3 room4))
)
(:action act-jru_joint-drop-table_a3_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-lww_joint-move-table_a3_a1_table1_room3_room4 dd)(in a3 room4))
	:effect (and (pre-jru_joint-drop-table_a3_a1_table1_room4 dd)(not (pre-lww_joint-move-table_a3_a1_table1_room3_room4 dd))(available a3))
)
(:action goal-achieve-jru_joint-drop-table_a3_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-jru_joint-drop-table_a3_a1_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-jru_joint-drop-table_a3_a1_table1_room4 dd)))
)
(:action goal-achieve-right-uit_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uit_observe-table_a3_table1_room4 dd)(inroom table1 room4))
	:effect (and (done-goal dd)(not (dummy-right-uit_observe-table_a3_table1_room4 dd)))
)
)