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
	(init-uwm_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-uwm_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-uwm_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-u4b_observe-table_a2_table3_room2 ?dd - dummy)
	(dummy-left-u4b_observe-table_a2_table3_room2 ?dd - dummy)
	(pre-6ad_joint-lift-table_a2_a3_table3_room1 ?dd - dummy)
	(pre-7m0_joint-move-table_a2_a3_table3_room1_room2 ?dd - dummy)
	(pre-gpx_joint-drop-table_a2_a3_table3_room2 ?dd - dummy)
	(pre-x01_joint-lift-table_a2_a3_table2_room2 ?dd - dummy)
	(pre-ygi_joint-move-table_a2_a3_table2_room2_room1 ?dd - dummy)
	(pre-pds_joint-drop-table_a2_a3_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-u4b_observe-table_a2_table3_room2 ?dd - dummy)
	(pre-ofa_joint-lift-table_a2_a3_table2_room2 ?dd - dummy)
	(pre-0qa_joint-move-table_a2_a3_table2_room2_room1 ?dd - dummy)
	(pre-sfl_joint-drop-table_a2_a3_table2_room1 ?dd - dummy)
	(dummy-right-uwm_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-59c_observe-table_a3_table3_room1 ?dd - dummy)
	(dummy-left-59c_observe-table_a3_table3_room1 ?dd - dummy)
	(dummy-right-59c_observe-table_a3_table3_room1 ?dd - dummy)
	(pre-9p9_joint-lift-table_a2_a3_table3_room1 ?dd - dummy)
	(pre-nz7_joint-move-table_a2_a3_table3_room1_room2 ?dd - dummy)
	(pre-guj_joint-drop-table_a2_a3_table3_room2 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-uwm_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-uwm_observe-table_a3_table2_room1 dd)(immediate-dummy-uwm_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2))
	:observe (inroom table2 room1)
)
(:action act-dummy-uwm_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-uwm_observe-table_a3_table2_room1 dd)(not (dummy-left-uwm_observe-table_a3_table2_room1 dd))(not (dummy-right-uwm_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-uwm_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-uwm_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-uwm_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(not (inroom table2 room1))(immediate-dummy-uwm_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-uwm_observe-table_a3_table2_room1 dd))(not (immediate-dummy-uwm_observe-table_a3_table2_room1 dd))(dummy-left-uwm_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-uwm_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-uwm_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(inroom table2 room1)(immediate-dummy-uwm_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-uwm_observe-table_a3_table2_room1 dd))(not (immediate-dummy-uwm_observe-table_a3_table2_room1 dd))(dummy-right-uwm_observe-table_a3_table2_room1 dd))
)
(:action act-u4b_observe-table_a2_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uwm_observe-table_a3_table2_room1 dd)(immediate-dummy-u4b_observe-table_a2_table3_room2 dd)(not (inroom table2 room1))(in a3 room2)(can-observe a3 table3))
	:observe (inroom table3 room2)
)
(:action act-dummy-u4b_observe-table_a2_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uwm_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a3 room2)(can-observe a3 table3)(not (dummy-left-u4b_observe-table_a2_table3_room2 dd))(not (dummy-right-u4b_observe-table_a2_table3_room2 dd)))
	:effect (and (immediate-dummy-u4b_observe-table_a2_table3_room2 dd) )
)
(:action dummy-left-u4b_observe-table_a2_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uwm_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a3 room2)(can-observe a3 table3)(not (inroom table3 room2))(immediate-dummy-u4b_observe-table_a2_table3_room2 dd))
	:effect (and (not (immediate-dummy-u4b_observe-table_a2_table3_room2 dd))(dummy-left-u4b_observe-table_a2_table3_room2 dd))
)
(:action dummy-right-u4b_observe-table_a2_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uwm_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(in a3 room2)(can-observe a3 table3)(inroom table3 room2)(immediate-dummy-u4b_observe-table_a2_table3_room2 dd))
	:effect (and (not (immediate-dummy-u4b_observe-table_a2_table3_room2 dd))(dummy-right-u4b_observe-table_a2_table3_room2 dd))
)
(:action act-6ad_joint-lift-table_a2_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u4b_observe-table_a2_table3_room2 dd)(not (inroom table3 room2))(not (inroom table2 room1))(available a3)(in a3 room1))
	:effect (and (pre-6ad_joint-lift-table_a2_a3_table3_room1 dd)(not (available a3)))
)
(:action act-7m0_joint-move-table_a2_a3_table3_room1_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-6ad_joint-lift-table_a2_a3_table3_room1 dd)(in a3 room1)(connected room1 room2))
	:effect (and (pre-7m0_joint-move-table_a2_a3_table3_room1_room2 dd)(not (pre-6ad_joint-lift-table_a2_a3_table3_room1 dd))(not (in a3 room1))(in a3 room2))
)
(:action act-gpx_joint-drop-table_a2_a3_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-7m0_joint-move-table_a2_a3_table3_room1_room2 dd)(in a3 room2))
	:effect (and (pre-gpx_joint-drop-table_a2_a3_table3_room2 dd)(not (pre-7m0_joint-move-table_a2_a3_table3_room1_room2 dd))(available a3))
)
(:action act-x01_joint-lift-table_a2_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-gpx_joint-drop-table_a2_a3_table3_room2 dd)(available a3)(in a3 room2))
	:effect (and (pre-x01_joint-lift-table_a2_a3_table2_room2 dd)(not (pre-gpx_joint-drop-table_a2_a3_table3_room2 dd))(not (available a3)))
)
(:action act-ygi_joint-move-table_a2_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-x01_joint-lift-table_a2_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-ygi_joint-move-table_a2_a3_table2_room2_room1 dd)(not (pre-x01_joint-lift-table_a2_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-pds_joint-drop-table_a2_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-ygi_joint-move-table_a2_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-pds_joint-drop-table_a2_a3_table2_room1 dd)(not (pre-ygi_joint-move-table_a2_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-pds_joint-drop-table_a2_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-pds_joint-drop-table_a2_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-pds_joint-drop-table_a2_a3_table2_room1 dd)))
)
(:action act-ofa_joint-lift-table_a2_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u4b_observe-table_a2_table3_room2 dd)(inroom table3 room2)(not (inroom table2 room1))(available a3)(in a3 room2))
	:effect (and (pre-ofa_joint-lift-table_a2_a3_table2_room2 dd)(not (available a3)))
)
(:action act-0qa_joint-move-table_a2_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-ofa_joint-lift-table_a2_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-0qa_joint-move-table_a2_a3_table2_room2_room1 dd)(not (pre-ofa_joint-lift-table_a2_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-sfl_joint-drop-table_a2_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-0qa_joint-move-table_a2_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-sfl_joint-drop-table_a2_a3_table2_room1 dd)(not (pre-0qa_joint-move-table_a2_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-sfl_joint-drop-table_a2_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-sfl_joint-drop-table_a2_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-sfl_joint-drop-table_a2_a3_table2_room1 dd)))
)
(:action act-59c_observe-table_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uwm_observe-table_a3_table2_room1 dd)(immediate-dummy-59c_observe-table_a3_table3_room1 dd)(inroom table2 room1)(in a3 room1)(can-observe a3 table3))
	:observe (inroom table3 room1)
)
(:action act-dummy-59c_observe-table_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uwm_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a3 room1)(can-observe a3 table3)(not (dummy-left-59c_observe-table_a3_table3_room1 dd))(not (dummy-right-59c_observe-table_a3_table3_room1 dd)))
	:effect (and (immediate-dummy-59c_observe-table_a3_table3_room1 dd) )
)
(:action dummy-left-59c_observe-table_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uwm_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a3 room1)(can-observe a3 table3)(not (inroom table3 room1))(immediate-dummy-59c_observe-table_a3_table3_room1 dd))
	:effect (and (not (immediate-dummy-59c_observe-table_a3_table3_room1 dd))(dummy-left-59c_observe-table_a3_table3_room1 dd))
)
(:action dummy-right-59c_observe-table_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uwm_observe-table_a3_table2_room1 dd)(inroom table2 room1)(in a3 room1)(can-observe a3 table3)(inroom table3 room1)(immediate-dummy-59c_observe-table_a3_table3_room1 dd))
	:effect (and (not (immediate-dummy-59c_observe-table_a3_table3_room1 dd))(dummy-right-59c_observe-table_a3_table3_room1 dd))
)
(:action goal-achieve-left-59c_observe-table_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-59c_observe-table_a3_table3_room1 dd)(not (inroom table3 room1))(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-left-59c_observe-table_a3_table3_room1 dd)))
)
(:action act-9p9_joint-lift-table_a2_a3_table3_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-59c_observe-table_a3_table3_room1 dd)(inroom table3 room1)(inroom table2 room1)(available a3)(in a3 room1))
	:effect (and (pre-9p9_joint-lift-table_a2_a3_table3_room1 dd)(not (available a3)))
)
(:action act-nz7_joint-move-table_a2_a3_table3_room1_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-9p9_joint-lift-table_a2_a3_table3_room1 dd)(in a3 room1)(connected room1 room2))
	:effect (and (pre-nz7_joint-move-table_a2_a3_table3_room1_room2 dd)(not (pre-9p9_joint-lift-table_a2_a3_table3_room1 dd))(not (in a3 room1))(in a3 room2))
)
(:action act-guj_joint-drop-table_a2_a3_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-nz7_joint-move-table_a2_a3_table3_room1_room2 dd)(in a3 room2))
	:effect (and (pre-guj_joint-drop-table_a2_a3_table3_room2 dd)(not (pre-nz7_joint-move-table_a2_a3_table3_room1_room2 dd))(available a3))
)
(:action goal-achieve-guj_joint-drop-table_a2_a3_table3_room2
	:parameters ( ?a - agent )
	:precondition (and (pre-guj_joint-drop-table_a2_a3_table3_room2 dd))
	:effect (and (done-goal dd)(not (pre-guj_joint-drop-table_a2_a3_table3_room2 dd)))
)
)