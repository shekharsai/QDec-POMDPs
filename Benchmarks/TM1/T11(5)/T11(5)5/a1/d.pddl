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
	(init-xw5_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-xw5_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-xw5_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-a9r_observe-table_a2_table4_room6 ?dd - dummy)
	(dummy-left-a9r_observe-table_a2_table4_room6 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-a9r_observe-table_a2_table4_room6 ?dd - dummy)
	(immediate-dummy-px1_observe-table_a1_table1_room4 ?dd - dummy)
	(dummy-left-px1_observe-table_a1_table1_room4 ?dd - dummy)
	(pre-pen_joint-lift-table_a1_a4_table1_room3 ?dd - dummy)
	(pre-13k_joint-move-table_a1_a4_table1_room3_room4 ?dd - dummy)
	(pre-hn8_joint-drop-table_a1_a4_table1_room4 ?dd - dummy)
	(dummy-right-px1_observe-table_a1_table1_room4 ?dd - dummy)
	(dummy-right-xw5_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-j6f_observe-table_a4_table3_room6 ?dd - dummy)
	(dummy-left-j6f_observe-table_a4_table3_room6 ?dd - dummy)
	(immediate-dummy-x4c_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-x4c_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-right-x4c_observe-table_a4_table4_room6 ?dd - dummy)
	(immediate-dummy-ybu_observe-table-twk_a3_table1_room3 ?dd - dummy)
	(dummy-left-ybu_observe-table-twk_a3_table1_room3 ?dd - dummy)
	(dummy-right-ybu_observe-table-twk_a3_table1_room3 ?dd - dummy)
	(pre-02a_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
	(pre-oww_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
	(pre-i2e_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
	(dummy-right-j6f_observe-table_a4_table3_room6 ?dd - dummy)
	(immediate-dummy-bj9_observe-table-twk_a3_table1_room3 ?dd - dummy)
	(dummy-left-bj9_observe-table-twk_a3_table1_room3 ?dd - dummy)
	(dummy-right-bj9_observe-table-twk_a3_table1_room3 ?dd - dummy)
	(pre-aaj_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
	(pre-x3l_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
	(pre-zcb_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-xw5_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-xw5_observe-table_a3_table2_room1 dd)(immediate-dummy-xw5_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-xw5_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-xw5_observe-table_a3_table2_room1 dd)(not (dummy-left-xw5_observe-table_a3_table2_room1 dd))(not (dummy-right-xw5_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-xw5_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-xw5_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-xw5_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2)(not (inroom table2 room1))(immediate-dummy-xw5_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-xw5_observe-table_a3_table2_room1 dd))(not (immediate-dummy-xw5_observe-table_a3_table2_room1 dd))(dummy-left-xw5_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-xw5_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-xw5_observe-table_a3_table2_room1 dd)(in a1 room1)(can-observe a1 table2)(inroom table2 room1)(immediate-dummy-xw5_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-xw5_observe-table_a3_table2_room1 dd))(not (immediate-dummy-xw5_observe-table_a3_table2_room1 dd))(dummy-right-xw5_observe-table_a3_table2_room1 dd))
)
(:action act-a9r_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-xw5_observe-table_a3_table2_room1 dd)(immediate-dummy-a9r_observe-table_a2_table4_room6 dd)(not (inroom table2 room1))(in a1 room6)(can-observe a1 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-a9r_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-xw5_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a1 room6)(can-observe a1 table4)(not (dummy-left-a9r_observe-table_a2_table4_room6 dd))(not (dummy-right-a9r_observe-table_a2_table4_room6 dd)))
	:effect (and (immediate-dummy-a9r_observe-table_a2_table4_room6 dd) )
)
(:action dummy-left-a9r_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-xw5_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a1 room6)(can-observe a1 table4)(not (inroom table4 room6))(immediate-dummy-a9r_observe-table_a2_table4_room6 dd))
	:effect (and (not (immediate-dummy-a9r_observe-table_a2_table4_room6 dd))(dummy-left-a9r_observe-table_a2_table4_room6 dd))
)
(:action dummy-right-a9r_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-xw5_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a1 room6)(can-observe a1 table4)(inroom table4 room6)(immediate-dummy-a9r_observe-table_a2_table4_room6 dd))
	:effect (and (not (immediate-dummy-a9r_observe-table_a2_table4_room6 dd))(dummy-right-a9r_observe-table_a2_table4_room6 dd))
)
(:action goal-achieve-left-a9r_observe-table_a2_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-a9r_observe-table_a2_table4_room6 dd)(not (inroom table4 room6))(not (inroom table2 room1)))
	:effect (and (done-goal dd)(not (dummy-left-a9r_observe-table_a2_table4_room6 dd)))
)
(:action act-px1_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-a9r_observe-table_a2_table4_room6 dd)(immediate-dummy-px1_observe-table_a1_table1_room4 dd)(inroom table4 room6)(not (inroom table2 room1))(in a1 room4)(can-observe a1 table1))
	:observe (inroom table1 room4)
)
(:action act-dummy-px1_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-a9r_observe-table_a2_table4_room6 dd)(inroom table4 room6)(not (inroom table2 room1))(in a1 room4)(can-observe a1 table1)(not (dummy-left-px1_observe-table_a1_table1_room4 dd))(not (dummy-right-px1_observe-table_a1_table1_room4 dd)))
	:effect (and (immediate-dummy-px1_observe-table_a1_table1_room4 dd) )
)
(:action dummy-left-px1_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-a9r_observe-table_a2_table4_room6 dd)(inroom table4 room6)(not (inroom table2 room1))(in a1 room4)(can-observe a1 table1)(not (inroom table1 room4))(immediate-dummy-px1_observe-table_a1_table1_room4 dd))
	:effect (and (not (immediate-dummy-px1_observe-table_a1_table1_room4 dd))(dummy-left-px1_observe-table_a1_table1_room4 dd))
)
(:action dummy-right-px1_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-a9r_observe-table_a2_table4_room6 dd)(inroom table4 room6)(not (inroom table2 room1))(in a1 room4)(can-observe a1 table1)(inroom table1 room4)(immediate-dummy-px1_observe-table_a1_table1_room4 dd))
	:effect (and (not (immediate-dummy-px1_observe-table_a1_table1_room4 dd))(dummy-right-px1_observe-table_a1_table1_room4 dd))
)
(:action act-pen_joint-lift-table_a1_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-px1_observe-table_a1_table1_room4 dd)(not (inroom table1 room4))(inroom table4 room6)(not (inroom table2 room1))(available a1)(in a1 room3))
	:effect (and (pre-pen_joint-lift-table_a1_a4_table1_room3 dd)(not (available a1)))
)
(:action act-13k_joint-move-table_a1_a4_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-pen_joint-lift-table_a1_a4_table1_room3 dd)(in a1 room3)(connected room3 room4))
	:effect (and (pre-13k_joint-move-table_a1_a4_table1_room3_room4 dd)(not (pre-pen_joint-lift-table_a1_a4_table1_room3 dd))(not (in a1 room3))(in a1 room4))
)
(:action act-hn8_joint-drop-table_a1_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-13k_joint-move-table_a1_a4_table1_room3_room4 dd)(in a1 room4))
	:effect (and (pre-hn8_joint-drop-table_a1_a4_table1_room4 dd)(not (pre-13k_joint-move-table_a1_a4_table1_room3_room4 dd))(available a1))
)
(:action goal-achieve-hn8_joint-drop-table_a1_a4_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-hn8_joint-drop-table_a1_a4_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-hn8_joint-drop-table_a1_a4_table1_room4 dd)))
)
(:action goal-achieve-right-px1_observe-table_a1_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-px1_observe-table_a1_table1_room4 dd)(inroom table1 room4)(inroom table4 room6)(not (inroom table2 room1)))
	:effect (and (done-goal dd)(not (dummy-right-px1_observe-table_a1_table1_room4 dd)))
)
(:action act-j6f_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-xw5_observe-table_a3_table2_room1 dd)(immediate-dummy-j6f_observe-table_a4_table3_room6 dd)(inroom table2 room1)(in a1 room6)(can-observe a1 table3))
	:observe (inroom table3 room6)
)
(:action act-dummy-j6f_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-xw5_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a1 room6)(can-observe a1 table3)(not (dummy-left-j6f_observe-table_a4_table3_room6 dd))(not (dummy-right-j6f_observe-table_a4_table3_room6 dd)))
	:effect (and (immediate-dummy-j6f_observe-table_a4_table3_room6 dd) )
)
(:action dummy-left-j6f_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-xw5_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a1 room6)(can-observe a1 table3)(not (inroom table3 room6))(immediate-dummy-j6f_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-j6f_observe-table_a4_table3_room6 dd))(dummy-left-j6f_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-j6f_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-xw5_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a1 room6)(can-observe a1 table3)(inroom table3 room6)(immediate-dummy-j6f_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-j6f_observe-table_a4_table3_room6 dd))(dummy-right-j6f_observe-table_a4_table3_room6 dd))
)
(:action act-x4c_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j6f_observe-table_a4_table3_room6 dd)(immediate-dummy-x4c_observe-table_a4_table4_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a1 room6)(can-observe a1 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-x4c_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j6f_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a1 room6)(can-observe a1 table4)(not (dummy-left-x4c_observe-table_a4_table4_room6 dd))(not (dummy-right-x4c_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-x4c_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-x4c_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j6f_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a1 room6)(can-observe a1 table4)(not (inroom table4 room6))(immediate-dummy-x4c_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-x4c_observe-table_a4_table4_room6 dd))(dummy-left-x4c_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-x4c_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j6f_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(inroom table2 room1)(in a1 room6)(can-observe a1 table4)(inroom table4 room6)(immediate-dummy-x4c_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-x4c_observe-table_a4_table4_room6 dd))(dummy-right-x4c_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-x4c_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-x4c_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-left-x4c_observe-table_a4_table4_room6 dd)))
)
(:action act-ybu_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-x4c_observe-table_a4_table4_room6 dd)(immediate-dummy-ybu_observe-table-twk_a3_table1_room3 dd)(inroom table4 room6)(not (inroom table3 room6))(inroom table2 room1)(in a1 room3)(can-observe a1 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-ybu_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-x4c_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(inroom table2 room1)(in a1 room3)(can-observe a1 table1)(not (dummy-left-ybu_observe-table-twk_a3_table1_room3 dd))(not (dummy-right-ybu_observe-table-twk_a3_table1_room3 dd)))
	:effect (and (immediate-dummy-ybu_observe-table-twk_a3_table1_room3 dd) )
)
(:action dummy-left-ybu_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-x4c_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(inroom table2 room1)(in a1 room3)(can-observe a1 table1)(not (inroom table1 room3))(immediate-dummy-ybu_observe-table-twk_a3_table1_room3 dd))
	:effect (and (not (immediate-dummy-ybu_observe-table-twk_a3_table1_room3 dd))(dummy-left-ybu_observe-table-twk_a3_table1_room3 dd))
)
(:action dummy-right-ybu_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-x4c_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(inroom table2 room1)(in a1 room3)(can-observe a1 table1)(inroom table1 room3)(immediate-dummy-ybu_observe-table-twk_a3_table1_room3 dd))
	:effect (and (not (immediate-dummy-ybu_observe-table-twk_a3_table1_room3 dd))(dummy-right-ybu_observe-table-twk_a3_table1_room3 dd))
)
(:action goal-achieve-left-ybu_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ybu_observe-table-twk_a3_table1_room3 dd)(inroom table4 room6)(not (inroom table3 room6))(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-left-ybu_observe-table-twk_a3_table1_room3 dd)))
)
(:action act-02a_joint-lift-table_a1_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ybu_observe-table-twk_a3_table1_room3 dd)(inroom table4 room6)(not (inroom table3 room6))(inroom table2 room1)(available a1)(in a1 room3))
	:effect (and (pre-02a_joint-lift-table_a1_a3_table1_room3 dd)(not (available a1)))
)
(:action act-oww_joint-move-table_a1_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-02a_joint-lift-table_a1_a3_table1_room3 dd)(in a1 room3)(connected room3 room4))
	:effect (and (pre-oww_joint-move-table_a1_a3_table1_room3_room4 dd)(not (pre-02a_joint-lift-table_a1_a3_table1_room3 dd))(not (in a1 room3))(in a1 room4))
)
(:action act-i2e_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-oww_joint-move-table_a1_a3_table1_room3_room4 dd)(in a1 room4))
	:effect (and (pre-i2e_joint-drop-table_a1_a3_table1_room4 dd)(not (pre-oww_joint-move-table_a1_a3_table1_room3_room4 dd))(available a1))
)
(:action goal-achieve-i2e_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-i2e_joint-drop-table_a1_a3_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-i2e_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action act-bj9_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j6f_observe-table_a4_table3_room6 dd)(immediate-dummy-bj9_observe-table-twk_a3_table1_room3 dd)(inroom table3 room6)(inroom table2 room1)(in a1 room3)(can-observe a1 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-bj9_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j6f_observe-table_a4_table3_room6 dd)(inroom table3 room6)(inroom table2 room1)(in a1 room3)(can-observe a1 table1)(not (dummy-left-bj9_observe-table-twk_a3_table1_room3 dd))(not (dummy-right-bj9_observe-table-twk_a3_table1_room3 dd)))
	:effect (and (immediate-dummy-bj9_observe-table-twk_a3_table1_room3 dd) )
)
(:action dummy-left-bj9_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j6f_observe-table_a4_table3_room6 dd)(inroom table3 room6)(inroom table2 room1)(in a1 room3)(can-observe a1 table1)(not (inroom table1 room3))(immediate-dummy-bj9_observe-table-twk_a3_table1_room3 dd))
	:effect (and (not (immediate-dummy-bj9_observe-table-twk_a3_table1_room3 dd))(dummy-left-bj9_observe-table-twk_a3_table1_room3 dd))
)
(:action dummy-right-bj9_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j6f_observe-table_a4_table3_room6 dd)(inroom table3 room6)(inroom table2 room1)(in a1 room3)(can-observe a1 table1)(inroom table1 room3)(immediate-dummy-bj9_observe-table-twk_a3_table1_room3 dd))
	:effect (and (not (immediate-dummy-bj9_observe-table-twk_a3_table1_room3 dd))(dummy-right-bj9_observe-table-twk_a3_table1_room3 dd))
)
(:action goal-achieve-left-bj9_observe-table-twk_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bj9_observe-table-twk_a3_table1_room3 dd)(inroom table3 room6)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-left-bj9_observe-table-twk_a3_table1_room3 dd)))
)
(:action act-aaj_joint-lift-table_a1_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bj9_observe-table-twk_a3_table1_room3 dd)(inroom table3 room6)(inroom table2 room1)(available a1)(in a1 room3))
	:effect (and (pre-aaj_joint-lift-table_a1_a3_table1_room3 dd)(not (available a1)))
)
(:action act-x3l_joint-move-table_a1_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-aaj_joint-lift-table_a1_a3_table1_room3 dd)(in a1 room3)(connected room3 room4))
	:effect (and (pre-x3l_joint-move-table_a1_a3_table1_room3_room4 dd)(not (pre-aaj_joint-lift-table_a1_a3_table1_room3 dd))(not (in a1 room3))(in a1 room4))
)
(:action act-zcb_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-x3l_joint-move-table_a1_a3_table1_room3_room4 dd)(in a1 room4))
	:effect (and (pre-zcb_joint-drop-table_a1_a3_table1_room4 dd)(not (pre-x3l_joint-move-table_a1_a3_table1_room3_room4 dd))(available a1))
)
(:action goal-achieve-zcb_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-zcb_joint-drop-table_a1_a3_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-zcb_joint-drop-table_a1_a3_table1_room4 dd)))
)
)