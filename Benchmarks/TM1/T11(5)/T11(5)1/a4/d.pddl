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
	(init-6uo_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-6uo_observe-table_a4_table1_room3 ?dd - dummy)
	(dummy-left-6uo_observe-table_a4_table1_room3 ?dd - dummy)
	(immediate-dummy-b3l_observe-table_a4_table3_room6 ?dd - dummy)
	(dummy-left-b3l_observe-table_a4_table3_room6 ?dd - dummy)
	(immediate-dummy-psm_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-psm_observe-table_a4_table4_room6 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-psm_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-ltr_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
	(pre-ael_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
	(pre-l1r_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
	(dummy-right-b3l_observe-table_a4_table3_room6 ?dd - dummy)
	(immediate-dummy-05l_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-05l_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-9cy_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
	(pre-azw_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
	(pre-c14_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
	(dummy-right-05l_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-jy4_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
	(pre-65r_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
	(pre-xem_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
	(pre-k6f_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
	(pre-dl7_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
	(pre-892_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
	(dummy-right-6uo_observe-table_a4_table1_room3 ?dd - dummy)
	(pre-a5l_joint-lift-table_a4_a5_table1_room3 ?dd - dummy)
	(pre-h2j_joint-move-table_a4_a5_table1_room3_room4 ?dd - dummy)
	(pre-q7s_joint-drop-table_a4_a5_table1_room4 ?dd - dummy)
	(immediate-dummy-0ad_observe-table_a4_table3_room6 ?dd - dummy)
	(dummy-left-0ad_observe-table_a4_table3_room6 ?dd - dummy)
	(immediate-dummy-zm0_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-zm0_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-right-zm0_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-rc4_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
	(pre-xdj_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
	(pre-3yx_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
	(dummy-right-0ad_observe-table_a4_table3_room6 ?dd - dummy)
	(immediate-dummy-fp9_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-fp9_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-f51_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
	(pre-1b0_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
	(pre-3c6_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
	(dummy-right-fp9_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-tc5_joint-lift-table_a4_a5_table3_room6 ?dd - dummy)
	(pre-uq7_joint-move-table_a4_a5_table3_room6_room5 ?dd - dummy)
	(pre-87d_joint-drop-table_a4_a5_table3_room5 ?dd - dummy)
	(pre-ivt_joint-lift-table_a4_a5_table4_room6 ?dd - dummy)
	(pre-owj_joint-move-table_a4_a5_table4_room6_room7 ?dd - dummy)
	(pre-cl5_joint-drop-table_a4_a5_table4_room7 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-6uo_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6uo_observe-table_a4_table1_room3 dd)(immediate-dummy-6uo_observe-table_a4_table1_room3 dd)(in a4 room3)(can-observe a4 table1))
	:observe (inroom table1 room3)
)
(:action act-dummy-6uo_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6uo_observe-table_a4_table1_room3 dd)(not (dummy-left-6uo_observe-table_a4_table1_room3 dd))(not (dummy-right-6uo_observe-table_a4_table1_room3 dd)))
	:effect (and (immediate-dummy-6uo_observe-table_a4_table1_room3 dd) )
)
(:action dummy-left-6uo_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6uo_observe-table_a4_table1_room3 dd)(in a4 room3)(can-observe a4 table1)(not (inroom table1 room3))(immediate-dummy-6uo_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-6uo_observe-table_a4_table1_room3 dd))(not (immediate-dummy-6uo_observe-table_a4_table1_room3 dd))(dummy-left-6uo_observe-table_a4_table1_room3 dd))
)
(:action dummy-right-6uo_observe-table_a4_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6uo_observe-table_a4_table1_room3 dd)(in a4 room3)(can-observe a4 table1)(inroom table1 room3)(immediate-dummy-6uo_observe-table_a4_table1_room3 dd))
	:effect (and (not (init-6uo_observe-table_a4_table1_room3 dd))(not (immediate-dummy-6uo_observe-table_a4_table1_room3 dd))(dummy-right-6uo_observe-table_a4_table1_room3 dd))
)
(:action act-b3l_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6uo_observe-table_a4_table1_room3 dd)(immediate-dummy-b3l_observe-table_a4_table3_room6 dd)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table3))
	:observe (inroom table3 room6)
)
(:action act-dummy-b3l_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6uo_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table3)(not (dummy-left-b3l_observe-table_a4_table3_room6 dd))(not (dummy-right-b3l_observe-table_a4_table3_room6 dd)))
	:effect (and (immediate-dummy-b3l_observe-table_a4_table3_room6 dd) )
)
(:action dummy-left-b3l_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6uo_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table3)(not (inroom table3 room6))(immediate-dummy-b3l_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-b3l_observe-table_a4_table3_room6 dd))(dummy-left-b3l_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-b3l_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6uo_observe-table_a4_table1_room3 dd)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table3)(inroom table3 room6)(immediate-dummy-b3l_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-b3l_observe-table_a4_table3_room6 dd))(dummy-right-b3l_observe-table_a4_table3_room6 dd))
)
(:action act-psm_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-b3l_observe-table_a4_table3_room6 dd)(immediate-dummy-psm_observe-table_a4_table4_room6 dd)(not (inroom table3 room6))(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-psm_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-b3l_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(not (dummy-left-psm_observe-table_a4_table4_room6 dd))(not (dummy-right-psm_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-psm_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-psm_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-b3l_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(not (inroom table4 room6))(immediate-dummy-psm_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-psm_observe-table_a4_table4_room6 dd))(dummy-left-psm_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-psm_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-b3l_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(inroom table4 room6)(immediate-dummy-psm_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-psm_observe-table_a4_table4_room6 dd))(dummy-right-psm_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-psm_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-psm_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6))(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-psm_observe-table_a4_table4_room6 dd)))
)
(:action act-ltr_joint-lift-table_a4_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-psm_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(not (inroom table1 room3))(available a4)(in a4 room6))
	:effect (and (pre-ltr_joint-lift-table_a4_a5_table4_room6 dd)(not (available a4)))
)
(:action act-ael_joint-move-table_a4_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-ltr_joint-lift-table_a4_a5_table4_room6 dd)(in a4 room6)(connected room6 room7))
	:effect (and (pre-ael_joint-move-table_a4_a5_table4_room6_room7 dd)(not (pre-ltr_joint-lift-table_a4_a5_table4_room6 dd))(not (in a4 room6))(in a4 room7))
)
(:action act-l1r_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-ael_joint-move-table_a4_a5_table4_room6_room7 dd)(in a4 room7))
	:effect (and (pre-l1r_joint-drop-table_a4_a5_table4_room7 dd)(not (pre-ael_joint-move-table_a4_a5_table4_room6_room7 dd))(available a4))
)
(:action goal-achieve-l1r_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-l1r_joint-drop-table_a4_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-l1r_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-05l_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-b3l_observe-table_a4_table3_room6 dd)(immediate-dummy-05l_observe-table_a4_table4_room6 dd)(inroom table3 room6)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-05l_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-b3l_observe-table_a4_table3_room6 dd)(inroom table3 room6)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(not (dummy-left-05l_observe-table_a4_table4_room6 dd))(not (dummy-right-05l_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-05l_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-05l_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-b3l_observe-table_a4_table3_room6 dd)(inroom table3 room6)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(not (inroom table4 room6))(immediate-dummy-05l_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-05l_observe-table_a4_table4_room6 dd))(dummy-left-05l_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-05l_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-b3l_observe-table_a4_table3_room6 dd)(inroom table3 room6)(not (inroom table1 room3))(in a4 room6)(can-observe a4 table4)(inroom table4 room6)(immediate-dummy-05l_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-05l_observe-table_a4_table4_room6 dd))(dummy-right-05l_observe-table_a4_table4_room6 dd))
)
(:action act-9cy_joint-lift-table_a4_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-05l_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table3 room6)(not (inroom table1 room3))(available a4)(in a4 room6))
	:effect (and (pre-9cy_joint-lift-table_a4_a5_table3_room6 dd)(not (available a4)))
)
(:action act-azw_joint-move-table_a4_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-9cy_joint-lift-table_a4_a5_table3_room6 dd)(in a4 room6)(connected room6 room5))
	:effect (and (pre-azw_joint-move-table_a4_a5_table3_room6_room5 dd)(not (pre-9cy_joint-lift-table_a4_a5_table3_room6 dd))(not (in a4 room6))(in a4 room5))
)
(:action act-c14_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-azw_joint-move-table_a4_a5_table3_room6_room5 dd)(in a4 room5))
	:effect (and (pre-c14_joint-drop-table_a4_a5_table3_room5 dd)(not (pre-azw_joint-move-table_a4_a5_table3_room6_room5 dd))(available a4))
)
(:action goal-achieve-c14_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-c14_joint-drop-table_a4_a5_table3_room5 dd))
	:effect (and (done-goal dd)(not (pre-c14_joint-drop-table_a4_a5_table3_room5 dd)))
)
(:action act-jy4_joint-lift-table_a4_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-05l_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table3 room6)(not (inroom table1 room3))(available a4)(in a4 room6))
	:effect (and (pre-jy4_joint-lift-table_a4_a5_table3_room6 dd)(not (available a4)))
)
(:action act-65r_joint-move-table_a4_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-jy4_joint-lift-table_a4_a5_table3_room6 dd)(in a4 room6)(connected room6 room5))
	:effect (and (pre-65r_joint-move-table_a4_a5_table3_room6_room5 dd)(not (pre-jy4_joint-lift-table_a4_a5_table3_room6 dd))(not (in a4 room6))(in a4 room5))
)
(:action act-xem_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-65r_joint-move-table_a4_a5_table3_room6_room5 dd)(in a4 room5))
	:effect (and (pre-xem_joint-drop-table_a4_a5_table3_room5 dd)(not (pre-65r_joint-move-table_a4_a5_table3_room6_room5 dd))(available a4))
)
(:action act-k6f_joint-lift-table_a4_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-xem_joint-drop-table_a4_a5_table3_room5 dd)(available a4)(in a4 room6))
	:effect (and (pre-k6f_joint-lift-table_a4_a5_table4_room6 dd)(not (pre-xem_joint-drop-table_a4_a5_table3_room5 dd))(not (available a4)))
)
(:action act-dl7_joint-move-table_a4_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-k6f_joint-lift-table_a4_a5_table4_room6 dd)(in a4 room6)(connected room6 room7))
	:effect (and (pre-dl7_joint-move-table_a4_a5_table4_room6_room7 dd)(not (pre-k6f_joint-lift-table_a4_a5_table4_room6 dd))(not (in a4 room6))(in a4 room7))
)
(:action act-892_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-dl7_joint-move-table_a4_a5_table4_room6_room7 dd)(in a4 room7))
	:effect (and (pre-892_joint-drop-table_a4_a5_table4_room7 dd)(not (pre-dl7_joint-move-table_a4_a5_table4_room6_room7 dd))(available a4))
)
(:action goal-achieve-892_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-892_joint-drop-table_a4_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-892_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-a5l_joint-lift-table_a4_a5_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6uo_observe-table_a4_table1_room3 dd)(inroom table1 room3)(available a4)(in a4 room3))
	:effect (and (pre-a5l_joint-lift-table_a4_a5_table1_room3 dd)(not (available a4)))
)
(:action act-h2j_joint-move-table_a4_a5_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-a5l_joint-lift-table_a4_a5_table1_room3 dd)(in a4 room3)(connected room3 room4))
	:effect (and (pre-h2j_joint-move-table_a4_a5_table1_room3_room4 dd)(not (pre-a5l_joint-lift-table_a4_a5_table1_room3 dd))(not (in a4 room3))(in a4 room4))
)
(:action act-q7s_joint-drop-table_a4_a5_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-h2j_joint-move-table_a4_a5_table1_room3_room4 dd)(in a4 room4))
	:effect (and (pre-q7s_joint-drop-table_a4_a5_table1_room4 dd)(not (pre-h2j_joint-move-table_a4_a5_table1_room3_room4 dd))(available a4))
)
(:action act-0ad_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-q7s_joint-drop-table_a4_a5_table1_room4 dd)(immediate-dummy-0ad_observe-table_a4_table3_room6 dd)(in a4 room6)(can-observe a4 table3))
	:observe (inroom table3 room6)
)
(:action act-dummy-0ad_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-q7s_joint-drop-table_a4_a5_table1_room4 dd)(in a4 room6)(can-observe a4 table3)(not (dummy-left-0ad_observe-table_a4_table3_room6 dd))(not (dummy-right-0ad_observe-table_a4_table3_room6 dd)))
	:effect (and (immediate-dummy-0ad_observe-table_a4_table3_room6 dd) )
)
(:action dummy-left-0ad_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (in a4 room6)(can-observe a4 table3)(not (inroom table3 room6))(immediate-dummy-0ad_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-0ad_observe-table_a4_table3_room6 dd))(dummy-left-0ad_observe-table_a4_table3_room6 dd))
)
(:action dummy-right-0ad_observe-table_a4_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (in a4 room6)(can-observe a4 table3)(inroom table3 room6)(immediate-dummy-0ad_observe-table_a4_table3_room6 dd))
	:effect (and (not (immediate-dummy-0ad_observe-table_a4_table3_room6 dd))(dummy-right-0ad_observe-table_a4_table3_room6 dd))
)
(:action act-zm0_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0ad_observe-table_a4_table3_room6 dd)(immediate-dummy-zm0_observe-table_a4_table4_room6 dd)(not (inroom table3 room6))(in a4 room6)(can-observe a4 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-zm0_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0ad_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(in a4 room6)(can-observe a4 table4)(not (dummy-left-zm0_observe-table_a4_table4_room6 dd))(not (dummy-right-zm0_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-zm0_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-zm0_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0ad_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(in a4 room6)(can-observe a4 table4)(not (inroom table4 room6))(immediate-dummy-zm0_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-zm0_observe-table_a4_table4_room6 dd))(dummy-left-zm0_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-zm0_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0ad_observe-table_a4_table3_room6 dd)(not (inroom table3 room6))(in a4 room6)(can-observe a4 table4)(inroom table4 room6)(immediate-dummy-zm0_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-zm0_observe-table_a4_table4_room6 dd))(dummy-right-zm0_observe-table_a4_table4_room6 dd))
)
(:action goal-achieve-left-zm0_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-zm0_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room6)))
	:effect (and (done-goal dd)(not (dummy-left-zm0_observe-table_a4_table4_room6 dd)))
)
(:action act-rc4_joint-lift-table_a4_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-zm0_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room6))(available a4)(in a4 room6))
	:effect (and (pre-rc4_joint-lift-table_a4_a5_table4_room6 dd)(not (available a4)))
)
(:action act-xdj_joint-move-table_a4_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-rc4_joint-lift-table_a4_a5_table4_room6 dd)(in a4 room6)(connected room6 room7))
	:effect (and (pre-xdj_joint-move-table_a4_a5_table4_room6_room7 dd)(not (pre-rc4_joint-lift-table_a4_a5_table4_room6 dd))(not (in a4 room6))(in a4 room7))
)
(:action act-3yx_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-xdj_joint-move-table_a4_a5_table4_room6_room7 dd)(in a4 room7))
	:effect (and (pre-3yx_joint-drop-table_a4_a5_table4_room7 dd)(not (pre-xdj_joint-move-table_a4_a5_table4_room6_room7 dd))(available a4))
)
(:action goal-achieve-3yx_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-3yx_joint-drop-table_a4_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-3yx_joint-drop-table_a4_a5_table4_room7 dd)))
)
(:action act-fp9_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0ad_observe-table_a4_table3_room6 dd)(immediate-dummy-fp9_observe-table_a4_table4_room6 dd)(inroom table3 room6)(in a4 room6)(can-observe a4 table4))
	:observe (inroom table4 room6)
)
(:action act-dummy-fp9_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0ad_observe-table_a4_table3_room6 dd)(inroom table3 room6)(in a4 room6)(can-observe a4 table4)(not (dummy-left-fp9_observe-table_a4_table4_room6 dd))(not (dummy-right-fp9_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-fp9_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-fp9_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0ad_observe-table_a4_table3_room6 dd)(inroom table3 room6)(in a4 room6)(can-observe a4 table4)(not (inroom table4 room6))(immediate-dummy-fp9_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-fp9_observe-table_a4_table4_room6 dd))(dummy-left-fp9_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-fp9_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0ad_observe-table_a4_table3_room6 dd)(inroom table3 room6)(in a4 room6)(can-observe a4 table4)(inroom table4 room6)(immediate-dummy-fp9_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-fp9_observe-table_a4_table4_room6 dd))(dummy-right-fp9_observe-table_a4_table4_room6 dd))
)
(:action act-f51_joint-lift-table_a4_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-fp9_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(inroom table3 room6)(available a4)(in a4 room6))
	:effect (and (pre-f51_joint-lift-table_a4_a5_table3_room6 dd)(not (available a4)))
)
(:action act-1b0_joint-move-table_a4_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-f51_joint-lift-table_a4_a5_table3_room6 dd)(in a4 room6)(connected room6 room5))
	:effect (and (pre-1b0_joint-move-table_a4_a5_table3_room6_room5 dd)(not (pre-f51_joint-lift-table_a4_a5_table3_room6 dd))(not (in a4 room6))(in a4 room5))
)
(:action act-3c6_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-1b0_joint-move-table_a4_a5_table3_room6_room5 dd)(in a4 room5))
	:effect (and (pre-3c6_joint-drop-table_a4_a5_table3_room5 dd)(not (pre-1b0_joint-move-table_a4_a5_table3_room6_room5 dd))(available a4))
)
(:action goal-achieve-3c6_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-3c6_joint-drop-table_a4_a5_table3_room5 dd))
	:effect (and (done-goal dd)(not (pre-3c6_joint-drop-table_a4_a5_table3_room5 dd)))
)
(:action act-tc5_joint-lift-table_a4_a5_table3_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-fp9_observe-table_a4_table4_room6 dd)(inroom table4 room6)(inroom table3 room6)(available a4)(in a4 room6))
	:effect (and (pre-tc5_joint-lift-table_a4_a5_table3_room6 dd)(not (available a4)))
)
(:action act-uq7_joint-move-table_a4_a5_table3_room6_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-tc5_joint-lift-table_a4_a5_table3_room6 dd)(in a4 room6)(connected room6 room5))
	:effect (and (pre-uq7_joint-move-table_a4_a5_table3_room6_room5 dd)(not (pre-tc5_joint-lift-table_a4_a5_table3_room6 dd))(not (in a4 room6))(in a4 room5))
)
(:action act-87d_joint-drop-table_a4_a5_table3_room5
	:parameters ( ?a - agent )
	:precondition (and (pre-uq7_joint-move-table_a4_a5_table3_room6_room5 dd)(in a4 room5))
	:effect (and (pre-87d_joint-drop-table_a4_a5_table3_room5 dd)(not (pre-uq7_joint-move-table_a4_a5_table3_room6_room5 dd))(available a4))
)
(:action act-ivt_joint-lift-table_a4_a5_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-87d_joint-drop-table_a4_a5_table3_room5 dd)(available a4)(in a4 room6))
	:effect (and (pre-ivt_joint-lift-table_a4_a5_table4_room6 dd)(not (pre-87d_joint-drop-table_a4_a5_table3_room5 dd))(not (available a4)))
)
(:action act-owj_joint-move-table_a4_a5_table4_room6_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-ivt_joint-lift-table_a4_a5_table4_room6 dd)(in a4 room6)(connected room6 room7))
	:effect (and (pre-owj_joint-move-table_a4_a5_table4_room6_room7 dd)(not (pre-ivt_joint-lift-table_a4_a5_table4_room6 dd))(not (in a4 room6))(in a4 room7))
)
(:action act-cl5_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-owj_joint-move-table_a4_a5_table4_room6_room7 dd)(in a4 room7))
	:effect (and (pre-cl5_joint-drop-table_a4_a5_table4_room7 dd)(not (pre-owj_joint-move-table_a4_a5_table4_room6_room7 dd))(available a4))
)
(:action goal-achieve-cl5_joint-drop-table_a4_a5_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (pre-cl5_joint-drop-table_a4_a5_table4_room7 dd))
	:effect (and (done-goal dd)(not (pre-cl5_joint-drop-table_a4_a5_table4_room7 dd)))
)
)