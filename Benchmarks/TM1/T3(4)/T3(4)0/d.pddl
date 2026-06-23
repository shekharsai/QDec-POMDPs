(define
(domain tablemover-2)
(:types agent table room dummy)
(:constants
	table1 - table
	table2 - table
	table3 - table
	table4 - table
	a1 - agent
	a2 - agent
	a3 - agent
	a4 - agent
	room1 - room
	room2 - room
	room3 - room
	room4 - room
	room5 - room
	room6 - room
	room7 - room
	dd - dummy
)
(:predicates
	(lifting ?a - agent ?t - table )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(same-agent ?a1 - agent ?a2 - agent )
	(can-observe ?a - agent ?t - table )
	(c-p-joint-drop-table-lxz ?dd - dummy)
	(observe-joint-drop-table-lxz ?dd - dummy)
)
(:action observe-table-q2z
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(= ?a a4)(= ?t table4)(= ?i room6)(observe-joint-drop-table-lxz dd)
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a4))(not (= ?t table4))(not (= ?i room6)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action move-agent
	:parameters ( ?a - agent ?r1 - room ?r2 - room )
	:precondition (and 
		(in ?a ?r1)
		(connected ?r1 ?r2)
		(available ?a)
	)
	:effect (and 
		
(and (not (in ?a ?r1)) (in ?a ?r2)) )
)
(:action joint-move-table
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?r2 - room )
	:precondition (and 
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(not (same-agent ?a1 ?a2))
		(connected ?r1 ?r2)
	)
	:effect (and 
		
(and (not (in ?a1 ?r1)) (in ?a1 ?r2) (not (in ?a2 ?r1)) (in ?a2 ?r2)) )
)
(:action joint-lift-table
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room )
	:precondition (and 
		(available ?a1)
		(in ?a1 ?r1)
		(available ?a2)
		(in ?a2 ?r1)
		(not (same-agent ?a1 ?a2))
		(inroom ?t ?r1)
	)
	:effect (and 
		
(and (lifting ?a1 ?t) (not (available ?a1)) (lifting ?a2 ?t) (not (available ?a2)) (not (inroom ?t ?r1))) )
)
(:action joint-drop-table
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room )
	:precondition (and 
		(or (not (= ?a1 a1))(not (= ?a2 a2))(not (= ?t table3))(not (= ?r1 room3)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		(not (lifting ?a1 ?t))
		(not (lifting ?a2 ?t))
		(inroom ?t ?r1)
		(available ?a1)
		(available ?a2))
)
(:action joint-drop-table-u70f
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)(= ?a2 a2)(= ?t table3)(= ?r1 room3)(c-p-joint-drop-table-lxz ?dd)
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and (when (c-p-joint-drop-table-lxz ?dd) (not (c-p-joint-drop-table-lxz ?dd)) )
		(not (lifting ?a1 ?t))
		(not (lifting ?a2 ?t))
		(inroom ?t ?r1)
		(available ?a1)
		(available ?a2))
)
(:action commit-v9pcj-a1-a2-a3-a4
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-drop-table-lxz dd)) )
	:effect (and (c-p-joint-drop-table-lxz dd))
)
(:action obs-lquy8-a1-a2-a3-a4
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-drop-table-lxz dd)))
	:effect (and (observe-joint-drop-table-lxz dd))
)
)
