(define (domain box-3-a2)
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
	a2 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-r0t_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-r0t_observe-box_a2_p2-1_b1 ?dd - dummy)
	(dummy-left-r0t_observe-box_a2_p2-1_b1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-r0t_observe-box_a2_p2-1_b1 ?dd - dummy)
	(pre-cj0_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-r0t_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-r0t_observe-box_a2_p2-1_b1 dd)(immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd)(agent-at a2 p2-1)(can-observe a2 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-r0t_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-r0t_observe-box_a2_p2-1_b1 dd)(not (dummy-left-r0t_observe-box_a2_p2-1_b1 dd))(not (dummy-right-r0t_observe-box_a2_p2-1_b1 dd)))
	:effect (and (immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd) )
)
(:action dummy-left-r0t_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-r0t_observe-box_a2_p2-1_b1 dd)(agent-at a2 p2-1)(can-observe a2 b1)(not (box-at b1 p2-1))(immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-r0t_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd))(dummy-left-r0t_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-right-r0t_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-r0t_observe-box_a2_p2-1_b1 dd)(agent-at a2 p2-1)(can-observe a2 b1)(box-at b1 p2-1)(immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-r0t_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd))(dummy-right-r0t_observe-box_a2_p2-1_b1 dd))
)
(:action goal-achieve-left-r0t_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-r0t_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-left-r0t_observe-box_a2_p2-1_b1 dd)))
)
(:action act-cj0_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-r0t_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a2 p2-1))
	:effect (and (pre-cj0_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action goal-achieve-cj0_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-cj0_joint-push_p2-1_p2-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-cj0_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
)