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
	(c-p-joint-push-die ?dd - dummy )
	(observe-joint-push-die ?dd - dummy )
	(c-p-joint-push-xkw ?dd - dummy)
	(observe-joint-push-xkw ?dd - dummy)
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
		(or (not (= ?start p1-1))(not (= ?end p1-2))(not (= ?b b0))(not (= ?a1 a3))(not (= ?a2 a1)))
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
(:action joint-push-41uz
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p1-1)(= ?end p1-2)(= ?b b0)(= ?a1 a3)(= ?a2 a1)(c-p-joint-push-xkw ?dd)
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and (when (c-p-joint-push-xkw ?dd) (not (c-p-joint-push-xkw ?dd)) )
		(not (box-at ?b ?start))
		(box-at ?b ?end))
)
(:action commit-gl6xv-a1-a2-a3-a4-a5
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-push-xkw dd)) )
	:effect (and (c-p-joint-push-xkw dd))
)
(:action obs-96iuq-a1-a2-a3-a4-a5
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-push-xkw dd)))
	:effect (and (observe-joint-push-xkw dd))
)
(:action joint-push-heu2
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p1-1)
		(= ?end p1-2)
		(= ?b b0)
		(= ?a1 a1)
		(= ?a2 a3)
		(c-p-joint-push-die ?dd)
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-die ?dd) (not (c-p-joint-push-die ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-fwz1n-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-die dd))
	)
	:effect (and 
		(c-p-joint-push-die dd) )
)
(:action obs-uxv1m-a1-a2-a3-a4-a5
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-die dd))
	)
	:effect (and 
		(observe-joint-push-die dd) )
)
(:action observe-box-gp1
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a5)
		(= ?i p5-1)
		(= ?b b5)
		(observe-joint-push-die dd)
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-x4h
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a4)(= ?i p3-1)(= ?b b2)(observe-joint-push-xkw dd)
		(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a4))(not (= ?i p3-1))(not (= ?b b2)))
		(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
)
