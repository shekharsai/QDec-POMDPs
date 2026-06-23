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
	(can-observe ?a - agent ?t - table )
	(init-6fo_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-6fo_observe-table_a2_table1_room3 ?dd - dummy)
	(dummy-left-6fo_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-mny_observe-table_a2_table2_room2 ?dd - dummy)
	(dummy-left-mny_observe-table_a2_table2_room2 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-mny_observe-table_a2_table2_room2 ?dd - dummy)
	(pre-dw0_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
	(pre-s0a_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
	(pre-ji3_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
	(dummy-right-6fo_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-d5d_observe-table_a1_table2_room1 ?dd - dummy)
	(dummy-left-d5d_observe-table_a1_table2_room1 ?dd - dummy)
	(immediate-dummy-w4y_observe-table_a3_table3_room4 ?dd - dummy)
	(dummy-left-w4y_observe-table_a3_table3_room4 ?dd - dummy)
	(immediate-dummy-kw7_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-kw7_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-wdd_joint-lift-table_a1_a2_table2_room2 ?dd - dummy)
	(pre-qtv_joint-move-table_a1_a2_table2_room2_room1 ?dd - dummy)
	(pre-k3r_joint-drop-table_a1_a2_table2_room1 ?dd - dummy)
	(pre-6lv_joint-lift-table_a1_a3_table1_room3 ?dd - dummy)
	(pre-ygr_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
	(pre-kfk_joint-drop-table_a1_a3_table1_room4 ?dd - dummy)
	(dummy-right-kw7_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-jvl_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-b38_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-a7v_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(dummy-right-w4y_observe-table_a3_table3_room4 ?dd - dummy)
	(pre-inz_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-bvs_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-rzj_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(dummy-right-d5d_observe-table_a1_table2_room1 ?dd - dummy)
	(immediate-dummy-uwc_observe-table_a2_table3_room3 ?dd - dummy)
	(dummy-left-uwc_observe-table_a2_table3_room3 ?dd - dummy)
	(immediate-dummy-eh6_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-left-eh6_observe-table_a4_table4_room6 ?dd - dummy)
	(pre-sn7_joint-lift-table_a1_a4_table4_room7 ?dd - dummy)
	(pre-ioz_joint-move-table_a1_a4_table4_room7_room6 ?dd - dummy)
	(pre-vly_joint-drop-table_a1_a4_table4_room6 ?dd - dummy)
	(dummy-right-eh6_observe-table_a4_table4_room6 ?dd - dummy)
	(dummy-right-uwc_observe-table_a2_table3_room3 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-6fo_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6fo_observe-table_a2_table1_room3 dd)(immediate-dummy-6fo_observe-table_a2_table1_room3 dd)(in a1 room3)(can-observe a1 table1)(available a1))
	:observe (inroom table1 room3)
)
(:action act-dummy-6fo_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6fo_observe-table_a2_table1_room3 dd)(not (dummy-left-6fo_observe-table_a2_table1_room3 dd))(not (dummy-right-6fo_observe-table_a2_table1_room3 dd)))
	:effect (and (immediate-dummy-6fo_observe-table_a2_table1_room3 dd) )
)
(:action dummy-left-6fo_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6fo_observe-table_a2_table1_room3 dd)(in a1 room3)(can-observe a1 table1)(available a1)(not (inroom table1 room3))(immediate-dummy-6fo_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-6fo_observe-table_a2_table1_room3 dd))(not (immediate-dummy-6fo_observe-table_a2_table1_room3 dd))(dummy-left-6fo_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-6fo_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-6fo_observe-table_a2_table1_room3 dd)(in a1 room3)(can-observe a1 table1)(available a1)(inroom table1 room3)(immediate-dummy-6fo_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-6fo_observe-table_a2_table1_room3 dd))(not (immediate-dummy-6fo_observe-table_a2_table1_room3 dd))(dummy-right-6fo_observe-table_a2_table1_room3 dd))
)
(:action act-mny_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6fo_observe-table_a2_table1_room3 dd)(immediate-dummy-mny_observe-table_a2_table2_room2 dd)(not (inroom table1 room3))(in a1 room2)(can-observe a1 table2)(available a1))
	:observe (inroom table2 room2)
)
(:action act-dummy-mny_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6fo_observe-table_a2_table1_room3 dd)(not (inroom table1 room3))(in a1 room2)(can-observe a1 table2)(available a1)(not (dummy-left-mny_observe-table_a2_table2_room2 dd))(not (dummy-right-mny_observe-table_a2_table2_room2 dd)))
	:effect (and (immediate-dummy-mny_observe-table_a2_table2_room2 dd) )
)
(:action dummy-left-mny_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6fo_observe-table_a2_table1_room3 dd)(not (inroom table1 room3))(in a1 room2)(can-observe a1 table2)(available a1)(not (inroom table2 room2))(immediate-dummy-mny_observe-table_a2_table2_room2 dd))
	:effect (and (not (immediate-dummy-mny_observe-table_a2_table2_room2 dd))(dummy-left-mny_observe-table_a2_table2_room2 dd))
)
(:action dummy-right-mny_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6fo_observe-table_a2_table1_room3 dd)(not (inroom table1 room3))(in a1 room2)(can-observe a1 table2)(available a1)(inroom table2 room2)(immediate-dummy-mny_observe-table_a2_table2_room2 dd))
	:effect (and (not (immediate-dummy-mny_observe-table_a2_table2_room2 dd))(dummy-right-mny_observe-table_a2_table2_room2 dd))
)
(:action goal-achieve-left-mny_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mny_observe-table_a2_table2_room2 dd)(not (inroom table2 room2))(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-mny_observe-table_a2_table2_room2 dd)))
)
(:action act-dw0_joint-lift-table_a1_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mny_observe-table_a2_table2_room2 dd)(inroom table2 room2)(not (inroom table1 room3))(available a1)(in a1 room2))
	:effect (and (pre-dw0_joint-lift-table_a1_a2_table2_room2 dd)(not (available a1)))
)
(:action act-s0a_joint-move-table_a1_a2_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-dw0_joint-lift-table_a1_a2_table2_room2 dd)(in a1 room2)(connected room2 room1))
	:effect (and (pre-s0a_joint-move-table_a1_a2_table2_room2_room1 dd)(not (pre-dw0_joint-lift-table_a1_a2_table2_room2 dd))(not (in a1 room2))(in a1 room1))
)
(:action act-ji3_joint-drop-table_a1_a2_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-s0a_joint-move-table_a1_a2_table2_room2_room1 dd)(in a1 room1))
	:effect (and (pre-ji3_joint-drop-table_a1_a2_table2_room1 dd)(not (pre-s0a_joint-move-table_a1_a2_table2_room2_room1 dd))(available a1))
)
(:action goal-achieve-ji3_joint-drop-table_a1_a2_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-ji3_joint-drop-table_a1_a2_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-ji3_joint-drop-table_a1_a2_table2_room1 dd)))
)
(:action act-d5d_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6fo_observe-table_a2_table1_room3 dd)(immediate-dummy-d5d_observe-table_a1_table2_room1 dd)(inroom table1 room3)(in a1 room1)(can-observe a1 table2)(available a1))
	:observe (inroom table2 room1)
)
(:action act-dummy-d5d_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6fo_observe-table_a2_table1_room3 dd)(inroom table1 room3)(in a1 room1)(can-observe a1 table2)(available a1)(not (dummy-left-d5d_observe-table_a1_table2_room1 dd))(not (dummy-right-d5d_observe-table_a1_table2_room1 dd)))
	:effect (and (immediate-dummy-d5d_observe-table_a1_table2_room1 dd) )
)
(:action dummy-left-d5d_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6fo_observe-table_a2_table1_room3 dd)(inroom table1 room3)(in a1 room1)(can-observe a1 table2)(available a1)(not (inroom table2 room1))(immediate-dummy-d5d_observe-table_a1_table2_room1 dd))
	:effect (and (not (immediate-dummy-d5d_observe-table_a1_table2_room1 dd))(dummy-left-d5d_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-d5d_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6fo_observe-table_a2_table1_room3 dd)(inroom table1 room3)(in a1 room1)(can-observe a1 table2)(available a1)(inroom table2 room1)(immediate-dummy-d5d_observe-table_a1_table2_room1 dd))
	:effect (and (not (immediate-dummy-d5d_observe-table_a1_table2_room1 dd))(dummy-right-d5d_observe-table_a1_table2_room1 dd))
)
(:action act-w4y_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-d5d_observe-table_a1_table2_room1 dd)(immediate-dummy-w4y_observe-table_a3_table3_room4 dd)(not (inroom table2 room1))(inroom table1 room3)(in a1 room4)(can-observe a1 table3)(available a1))
	:observe (inroom table3 room4)
)
(:action act-dummy-w4y_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-d5d_observe-table_a1_table2_room1 dd)(not (inroom table2 room1))(inroom table1 room3)(in a1 room4)(can-observe a1 table3)(available a1)(not (dummy-left-w4y_observe-table_a3_table3_room4 dd))(not (dummy-right-w4y_observe-table_a3_table3_room4 dd)))
	:effect (and (immediate-dummy-w4y_observe-table_a3_table3_room4 dd) )
)
(:action dummy-left-w4y_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-d5d_observe-table_a1_table2_room1 dd)(not (inroom table2 room1))(inroom table1 room3)(in a1 room4)(can-observe a1 table3)(available a1)(not (inroom table3 room4))(immediate-dummy-w4y_observe-table_a3_table3_room4 dd))
	:effect (and (not (immediate-dummy-w4y_observe-table_a3_table3_room4 dd))(dummy-left-w4y_observe-table_a3_table3_room4 dd))
)
(:action dummy-right-w4y_observe-table_a3_table3_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-d5d_observe-table_a1_table2_room1 dd)(not (inroom table2 room1))(inroom table1 room3)(in a1 room4)(can-observe a1 table3)(available a1)(inroom table3 room4)(immediate-dummy-w4y_observe-table_a3_table3_room4 dd))
	:effect (and (not (immediate-dummy-w4y_observe-table_a3_table3_room4 dd))(dummy-right-w4y_observe-table_a3_table3_room4 dd))
)
(:action act-kw7_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-w4y_observe-table_a3_table3_room4 dd)(immediate-dummy-kw7_observe-table_a4_table4_room6 dd)(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(in a1 room6)(can-observe a1 table4)(available a1))
	:observe (inroom table4 room6)
)
(:action act-dummy-kw7_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-w4y_observe-table_a3_table3_room4 dd)(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(in a1 room6)(can-observe a1 table4)(available a1)(not (dummy-left-kw7_observe-table_a4_table4_room6 dd))(not (dummy-right-kw7_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-kw7_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-kw7_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-w4y_observe-table_a3_table3_room4 dd)(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(in a1 room6)(can-observe a1 table4)(available a1)(not (inroom table4 room6))(immediate-dummy-kw7_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-kw7_observe-table_a4_table4_room6 dd))(dummy-left-kw7_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-kw7_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-w4y_observe-table_a3_table3_room4 dd)(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(in a1 room6)(can-observe a1 table4)(available a1)(inroom table4 room6)(immediate-dummy-kw7_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-kw7_observe-table_a4_table4_room6 dd))(dummy-right-kw7_observe-table_a4_table4_room6 dd))
)
(:action act-wdd_joint-lift-table_a1_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-kw7_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(available a1)(in a1 room2))
	:effect (and (pre-wdd_joint-lift-table_a1_a2_table2_room2 dd)(not (available a1)))
)
(:action act-qtv_joint-move-table_a1_a2_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-wdd_joint-lift-table_a1_a2_table2_room2 dd)(in a1 room2)(connected room2 room1))
	:effect (and (pre-qtv_joint-move-table_a1_a2_table2_room2_room1 dd)(not (pre-wdd_joint-lift-table_a1_a2_table2_room2 dd))(not (in a1 room2))(in a1 room1))
)
(:action act-k3r_joint-drop-table_a1_a2_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-qtv_joint-move-table_a1_a2_table2_room2_room1 dd)(in a1 room1))
	:effect (and (pre-k3r_joint-drop-table_a1_a2_table2_room1 dd)(not (pre-qtv_joint-move-table_a1_a2_table2_room2_room1 dd))(available a1))
)
(:action act-6lv_joint-lift-table_a1_a3_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (pre-k3r_joint-drop-table_a1_a2_table2_room1 dd)(available a1)(in a1 room3))
	:effect (and (pre-6lv_joint-lift-table_a1_a3_table1_room3 dd)(not (pre-k3r_joint-drop-table_a1_a2_table2_room1 dd))(not (available a1)))
)
(:action act-ygr_joint-move-table_a1_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-6lv_joint-lift-table_a1_a3_table1_room3 dd)(in a1 room3)(connected room3 room4))
	:effect (and (pre-ygr_joint-move-table_a1_a3_table1_room3_room4 dd)(not (pre-6lv_joint-lift-table_a1_a3_table1_room3 dd))(not (in a1 room3))(in a1 room4))
)
(:action act-kfk_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-ygr_joint-move-table_a1_a3_table1_room3_room4 dd)(in a1 room4))
	:effect (and (pre-kfk_joint-drop-table_a1_a3_table1_room4 dd)(not (pre-ygr_joint-move-table_a1_a3_table1_room3_room4 dd))(available a1))
)
(:action goal-achieve-kfk_joint-drop-table_a1_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-kfk_joint-drop-table_a1_a3_table1_room4 dd))
	:effect (and (done-goal dd)(not (pre-kfk_joint-drop-table_a1_a3_table1_room4 dd)))
)
(:action act-jvl_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kw7_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room4))(not (inroom table2 room1))(inroom table1 room3)(available a1)(in a1 room2))
	:effect (and (pre-jvl_joint-lift-table_a1_a3_table2_room2 dd)(not (available a1)))
)
(:action act-b38_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-jvl_joint-lift-table_a1_a3_table2_room2 dd)(in a1 room2)(connected room2 room1))
	:effect (and (pre-b38_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-jvl_joint-lift-table_a1_a3_table2_room2 dd))(not (in a1 room2))(in a1 room1))
)
(:action act-a7v_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-b38_joint-move-table_a1_a3_table2_room2_room1 dd)(in a1 room1))
	:effect (and (pre-a7v_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-b38_joint-move-table_a1_a3_table2_room2_room1 dd))(available a1))
)
(:action goal-achieve-a7v_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-a7v_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-a7v_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-inz_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-w4y_observe-table_a3_table3_room4 dd)(inroom table3 room4)(not (inroom table2 room1))(inroom table1 room3)(available a1)(in a1 room2))
	:effect (and (pre-inz_joint-lift-table_a1_a3_table2_room2 dd)(not (available a1)))
)
(:action act-bvs_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-inz_joint-lift-table_a1_a3_table2_room2 dd)(in a1 room2)(connected room2 room1))
	:effect (and (pre-bvs_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-inz_joint-lift-table_a1_a3_table2_room2 dd))(not (in a1 room2))(in a1 room1))
)
(:action act-rzj_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-bvs_joint-move-table_a1_a3_table2_room2_room1 dd)(in a1 room1))
	:effect (and (pre-rzj_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-bvs_joint-move-table_a1_a3_table2_room2_room1 dd))(available a1))
)
(:action goal-achieve-rzj_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-rzj_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-rzj_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action act-uwc_observe-table_a2_table3_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-d5d_observe-table_a1_table2_room1 dd)(immediate-dummy-uwc_observe-table_a2_table3_room3 dd)(inroom table2 room1)(inroom table1 room3)(in a1 room3)(can-observe a1 table3)(available a1))
	:observe (inroom table3 room3)
)
(:action act-dummy-uwc_observe-table_a2_table3_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-d5d_observe-table_a1_table2_room1 dd)(inroom table2 room1)(inroom table1 room3)(in a1 room3)(can-observe a1 table3)(available a1)(not (dummy-left-uwc_observe-table_a2_table3_room3 dd))(not (dummy-right-uwc_observe-table_a2_table3_room3 dd)))
	:effect (and (immediate-dummy-uwc_observe-table_a2_table3_room3 dd) )
)
(:action dummy-left-uwc_observe-table_a2_table3_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-d5d_observe-table_a1_table2_room1 dd)(inroom table2 room1)(inroom table1 room3)(in a1 room3)(can-observe a1 table3)(available a1)(not (inroom table3 room3))(immediate-dummy-uwc_observe-table_a2_table3_room3 dd))
	:effect (and (not (immediate-dummy-uwc_observe-table_a2_table3_room3 dd))(dummy-left-uwc_observe-table_a2_table3_room3 dd))
)
(:action dummy-right-uwc_observe-table_a2_table3_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-d5d_observe-table_a1_table2_room1 dd)(inroom table2 room1)(inroom table1 room3)(in a1 room3)(can-observe a1 table3)(available a1)(inroom table3 room3)(immediate-dummy-uwc_observe-table_a2_table3_room3 dd))
	:effect (and (not (immediate-dummy-uwc_observe-table_a2_table3_room3 dd))(dummy-right-uwc_observe-table_a2_table3_room3 dd))
)
(:action act-eh6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uwc_observe-table_a2_table3_room3 dd)(immediate-dummy-eh6_observe-table_a4_table4_room6 dd)(not (inroom table3 room3))(inroom table2 room1)(inroom table1 room3)(in a1 room6)(can-observe a1 table4)(available a1))
	:observe (inroom table4 room6)
)
(:action act-dummy-eh6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uwc_observe-table_a2_table3_room3 dd)(not (inroom table3 room3))(inroom table2 room1)(inroom table1 room3)(in a1 room6)(can-observe a1 table4)(available a1)(not (dummy-left-eh6_observe-table_a4_table4_room6 dd))(not (dummy-right-eh6_observe-table_a4_table4_room6 dd)))
	:effect (and (immediate-dummy-eh6_observe-table_a4_table4_room6 dd) )
)
(:action dummy-left-eh6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uwc_observe-table_a2_table3_room3 dd)(not (inroom table3 room3))(inroom table2 room1)(inroom table1 room3)(in a1 room6)(can-observe a1 table4)(available a1)(not (inroom table4 room6))(immediate-dummy-eh6_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-eh6_observe-table_a4_table4_room6 dd))(dummy-left-eh6_observe-table_a4_table4_room6 dd))
)
(:action dummy-right-eh6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uwc_observe-table_a2_table3_room3 dd)(not (inroom table3 room3))(inroom table2 room1)(inroom table1 room3)(in a1 room6)(can-observe a1 table4)(available a1)(inroom table4 room6)(immediate-dummy-eh6_observe-table_a4_table4_room6 dd))
	:effect (and (not (immediate-dummy-eh6_observe-table_a4_table4_room6 dd))(dummy-right-eh6_observe-table_a4_table4_room6 dd))
)
(:action act-sn7_joint-lift-table_a1_a4_table4_room7
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-eh6_observe-table_a4_table4_room6 dd)(not (inroom table4 room6))(not (inroom table3 room3))(inroom table2 room1)(inroom table1 room3)(available a1)(in a1 room7))
	:effect (and (pre-sn7_joint-lift-table_a1_a4_table4_room7 dd)(not (available a1)))
)
(:action act-ioz_joint-move-table_a1_a4_table4_room7_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-sn7_joint-lift-table_a1_a4_table4_room7 dd)(in a1 room7)(connected room7 room6))
	:effect (and (pre-ioz_joint-move-table_a1_a4_table4_room7_room6 dd)(not (pre-sn7_joint-lift-table_a1_a4_table4_room7 dd))(not (in a1 room7))(in a1 room6))
)
(:action act-vly_joint-drop-table_a1_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-ioz_joint-move-table_a1_a4_table4_room7_room6 dd)(in a1 room6))
	:effect (and (pre-vly_joint-drop-table_a1_a4_table4_room6 dd)(not (pre-ioz_joint-move-table_a1_a4_table4_room7_room6 dd))(available a1))
)
(:action goal-achieve-vly_joint-drop-table_a1_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (pre-vly_joint-drop-table_a1_a4_table4_room6 dd))
	:effect (and (done-goal dd)(not (pre-vly_joint-drop-table_a1_a4_table4_room6 dd)))
)
(:action goal-achieve-right-eh6_observe-table_a4_table4_room6
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-eh6_observe-table_a4_table4_room6 dd)(inroom table4 room6)(not (inroom table3 room3))(inroom table2 room1)(inroom table1 room3))
	:effect (and (done-goal dd)(not (dummy-right-eh6_observe-table_a4_table4_room6 dd)))
)
(:action goal-achieve-right-uwc_observe-table_a2_table3_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uwc_observe-table_a2_table3_room3 dd)(inroom table3 room3)(inroom table2 room1)(inroom table1 room3))
	:effect (and (done-goal dd)(not (dummy-right-uwc_observe-table_a2_table3_room3 dd)))
)
)