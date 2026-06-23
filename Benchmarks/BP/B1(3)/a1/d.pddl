(define (domain box-4-a1)
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
	a1 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(init-erk_observe-box_p1-2_a1_b0 ?dd - dummy)
	(immediate-dummy-erk_observe-box_p1-2_a1_b0 ?dd - dummy)
	(dummy-left-erk_observe-box_p1-2_a1_b0 ?dd - dummy)
	(pre-jse_push-one_p1-1_p1-2_b0_a1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-erk_observe-box_p1-2_a1_b0 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-erk_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-erk_observe-box_p1-2_a1_b0 dd)(immediate-dummy-erk_observe-box_p1-2_a1_b0 dd)(agent-at a1 p1-2))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-erk_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-erk_observe-box_p1-2_a1_b0 dd)(not (dummy-left-erk_observe-box_p1-2_a1_b0 dd))(not (dummy-right-erk_observe-box_p1-2_a1_b0 dd)))
	:effect (and (immediate-dummy-erk_observe-box_p1-2_a1_b0 dd) )
)
(:action dummy-left-erk_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-erk_observe-box_p1-2_a1_b0 dd)(agent-at a1 p1-2)(not (box-at b0 p1-2))(immediate-dummy-erk_observe-box_p1-2_a1_b0 dd))
	:effect (and (not (init-erk_observe-box_p1-2_a1_b0 dd))(not (immediate-dummy-erk_observe-box_p1-2_a1_b0 dd))(dummy-left-erk_observe-box_p1-2_a1_b0 dd))
)
(:action dummy-right-erk_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-erk_observe-box_p1-2_a1_b0 dd)(agent-at a1 p1-2)(box-at b0 p1-2)(immediate-dummy-erk_observe-box_p1-2_a1_b0 dd))
	:effect (and (not (init-erk_observe-box_p1-2_a1_b0 dd))(not (immediate-dummy-erk_observe-box_p1-2_a1_b0 dd))(dummy-right-erk_observe-box_p1-2_a1_b0 dd))
)
(:action act-jse_push-one_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-erk_observe-box_p1-2_a1_b0 dd)(not (box-at b0 p1-2))(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-jse_push-one_p1-1_p1-2_b0_a1 dd))
)
(:action goal-achieve-jse_push-one_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (pre-jse_push-one_p1-1_p1-2_b0_a1 dd))
	:effect (and (done-goal dd)(not (pre-jse_push-one_p1-1_p1-2_b0_a1 dd)))
)
(:action goal-achieve-right-erk_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-erk_observe-box_p1-2_a1_b0 dd)(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-right-erk_observe-box_p1-2_a1_b0 dd)))
)
)