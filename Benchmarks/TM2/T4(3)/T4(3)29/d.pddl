(define
(domain tablemover-2)
(:types agent table room dummy)
(:constants
	table1 - table
	table2 - table
	table3 - table
	a1 - agent
	a2 - agent
	a3 - agent
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
	(c-p-joint-drop-table-5b9 ?dd - dummy )
	(observe-joint-drop-table-5b9 ?dd - dummy )
	(c-p-joint-drop-table-k6y ?dd - dummy )
	(observe-joint-drop-table-k6y ?dd - dummy )
	(c-p-joint-drop-table-lyv ?dd - dummy )
	(observe-joint-drop-table-lyv ?dd - dummy )
	(c-p-joint-drop-table-w7f ?dd - dummy )
	(observe-joint-drop-table-w7f ?dd - dummy )
	(c-p-joint-drop-table-x26 ?dd - dummy )
	(observe-joint-drop-table-x26 ?dd - dummy )
	(c-p-joint-drop-table-5aw ?dd - dummy )
	(observe-joint-drop-table-5aw ?dd - dummy )
	(c-p-joint-lift-table-f2p ?dd - dummy )
	(observe-joint-lift-table-f2p ?dd - dummy )
	(c-p-joint-drop-table-eyk ?dd - dummy )
	(observe-joint-drop-table-eyk ?dd - dummy )
	(c-p-joint-drop-table-5hh ?dd - dummy )
	(observe-joint-drop-table-5hh ?dd - dummy )
	(c-p-joint-lift-table-hhv ?dd - dummy )
	(observe-joint-lift-table-hhv ?dd - dummy )
	(c-p-joint-drop-table-mynv-2mx ?dd - dummy )
	(observe-joint-drop-table-mynv-2mx ?dd - dummy )
	(c-p-joint-drop-table-ruq ?dd - dummy )
	(observe-joint-drop-table-ruq ?dd - dummy )
	(c-p-joint-drop-table-kpa ?dd - dummy )
	(observe-joint-drop-table-kpa ?dd - dummy )
	(c-p-joint-drop-table-rjm ?dd - dummy )
	(observe-joint-drop-table-rjm ?dd - dummy )
	(c-p-joint-drop-table-6qd ?dd - dummy)
	(observe-joint-drop-table-6qd ?dd - dummy)
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn-pr4
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(= ?a a3)(= ?t table3)(= ?i room1)(observe-joint-drop-table-6qd dd)
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-rjm dd)
		(observe-joint-drop-table-kpa dd)
		(observe-joint-drop-table-ruq dd)
		(observe-joint-lift-table-hhv dd)
		(observe-joint-drop-table-5hh dd)
		(observe-joint-lift-table-f2p dd)
		(observe-joint-drop-table-lyv dd)
		(observe-joint-drop-table-k6y dd)
		(observe-joint-drop-table-5b9 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2-3wn
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3))(not (= ?t table3))(not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-rjm dd)
		(observe-joint-drop-table-kpa dd)
		(observe-joint-drop-table-ruq dd)
		(observe-joint-lift-table-hhv dd)
		(observe-joint-drop-table-5hh dd)
		(observe-joint-lift-table-f2p dd)
		(observe-joint-drop-table-lyv dd)
		(observe-joint-drop-table-k6y dd)
		(observe-joint-drop-table-5b9 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj-1p2
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-kpa dd)
		(observe-joint-drop-table-ruq dd)
		(observe-joint-lift-table-hhv dd)
		(observe-joint-drop-table-5hh dd)
		(observe-joint-lift-table-f2p dd)
		(observe-joint-drop-table-lyv dd)
		(observe-joint-drop-table-k6y dd)
		(observe-joint-drop-table-5b9 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d-bsj
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-ruq dd)
		(observe-joint-lift-table-hhv dd)
		(observe-joint-drop-table-5hh dd)
		(observe-joint-lift-table-f2p dd)
		(observe-joint-drop-table-lyv dd)
		(observe-joint-drop-table-k6y dd)
		(observe-joint-drop-table-5b9 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-hit-u0y-xsp-cpw-us5-29d
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-lift-table-hhv dd)
		(observe-joint-drop-table-5hh dd)
		(observe-joint-lift-table-f2p dd)
		(observe-joint-drop-table-lyv dd)
		(observe-joint-drop-table-k6y dd)
		(observe-joint-drop-table-5b9 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-hit-u0y-xsp-cpw-us5
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-5hh dd)
		(observe-joint-lift-table-f2p dd)
		(observe-joint-drop-table-lyv dd)
		(observe-joint-drop-table-k6y dd)
		(observe-joint-drop-table-5b9 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-hit-u0y-xsp-cpw
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-lift-table-f2p dd)
		(observe-joint-drop-table-lyv dd)
		(observe-joint-drop-table-k6y dd)
		(observe-joint-drop-table-5b9 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-hit-u0y-xsp
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-lyv dd)
		(observe-joint-drop-table-k6y dd)
		(observe-joint-drop-table-5b9 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-hit-u0y
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-k6y dd)
		(observe-joint-drop-table-5b9 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-hit
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-5b9 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-1c3-34a-yia
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(= ?a a3)
		(= ?t table3)
		(= ?i room2)
		(observe-joint-drop-table-mynv-2mx dd)
		(observe-joint-drop-table-5aw dd)
		(observe-joint-drop-table-w7f dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-1c3-34a
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room2)
		(observe-joint-drop-table-5aw dd)
		(observe-joint-drop-table-w7f dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-1c3
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room2)
		(observe-joint-drop-table-w7f dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-gak-2vy
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(= ?a a2)
		(= ?t table3)
		(= ?i room2)
		(observe-joint-drop-table-eyk dd)
		(observe-joint-drop-table-x26 dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-gak
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a2)) (not (= ?t table3)) (not (= ?i room2)))
		(= ?a a2)
		(= ?t table3)
		(= ?i room2)
		(observe-joint-drop-table-x26 dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(in ?a ?i)
		(can-observe ?a ?t)
		(available ?a)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a2)) (not (= ?t table3)) (not (= ?i room2)))
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(in ?a ?i)
		(can-observe ?a ?t)
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
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
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
(:action joint-lift-table-27ek
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a3)
		(= ?a2 a1)
		(= ?t table3)
		(= ?r1 room2)
		(c-p-joint-lift-table-hhv ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(available ?a1)
		(in ?a1 ?r1)
		(available ?a2)
		(in ?a2 ?r1)
		(not (same-agent ?a1 ?a2))
		(inroom ?t ?r1)
	)
	:effect (and 
		
(and 
	(when (c-p-joint-lift-table-hhv ?dd) (not (c-p-joint-lift-table-hhv ?dd)))(lifting ?a1 ?t ?r1) (not (available ?a1)) (lifting ?a2 ?t ?r1) (not (available ?a2)) (not (inroom ?t ?r1))) )
)
(:action commit-zqawc-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-lift-table-hhv dd))
	)
	:effect (and 
		(c-p-joint-lift-table-hhv dd) )
)
(:action obs-uwz53-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-lift-table-hhv dd))
	)
	:effect (and 
		(observe-joint-lift-table-hhv dd) )
)
(:action joint-lift-table-gtk6
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a3)
		(= ?t table3)
		(= ?r1 room2)
		(c-p-joint-lift-table-f2p ?dd)
		(available ?a1)
		(in ?a1 ?r1)
		(available ?a2)
		(in ?a2 ?r1)
		(not (same-agent ?a1 ?a2))
		(inroom ?t ?r1)
	)
	:effect (and 
		
(and 
	(when (c-p-joint-lift-table-f2p ?dd) (not (c-p-joint-lift-table-f2p ?dd)))(lifting ?a1 ?t ?r1) (not (available ?a1)) (lifting ?a2 ?t ?r1) (not (available ?a2)) (not (inroom ?t ?r1))) )
)
(:action commit-iaor2-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-lift-table-f2p dd))
	)
	:effect (and 
		(c-p-joint-lift-table-f2p dd) )
)
(:action obs-ufsut-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-lift-table-f2p dd))
	)
	:effect (and 
		(observe-joint-lift-table-f2p dd) )
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
		(or (not (= ?a1 a2))(not (= ?a2 a1))(not (= ?t table1))(not (= ?r1 room4)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room3)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
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
(:action joint-drop-table-svaw
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a2)(= ?a2 a1)(= ?t table1)(= ?r1 room4)(c-p-joint-drop-table-6qd ?dd)
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room3)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and (when (c-p-joint-drop-table-6qd ?dd) (not (c-p-joint-drop-table-6qd ?dd)) )
		(inroom ?t ?r1)
		(available ?a1)
		(available ?a2)
		(not (lifting ?a1 ?t ?r1))
		(not (lifting ?a2 ?t ?r1)))
)
(:action commit-sm2bp-a1-a2-a3
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-drop-table-6qd dd)) )
	:effect (and (c-p-joint-drop-table-6qd dd))
)
(:action obs-48v34-a1-a2-a3
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-drop-table-6qd dd)))
	:effect (and (observe-joint-drop-table-6qd dd))
)
(:action joint-drop-table-6xq5
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a3)
		(= ?a2 a1)
		(= ?t table1)
		(= ?r1 room4)
		(c-p-joint-drop-table-rjm ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room3)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-rjm ?dd) (not (c-p-joint-drop-table-rjm ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-2nbtl-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-rjm dd))
	)
	:effect (and 
		(c-p-joint-drop-table-rjm dd) )
)
(:action obs-gcwir-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-rjm dd))
	)
	:effect (and 
		(observe-joint-drop-table-rjm dd) )
)
(:action joint-drop-table-89b9
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a2)
		(= ?t table2)
		(= ?r1 room3)
		(c-p-joint-drop-table-kpa ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-kpa ?dd) (not (c-p-joint-drop-table-kpa ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-5b3z0-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-kpa dd))
	)
	:effect (and 
		(c-p-joint-drop-table-kpa dd) )
)
(:action obs-m2epb-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-kpa dd))
	)
	:effect (and 
		(observe-joint-drop-table-kpa dd) )
)
(:action joint-drop-table-utjq
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a2)
		(= ?t table2)
		(= ?r1 room2)
		(c-p-joint-drop-table-ruq ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-ruq ?dd) (not (c-p-joint-drop-table-ruq ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-xjucl-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-ruq dd))
	)
	:effect (and 
		(c-p-joint-drop-table-ruq dd) )
)
(:action obs-a18q1-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-ruq dd))
	)
	:effect (and 
		(observe-joint-drop-table-ruq dd) )
)
(:action joint-drop-table-obty
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a2)
		(= ?t table1)
		(= ?r1 room4)
		(c-p-joint-drop-table-5hh ?dd)
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-5hh ?dd) (not (c-p-joint-drop-table-5hh ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-y05nu-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-5hh dd))
	)
	:effect (and 
		(c-p-joint-drop-table-5hh dd) )
)
(:action obs-menct-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-5hh dd))
	)
	:effect (and 
		(observe-joint-drop-table-5hh dd) )
)
(:action joint-drop-table-af5n
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a2)
		(= ?a2 a1)
		(= ?t table2)
		(= ?r1 room1)
		(c-p-joint-drop-table-eyk ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-eyk ?dd) (not (c-p-joint-drop-table-eyk ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-302m9-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-eyk dd))
	)
	:effect (and 
		(c-p-joint-drop-table-eyk dd) )
)
(:action obs-pkrpq-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-eyk dd))
	)
	:effect (and 
		(observe-joint-drop-table-eyk dd) )
)
(:action joint-drop-table-ausj
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a3)
		(= ?t table1)
		(= ?r1 room4)
		(c-p-joint-drop-table-5aw ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-5aw ?dd) (not (c-p-joint-drop-table-5aw ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-2j9a1-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-5aw dd))
	)
	:effect (and 
		(c-p-joint-drop-table-5aw dd) )
)
(:action obs-88qpx-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-5aw dd))
	)
	:effect (and 
		(observe-joint-drop-table-5aw dd) )
)
(:action joint-drop-table-qfas
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a2)
		(= ?t table2)
		(= ?r1 room1)
		(c-p-joint-drop-table-x26 ?dd)
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-x26 ?dd) (not (c-p-joint-drop-table-x26 ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-eeob6-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-x26 dd))
	)
	:effect (and 
		(c-p-joint-drop-table-x26 dd) )
)
(:action obs-4jmor-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-x26 dd))
	)
	:effect (and 
		(observe-joint-drop-table-x26 dd) )
)
(:action joint-drop-table-u69e
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a3)
		(= ?a2 a1)
		(= ?t table3)
		(= ?r1 room2)
		(c-p-joint-drop-table-w7f ?dd)
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-w7f ?dd) (not (c-p-joint-drop-table-w7f ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-0ih37-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-w7f dd))
	)
	:effect (and 
		(c-p-joint-drop-table-w7f dd) )
)
(:action obs-szd0p-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-w7f dd))
	)
	:effect (and 
		(observe-joint-drop-table-w7f dd) )
)
(:action joint-drop-table-qeba
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a3)
		(= ?a2 a1)
		(= ?t table2)
		(= ?r1 room1)
		(c-p-joint-drop-table-lyv ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-lyv ?dd) (not (c-p-joint-drop-table-lyv ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-a9q5x-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-lyv dd))
	)
	:effect (and 
		(c-p-joint-drop-table-lyv dd) )
)
(:action obs-2djx8-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-lyv dd))
	)
	:effect (and 
		(observe-joint-drop-table-lyv dd) )
)
(:action joint-drop-table-mynv
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)) (not (= ?dd dd)))
		(= ?a1 a1)
		(= ?a2 a3)
		(= ?t table3)
		(= ?r1 room2)
		(c-p-joint-drop-table-k6y ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-k6y ?dd) (not (c-p-joint-drop-table-k6y ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action joint-drop-table-mynv-t4v1
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a3)
		(= ?t table3)
		(= ?r1 room2)
		(= ?dd dd)
		(c-p-joint-drop-table-mynv-2mx ?dd)
		(c-p-joint-drop-table-k6y ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-mynv-2mx ?dd) (not (c-p-joint-drop-table-mynv-2mx ?dd)))
	(when (c-p-joint-drop-table-k6y ?dd) (not (c-p-joint-drop-table-k6y ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-v8d1a-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-mynv-2mx dd))
	)
	:effect (and 
		(c-p-joint-drop-table-mynv-2mx dd) )
)
(:action obs-r33xx-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-mynv-2mx dd))
	)
	:effect (and 
		(observe-joint-drop-table-mynv-2mx dd) )
)
(:action commit-tqhu7-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-k6y dd))
	)
	:effect (and 
		(c-p-joint-drop-table-k6y dd) )
)
(:action obs-1dyyx-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-k6y dd))
	)
	:effect (and 
		(observe-joint-drop-table-k6y dd) )
)
(:action joint-drop-table-9o7d
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a3)
		(= ?t table2)
		(= ?r1 room1)
		(c-p-joint-drop-table-5b9 ?dd)
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t ?r1)
		(lifting ?a2 ?t ?r1)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-5b9 ?dd) (not (c-p-joint-drop-table-5b9 ?dd)))(inroom ?t ?r1) (available ?a1) (available ?a2) (not (lifting ?a1 ?t ?r1)) (not (lifting ?a2 ?t ?r1))) )
)
(:action commit-g324g-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-5b9 dd))
	)
	:effect (and 
		(c-p-joint-drop-table-5b9 dd) )
)
(:action obs-84jm4-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-5b9 dd))
	)
	:effect (and 
		(observe-joint-drop-table-5b9 dd) )
)
)
