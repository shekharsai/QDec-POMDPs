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
	(lifting ?a - agent ?t - table )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a1 - agent ?table - table )
	(init-3x3_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-3x3_observe-table_a4_table1_room3 ?dd - dummy)
	(dummy-left-3x3_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-t6g_observe-table_a5_table3_room5 ?dd - dummy)
	(dummy-left-t6g_observe-table_a5_table3_room5 ?dd - dummy)
	(immediate-dummy-ilh_observe-table_a1_table2_room1 ?dd - dummy)
	(dummy-left-ilh_observe-table_a1_table2_room1 ?dd - dummy)
	(pre-y8u_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-lfd_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-jyq_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-ilh_observe-table_a1_table2_room1 ?dd - dummy)
	(dummy-right-t6g_observe-table_a5_table3_room5 ?dd - dummy)
	(immediate-dummy-vgu_observe-table_a3_table2_room2 ?dd - dummy)
	(dummy-left-vgu_observe-table_a3_table2_room2 ?dd - dummy)
	(dummy-right-vgu_observe-table_a3_table2_room2 ?dd - dummy)
	(pre-anj_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-c63_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-oqj_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(dummy-right-3x3_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-s6e_observe-table_a3_table2_room2 ?dd - dummy)
	(dummy-left-s6e_observe-table_a3_table2_room2 ?dd - dummy)
	(dummy-right-s6e_observe-table_a3_table2_room2 ?dd - dummy)
	(pre-toy_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-u5y_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-d5s_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-3x3_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-3x3_observe-table_a4_table1_room3 dd)(immediate-dummy-3x3_observe-table_a4_table1_room3 dd)(in a3 room3)(can-observe a3 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-3x3_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-3x3_observe-table_a4_table1_room3 dd)(not (dummy-left-3x3_observe-table_a4_table1_room3 dd))(not (dummy-right-3x3_observe-table_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-3x3_observe-table_a4_table1_room3 dd) )
)
(:action dummy-left-3x3_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-3x3_observe-table_a4_table1_room3 dd)(in a3 room3)(can-observe a3 table1)(not (inroom table1 room3))(immediate-dummy-3x3_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-3x3_observe-table_a4_table1_room3 dd))(not (immediate-dummy-3x3_observe-table_a4_table1_room3 dd))(dummy-left-3x3_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-3x3_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-3x3_observe-table_a4_table1_room3 dd)(in a3 room3)(can-observe a3 table1)(inroom table1 room3)(immediate-dummy-3x3_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-3x3_observe-table_a4_table1_room3 dd))(not (immediate-dummy-3x3_observe-table_a4_table1_room3 dd))(dummy-right-3x3_observe-table_a4_table1_room3 dd))
)
(:action act-t6g_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3x3_observe-table_a4_table1_room3 dd)(immediate-dummy-t6g_observe-table_a5_table3_room5 dd)(not (inroom table1 room3))(in a3 room5)(can-observe a3 table3))
	:observe (inroom table3 room5)
)
(:action act-dummy-t6g_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3x3_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a3 room5)(can-observe a3 table3)(not (dummy-left-t6g_observe-table_a5_table3_room5 dd))(not (dummy-right-t6g_observe-table_a5_table3_room5 dd)))
	:effect (and (immediate-dummy-t6g_observe-table_a5_table3_room5 dd) )
)
(:action dummy-left-t6g_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3x3_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a3 room5)(can-observe a3 table3)(not (inroom table3 room5))(immediate-dummy-t6g_observe-table_a5_table3_room5 dd))
	:effect (and (not (immediate-dummy-t6g_observe-table_a5_table3_room5 dd))(dummy-left-t6g_observe-table_a5_table3_room5 dd))
)
(:action dummy-right-t6g_observe-table_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3x3_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a3 room5)(can-observe a3 table3)(inroom table3 room5)(immediate-dummy-t6g_observe-table_a5_table3_room5 dd))
	:effect (and (not (immediate-dummy-t6g_observe-table_a5_table3_room5 dd))(dummy-right-t6g_observe-table_a5_table3_room5 dd))
)
(:action act-ilh_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-t6g_observe-table_a5_table3_room5 dd)(immediate-dummy-ilh_observe-table_a1_table2_room1 dd)(not (inroom table3 room5))(not (inroom table1 room3))(in a3 room1)(can-observe a3 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-ilh_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-t6g_observe-table_a5_table3_room5 dd)(not (inroom table3 room5))(not (inroom table1 room3))(in a3 room1)(can-observe a3 table2)(not (dummy-left-ilh_observe-table_a1_table2_room1 dd))(not (dummy-right-ilh_observe-table_a1_table2_room1 dd)))
	:effect (and (immediate-dummy-ilh_observe-table_a1_table2_room1 dd) )
)
(:action dummy-left-ilh_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-t6g_observe-table_a5_table3_room5 dd)(not (inroom table3 room5))(not (inroom table1 room3))(in a3 room1)(can-observe a3 table2)(not (inroom table2 room1))(immediate-dummy-ilh_observe-table_a1_table2_room1 dd))
	:effect (and (not (immediate-dummy-ilh_observe-table_a1_table2_room1 dd))(dummy-left-ilh_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-ilh_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-t6g_observe-table_a5_table3_room5 dd)(not (inroom table3 room5))(not (inroom table1 room3))(in a3 room1)(can-observe a3 table2)(inroom table2 room1)(immediate-dummy-ilh_observe-table_a1_table2_room1 dd))
	:effect (and (not (immediate-dummy-ilh_observe-table_a1_table2_room1 dd))(dummy-right-ilh_observe-table_a1_table2_room1 dd))
)
(:action act-y8u_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ilh_observe-table_a1_table2_room1 dd)(not (inroom table2 room1))(not (inroom table3 room5))(not (inroom table1 room3))(available a3)(in a3 room2))
	:effect (and (pre-y8u_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-lfd_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-y8u_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-lfd_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-y8u_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-jyq_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-lfd_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-jyq_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-lfd_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-jyq_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-jyq_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-jyq_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-ilh_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ilh_observe-table_a1_table2_room1 dd)(inroom table2 room1)(not (inroom table3 room5))(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-right-ilh_observe-table_a1_table2_room1 dd)))
)
(:action act-vgu_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-t6g_observe-table_a5_table3_room5 dd)(immediate-dummy-vgu_observe-table_a3_table2_room2 dd)(inroom table3 room5)(not (inroom table1 room3))(in a3 room2)(can-observe a3 table2))
	:observe (inroom table2 room2)
)
(:action act-dummy-vgu_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-t6g_observe-table_a5_table3_room5 dd)(inroom table3 room5)(not (inroom table1 room3))(in a3 room2)(can-observe a3 table2)(not (dummy-left-vgu_observe-table_a3_table2_room2 dd))(not (dummy-right-vgu_observe-table_a3_table2_room2 dd)))
	:effect (and (immediate-dummy-vgu_observe-table_a3_table2_room2 dd) )
)
(:action dummy-left-vgu_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-t6g_observe-table_a5_table3_room5 dd)(inroom table3 room5)(not (inroom table1 room3))(in a3 room2)(can-observe a3 table2)(not (inroom table2 room2))(immediate-dummy-vgu_observe-table_a3_table2_room2 dd))
	:effect (and (not (immediate-dummy-vgu_observe-table_a3_table2_room2 dd))(dummy-left-vgu_observe-table_a3_table2_room2 dd))
)
(:action dummy-right-vgu_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-t6g_observe-table_a5_table3_room5 dd)(inroom table3 room5)(not (inroom table1 room3))(in a3 room2)(can-observe a3 table2)(inroom table2 room2)(immediate-dummy-vgu_observe-table_a3_table2_room2 dd))
	:effect (and (not (immediate-dummy-vgu_observe-table_a3_table2_room2 dd))(dummy-right-vgu_observe-table_a3_table2_room2 dd))
)
(:action goal-achieve-left-vgu_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vgu_observe-table_a3_table2_room2 dd)(not (inroom table2 room2))(inroom table3 room5)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-vgu_observe-table_a3_table2_room2 dd)))
)
(:action act-anj_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vgu_observe-table_a3_table2_room2 dd)(inroom table2 room2)(inroom table3 room5)(not (inroom table1 room3))(available a3)(in a3 room2))
	:effect (and (pre-anj_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-c63_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-anj_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-c63_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-anj_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-oqj_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-c63_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-oqj_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-c63_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-oqj_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-oqj_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-oqj_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-s6e_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3x3_observe-table_a4_table1_room3 dd)(immediate-dummy-s6e_observe-table_a3_table2_room2 dd)(inroom table1 room3)(in a3 room2)(can-observe a3 table2))
	:observe (inroom table2 room2)
)
(:action act-dummy-s6e_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3x3_observe-table_a4_table1_room3 dd)(inroom table1 room3)(in a3 room2)(can-observe a3 table2)(not (dummy-left-s6e_observe-table_a3_table2_room2 dd))(not (dummy-right-s6e_observe-table_a3_table2_room2 dd)))
	:effect (and (immediate-dummy-s6e_observe-table_a3_table2_room2 dd) )
)
(:action dummy-left-s6e_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3x3_observe-table_a4_table1_room3 dd)(inroom table1 room3)(in a3 room2)(can-observe a3 table2)(not (inroom table2 room2))(immediate-dummy-s6e_observe-table_a3_table2_room2 dd))
	:effect (and (not (immediate-dummy-s6e_observe-table_a3_table2_room2 dd))(dummy-left-s6e_observe-table_a3_table2_room2 dd))
)
(:action dummy-right-s6e_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3x3_observe-table_a4_table1_room3 dd)(inroom table1 room3)(in a3 room2)(can-observe a3 table2)(inroom table2 room2)(immediate-dummy-s6e_observe-table_a3_table2_room2 dd))
	:effect (and (not (immediate-dummy-s6e_observe-table_a3_table2_room2 dd))(dummy-right-s6e_observe-table_a3_table2_room2 dd))
)
(:action goal-achieve-left-s6e_observe-table_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-s6e_observe-table_a3_table2_room2 dd)(not (inroom table2 room2))(inroom table1 room3))
	:effect (and (done-goal dd)(not (dummy-left-s6e_observe-table_a3_table2_room2 dd)))
)
(:action act-toy_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-s6e_observe-table_a3_table2_room2 dd)(inroom table2 room2)(inroom table1 room3)(available a3)(in a3 room2))
	:effect (and (pre-toy_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-u5y_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-toy_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-u5y_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-toy_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-d5s_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-u5y_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-d5s_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-u5y_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-d5s_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-d5s_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-d5s_joint-drop-table_a1_a3_table2_room1 dd)))
)
)