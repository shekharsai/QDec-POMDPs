(define (domain tablemover-2-a2)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	a2 - agent
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
	(init-jfk_observe-table_a2_table2_room2 ?dd - dummy)
	(immediate-dummy-jfk_observe-table_a2_table2_room2 ?dd - dummy)
	(dummy-left-jfk_observe-table_a2_table2_room2 ?dd - dummy)
	(immediate-dummy-ovo_observe-table_a1_table3_room1 ?dd - dummy)
	(dummy-left-ovo_observe-table_a1_table3_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-ovo_observe-table_a1_table3_room1 ?dd - dummy)
	(pre-lf8_joint-lift-table_a2_a1_table3_room1 ?dd - dummy)
	(pre-n76_joint-move-table_a2_a1_table3_room1_room2 ?dd - dummy)
	(pre-7kc_joint-drop-table_a2_a1_table3_room2 ?dd - dummy)
	(dummy-right-jfk_observe-table_a2_table2_room2 ?dd - dummy)
	(immediate-dummy-djo_observe-table_a1_table3_room1 ?dd - dummy)
	(dummy-left-djo_observe-table_a1_table3_room1 ?dd - dummy)
	(immediate-dummy-m4i_observe-table_a3_table1_room4 ?dd - dummy)
	(dummy-left-m4i_observe-table_a3_table1_room4 ?dd - dummy)
	(pre-1mr_joint-lift-table_a3_a2_table1_room3 ?dd - dummy)
	(pre-vks_joint-move-table_a3_a2_table1_room3_room4 ?dd - dummy)
	(pre-fr6_joint-drop-table_a3_a2_table1_room4 ?dd - dummy)
	(pre-t51_joint-lift-table_a2_a1_table2_room2 ?dd - dummy)
	(pre-2h3_joint-move-table_a2_a1_table2_room2_room1 ?dd - dummy)
	(pre-met_joint-drop-table_a2_a1_table2_room1 ?dd - dummy)
	(dummy-right-m4i_observe-table_a3_table1_room4 ?dd - dummy)
	(pre-cpr_joint-lift-table_a2_a1_table2_room2 ?dd - dummy)
	(pre-b37_joint-move-table_a2_a1_table2_room2_room1 ?dd - dummy)
	(pre-do0_joint-drop-table_a2_a1_table2_room1 ?dd - dummy)
	(dummy-right-djo_observe-table_a1_table3_room1 ?dd - dummy)
	(pre-r55_joint-lift-table_a2_a1_table3_room1 ?dd - dummy)
	(pre-s91_joint-move-table_a2_a1_table3_room1_room2 ?dd - dummy)
	(pre-ur3_joint-drop-table_a2_a1_table3_room2 ?dd - dummy)
	(pre-32l_joint-lift-table_a2_a1_table2_room2 ?dd - dummy)
	(pre-6fx_joint-move-table_a2_a1_table2_room2_room1 ?dd - dummy)
	(pre-b3b_joint-drop-table_a2_a1_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-jfk_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (init-jfk_observe-table_a2_table2_room2 dd)(immediate-dummy-jfk_observe-table_a2_table2_room2 dd)(in a2 room2)(can-observe a2 table2)(available a2))
	:observe (inroom table2 room2)
)
(:action act-dummy-jfk_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (init-jfk_observe-table_a2_table2_room2 dd)(not (dummy-left-jfk_observe-table_a2_table2_room2 dd))(not (dummy-right-jfk_observe-table_a2_table2_room2 dd)))
	:effect (and (immediate-dummy-jfk_observe-table_a2_table2_room2 dd) )
)
(:action dummy-left-jfk_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (init-jfk_observe-table_a2_table2_room2 dd)(in a2 room2)(can-observe a2 table2)(available a2)(not (inroom table2 room2))(immediate-dummy-jfk_observe-table_a2_table2_room2 dd))
	:effect (and (not (init-jfk_observe-table_a2_table2_room2 dd))(not (immediate-dummy-jfk_observe-table_a2_table2_room2 dd))(dummy-left-jfk_observe-table_a2_table2_room2 dd))
)
(:action dummy-right-jfk_observe-table_a2_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (init-jfk_observe-table_a2_table2_room2 dd)(in a2 room2)(can-observe a2 table2)(available a2)(inroom table2 room2)(immediate-dummy-jfk_observe-table_a2_table2_room2 dd))
	:effect (and (not (init-jfk_observe-table_a2_table2_room2 dd))(not (immediate-dummy-jfk_observe-table_a2_table2_room2 dd))(dummy-right-jfk_observe-table_a2_table2_room2 dd))
)
(:action act-ovo_observe-table_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jfk_observe-table_a2_table2_room2 dd)(immediate-dummy-ovo_observe-table_a1_table3_room1 dd)(not (inroom table2 room2))(in a2 room1)(can-observe a2 table3)(available a2))
	:observe (inroom table3 room1)
)
(:action act-dummy-ovo_observe-table_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jfk_observe-table_a2_table2_room2 dd)(not (inroom table2 room2))(in a2 room1)(can-observe a2 table3)(available a2)(not (dummy-left-ovo_observe-table_a1_table3_room1 dd))(not (dummy-right-ovo_observe-table_a1_table3_room1 dd)))
	:effect (and (immediate-dummy-ovo_observe-table_a1_table3_room1 dd) )
)
(:action dummy-left-ovo_observe-table_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jfk_observe-table_a2_table2_room2 dd)(not (inroom table2 room2))(in a2 room1)(can-observe a2 table3)(available a2)(not (inroom table3 room1))(immediate-dummy-ovo_observe-table_a1_table3_room1 dd))
	:effect (and (not (immediate-dummy-ovo_observe-table_a1_table3_room1 dd))(dummy-left-ovo_observe-table_a1_table3_room1 dd))
)
(:action dummy-right-ovo_observe-table_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jfk_observe-table_a2_table2_room2 dd)(not (inroom table2 room2))(in a2 room1)(can-observe a2 table3)(available a2)(inroom table3 room1)(immediate-dummy-ovo_observe-table_a1_table3_room1 dd))
	:effect (and (not (immediate-dummy-ovo_observe-table_a1_table3_room1 dd))(dummy-right-ovo_observe-table_a1_table3_room1 dd))
)
(:action goal-achieve-left-ovo_observe-table_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ovo_observe-table_a1_table3_room1 dd)(not (inroom table3 room1))(not (inroom table2 room2)))
	:effect (and (done-goal dd)(not (dummy-left-ovo_observe-table_a1_table3_room1 dd)))
)
(:action act-lf8_joint-lift-table_a2_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ovo_observe-table_a1_table3_room1 dd)(inroom table3 room1)(not (inroom table2 room2))(available a2)(in a2 room1))
	:effect (and (pre-lf8_joint-lift-table_a2_a1_table3_room1 dd)(not (available a2)))
)
(:action act-n76_joint-move-table_a2_a1_table3_room1_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-lf8_joint-lift-table_a2_a1_table3_room1 dd)(in a2 room1)(connected room1 room2))
	:effect (and (pre-n76_joint-move-table_a2_a1_table3_room1_room2 dd)(not (pre-lf8_joint-lift-table_a2_a1_table3_room1 dd))(not (in a2 room1))(in a2 room2))
)
(:action act-7kc_joint-drop-table_a2_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-n76_joint-move-table_a2_a1_table3_room1_room2 dd)(in a2 room2))
	:effect (and (pre-7kc_joint-drop-table_a2_a1_table3_room2 dd)(not (pre-n76_joint-move-table_a2_a1_table3_room1_room2 dd))(available a2))
)
(:action goal-achieve-7kc_joint-drop-table_a2_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-7kc_joint-drop-table_a2_a1_table3_room2 dd))
	:effect (and (done-goal dd)(not (pre-7kc_joint-drop-table_a2_a1_table3_room2 dd)))
)
(:action act-djo_observe-table_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jfk_observe-table_a2_table2_room2 dd)(immediate-dummy-djo_observe-table_a1_table3_room1 dd)(inroom table2 room2)(in a2 room1)(can-observe a2 table3)(available a2))
	:observe (inroom table3 room1)
)
(:action act-dummy-djo_observe-table_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jfk_observe-table_a2_table2_room2 dd)(inroom table2 room2)(in a2 room1)(can-observe a2 table3)(available a2)(not (dummy-left-djo_observe-table_a1_table3_room1 dd))(not (dummy-right-djo_observe-table_a1_table3_room1 dd)))
	:effect (and (immediate-dummy-djo_observe-table_a1_table3_room1 dd) )
)
(:action dummy-left-djo_observe-table_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jfk_observe-table_a2_table2_room2 dd)(inroom table2 room2)(in a2 room1)(can-observe a2 table3)(available a2)(not (inroom table3 room1))(immediate-dummy-djo_observe-table_a1_table3_room1 dd))
	:effect (and (not (immediate-dummy-djo_observe-table_a1_table3_room1 dd))(dummy-left-djo_observe-table_a1_table3_room1 dd))
)
(:action dummy-right-djo_observe-table_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jfk_observe-table_a2_table2_room2 dd)(inroom table2 room2)(in a2 room1)(can-observe a2 table3)(available a2)(inroom table3 room1)(immediate-dummy-djo_observe-table_a1_table3_room1 dd))
	:effect (and (not (immediate-dummy-djo_observe-table_a1_table3_room1 dd))(dummy-right-djo_observe-table_a1_table3_room1 dd))
)
(:action act-m4i_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-djo_observe-table_a1_table3_room1 dd)(immediate-dummy-m4i_observe-table_a3_table1_room4 dd)(not (inroom table3 room1))(inroom table2 room2)(in a2 room4)(can-observe a2 table1)(available a2))
	:observe (inroom table1 room4)
)
(:action act-dummy-m4i_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-djo_observe-table_a1_table3_room1 dd)(not (inroom table3 room1))(inroom table2 room2)(in a2 room4)(can-observe a2 table1)(available a2)(not (dummy-left-m4i_observe-table_a3_table1_room4 dd))(not (dummy-right-m4i_observe-table_a3_table1_room4 dd)))
	:effect (and (immediate-dummy-m4i_observe-table_a3_table1_room4 dd) )
)
(:action dummy-left-m4i_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-djo_observe-table_a1_table3_room1 dd)(not (inroom table3 room1))(inroom table2 room2)(in a2 room4)(can-observe a2 table1)(available a2)(not (inroom table1 room4))(immediate-dummy-m4i_observe-table_a3_table1_room4 dd))
	:effect (and (not (immediate-dummy-m4i_observe-table_a3_table1_room4 dd))(dummy-left-m4i_observe-table_a3_table1_room4 dd))
)
(:action dummy-right-m4i_observe-table_a3_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-djo_observe-table_a1_table3_room1 dd)(not (inroom table3 room1))(inroom table2 room2)(in a2 room4)(can-observe a2 table1)(available a2)(inroom table1 room4)(immediate-dummy-m4i_observe-table_a3_table1_room4 dd))
	:effect (and (not (immediate-dummy-m4i_observe-table_a3_table1_room4 dd))(dummy-right-m4i_observe-table_a3_table1_room4 dd))
)
(:action act-1mr_joint-lift-table_a3_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-m4i_observe-table_a3_table1_room4 dd)(not (inroom table1 room4))(not (inroom table3 room1))(inroom table2 room2)(available a2)(in a2 room3))
	:effect (and (pre-1mr_joint-lift-table_a3_a2_table1_room3 dd)(not (available a2)))
)
(:action act-vks_joint-move-table_a3_a2_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-1mr_joint-lift-table_a3_a2_table1_room3 dd)(in a2 room3)(connected room3 room4))
	:effect (and (pre-vks_joint-move-table_a3_a2_table1_room3_room4 dd)(not (pre-1mr_joint-lift-table_a3_a2_table1_room3 dd))(not (in a2 room3))(in a2 room4))
)
(:action act-fr6_joint-drop-table_a3_a2_table1_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-vks_joint-move-table_a3_a2_table1_room3_room4 dd)(in a2 room4))
	:effect (and (pre-fr6_joint-drop-table_a3_a2_table1_room4 dd)(not (pre-vks_joint-move-table_a3_a2_table1_room3_room4 dd))(available a2))
)
(:action act-t51_joint-lift-table_a2_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-fr6_joint-drop-table_a3_a2_table1_room4 dd)(available a2)(in a2 room2))
	:effect (and (pre-t51_joint-lift-table_a2_a1_table2_room2 dd)(not (pre-fr6_joint-drop-table_a3_a2_table1_room4 dd))(not (available a2)))
)
(:action act-2h3_joint-move-table_a2_a1_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-t51_joint-lift-table_a2_a1_table2_room2 dd)(in a2 room2)(connected room2 room1))
	:effect (and (pre-2h3_joint-move-table_a2_a1_table2_room2_room1 dd)(not (pre-t51_joint-lift-table_a2_a1_table2_room2 dd))(not (in a2 room2))(in a2 room1))
)
(:action act-met_joint-drop-table_a2_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-2h3_joint-move-table_a2_a1_table2_room2_room1 dd)(in a2 room1))
	:effect (and (pre-met_joint-drop-table_a2_a1_table2_room1 dd)(not (pre-2h3_joint-move-table_a2_a1_table2_room2_room1 dd))(available a2))
)
(:action goal-achieve-met_joint-drop-table_a2_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-met_joint-drop-table_a2_a1_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-met_joint-drop-table_a2_a1_table2_room1 dd)))
)
(:action act-cpr_joint-lift-table_a2_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-m4i_observe-table_a3_table1_room4 dd)(inroom table1 room4)(not (inroom table3 room1))(inroom table2 room2)(available a2)(in a2 room2))
	:effect (and (pre-cpr_joint-lift-table_a2_a1_table2_room2 dd)(not (available a2)))
)
(:action act-b37_joint-move-table_a2_a1_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-cpr_joint-lift-table_a2_a1_table2_room2 dd)(in a2 room2)(connected room2 room1))
	:effect (and (pre-b37_joint-move-table_a2_a1_table2_room2_room1 dd)(not (pre-cpr_joint-lift-table_a2_a1_table2_room2 dd))(not (in a2 room2))(in a2 room1))
)
(:action act-do0_joint-drop-table_a2_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-b37_joint-move-table_a2_a1_table2_room2_room1 dd)(in a2 room1))
	:effect (and (pre-do0_joint-drop-table_a2_a1_table2_room1 dd)(not (pre-b37_joint-move-table_a2_a1_table2_room2_room1 dd))(available a2))
)
(:action goal-achieve-do0_joint-drop-table_a2_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-do0_joint-drop-table_a2_a1_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-do0_joint-drop-table_a2_a1_table2_room1 dd)))
)
(:action act-r55_joint-lift-table_a2_a1_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-djo_observe-table_a1_table3_room1 dd)(inroom table3 room1)(inroom table2 room2)(available a2)(in a2 room1))
	:effect (and (pre-r55_joint-lift-table_a2_a1_table3_room1 dd)(not (available a2)))
)
(:action act-s91_joint-move-table_a2_a1_table3_room1_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-r55_joint-lift-table_a2_a1_table3_room1 dd)(in a2 room1)(connected room1 room2))
	:effect (and (pre-s91_joint-move-table_a2_a1_table3_room1_room2 dd)(not (pre-r55_joint-lift-table_a2_a1_table3_room1 dd))(not (in a2 room1))(in a2 room2))
)
(:action act-ur3_joint-drop-table_a2_a1_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-s91_joint-move-table_a2_a1_table3_room1_room2 dd)(in a2 room2))
	:effect (and (pre-ur3_joint-drop-table_a2_a1_table3_room2 dd)(not (pre-s91_joint-move-table_a2_a1_table3_room1_room2 dd))(available a2))
)
(:action act-32l_joint-lift-table_a2_a1_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-ur3_joint-drop-table_a2_a1_table3_room2 dd)(available a2)(in a2 room2))
	:effect (and (pre-32l_joint-lift-table_a2_a1_table2_room2 dd)(not (pre-ur3_joint-drop-table_a2_a1_table3_room2 dd))(not (available a2)))
)
(:action act-6fx_joint-move-table_a2_a1_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-32l_joint-lift-table_a2_a1_table2_room2 dd)(in a2 room2)(connected room2 room1))
	:effect (and (pre-6fx_joint-move-table_a2_a1_table2_room2_room1 dd)(not (pre-32l_joint-lift-table_a2_a1_table2_room2 dd))(not (in a2 room2))(in a2 room1))
)
(:action act-b3b_joint-drop-table_a2_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-6fx_joint-move-table_a2_a1_table2_room2_room1 dd)(in a2 room1))
	:effect (and (pre-b3b_joint-drop-table_a2_a1_table2_room1 dd)(not (pre-6fx_joint-move-table_a2_a1_table2_room2_room1 dd))(available a2))
)
(:action goal-achieve-b3b_joint-drop-table_a2_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-b3b_joint-drop-table_a2_a1_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-b3b_joint-drop-table_a2_a1_table2_room1 dd)))
)
)