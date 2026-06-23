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
	(lifting ?a - agent ?t - table )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a1 - agent ?table - table )
	(init-gh8_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-gh8_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-gh8_observe-table_a3_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-gh8_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-fy7_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(dummy-left-fy7_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(dummy-right-fy7_observe-table-lsq_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-d50_observe-table_a5_table3_room6 ?dd - dummy)
	(dummy-left-d50_observe-table_a5_table3_room6 ?dd - dummy)
	(immediate-dummy-75t_observe-table_a5_table4_room6 ?dd - dummy)
	(dummy-left-75t_observe-table_a5_table4_room6 ?dd - dummy)
	(dummy-right-75t_observe-table_a5_table4_room6 ?dd - dummy)
	(pre-40s_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
	(pre-lop_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
	(pre-t9t_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
	(dummy-right-d50_observe-table_a5_table3_room6 ?dd - dummy)
	(immediate-dummy-hp9_observe-table_a5_table4_room7 ?dd - dummy)
	(dummy-left-hp9_observe-table_a5_table4_room7 ?dd - dummy)
	(pre-vy1_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
	(pre-xjx_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
	(pre-ukk_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
	(dummy-right-hp9_observe-table_a5_table4_room7 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-gh8_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-gh8_observe-table_a3_table2_room1 dd)(immediate-dummy-gh8_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-gh8_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-gh8_observe-table_a3_table2_room1 dd)(not (dummy-left-gh8_observe-table_a3_table2_room1 dd))(not (dummy-right-gh8_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-gh8_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-gh8_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-gh8_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2)(not (inroom table2 room1))(immediate-dummy-gh8_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-gh8_observe-table_a3_table2_room1 dd))(not (immediate-dummy-gh8_observe-table_a3_table2_room1 dd))(dummy-left-gh8_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-gh8_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-gh8_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2)(inroom table2 room1)(immediate-dummy-gh8_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-gh8_observe-table_a3_table2_room1 dd))(not (immediate-dummy-gh8_observe-table_a3_table2_room1 dd))(dummy-right-gh8_observe-table_a3_table2_room1 dd))
)
(:action goal-achieve-left-gh8_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-gh8_observe-table_a3_table2_room1 dd)(not (inroom table2 room1)))
	:effect (and (done-goal dd)(not (dummy-left-gh8_observe-table_a3_table2_room1 dd)))
)
(:action act-fy7_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-gh8_observe-table_a3_table2_room1 dd)(immediate-dummy-fy7_observe-table-lsq_a4_table1_room3 dd)(inroom table2 room1)(in a1 room3)(can-observe a1 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-fy7_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-gh8_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a1 room3)(can-observe a1 table1)(not (dummy-left-fy7_observe-table-lsq_a4_table1_room3 dd))(not (dummy-right-fy7_observe-table-lsq_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-fy7_observe-table-lsq_a4_table1_room3 dd) )
)
(:action dummy-left-fy7_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-gh8_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a1 room3)(can-observe a1 table1)(not (inroom table1 room3))(immediate-dummy-fy7_observe-table-lsq_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-fy7_observe-table-lsq_a4_table1_room3 dd))(dummy-left-fy7_observe-table-lsq_a4_table1_room3 dd))
)
(:action dummy-right-fy7_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-gh8_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a1 room3)(can-observe a1 table1)(inroom table1 room3)(immediate-dummy-fy7_observe-table-lsq_a4_table1_room3 dd))
	:effect (and (not (immediate-dummy-fy7_observe-table-lsq_a4_table1_room3 dd))(dummy-right-fy7_observe-table-lsq_a4_table1_room3 dd))
)
(:action goal-achieve-left-fy7_observe-table-lsq_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-fy7_observe-table-lsq_a4_table1_room3 dd)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-left-fy7_observe-table-lsq_a4_table1_room3 dd)))
)
(:action act-d50_observe-table_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-fy7_observe-table-lsq_a4_table1_room3 dd)(immediate-dummy-d50_observe-table_a5_table3_room6 dd)(inroom table2 room1)(in a1 room6)(can-observe a1 table3))
	:observe (inroom table3 room6)
)
(:action act-dummy-d50_observe-table_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-fy7_observe-table-lsq_a4_table1_room3 dd)(inroom table2 room1)(in a1 room6)(can-observe a1 table3)(not (dummy-left-d50_observe-table_a5_table3_room6 dd))(not (dummy-right-d50_observe-table_a5_table3_room6 dd)))
	:effect (and (immediate-dummy-d50_observe-table_a5_table3_room6 dd) )
)
(:action dummy-left-d50_observe-table_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-fy7_observe-table-lsq_a4_table1_room3 dd)(inroom table2 room1)(in a1 room6)(can-observe a1 table3)(not (inroom table3 room6))(immediate-dummy-d50_observe-table_a5_table3_room6 dd))
	:effect (and (not (immediate-dummy-d50_observe-table_a5_table3_room6 dd))(dummy-left-d50_observe-table_a5_table3_room6 dd))
)
(:action dummy-right-d50_observe-table_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-fy7_observe-table-lsq_a4_table1_room3 dd)(inroom table2 room1)(in a1 room6)(can-observe a1 table3)(inroom table3 room6)(immediate-dummy-d50_observe-table_a5_table3_room6 dd))
	:effect (and (not (immediate-dummy-d50_observe-table_a5_table3_room6 dd))(dummy-right-d50_observe-table_a5_table3_room6 dd))
)
(:action act-75t_observe-table_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-d50_observe-table_a5_table3_room6 dd)(immediate-dummy-75t_observe-table_a5_table4_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a1 room6)(can-observe a1 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-75t_observe-table_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-d50_observe-table_a5_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a1 room6)(can-observe a1 table4)(not (dummy-left-75t_observe-table_a5_table4_room6 dd))(not (dummy-right-75t_observe-table_a5_table4_room6 dd)))
	:effect (and (immediate-dummy-75t_observe-table_a5_table4_room6 dd) )
)
(:action dummy-left-75t_observe-table_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-d50_observe-table_a5_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a1 room6)(can-observe a1 table4)(not (inroom table4 room6))(immediate-dummy-75t_observe-table_a5_table4_room6 dd))
	:effect (and (not (immediate-dummy-75t_observe-table_a5_table4_room6 dd))(dummy-left-75t_observe-table_a5_table4_room6 dd))
)
(:action dummy-right-75t_observe-table_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-d50_observe-table_a5_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a1 room6)(can-observe a1 table4)(inroom table4 room6)(immediate-dummy-75t_observe-table_a5_table4_room6 dd))
	:effect (and (not (immediate-dummy-75t_observe-table_a5_table4_room6 dd))(dummy-right-75t_observe-table_a5_table4_room6 dd))
)
(:action goal-achieve-left-75t_observe-table_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-75t_observe-table_a5_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-left-75t_observe-table_a5_table4_room6 dd)))
)
(:action act-40s_joint-lift-table_a1_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-75t_observe-table_a5_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(inroom table2 room1)(available a1)(in a1 room3))
	:effect (and (pre-40s_joint-lift-table_a1_a3_table1_room3 dd)(not (available a1)))
)
(:action act-lop_joint-move-table_a1_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-40s_joint-lift-table_a1_a3_table1_room3 dd)(in a1 room3)(connected room3 room4))
	:effect (and (pre-lop_joint-move-table_a1_a3_table1_room3_room4 dd)(not (pre-40s_joint-lift-table_a1_a3_table1_room3 dd))(not (in a1 room3))(in a1 room4))
)
(:action act-t9t_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-lop_joint-move-table_a1_a3_table1_room3_room4 dd)(in a1 room4))
	:effect (and (pre-t9t_joint-drop-table_a1_a3_table1_room4 dd)(not (pre-lop_joint-move-table_a1_a3_table1_room3_room4 dd))(available a1))
)
(:action goal-achieve-t9t_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-t9t_joint-drop-table_a1_a3_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-t9t_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action act-hp9_observe-table_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-d50_observe-table_a5_table3_room6 dd)(immediate-dummy-hp9_observe-table_a5_table4_room7 dd)(inroom table3 room6)(inroom table2 room1)(in a1 room7)(can-observe a1 table4))
	:observe (inroom table4 room7)
)
(:action act-dummy-hp9_observe-table_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-d50_observe-table_a5_table3_room6 dd)(inroom table3 room6)(inroom table2 room1)(in a1 room7)(can-observe a1 table4)(not (dummy-left-hp9_observe-table_a5_table4_room7 dd))(not (dummy-right-hp9_observe-table_a5_table4_room7 dd)))
	:effect (and (immediate-dummy-hp9_observe-table_a5_table4_room7 dd) )
)
(:action dummy-left-hp9_observe-table_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-d50_observe-table_a5_table3_room6 dd)(inroom table3 room6)(inroom table2 room1)(in a1 room7)(can-observe a1 table4)(not (inroom table4 room7))(immediate-dummy-hp9_observe-table_a5_table4_room7 dd))
	:effect (and (not (immediate-dummy-hp9_observe-table_a5_table4_room7 dd))(dummy-left-hp9_observe-table_a5_table4_room7 dd))
)
(:action dummy-right-hp9_observe-table_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-d50_observe-table_a5_table3_room6 dd)(inroom table3 room6)(inroom table2 room1)(in a1 room7)(can-observe a1 table4)(inroom table4 room7)(immediate-dummy-hp9_observe-table_a5_table4_room7 dd))
	:effect (and (not (immediate-dummy-hp9_observe-table_a5_table4_room7 dd))(dummy-right-hp9_observe-table_a5_table4_room7 dd))
)
(:action act-vy1_joint-lift-table_a1_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hp9_observe-table_a5_table4_room7 dd)(not (inroom table4 room7))(inroom table3 room6)(inroom table2 room1)(available a1)(in a1 room3))
	:effect (and (pre-vy1_joint-lift-table_a1_a3_table1_room3 dd)(not (available a1)))
)
(:action act-xjx_joint-move-table_a1_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-vy1_joint-lift-table_a1_a3_table1_room3 dd)(in a1 room3)(connected room3 room4))
	:effect (and (pre-xjx_joint-move-table_a1_a3_table1_room3_room4 dd)(not (pre-vy1_joint-lift-table_a1_a3_table1_room3 dd))(not (in a1 room3))(in a1 room4))
)
(:action act-ukk_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-xjx_joint-move-table_a1_a3_table1_room3_room4 dd)(in a1 room4))
	:effect (and (pre-ukk_joint-drop-table_a1_a3_table1_room4 dd)(not (pre-xjx_joint-move-table_a1_a3_table1_room3_room4 dd))(available a1))
)
(:action goal-achieve-ukk_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-ukk_joint-drop-table_a1_a3_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-ukk_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action goal-achieve-right-hp9_observe-table_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hp9_observe-table_a5_table4_room7 dd)(inroom table4 room7)(inroom table3 room6)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-right-hp9_observe-table_a5_table4_room7 dd)))
)
)