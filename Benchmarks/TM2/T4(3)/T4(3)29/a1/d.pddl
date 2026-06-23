(define (domain tablemover-2-a1)
(:types agent table room dummy)
(:constants 
	table1 - table
	table2 - table
	table3 - table
	a1 - agent
	room1 - room
	room2 - room
	room3 - room
	room4 - room
	dd - dummy)
(:predicates 
	(p-dummy-agnt)
	(lifting ?a - agent ?t - table ?r - room )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a - agent ?t - table )
	(init-qpd_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-qpd_observe-table_a2_table1_room3 ?dd - dummy)
	(dummy-left-qpd_observe-table_a2_table1_room3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-qpd_observe-table_a2_table1_room3 ?dd - dummy)
	(immediate-dummy-uy1_observe-table_a1_table2_room1 ?dd - dummy)
	(dummy-left-uy1_observe-table_a1_table2_room1 ?dd - dummy)
	(dummy-right-uy1_observe-table_a1_table2_room1 ?dd - dummy)
	(immediate-dummy-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 ?dd - dummy)
	(dummy-left-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 ?dd - dummy)
	(dummy-right-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 ?dd - dummy)
	(pre-xaf_joint-lift-table_a1_a3_table1_room1 ?dd - dummy)
	(pre-a9m_joint-move-table_a3_a1_table1_room1_room2 ?dd - dummy)
	(pre-vhk_joint-move-table_a1_a3_table1_room2_room3 ?dd - dummy)
	(pre-bqv_joint-move-table_a1_a3_table1_room3_room4 ?dd - dummy)
	(pre-iut_joint-drop-table-ausj_a1_a3_table1_room4_dd ?dd - dummy)
)

