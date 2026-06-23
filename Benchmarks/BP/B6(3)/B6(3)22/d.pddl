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
	b0 - box
	b1 - box
	b2 - box
	a1 - agent
	a2 - agent
	a3 - agent
	dd - dummy
)
(:predicates
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(same-agent ?a1 - agent ?a2 - agent )
	(can-observe ?a - agent ?b - box )
	(c-p-joint-push-w4i ?dd - dummy )
	(observe-joint-push-w4i ?dd - dummy )
	(c-p-joint-push-j80 ?dd - dummy )
	(observe-joint-push-j80 ?dd - dummy )
	(c-p-joint-push-jgj ?dd - dummy )
	(observe-joint-push-jgj ?dd - dummy )
	(c-p-joint-push-kqs ?dd - dummy )
	(observe-joint-push-kqs ?dd - dummy )
	(c-p-joint-push-yhg ?dd - dummy )
	(observe-joint-push-yhg ?dd - dummy )
	(c-p-joint-push-esy ?dd - dummy )
	(observe-joint-push-esy ?dd - dummy )
	(c-p-joint-push-c8xh-sto ?dd - dummy )
	(observe-joint-push-c8xh-sto ?dd - dummy )
	(c-p-joint-push-6qb ?dd - dummy )
	(observe-joint-push-6qb ?dd - dummy )
	(c-p-joint-push-onp ?dd - dummy )
	(observe-joint-push-onp ?dd - dummy )
	(c-p-joint-push-mn6z-0qk ?dd - dummy )
	(observe-joint-push-mn6z-0qk ?dd - dummy )
	(c-p-joint-push-zde ?dd - dummy )
	(observe-joint-push-zde ?dd - dummy )
	(c-p-joint-push-rrp ?dd - dummy )
	(observe-joint-push-rrp ?dd - dummy )
	(c-p-joint-push-r8n ?dd - dummy )
	(observe-joint-push-r8n ?dd - dummy )
	(c-p-joint-push-x74 ?dd - dummy )
	(observe-joint-push-x74 ?dd - dummy )
	(c-p-joint-push-dod ?dd - dummy )
	(observe-joint-push-dod ?dd - dummy )
	(c-p-joint-push-35ip-2ho ?dd - dummy )
	(observe-joint-push-35ip-2ho ?dd - dummy )
	(c-p-joint-push-n2lg-scq ?dd - dummy)
	(observe-joint-push-n2lg-scq ?dd - dummy)
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
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-2)) (not (= ?end p1-1)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and (not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action joint-push-36iv
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p3-2)
		(= ?end p3-1)
		(= ?b b2)
		(= ?a1 a2)
		(= ?a2 a1)
		(c-p-joint-push-dod ?dd)
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-2)) (not (= ?end p1-1)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-dod ?dd) (not (c-p-joint-push-dod ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-k8878-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-dod dd))
	)
	:effect (and 
		(c-p-joint-push-dod dd) )
)
(:action obs-4lq4s-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-dod dd))
	)
	:effect (and 
		(observe-joint-push-dod dd) )
)
(:action joint-push-k7oi
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p3-2)
		(= ?end p3-1)
		(= ?b b2)
		(= ?a1 a1)
		(= ?a2 a2)
		(c-p-joint-push-x74 ?dd)
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-2)) (not (= ?end p1-1)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-x74 ?dd) (not (c-p-joint-push-x74 ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-xuv43-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-x74 dd))
	)
	:effect (and 
		(c-p-joint-push-x74 dd) )
)
(:action obs-4wvv5-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-x74 dd))
	)
	:effect (and 
		(observe-joint-push-x74 dd) )
)
(:action joint-push-n2lg
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(or (not (= ?start p3-1))(not (= ?end p3-2))(not (= ?b b2))(not (= ?a1 a2))(not (= ?a2 a1))(not (= ?dd dd)))
		(= ?start p3-1)
		(= ?end p3-2)
		(= ?b b2)
		(= ?a1 a2)
		(= ?a2 a1)
		(c-p-joint-push-r8n ?dd)
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-2)) (not (= ?end p1-1)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		(when (c-p-joint-push-r8n ?dd) (not (c-p-joint-push-r8n ?dd)))
		(not (box-at ?b ?start))
		(box-at ?b ?end))
)
(:action joint-push-n2lg-9qt9
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p3-1)(= ?end p3-2)(= ?b b2)(= ?a1 a2)(= ?a2 a1)(= ?dd dd)(c-p-joint-push-n2lg-scq ?dd)
		(= ?start p3-1)
		(= ?end p3-2)
		(= ?b b2)
		(= ?a1 a2)
		(= ?a2 a1)
		(c-p-joint-push-r8n ?dd)
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-2)) (not (= ?end p1-1)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and (when (c-p-joint-push-n2lg-scq ?dd) (not (c-p-joint-push-n2lg-scq ?dd)) )
		(when (c-p-joint-push-r8n ?dd) (not (c-p-joint-push-r8n ?dd)))
		(not (box-at ?b ?start))
		(box-at ?b ?end))
)
(:action commit-788ww-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-push-n2lg-scq dd)) )
	:effect (and (c-p-joint-push-n2lg-scq dd))
)
(:action obs-l6fan-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters (?a - agent)
	:precondition (and (not (observe-joint-push-n2lg-scq dd)))
	:effect (and (observe-joint-push-n2lg-scq dd))
)
(:action commit-vt32s-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-r8n dd))
	)
	:effect (and 
		(c-p-joint-push-r8n dd) )
)
(:action obs-47ge9-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-r8n dd))
	)
	:effect (and 
		(observe-joint-push-r8n dd) )
)
(:action joint-push-ktqk
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p1-1)
		(= ?end p1-2)
		(= ?b b0)
		(= ?a1 a3)
		(= ?a2 a2)
		(c-p-joint-push-rrp ?dd)
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-2)) (not (= ?end p1-1)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-rrp ?dd) (not (c-p-joint-push-rrp ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-i8p8b-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-rrp dd))
	)
	:effect (and 
		(c-p-joint-push-rrp dd) )
)
(:action obs-mh2sk-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-rrp dd))
	)
	:effect (and 
		(observe-joint-push-rrp dd) )
)
(:action joint-push-35ip
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a1)) (not (= ?a2 a2)) (not (= ?dd dd)))
		(= ?start p3-1)
		(= ?end p3-2)
		(= ?b b2)
		(= ?a1 a1)
		(= ?a2 a2)
		(c-p-joint-push-zde ?dd)
		(or (not (= ?start p1-2)) (not (= ?end p1-1)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-zde ?dd) (not (c-p-joint-push-zde ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action joint-push-35ip-bvnb
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p3-1)
		(= ?end p3-2)
		(= ?b b2)
		(= ?a1 a1)
		(= ?a2 a2)
		(= ?dd dd)
		(c-p-joint-push-35ip-2ho ?dd)
		(c-p-joint-push-zde ?dd)
		(or (not (= ?start p1-2)) (not (= ?end p1-1)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-35ip-2ho ?dd) (not (c-p-joint-push-35ip-2ho ?dd)))
	(when (c-p-joint-push-zde ?dd) (not (c-p-joint-push-zde ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-4qxe7-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-35ip-2ho dd))
	)
	:effect (and 
		(c-p-joint-push-35ip-2ho dd) )
)
(:action obs-8e8yt-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-35ip-2ho dd))
	)
	:effect (and 
		(observe-joint-push-35ip-2ho dd) )
)
(:action commit-n2il0-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-zde dd))
	)
	:effect (and 
		(c-p-joint-push-zde dd) )
)
(:action obs-jb69y-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-zde dd))
	)
	:effect (and 
		(observe-joint-push-zde dd) )
)
(:action joint-push-h1cq
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p1-2)
		(= ?end p1-1)
		(= ?b b0)
		(= ?a1 a1)
		(= ?a2 a2)
		(c-p-joint-push-onp ?dd)
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a1)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-onp ?dd) (not (c-p-joint-push-onp ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-cguxy-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-onp dd))
	)
	:effect (and 
		(c-p-joint-push-onp dd) )
)
(:action obs-0jl9n-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-onp dd))
	)
	:effect (and 
		(observe-joint-push-onp dd) )
)
(:action joint-push-l9k0
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p1-1)
		(= ?end p1-2)
		(= ?b b0)
		(= ?a1 a2)
		(= ?a2 a1)
		(c-p-joint-push-6qb ?dd)
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-6qb ?dd) (not (c-p-joint-push-6qb ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-vhl19-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-6qb dd))
	)
	:effect (and 
		(c-p-joint-push-6qb dd) )
)
(:action obs-h2mq0-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-6qb dd))
	)
	:effect (and 
		(observe-joint-push-6qb dd) )
)
(:action joint-push-3o36
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p1-1)
		(= ?end p1-2)
		(= ?b b0)
		(= ?a1 a1)
		(= ?a2 a2)
		(c-p-joint-push-esy ?dd)
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-esy ?dd) (not (c-p-joint-push-esy ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-uhiu5-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-esy dd))
	)
	:effect (and 
		(c-p-joint-push-esy dd) )
)
(:action obs-xa0c6-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-esy dd))
	)
	:effect (and 
		(observe-joint-push-esy dd) )
)
(:action joint-push-kdoc
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p3-2)
		(= ?end p3-1)
		(= ?b b2)
		(= ?a1 a3)
		(= ?a2 a2)
		(c-p-joint-push-yhg ?dd)
		(or (not (= ?start p3-2)) (not (= ?end p3-1)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-yhg ?dd) (not (c-p-joint-push-yhg ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-gfcnr-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-yhg dd))
	)
	:effect (and 
		(c-p-joint-push-yhg dd) )
)
(:action obs-11bes-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-yhg dd))
	)
	:effect (and 
		(observe-joint-push-yhg dd) )
)
(:action joint-push-830b
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p3-2)
		(= ?end p3-1)
		(= ?b b2)
		(= ?a1 a2)
		(= ?a2 a3)
		(c-p-joint-push-kqs ?dd)
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)))
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-kqs ?dd) (not (c-p-joint-push-kqs ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-100ff-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-kqs dd))
	)
	:effect (and 
		(c-p-joint-push-kqs dd) )
)
(:action obs-3dmuy-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-kqs dd))
	)
	:effect (and 
		(observe-joint-push-kqs dd) )
)
(:action joint-push-c8xh
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a3)) (not (= ?a2 a2)) (not (= ?dd dd)))
		(= ?start p3-1)
		(= ?end p3-2)
		(= ?b b2)
		(= ?a1 a3)
		(= ?a2 a2)
		(c-p-joint-push-jgj ?dd)
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-jgj ?dd) (not (c-p-joint-push-jgj ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action joint-push-c8xh-23da
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p3-1)
		(= ?end p3-2)
		(= ?b b2)
		(= ?a1 a3)
		(= ?a2 a2)
		(= ?dd dd)
		(c-p-joint-push-c8xh-sto ?dd)
		(c-p-joint-push-jgj ?dd)
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-c8xh-sto ?dd) (not (c-p-joint-push-c8xh-sto ?dd)))
	(when (c-p-joint-push-jgj ?dd) (not (c-p-joint-push-jgj ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-13tqd-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-c8xh-sto dd))
	)
	:effect (and 
		(c-p-joint-push-c8xh-sto dd) )
)
(:action obs-2zdcu-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-c8xh-sto dd))
	)
	:effect (and 
		(observe-joint-push-c8xh-sto dd) )
)
(:action commit-nls4t-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-jgj dd))
	)
	:effect (and 
		(c-p-joint-push-jgj dd) )
)
(:action obs-r55if-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-jgj dd))
	)
	:effect (and 
		(observe-joint-push-jgj dd) )
)
(:action joint-push-mn6z
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(or (not (= ?start p3-1)) (not (= ?end p3-2)) (not (= ?b b2)) (not (= ?a1 a2)) (not (= ?a2 a3)) (not (= ?dd dd)))
		(= ?start p3-1)
		(= ?end p3-2)
		(= ?b b2)
		(= ?a1 a2)
		(= ?a2 a3)
		(c-p-joint-push-j80 ?dd)
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-j80 ?dd) (not (c-p-joint-push-j80 ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action joint-push-mn6z-lbgq
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p3-1)
		(= ?end p3-2)
		(= ?b b2)
		(= ?a1 a2)
		(= ?a2 a3)
		(= ?dd dd)
		(c-p-joint-push-mn6z-0qk ?dd)
		(c-p-joint-push-j80 ?dd)
		(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a2)) (not (= ?a2 a3)))
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-mn6z-0qk ?dd) (not (c-p-joint-push-mn6z-0qk ?dd)))
	(when (c-p-joint-push-j80 ?dd) (not (c-p-joint-push-j80 ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-fxi6n-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-mn6z-0qk dd))
	)
	:effect (and 
		(c-p-joint-push-mn6z-0qk dd) )
)
(:action obs-je5ub-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-mn6z-0qk dd))
	)
	:effect (and 
		(observe-joint-push-mn6z-0qk dd) )
)
(:action commit-12mgn-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-j80 dd))
	)
	:effect (and 
		(c-p-joint-push-j80 dd) )
)
(:action obs-wz1q3-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-j80 dd))
	)
	:effect (and 
		(observe-joint-push-j80 dd) )
)
(:action joint-push-5yzd
	:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy )
	:precondition (and 
		(= ?start p1-1)
		(= ?end p1-2)
		(= ?b b0)
		(= ?a1 a2)
		(= ?a2 a3)
		(c-p-joint-push-w4i ?dd)
		(adj ?start ?end)
		(agent-at ?a1 ?start)
		(agent-at ?a2 ?start)
		(box-at ?b ?start)
		(heavy ?b)
		(not (same-agent ?a1 ?a2))
	)
	:effect (and 
		
(and 
	(when (c-p-joint-push-w4i ?dd) (not (c-p-joint-push-w4i ?dd)))(not (box-at ?b ?start)) (box-at ?b ?end)) )
)
(:action commit-4w8el-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-w4i dd))
	)
	:effect (and 
		(c-p-joint-push-w4i dd) )
)
(:action obs-e8enx-a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3a1-a2-a3
	:parameters ( ?a - agent )
	:precondition (and 
		(not (observe-joint-push-w4i dd))
	)
	:effect (and 
		(observe-joint-push-w4i dd) )
)
(:action observe-box-g2n-nkt-8pz-e75-jbd-um1
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a1)(= ?i p1-2)(= ?b b0)(observe-joint-push-n2lg-scq dd)
		(= ?a a1)
		(= ?i p1-2)
		(= ?b b0)
		(observe-joint-push-35ip-2ho dd)
		(observe-joint-push-rrp dd)
		(observe-joint-push-mn6z-0qk dd)
		(observe-joint-push-6qb dd)
		(observe-joint-push-w4i dd)
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-g2n-nkt-8pz-e75-jbd
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a1))(not (= ?i p1-2))(not (= ?b b0)))
		(= ?a a1)
		(= ?i p1-2)
		(= ?b b0)
		(observe-joint-push-35ip-2ho dd)
		(observe-joint-push-rrp dd)
		(observe-joint-push-mn6z-0qk dd)
		(observe-joint-push-6qb dd)
		(observe-joint-push-w4i dd)
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-g2n-nkt-8pz-e75
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(= ?a a1)
		(= ?i p1-2)
		(= ?b b0)
		(observe-joint-push-rrp dd)
		(observe-joint-push-mn6z-0qk dd)
		(observe-joint-push-6qb dd)
		(observe-joint-push-w4i dd)
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-g2n-nkt-8pz
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(= ?a a1)
		(= ?i p1-2)
		(= ?b b0)
		(observe-joint-push-mn6z-0qk dd)
		(observe-joint-push-6qb dd)
		(observe-joint-push-w4i dd)
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-g2n-nkt
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(= ?a a1)
		(= ?i p1-2)
		(= ?b b0)
		(observe-joint-push-6qb dd)
		(observe-joint-push-w4i dd)
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-g2n
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(= ?a a1)
		(= ?i p1-2)
		(= ?b b0)
		(observe-joint-push-w4i dd)
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-34k-s1z
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a3)
		(= ?i p3-2)
		(= ?b b2)
		(observe-joint-push-c8xh-sto dd)
		(observe-joint-push-j80 dd)
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-34k
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(= ?a a3)
		(= ?i p3-2)
		(= ?b b2)
		(observe-joint-push-j80 dd)
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-tea-zog-ywe
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a3)
		(= ?i p3-1)
		(= ?b b2)
		(observe-joint-push-yhg dd)
		(observe-joint-push-kqs dd)
		(observe-joint-push-jgj dd)
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-tea-zog
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?i p3-1)) (not (= ?b b2)))
		(= ?a a3)
		(= ?i p3-1)
		(= ?b b2)
		(observe-joint-push-kqs dd)
		(observe-joint-push-jgj dd)
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-tea
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a3)) (not (= ?i p3-1)) (not (= ?b b2)))
		(= ?a a3)
		(= ?i p3-1)
		(= ?b b2)
		(observe-joint-push-jgj dd)
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-o2r-p42
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a1)
		(= ?i p1-1)
		(= ?b b0)
		(observe-joint-push-onp dd)
		(observe-joint-push-esy dd)
		(or (not (= ?a a3)) (not (= ?i p3-1)) (not (= ?b b2)))
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-o2r
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a1)) (not (= ?i p1-1)) (not (= ?b b0)))
		(= ?a a1)
		(= ?i p1-1)
		(= ?b b0)
		(observe-joint-push-esy dd)
		(or (not (= ?a a3)) (not (= ?i p3-1)) (not (= ?b b2)))
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-fw9-icr
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a1)
		(= ?i p3-2)
		(= ?b b2)
		(observe-joint-push-r8n dd)
		(observe-joint-push-zde dd)
		(or (not (= ?a a1)) (not (= ?i p1-1)) (not (= ?b b0)))
		(or (not (= ?a a3)) (not (= ?i p3-1)) (not (= ?b b2)))
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-fw9
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a1)) (not (= ?i p3-2)) (not (= ?b b2)))
		(= ?a a1)
		(= ?i p3-2)
		(= ?b b2)
		(observe-joint-push-zde dd)
		(or (not (= ?a a1)) (not (= ?i p1-1)) (not (= ?b b0)))
		(or (not (= ?a a3)) (not (= ?i p3-1)) (not (= ?b b2)))
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-3yz-hgq
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(= ?a a1)
		(= ?i p3-1)
		(= ?b b2)
		(observe-joint-push-dod dd)
		(observe-joint-push-x74 dd)
		(or (not (= ?a a1)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-1)) (not (= ?b b0)))
		(or (not (= ?a a3)) (not (= ?i p3-1)) (not (= ?b b2)))
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box-3yz
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a1)) (not (= ?i p3-1)) (not (= ?b b2)))
		(= ?a a1)
		(= ?i p3-1)
		(= ?b b2)
		(observe-joint-push-x74 dd)
		(or (not (= ?a a1)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-1)) (not (= ?b b0)))
		(or (not (= ?a a3)) (not (= ?i p3-1)) (not (= ?b b2)))
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
(:action observe-box
	:parameters ( ?a - agent ?i - pos ?b - box )
	:precondition (and 
		(or (not (= ?a a1)) (not (= ?i p3-1)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-1)) (not (= ?b b0)))
		(or (not (= ?a a3)) (not (= ?i p3-1)) (not (= ?b b2)))
		(or (not (= ?a a3)) (not (= ?i p3-2)) (not (= ?b b2)))
		(or (not (= ?a a1)) (not (= ?i p1-2)) (not (= ?b b0)))
		(agent-at ?a ?i)
		(can-observe ?a ?b)
	)
	:observe (box-at ?b ?i) 
)
)
