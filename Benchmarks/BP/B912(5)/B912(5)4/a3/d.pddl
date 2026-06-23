(define (domain box-3-a3)
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
	a3 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-e6s_observe-box_a2_p2-2_b1 ?dd - dummy)
	(immediate-dummy-e6s_observe-box_a2_p2-2_b1 ?dd - dummy)
	(dummy-left-e6s_observe-box_a2_p2-2_b1 ?dd - dummy)
	(pre-2ln_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-e6s_observe-box_a2_p2-2_b1 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-e6s_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (init-e6s_observe-box_a2_p2-2_b1 dd)(immediate-dummy-e6s_observe-box_a2_p2-2_b1 dd)(agent-at a3 p2-2)(can-observe a3 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-e6s_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (init-e6s_observe-box_a2_p2-2_b1 dd)(not (dummy-left-e6s_observe-box_a2_p2-2_b1 dd))(not (dummy-right-e6s_observe-box_a2_p2-2_b1 dd)))
	:effect (and (immediate-dummy-e6s_observe-box_a2_p2-2_b1 dd) )
)
(:action dummy-left-e6s_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (init-e6s_observe-box_a2_p2-2_b1 dd)(agent-at a3 p2-2)(can-observe a3 b1)(not (box-at b1 p2-2))(immediate-dummy-e6s_observe-box_a2_p2-2_b1 dd))
	:effect (and (not (init-e6s_observe-box_a2_p2-2_b1 dd))(not (immediate-dummy-e6s_observe-box_a2_p2-2_b1 dd))(dummy-left-e6s_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-e6s_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (init-e6s_observe-box_a2_p2-2_b1 dd)(agent-at a3 p2-2)(can-observe a3 b1)(box-at b1 p2-2)(immediate-dummy-e6s_observe-box_a2_p2-2_b1 dd))
	:effect (and (not (init-e6s_observe-box_a2_p2-2_b1 dd))(not (immediate-dummy-e6s_observe-box_a2_p2-2_b1 dd))(dummy-right-e6s_observe-box_a2_p2-2_b1 dd))
)
(:action act-2ln_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-e6s_observe-box_a2_p2-2_b1 dd)(not (box-at b1 p2-2))(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-2ln_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action goal-achieve-2ln_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-2ln_joint-push_p2-1_p2-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-2ln_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
(:action goal-achieve-right-e6s_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-e6s_observe-box_a2_p2-2_b1 dd)(box-at b1 p2-2))
	:effect (and (done-goal dd)(not (dummy-right-e6s_observe-box_a2_p2-2_b1 dd)))
)
)