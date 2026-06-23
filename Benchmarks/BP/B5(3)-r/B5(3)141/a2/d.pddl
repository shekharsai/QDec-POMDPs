(define (domain box-3-a2)
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
	a2 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a1 - agent ?b1 - box )
	(init-q3t_observe-box_p3-2_a2_b2 ?dd - dummy)
	(immediate-dummy-q3t_observe-box_p3-2_a2_b2 ?dd - dummy)
	(dummy-left-q3t_observe-box_p3-2_a2_b2 ?dd - dummy)
	(pre-0z3_one-push_p3-1_p3-2_b2_a2 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-q3t_observe-box_p3-2_a2_b2 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-q3t_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (init-q3t_observe-box_p3-2_a2_b2 dd)(immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd)(agent-at a2 p3-2)(can-observe a2 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-q3t_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (init-q3t_observe-box_p3-2_a2_b2 dd)(not (dummy-left-q3t_observe-box_p3-2_a2_b2 dd))(not (dummy-right-q3t_observe-box_p3-2_a2_b2 dd)))
	:effect (and (immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd) )
)
(:action dummy-left-q3t_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (init-q3t_observe-box_p3-2_a2_b2 dd)(agent-at a2 p3-2)(can-observe a2 b2)(not (box-at b2 p3-2))(immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd))
	:effect (and (not (init-q3t_observe-box_p3-2_a2_b2 dd))(not (immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd))(dummy-left-q3t_observe-box_p3-2_a2_b2 dd))
)
(:action dummy-right-q3t_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (init-q3t_observe-box_p3-2_a2_b2 dd)(agent-at a2 p3-2)(can-observe a2 b2)(box-at b2 p3-2)(immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd))
	:effect (and (not (init-q3t_observe-box_p3-2_a2_b2 dd))(not (immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd))(dummy-right-q3t_observe-box_p3-2_a2_b2 dd))
)
(:action act-0z3_one-push_p3-1_p3-2_b2_a2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-q3t_observe-box_p3-2_a2_b2 dd)(not (box-at b2 p3-2))(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-0z3_one-push_p3-1_p3-2_b2_a2 dd))
)
(:action goal-achieve-0z3_one-push_p3-1_p3-2_b2_a2
	:parameters ( ?a - agent )
	:precondition (and (pre-0z3_one-push_p3-1_p3-2_b2_a2 dd))
	:effect (and (done-goal dd)(not (pre-0z3_one-push_p3-1_p3-2_b2_a2 dd)))
)
(:action goal-achieve-right-q3t_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-q3t_observe-box_p3-2_a2_b2 dd)(box-at b2 p3-2))
	:effect (and (done-goal dd)(not (dummy-right-q3t_observe-box_p3-2_a2_b2 dd)))
)
)