(:action dummyPrivateAction 
	:effect (and (p-dummy-agnt))
)
(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-qpd_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-qpd_observe-table_a2_table1_room3 dd)(immediate-dummy-qpd_observe-table_a2_table1_room3 dd)(in a1 room3)(can-observe a1 table1)(available a1))
	:observe (inroom table1 room3)
)
(:action act-dummy-qpd_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-qpd_observe-table_a2_table1_room3 dd)(not (dummy-left-qpd_observe-table_a2_table1_room3 dd))(not (dummy-right-qpd_observe-table_a2_table1_room3 dd)))
	:effect (and (immediate-dummy-qpd_observe-table_a2_table1_room3 dd) )
)
(:action dummy-left-qpd_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-qpd_observe-table_a2_table1_room3 dd)(in a1 room3)(can-observe a1 table1)(available a1)(not (inroom table1 room3))(immediate-dummy-qpd_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-qpd_observe-table_a2_table1_room3 dd))(not (immediate-dummy-qpd_observe-table_a2_table1_room3 dd))(dummy-left-qpd_observe-table_a2_table1_room3 dd))
)
(:action dummy-right-qpd_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (init-qpd_observe-table_a2_table1_room3 dd)(in a1 room3)(can-observe a1 table1)(available a1)(inroom table1 room3)(immediate-dummy-qpd_observe-table_a2_table1_room3 dd))
	:effect (and (not (init-qpd_observe-table_a2_table1_room3 dd))(not (immediate-dummy-qpd_observe-table_a2_table1_room3 dd))(dummy-right-qpd_observe-table_a2_table1_room3 dd))
)
(:action goal-achieve-left-qpd_observe-table_a2_table1_room3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-qpd_observe-table_a2_table1_room3 dd)(not (inroom table1 room3)))
	:effect (and (done-goal dd)(not (dummy-left-qpd_observe-table_a2_table1_room3 dd)))
)
(:action act-uy1_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qpd_observe-table_a2_table1_room3 dd)(immediate-dummy-uy1_observe-table_a1_table2_room1 dd)(inroom table1 room3)(in a1 room1)(can-observe a1 table2)(available a1))
	:observe (inroom table2 room1)
)
(:action act-dummy-uy1_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qpd_observe-table_a2_table1_room3 dd)(inroom table1 room3)(in a1 room1)(can-observe a1 table2)(available a1)(not (dummy-left-uy1_observe-table_a1_table2_room1 dd))(not (dummy-right-uy1_observe-table_a1_table2_room1 dd)))
	:effect (and (immediate-dummy-uy1_observe-table_a1_table2_room1 dd) )
)
(:action dummy-left-uy1_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qpd_observe-table_a2_table1_room3 dd)(inroom table1 room3)(in a1 room1)(can-observe a1 table2)(available a1)(not (inroom table2 room1))(immediate-dummy-uy1_observe-table_a1_table2_room1 dd))
	:effect (and (not (immediate-dummy-uy1_observe-table_a1_table2_room1 dd))(dummy-left-uy1_observe-table_a1_table2_room1 dd))
)
(:action dummy-right-uy1_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qpd_observe-table_a2_table1_room3 dd)(inroom table1 room3)(in a1 room1)(can-observe a1 table2)(available a1)(inroom table2 room1)(immediate-dummy-uy1_observe-table_a1_table2_room1 dd))
	:effect (and (not (immediate-dummy-uy1_observe-table_a1_table2_room1 dd))(dummy-right-uy1_observe-table_a1_table2_room1 dd))
)
(:action goal-achieve-left-uy1_observe-table_a1_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uy1_observe-table_a1_table2_room1 dd)(not (inroom table2 room1))(inroom table1 room3))
	:effect (and (done-goal dd)(not (dummy-left-uy1_observe-table_a1_table2_room1 dd)))
)
(:action act-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uy1_observe-table_a1_table2_room1 dd)(immediate-dummy-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd)(inroom table2 room1)(inroom table1 room3)(in a1 room1)(can-observe a1 table3)(available a1))
	:observe (inroom table3 room1)
)
(:action act-dummy-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uy1_observe-table_a1_table2_room1 dd)(inroom table2 room1)(inroom table1 room3)(in a1 room1)(can-observe a1 table3)(available a1)(not (dummy-left-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd))(not (dummy-right-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd)))
	:effect (and (immediate-dummy-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd) )
)
(:action dummy-left-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uy1_observe-table_a1_table2_room1 dd)(inroom table2 room1)(inroom table1 room3)(in a1 room1)(can-observe a1 table3)(available a1)(not (inroom table3 room1))(immediate-dummy-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd))
	:effect (and (not (immediate-dummy-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd))(dummy-left-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd))
)
(:action dummy-right-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uy1_observe-table_a1_table2_room1 dd)(inroom table2 room1)(inroom table1 room3)(in a1 room1)(can-observe a1 table3)(available a1)(inroom table3 room1)(immediate-dummy-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd))
	:effect (and (not (immediate-dummy-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd))(dummy-right-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd))
)
(:action goal-achieve-left-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd)(inroom table2 room1)(inroom table1 room3))
	:effect (and (done-goal dd)(not (dummy-left-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd)))
)
(:action act-xaf_joint-lift-table_a1_a3_table1_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8g4_observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4_a3_table3_room1 dd)(inroom table2 room1)(inroom table1 room3)(available a1)(in a1 room1))
	:effect (and (pre-xaf_joint-lift-table_a1_a3_table1_room1 dd)(not (available a1)))
)
(:action act-a9m_joint-move-table_a3_a1_table1_room1_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-xaf_joint-lift-table_a1_a3_table1_room1 dd)(in a1 room1)(connected room1 room2))
	:effect (and (pre-a9m_joint-move-table_a3_a1_table1_room1_room2 dd)(not (pre-xaf_joint-lift-table_a1_a3_table1_room1 dd))(not (in a1 room1))(in a1 room2))
)
(:action act-vhk_joint-move-table_a1_a3_table1_room2_room3
	:parameters ( ?a - agent )
	:precondition (and (pre-a9m_joint-move-table_a3_a1_table1_room1_room2 dd)(in a1 room2)(connected room2 room3))
	:effect (and (pre-vhk_joint-move-table_a1_a3_table1_room2_room3 dd)(not (pre-a9m_joint-move-table_a3_a1_table1_room1_room2 dd))(not (in a1 room2))(in a1 room3))
)
(:action act-bqv_joint-move-table_a1_a3_table1_room3_room4
	:parameters ( ?a - agent )
	:precondition (and (pre-vhk_joint-move-table_a1_a3_table1_room2_room3 dd)(in a1 room3)(connected room3 room4))
	:effect (and (pre-bqv_joint-move-table_a1_a3_table1_room3_room4 dd)(not (pre-vhk_joint-move-table_a1_a3_table1_room2_room3 dd))(not (in a1 room3))(in a1 room4))
)
(:action act-iut_joint-drop-table-ausj_a1_a3_table1_room4_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-bqv_joint-move-table_a1_a3_table1_room3_room4 dd)(in a1 room4))
	:effect (and (pre-iut_joint-drop-table-ausj_a1_a3_table1_room4_dd dd)(not (pre-bqv_joint-move-table_a1_a3_table1_room3_room4 dd))(available a1))
)
(:action goal-achieve-iut_joint-drop-table-ausj_a1_a3_table1_room4_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-iut_joint-drop-table-ausj_a1_a3_table1_room4_dd dd))
	:effect (and (done-goal dd)(not (pre-iut_joint-drop-table-ausj_a1_a3_table1_room4_dd dd)))
)
)