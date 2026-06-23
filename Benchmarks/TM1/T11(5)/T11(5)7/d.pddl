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
	a5 - agent
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
	(can-observe ?a1 - agent ?table - table )
	(c-p-joint-drop-table-rq7 ?dd - dummy )
	(observe-joint-drop-table-rq7 ?dd - dummy )
	(c-p-joint-drop-table-xzy ?dd - dummy )
	(observe-joint-drop-table-xzy ?dd - dummy )
	(c-p-joint-drop-table-4of ?dd - dummy )
	(observe-joint-drop-table-4of ?dd - dummy )
	(c-p-joint-drop-table-goh ?dd - dummy)
	(observe-joint-drop-table-goh ?dd - dummy)
)
(:action observe-table-hpt
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(= ?a a3)
		(= ?t table1)
		(= ?i room3)
		(observe-joint-drop-table-rq7 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-vjr-8gg-7n2
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(= ?a a4)(= ?t table1)(= ?i room3)(observe-joint-drop-table-goh dd)
		(= ?a a4)
		(= ?t table1)
		(= ?i room3)
		(observe-joint-drop-table-4of dd)
		(observe-joint-drop-table-xzy dd)
		(or (not (= ?a a3)) (not (= ?t table1)) (not (= ?i room3)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-vjr-8gg
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a4))(not (= ?t table1))(not (= ?i room3)))
		(= ?a a4)
		(= ?t table1)
		(= ?i room3)
		(observe-joint-drop-table-4of dd)
		(observe-joint-drop-table-xzy dd)
		(or (not (= ?a a3)) (not (= ?t table1)) (not (= ?i room3)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-vjr
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a4)) (not (= ?t table1)) (not (= ?i room3)))
		(= ?a a4)
		(= ?t table1)
		(= ?i room3)
		(observe-joint-drop-table-xzy dd)
		(or (not (= ?a a3)) (not (= ?t table1)) (not (= ?i room3)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a4)) (not (= ?t table1)) (not (= ?i room3)))
		(or (not (= ?a a3)) (not (= ?t table1)) (not (= ?i room3)))
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
		(or (not (= ?a1 a2))(not (= ?a2 a1))(not (= ?t table2))(not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a2)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
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
(:action joint-drop-table-vi7p
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a2)(= ?a2 a1)(= ?t table2)(= ?r1 room1)(c-p-joint-drop-table-goh ?dd)
		(or (not (= ?a1 a3)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a2)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and (when (c-p-joint-drop-table-goh ?dd) (not (c-p-joint-drop-table-goh ?dd)) )
		(not (lifting ?a1 ?t))
		(not (lifting ?a2 ?t))
		(inroom ?t ?r1)
		(available ?a1)
		(available ?a2))
)
(:action commit-c8a6f-a1-a2-a3-a4-a5
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-drop-table-goh dd)) )
	:effect (and (c-p-joint-drop-table-goh dd))
)
(:action obs-ubdbt-a1-a2-a3-a4-a5
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-drop-table-goh dd)))
	:effect (and (observe-joint-drop-table-goh dd))
)
(:action joint-drop-table-ij8b
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a3)
		(= ?a2 a2)
		(= ?t table2)
		(= ?r1 room1)
		(c-p-joint-drop-table-4of ?dd)
		(or (not (= ?a1 a2)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-4of ?dd) (not (c-p-joint-drop-table-4of ?dd)))(not (lifting ?a1 ?t)) (not (lifting ?a2 ?t)) (inroom ?t ?r1) (available ?a1) (available ?a2)) )
)
(:action commit-ledyv-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-4of dd))
	)
	:effect (and 
		(c-p-joint-drop-table-4of dd) )
)
(:action obs-bsbx4-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-4of dd))
	)
	:effect (and 
		(observe-joint-drop-table-4of dd) )
)
(:action joint-drop-table-79ba
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a2)
		(= ?a2 a3)
		(= ?t table2)
		(= ?r1 room1)
		(c-p-joint-drop-table-xzy ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-xzy ?dd) (not (c-p-joint-drop-table-xzy ?dd)))(not (lifting ?a1 ?t)) (not (lifting ?a2 ?t)) (inroom ?t ?r1) (available ?a1) (available ?a2)) )
)
(:action commit-j11wa-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-xzy dd))
	)
	:effect (and 
		(c-p-joint-drop-table-xzy dd) )
)
(:action obs-rob7l-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-xzy dd))
	)
	:effect (and 
		(observe-joint-drop-table-xzy dd) )
)
(:action joint-drop-table-gdps
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a2)
		(= ?t table2)
		(= ?r1 room1)
		(c-p-joint-drop-table-rq7 ?dd)
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-rq7 ?dd) (not (c-p-joint-drop-table-rq7 ?dd)))(not (lifting ?a1 ?t)) (not (lifting ?a2 ?t)) (inroom ?t ?r1) (available ?a1) (available ?a2)) )
)
(:action commit-hqtwo-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-rq7 dd))
	)
	:effect (and 
		(c-p-joint-drop-table-rq7 dd) )
)
(:action obs-k3yak-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-rq7 dd))
	)
	:effect (and 
		(observe-joint-drop-table-rq7 dd) )
)
)
