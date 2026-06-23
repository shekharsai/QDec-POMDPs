(define
(domain box-3)
(:types pos agent box push dummy)
(:constants
	p1-1 - pos
	p1-2 - pos
	p2-1 - pos
	p2-2 - pos
	p3-1 - pos
	p3-2 - pos
	p4-1 - pos
	p4-2 - pos
	p5-1 - pos
	p5-2 - pos
	b0 - box
	b1 - box
	b2 - box
	b4 - box
	b5 - box
	a1 - agent
	a2 - agent
	a3 - agent
	a4 - agent
	a5 - agent
	dd - dummy
)
(:predicates
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(same-agent ?a1 - agent ?a2 - agent )
	(can-observe ?a - agent ?b - box )
	(c-p-joint-push-enw ?dd - dummy )
	(observe-joint-push-enw ?dd - dummy )
	(c-p-joint-push-doq ?dd - dummy )
	(observe-joint-push-doq ?dd - dummy )
	(c-p-joint-push-8wh ?dd - dummy)
	(observe-joint-push-8wh ?dd - dummy)
)
(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent )
	:precondition (and 
		(adj ?start ?end)
		(agent-at ?a ?start)
	)
	:effect (and 
		
(and (not (agent-at ?a ?start)) (agent-at ?a ?end)) )
)
(:action one-push
	:parameters ( ?start - pos ?end - pos ?b - box ?a - agent )
	:precondition (and 
		(adj ?start ?end)
		(agent-at ?a ?start)
		(box-at ?b ?start)
		(not (heavy ?b))
	)
	:effect (and 
		
(and (not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action joint-push
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent )
	:precondition (and 
		(or (not (= ?start p5-1))(not (= ?end p5-2))(not (= ?b b5))(not (= ?a1 a3))(not (= ?a2 a5)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a3)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		(not (box-at ?b ?start))
		(box-at ?b ?end))
)
(:action joint-push-8cpk
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p5-1)(= ?end p5-2)(= ?b b5)(= ?a1 a3)(= ?a2 a5)(c-p-joint-push-8wh ?dd)
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a3)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and (when (c-p-joint-push-8wh ?dd) (not (c-p-joint-push-8wh ?dd)) )
		(not (box-at ?b ?start))
		(box-at ?b ?end))
)
(:action commit-1ui8v-a1-a2-a3-a4-a5
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-push-8wh dd)) )
	:effect (and (c-p-joint-push-8wh dd))
)
(:action obs-h2mm9-a1-a2-a3-a4-a5
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-push-8wh dd)))
	:effect (and (observe-joint-push-8wh dd))
)
(:action joint-push-3a1i
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p1-1)
		(= ?end p1-2)
		(= ?b b0)
		(= ?a1 a3)
		(= ?a2 a1)
		(c-p-joint-push-doq ?dd)
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-doq ?dd) (not (c-p-joint-push-doq ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-1mf1o-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-doq dd))
	)
	:effect (and 
		(c-p-joint-push-doq dd) )
)
(:action obs-x98h4-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-doq dd))
	)
	:effect (and 
		(observe-joint-push-doq dd) )
)
(:action joint-push-5ofc
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p1-1)
		(= ?end p1-2)
		(= ?b b0)
		(= ?a1 a1)
		(= ?a2 a3)
		(c-p-joint-push-enw ?dd)
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-enw ?dd) (not (c-p-joint-push-enw ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-uqcoq-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-enw dd))
	)
	:effect (and 
		(c-p-joint-push-enw dd) )
)
(:action obs-gbv86-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-enw dd))
	)
	:effect (and 
		(observe-joint-push-enw dd) )
)
(:action observe-box-un8
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a5)
		(= ?i p5-1)
		(= ?b b5)
		(observe-joint-push-enw dd)
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-qyt
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a4)
		(= ?i p3-1)
		(= ?b b2)
		(observe-joint-push-doq dd)
		(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-5gx
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a2)(= ?i p3-2)(= ?b b2)(observe-joint-push-8wh dd)
		(or (not (= ?a a4)) (not (= ?i p3-1)) (not (= ?b b2)))
		(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a2))(not (= ?i p3-2))(not (= ?b b2)))
		(or (not (= ?a a4)) (not (= ?i p3-1)) (not (= ?b b2)))
		(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
)
