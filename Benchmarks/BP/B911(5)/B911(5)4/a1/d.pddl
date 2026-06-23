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
	p5-1 - pos
	p5-2 - pos
	b0 - box
	b1 - box
	b2 - box
	b4 - box
	b5 - box
	a1 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-qsx_observe-box_a1_p1-1_b0 ?dd - dummy)
	(immediate-dummy-qsx_observe-box_a1_p1-1_b0 ?dd - dummy)
	(dummy-left-qsx_observe-box_a1_p1-1_b0 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-qsx_observe-box_a1_p1-1_b0 ?dd - dummy)
	(pre-pbu_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-qsx_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-qsx_observe-box_a1_p1-1_b0 dd)(immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd)(agent-at a1 p1-1)(can-observe a1 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-qsx_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-qsx_observe-box_a1_p1-1_b0 dd)(not (dummy-left-qsx_observe-box_a1_p1-1_b0 dd))(not (dummy-right-qsx_observe-box_a1_p1-1_b0 dd)))
	:effect (and (immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd) )
)
(:action dummy-left-qsx_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-qsx_observe-box_a1_p1-1_b0 dd)(agent-at a1 p1-1)(can-observe a1 b0)(not (box-at b0 p1-1))(immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (init-qsx_observe-box_a1_p1-1_b0 dd))(not (immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd))(dummy-left-qsx_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-right-qsx_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-qsx_observe-box_a1_p1-1_b0 dd)(agent-at a1 p1-1)(can-observe a1 b0)(box-at b0 p1-1)(immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (init-qsx_observe-box_a1_p1-1_b0 dd))(not (immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd))(dummy-right-qsx_observe-box_a1_p1-1_b0 dd))
)
(:action goal-achieve-left-qsx_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-qsx_observe-box_a1_p1-1_b0 dd)(not (box-at b0 p1-1)))
	:effect (and (done-goal dd)(not (dummy-left-qsx_observe-box_a1_p1-1_b0 dd)))
)
(:action act-pbu_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qsx_observe-box_a1_p1-1_b0 dd)(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-pbu_joint-push_p1-1_p1-2_b0_a1_a4 dd))
)
(:action goal-achieve-pbu_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-pbu_joint-push_p1-1_p1-2_b0_a1_a4 dd))
	:effect (and (done-goal dd)(not (pre-pbu_joint-push_p1-1_p1-2_b0_a1_a4 dd)))
)
)