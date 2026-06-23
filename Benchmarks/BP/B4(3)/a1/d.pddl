(define (domain box-3-a1)
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
	a1 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-bh1_observe-box_a3_p2-1_b1 ?dd - dummy)
	(immediate-dummy-bh1_observe-box_a3_p2-1_b1 ?dd - dummy)
	(dummy-left-bh1_observe-box_a3_p2-1_b1 ?dd - dummy)
	(immediate-dummy-b97_observe-box_a1_p1-1_b0 ?dd - dummy)
	(dummy-left-b97_observe-box_a1_p1-1_b0 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-b97_observe-box_a1_p1-1_b0 ?dd - dummy)
	(pre-ivo_push-alone_p1-1_p1-2_b0_a1 ?dd - dummy)
	(dummy-right-bh1_observe-box_a3_p2-1_b1 ?dd - dummy)
	(immediate-dummy-oen_observe-box_a1_p1-1_b0 ?dd - dummy)
	(dummy-left-oen_observe-box_a1_p1-1_b0 ?dd - dummy)
	(pre-6tb_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(dummy-right-oen_observe-box_a1_p1-1_b0 ?dd - dummy)
	(pre-qj1_push-alone_p1-1_p1-2_b0_a1 ?dd - dummy)
	(pre-ejr_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-bh1_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-bh1_observe-box_a3_p2-1_b1 dd)(immediate-dummy-bh1_observe-box_a3_p2-1_b1 dd)(agent-at a1 p2-1)(can-observe a1 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-bh1_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-bh1_observe-box_a3_p2-1_b1 dd)(not (dummy-left-bh1_observe-box_a3_p2-1_b1 dd))(not (dummy-right-bh1_observe-box_a3_p2-1_b1 dd)))
	:effect (and (immediate-dummy-bh1_observe-box_a3_p2-1_b1 dd) )
)
(:action dummy-left-bh1_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-bh1_observe-box_a3_p2-1_b1 dd)(agent-at a1 p2-1)(can-observe a1 b1)(not (box-at b1 p2-1))(immediate-dummy-bh1_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (init-bh1_observe-box_a3_p2-1_b1 dd))(not (immediate-dummy-bh1_observe-box_a3_p2-1_b1 dd))(dummy-left-bh1_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-right-bh1_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-bh1_observe-box_a3_p2-1_b1 dd)(agent-at a1 p2-1)(can-observe a1 b1)(box-at b1 p2-1)(immediate-dummy-bh1_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (init-bh1_observe-box_a3_p2-1_b1 dd))(not (immediate-dummy-bh1_observe-box_a3_p2-1_b1 dd))(dummy-right-bh1_observe-box_a3_p2-1_b1 dd))
)
(:action act-b97_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bh1_observe-box_a3_p2-1_b1 dd)(immediate-dummy-b97_observe-box_a1_p1-1_b0 dd)(not (box-at b1 p2-1))(agent-at a1 p1-1)(can-observe a1 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-b97_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bh1_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a1 p1-1)(can-observe a1 b0)(not (dummy-left-b97_observe-box_a1_p1-1_b0 dd))(not (dummy-right-b97_observe-box_a1_p1-1_b0 dd)))
	:effect (and (immediate-dummy-b97_observe-box_a1_p1-1_b0 dd) )
)
(:action dummy-left-b97_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bh1_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a1 p1-1)(can-observe a1 b0)(not (box-at b0 p1-1))(immediate-dummy-b97_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-b97_observe-box_a1_p1-1_b0 dd))(dummy-left-b97_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-right-b97_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bh1_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a1 p1-1)(can-observe a1 b0)(box-at b0 p1-1)(immediate-dummy-b97_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-b97_observe-box_a1_p1-1_b0 dd))(dummy-right-b97_observe-box_a1_p1-1_b0 dd))
)
(:action goal-achieve-left-b97_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-b97_observe-box_a1_p1-1_b0 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-left-b97_observe-box_a1_p1-1_b0 dd)))
)
(:action act-ivo_push-alone_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-b97_observe-box_a1_p1-1_b0 dd)(box-at b0 p1-1)(not (box-at b1 p2-1))(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-ivo_push-alone_p1-1_p1-2_b0_a1 dd))
)
(:action goal-achieve-ivo_push-alone_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (pre-ivo_push-alone_p1-1_p1-2_b0_a1 dd))
	:effect (and (done-goal dd)(not (pre-ivo_push-alone_p1-1_p1-2_b0_a1 dd)))
)
(:action act-oen_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bh1_observe-box_a3_p2-1_b1 dd)(immediate-dummy-oen_observe-box_a1_p1-1_b0 dd)(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-oen_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bh1_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0)(not (dummy-left-oen_observe-box_a1_p1-1_b0 dd))(not (dummy-right-oen_observe-box_a1_p1-1_b0 dd)))
	:effect (and (immediate-dummy-oen_observe-box_a1_p1-1_b0 dd) )
)
(:action dummy-left-oen_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bh1_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0)(not (box-at b0 p1-1))(immediate-dummy-oen_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-oen_observe-box_a1_p1-1_b0 dd))(dummy-left-oen_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-right-oen_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bh1_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0)(box-at b0 p1-1)(immediate-dummy-oen_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-oen_observe-box_a1_p1-1_b0 dd))(dummy-right-oen_observe-box_a1_p1-1_b0 dd))
)
(:action act-6tb_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-oen_observe-box_a1_p1-1_b0 dd)(not (box-at b0 p1-1))(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-6tb_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-6tb_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-6tb_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-6tb_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action act-qj1_push-alone_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-oen_observe-box_a1_p1-1_b0 dd)(box-at b0 p1-1)(box-at b1 p2-1)(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-qj1_push-alone_p1-1_p1-2_b0_a1 dd))
)
(:action act-ejr_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-qj1_push-alone_p1-1_p1-2_b0_a1 dd)(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-ejr_joint-push_p2-1_p2-2_b1_a1_a3 dd)(not (pre-qj1_push-alone_p1-1_p1-2_b0_a1 dd)))
)
(:action goal-achieve-ejr_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-ejr_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-ejr_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
)