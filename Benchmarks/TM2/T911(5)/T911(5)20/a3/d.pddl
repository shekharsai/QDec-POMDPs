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
	(lifting ?a - agent ?t - table ?r - room )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(can-observe ?a1 - agent ?table - table )
	(init-cha_observe-table_a3_table2_room1 ?dd - dummy)
	(immediate-dummy-cha_observe-table_a3_table2_room1 ?dd - dummy)
	(dummy-left-cha_observe-table_a3_table2_room1 ?dd - dummy)
	(pre-2rq_joint-lift-table_a1_a3_table2_room2 ?dd - dummy)
	(pre-hts_joint-move-table_a1_a3_table2_room2_room1 ?dd - dummy)
	(pre-zbf_joint-drop-table_a1_a3_table2_room1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-cha_observe-table_a3_table2_room1 ?dd - dummy)
)

(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room)
	:precondition (and (in ?a ?r1) (connected ?r1 ?r2) (available ?a) )
	:effect (and (not (in ?a ?r1)) (in ?a ?r2) )
)
(:action act-cha_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-cha_observe-table_a3_table2_room1 dd)(immediate-dummy-cha_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(available a3))
	:observe (inroom table2 room1)
)
(:action act-dummy-cha_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-cha_observe-table_a3_table2_room1 dd)(not (dummy-left-cha_observe-table_a3_table2_room1 dd))(not (dummy-right-cha_observe-table_a3_table2_room1 dd)))
	:effect (and (immediate-dummy-cha_observe-table_a3_table2_room1 dd) )
)
(:action dummy-left-cha_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-cha_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(available a3)(not (inroom table2 room1))(immediate-dummy-cha_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-cha_observe-table_a3_table2_room1 dd))(not (immediate-dummy-cha_observe-table_a3_table2_room1 dd))(dummy-left-cha_observe-table_a3_table2_room1 dd))
)
(:action dummy-right-cha_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (init-cha_observe-table_a3_table2_room1 dd)(in a3 room1)(can-observe a3 table2)(available a3)(inroom table2 room1)(immediate-dummy-cha_observe-table_a3_table2_room1 dd))
	:effect (and (not (init-cha_observe-table_a3_table2_room1 dd))(not (immediate-dummy-cha_observe-table_a3_table2_room1 dd))(dummy-right-cha_observe-table_a3_table2_room1 dd))
)
(:action act-2rq_joint-lift-table_a1_a3_table2_room2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-cha_observe-table_a3_table2_room1 dd)(not (inroom table2 room1))(available a3)(in a3 room2))
	:effect (and (pre-2rq_joint-lift-table_a1_a3_table2_room2 dd)(not (available a3)))
)
(:action act-hts_joint-move-table_a1_a3_table2_room2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-2rq_joint-lift-table_a1_a3_table2_room2 dd)(in a3 room2)(connected room2 room1))
	:effect (and (pre-hts_joint-move-table_a1_a3_table2_room2_room1 dd)(not (pre-2rq_joint-lift-table_a1_a3_table2_room2 dd))(not (in a3 room2))(in a3 room1))
)
(:action act-zbf_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-hts_joint-move-table_a1_a3_table2_room2_room1 dd)(in a3 room1))
	:effect (and (pre-zbf_joint-drop-table_a1_a3_table2_room1 dd)(not (pre-hts_joint-move-table_a1_a3_table2_room2_room1 dd))(available a3))
)
(:action goal-achieve-zbf_joint-drop-table_a1_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (pre-zbf_joint-drop-table_a1_a3_table2_room1 dd))
	:effect (and (done-goal dd)(not (pre-zbf_joint-drop-table_a1_a3_table2_room1 dd)))
)
(:action goal-achieve-right-cha_observe-table_a3_table2_room1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-cha_observe-table_a3_table2_room1 dd)(inroom table2 room1))
	:effect (and (done-goal dd)(not (dummy-right-cha_observe-table_a3_table2_room1 dd)))
)
)