(define (domain box-3-a3)
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
	a3 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-lhg_observe-box_a3_p2-1_b1 ?dd - dummy)
	(immediate-dummy-lhg_observe-box_a3_p2-1_b1 ?dd - dummy)
	(dummy-left-lhg_observe-box_a3_p2-1_b1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-lhg_observe-box_a3_p2-1_b1 ?dd - dummy)
	(pre-ceg_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-lhg_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-lhg_observe-box_a3_p2-1_b1 dd)(immediate-dummy-lhg_observe-box_a3_p2-1_b1 dd)(agent-at a3 p2-1)(can-observe a3 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-lhg_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-lhg_observe-box_a3_p2-1_b1 dd)(not (dummy-left-lhg_observe-box_a3_p2-1_b1 dd))(not (dummy-right-lhg_observe-box_a3_p2-1_b1 dd)))
	:effect (and (immediate-dummy-lhg_observe-box_a3_p2-1_b1 dd) )
)
(:action dummy-left-lhg_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-lhg_observe-box_a3_p2-1_b1 dd)(agent-at a3 p2-1)(can-observe a3 b1)(not (box-at b1 p2-1))(immediate-dummy-lhg_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (init-lhg_observe-box_a3_p2-1_b1 dd))(not (immediate-dummy-lhg_observe-box_a3_p2-1_b1 dd))(dummy-left-lhg_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-right-lhg_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-lhg_observe-box_a3_p2-1_b1 dd)(agent-at a3 p2-1)(can-observe a3 b1)(box-at b1 p2-1)(immediate-dummy-lhg_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (init-lhg_observe-box_a3_p2-1_b1 dd))(not (immediate-dummy-lhg_observe-box_a3_p2-1_b1 dd))(dummy-right-lhg_observe-box_a3_p2-1_b1 dd))
)
(:action goal-achieve-left-lhg_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-lhg_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-left-lhg_observe-box_a3_p2-1_b1 dd)))
)
(:action act-ceg_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-lhg_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-ceg_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-ceg_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-ceg_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-ceg_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
)