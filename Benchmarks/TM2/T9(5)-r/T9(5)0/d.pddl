(define
(domain tablemover-2)
(:types agent table room dummy)
(:constants
	table1 - table
	table2 - table
	table3 - table
	table4 - table
	table5 - table
	a1 - agent
	a2 - agent
	a3 - agent
	a4 - agent
	a5 - agent
	room1 - room
	room2 - room
	room3 - room
	room4 - room
	dd - dummy
)
(:predicates
	(lifting ?a - agent ?t - table ?r - room )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(same-agent ?a1 - agent ?a2 - agent )
	(can-observe ?a - agent ?t - table )
	(c-p-joint-drop-table-bed ?dd - dummy)
	(observe-joint-drop-table-bed ?dd - dummy)
)
(:action observe-table-4hd
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(= ?a a3)(= ?t table4)(= ?i room1)(observe-joint-drop-table-bed dd)
		(in ?a ?i)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3))(not (= ?t table4))(not (= ?i room1)))
		(in ?a ?i)
		(available ?a)
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
		
(and (lifting ?a1 ?t ?r1) (not (available ?a1)) (lifting ?a2 ?t ?r1) (not (available ?a2)) (not (inroom ?t ?r1))) )
)
(:action joint-move-table
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?r2 - room )
	:precondition (and 
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(not (same-agent ?a1 ?a2))
		(connected ?r1 ?r2)
	)
	:effect (and 
		
(and (not (in ?a1 ?r1)) (in ?a1 ?r2) (not (in ?a2 ?r1)) (in ?a2 ?r2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1)) (lifting ?a1 ?t ?r2) (lifting ?a2 ?t ?r2)) )
)
(:action joint-drop-table
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room )
	:precondition (and 
		(or (not (= ?a1 a1))(not (= ?a2 a3))(not (= ?t table4))(not (= ?r1 room2)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		(inroom ?t ?r1)
		(available ?a1)
		(available ?a2)
		(not (lifting ?a1 ?t ?r1))
		(not (lifting ?a2 ?t ?r1)))
)
(:action joint-drop-table-yzbj
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)(= ?a2 a3)(= ?t table4)(= ?r1 room2)(c-p-joint-drop-table-bed ?dd)
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and (when (c-p-joint-drop-table-bed ?dd) (not (c-p-joint-drop-table-bed ?dd)) )
		(inroom ?t ?r1)
		(available ?a1)
		(available ?a2)
		(not (lifting ?a1 ?t ?r1))
		(not (lifting ?a2 ?t ?r1)))
)
(:action commit-wm43n-a1-a2-a3-a4-a5
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-drop-table-bed dd)) )
	:effect (and (c-p-joint-drop-table-bed dd))
)
(:action obs-z9qck-a1-a2-a3-a4-a5
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-drop-table-bed dd)))
	:effect (and (observe-joint-drop-table-bed dd))
)
)
