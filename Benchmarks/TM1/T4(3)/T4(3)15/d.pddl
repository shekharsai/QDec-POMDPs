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
	(lifting ?a - agent ?t - table )
	(inroom ?t - table ?r - room )
	(in ?a - agent ?r - room )
	(connected ?r1 - room ?r2 - room )
	(available ?a - agent )
	(same-agent ?a1 - agent ?a2 - agent )
	(can-observe ?a - agent ?t - table )
	(c-p-joint-drop-table-pm5 ?dd - dummy )
	(observe-joint-drop-table-pm5 ?dd - dummy )
	(c-p-joint-drop-table-yrg ?dd - dummy )
	(observe-joint-drop-table-yrg ?dd - dummy )
	(c-p-joint-drop-table-w5a ?dd - dummy )
	(observe-joint-drop-table-w5a ?dd - dummy )
	(c-p-joint-drop-table-s0o ?dd - dummy )
	(observe-joint-drop-table-s0o ?dd - dummy )
	(c-p-joint-drop-table-8se ?dd - dummy )
	(observe-joint-drop-table-8se ?dd - dummy )
	(c-p-joint-drop-table-gl6 ?dd - dummy )
	(observe-joint-drop-table-gl6 ?dd - dummy )
	(c-p-joint-drop-table-cuq ?dd - dummy )
	(observe-joint-drop-table-cuq ?dd - dummy )
	(c-p-joint-drop-table-vml ?dd - dummy)
	(observe-joint-drop-table-vml ?dd - dummy)
)
(:action observe-table-gv2
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(= ?a a3)
		(= ?t table3)
		(= ?i room2)
		(observe-joint-drop-table-pm5 dd)
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-g1j-qxz-ezt-5ea-2z7-vfu-1mh
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(= ?a a3)(= ?t table3)(= ?i room1)(observe-joint-drop-table-vml dd)
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-cuq dd)
		(observe-joint-drop-table-gl6 dd)
		(observe-joint-drop-table-8se dd)
		(observe-joint-drop-table-s0o dd)
		(observe-joint-drop-table-w5a dd)
		(observe-joint-drop-table-yrg dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-g1j-qxz-ezt-5ea-2z7-vfu
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3))(not (= ?t table3))(not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-cuq dd)
		(observe-joint-drop-table-gl6 dd)
		(observe-joint-drop-table-8se dd)
		(observe-joint-drop-table-s0o dd)
		(observe-joint-drop-table-w5a dd)
		(observe-joint-drop-table-yrg dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-g1j-qxz-ezt-5ea-2z7
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-gl6 dd)
		(observe-joint-drop-table-8se dd)
		(observe-joint-drop-table-s0o dd)
		(observe-joint-drop-table-w5a dd)
		(observe-joint-drop-table-yrg dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-g1j-qxz-ezt-5ea
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-8se dd)
		(observe-joint-drop-table-s0o dd)
		(observe-joint-drop-table-w5a dd)
		(observe-joint-drop-table-yrg dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-g1j-qxz-ezt
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-s0o dd)
		(observe-joint-drop-table-w5a dd)
		(observe-joint-drop-table-yrg dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-g1j-qxz
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-w5a dd)
		(observe-joint-drop-table-yrg dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table-g1j
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(= ?a a3)
		(= ?t table3)
		(= ?i room1)
		(observe-joint-drop-table-yrg dd)
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
		(in ?a ?i)
		(can-observe ?a ?t)
	)
	:observe (inroom ?t ?i) 
)
(:action observe-table
	:parameters ( ?a - agent ?t - table ?i - room )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room1)))
		(or (not (= ?a a3)) (not (= ?t table3)) (not (= ?i room2)))
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
		(or (not (= ?a1 a1))(not (= ?a2 a3))(not (= ?t table1))(not (= ?r1 room4)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
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
(:action joint-drop-table-yggx
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)(= ?a2 a3)(= ?t table1)(= ?r1 room4)(c-p-joint-drop-table-vml ?dd)
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and (when (c-p-joint-drop-table-vml ?dd) (not (c-p-joint-drop-table-vml ?dd)) )
		(not (lifting ?a1 ?t))
		(not (lifting ?a2 ?t))
		(inroom ?t ?r1)
		(available ?a1)
		(available ?a2))
)
(:action commit-3j4tn-a1-a2-a3
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-drop-table-vml dd)) )
	:effect (and (c-p-joint-drop-table-vml dd))
)
(:action obs-65v6d-a1-a2-a3
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-drop-table-vml dd)))
	:effect (and (observe-joint-drop-table-vml dd))
)
(:action joint-drop-table-xwrh
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a3)
		(= ?a2 a1)
		(= ?t table3)
		(= ?r1 room2)
		(c-p-joint-drop-table-cuq ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-cuq ?dd) (not (c-p-joint-drop-table-cuq ?dd)))(not (lifting ?a1 ?t)) (not (lifting ?a2 ?t)) (inroom ?t ?r1) (available ?a1) (available ?a2)) )
)
(:action commit-g1ifc-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-cuq dd))
	)
	:effect (and 
		(c-p-joint-drop-table-cuq dd) )
)
(:action obs-njp35-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-cuq dd))
	)
	:effect (and 
		(observe-joint-drop-table-cuq dd) )
)
(:action joint-drop-table-qkh1
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a2)
		(= ?t table2)
		(= ?r1 room1)
		(c-p-joint-drop-table-gl6 ?dd)
		(or (not (= ?a1 a3)) (not (= ?a2 a1)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-gl6 ?dd) (not (c-p-joint-drop-table-gl6 ?dd)))(not (lifting ?a1 ?t)) (not (lifting ?a2 ?t)) (inroom ?t ?r1) (available ?a1) (available ?a2)) )
)
(:action commit-8oo6p-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-gl6 dd))
	)
	:effect (and 
		(c-p-joint-drop-table-gl6 dd) )
)
(:action obs-nd7z4-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-gl6 dd))
	)
	:effect (and 
		(observe-joint-drop-table-gl6 dd) )
)
(:action joint-drop-table-aav0
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a3)
		(= ?a2 a1)
		(= ?t table2)
		(= ?r1 room1)
		(c-p-joint-drop-table-8se ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table2)) (not (= ?r1 room1)))
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-8se ?dd) (not (c-p-joint-drop-table-8se ?dd)))(not (lifting ?a1 ?t)) (not (lifting ?a2 ?t)) (inroom ?t ?r1) (available ?a1) (available ?a2)) )
)
(:action commit-b0htd-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-8se dd))
	)
	:effect (and 
		(c-p-joint-drop-table-8se dd) )
)
(:action obs-54ji7-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-8se dd))
	)
	:effect (and 
		(observe-joint-drop-table-8se dd) )
)
(:action joint-drop-table-p2ba
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a3)
		(= ?t table2)
		(= ?r1 room1)
		(c-p-joint-drop-table-s0o ?dd)
		(or (not (= ?a1 a2)) (not (= ?a2 a1)) (not (= ?t table1)) (not (= ?r1 room4)))
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-s0o ?dd) (not (c-p-joint-drop-table-s0o ?dd)))(not (lifting ?a1 ?t)) (not (lifting ?a2 ?t)) (inroom ?t ?r1) (available ?a1) (available ?a2)) )
)
(:action commit-7bgl3-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-s0o dd))
	)
	:effect (and 
		(c-p-joint-drop-table-s0o dd) )
)
(:action obs-uy49l-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-s0o dd))
	)
	:effect (and 
		(observe-joint-drop-table-s0o dd) )
)
(:action joint-drop-table-fqgg
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a2)
		(= ?a2 a1)
		(= ?t table1)
		(= ?r1 room4)
		(c-p-joint-drop-table-w5a ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a3)) (not (= ?t table3)) (not (= ?r1 room2)))
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-w5a ?dd) (not (c-p-joint-drop-table-w5a ?dd)))(not (lifting ?a1 ?t)) (not (lifting ?a2 ?t)) (inroom ?t ?r1) (available ?a1) (available ?a2)) )
)
(:action commit-cfcig-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-w5a dd))
	)
	:effect (and 
		(c-p-joint-drop-table-w5a dd) )
)
(:action obs-xelfa-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-w5a dd))
	)
	:effect (and 
		(observe-joint-drop-table-w5a dd) )
)
(:action joint-drop-table-gx8l
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a3)
		(= ?t table3)
		(= ?r1 room2)
		(c-p-joint-drop-table-yrg ?dd)
		(or (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?t table1)) (not (= ?r1 room4)))
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-yrg ?dd) (not (c-p-joint-drop-table-yrg ?dd)))(not (lifting ?a1 ?t)) (not (lifting ?a2 ?t)) (inroom ?t ?r1) (available ?a1) (available ?a2)) )
)
(:action commit-dep4z-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-yrg dd))
	)
	:effect (and 
		(c-p-joint-drop-table-yrg dd) )
)
(:action obs-qna96-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-yrg dd))
	)
	:effect (and 
		(observe-joint-drop-table-yrg dd) )
)
(:action joint-drop-table-fzq9
	:parameters ( ?a1 - agent ?a2 - agent ?t - table ?r1 - room ?dd - dummy )
	:precondition (and 
		(= ?a1 a1)
		(= ?a2 a2)
		(= ?t table1)
		(= ?r1 room4)
		(c-p-joint-drop-table-pm5 ?dd)
		(in ?a1 ?r1)
		(in ?a2 ?r1)
		(lifting ?a1 ?t)
		(lifting ?a2 ?t)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-drop-table-pm5 ?dd) (not (c-p-joint-drop-table-pm5 ?dd)))(not (lifting ?a1 ?t)) (not (lifting ?a2 ?t)) (inroom ?t ?r1) (available ?a1) (available ?a2)) )
)
(:action commit-1bxna-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-pm5 dd))
	)
	:effect (and 
		(c-p-joint-drop-table-pm5 dd) )
)
(:action obs-kb6pl-a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-drop-table-pm5 dd))
	)
	:effect (and 
		(observe-joint-drop-table-pm5 dd) )
)
)
