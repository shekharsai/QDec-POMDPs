(define (domain box-3-a1)
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
	b0 - box
	b1 - box
	b2 - box
	b3 - box
	a1 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-w9t_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-w9t_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-w9t_observe-box_a1_p1-2_b0 ?dd - dummy)
	(pre-4cp_one-push_p1-1_p1-2_b0_a1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-w9t_observe-box_a1_p1-2_b0 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-w9t_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-w9t_observe-box_a1_p1-2_b0 dd)(immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd)(agent-at a1 p1-2)(can-observe a1 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-w9t_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-w9t_observe-box_a1_p1-2_b0 dd)(not (dummy-left-w9t_observe-box_a1_p1-2_b0 dd))(not (dummy-right-w9t_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-w9t_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-w9t_observe-box_a1_p1-2_b0 dd)(agent-at a1 p1-2)(can-observe a1 b0)(not (box-at b0 p1-2))(immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (init-w9t_observe-box_a1_p1-2_b0 dd))(not (immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd))(dummy-left-w9t_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-w9t_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-w9t_observe-box_a1_p1-2_b0 dd)(agent-at a1 p1-2)(can-observe a1 b0)(box-at b0 p1-2)(immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (init-w9t_observe-box_a1_p1-2_b0 dd))(not (immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd))(dummy-right-w9t_observe-box_a1_p1-2_b0 dd))
)
(:action act-4cp_one-push_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-w9t_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-4cp_one-push_p1-1_p1-2_b0_a1 dd))
)
(:action goal-achieve-4cp_one-push_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (pre-4cp_one-push_p1-1_p1-2_b0_a1 dd))
	:effect (and (done-goal dd)(not (pre-4cp_one-push_p1-1_p1-2_b0_a1 dd)))
)
(:action goal-achieve-right-w9t_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-w9t_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-right-w9t_observe-box_a1_p1-2_b0 dd)))
)
)