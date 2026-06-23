(define (domain box-3-a4)
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
	a4 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-ffu_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-ffu_observe-box_a2_p2-1_b1 ?dd - dummy)
	(dummy-left-ffu_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-eyn_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-eyn_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-ul2_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-left-ul2_observe-box_a3_p3-1_b2 ?dd - dummy)
	(immediate-dummy-s0r_observe-box_a4_p4-2_b3 ?dd - dummy)
	(dummy-left-s0r_observe-box_a4_p4-2_b3 ?dd - dummy)
	(pre-j4s_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-s0r_observe-box_a4_p4-2_b3 ?dd - dummy)
	(dummy-right-ul2_observe-box_a3_p3-1_b2 ?dd - dummy)
	(immediate-dummy-gw2_observe-box_a4_p4-1_b3 ?dd - dummy)
	(dummy-left-gw2_observe-box_a4_p4-1_b3 ?dd - dummy)
	(dummy-right-gw2_observe-box_a4_p4-1_b3 ?dd - dummy)
	(pre-335_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
	(dummy-right-eyn_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-kwm_observe-box_a3_p4-1_b3 ?dd - dummy)
	(dummy-left-kwm_observe-box_a3_p4-1_b3 ?dd - dummy)
	(dummy-right-kwm_observe-box_a3_p4-1_b3 ?dd - dummy)
	(pre-7ot_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
	(dummy-right-ffu_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-p1z_observe-box_a4_p4-1_b3 ?dd - dummy)
	(dummy-left-p1z_observe-box_a4_p4-1_b3 ?dd - dummy)
	(dummy-right-p1z_observe-box_a4_p4-1_b3 ?dd - dummy)
	(pre-3d9_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-ffu_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-ffu_observe-box_a2_p2-1_b1 dd)(immediate-dummy-ffu_observe-box_a2_p2-1_b1 dd)(agent-at a4 p2-1)(can-observe a4 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-ffu_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-ffu_observe-box_a2_p2-1_b1 dd)(not (dummy-left-ffu_observe-box_a2_p2-1_b1 dd))(not (dummy-right-ffu_observe-box_a2_p2-1_b1 dd)))
	:effect (and (immediate-dummy-ffu_observe-box_a2_p2-1_b1 dd) )
)
(:action dummy-left-ffu_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-ffu_observe-box_a2_p2-1_b1 dd)(agent-at a4 p2-1)(can-observe a4 b1)(not (box-at b1 p2-1))(immediate-dummy-ffu_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-ffu_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-ffu_observe-box_a2_p2-1_b1 dd))(dummy-left-ffu_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-right-ffu_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-ffu_observe-box_a2_p2-1_b1 dd)(agent-at a4 p2-1)(can-observe a4 b1)(box-at b1 p2-1)(immediate-dummy-ffu_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-ffu_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-ffu_observe-box_a2_p2-1_b1 dd))(dummy-right-ffu_observe-box_a2_p2-1_b1 dd))
)
(:action act-eyn_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ffu_observe-box_a2_p2-1_b1 dd)(immediate-dummy-eyn_observe-box_a1_p1-2_b0 dd)(not (box-at b1 p2-1))(agent-at a4 p1-2)(can-observe a4 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-eyn_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ffu_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a4 p1-2)(can-observe a4 b0)(not (dummy-left-eyn_observe-box_a1_p1-2_b0 dd))(not (dummy-right-eyn_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-eyn_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-eyn_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ffu_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a4 p1-2)(can-observe a4 b0)(not (box-at b0 p1-2))(immediate-dummy-eyn_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-eyn_observe-box_a1_p1-2_b0 dd))(dummy-left-eyn_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-eyn_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ffu_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a4 p1-2)(can-observe a4 b0)(box-at b0 p1-2)(immediate-dummy-eyn_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-eyn_observe-box_a1_p1-2_b0 dd))(dummy-right-eyn_observe-box_a1_p1-2_b0 dd))
)
(:action act-ul2_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-eyn_observe-box_a1_p1-2_b0 dd)(immediate-dummy-ul2_observe-box_a3_p3-1_b2 dd)(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p3-1)(can-observe a4 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-ul2_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-eyn_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p3-1)(can-observe a4 b2)(not (dummy-left-ul2_observe-box_a3_p3-1_b2 dd))(not (dummy-right-ul2_observe-box_a3_p3-1_b2 dd)))
	:effect (and (immediate-dummy-ul2_observe-box_a3_p3-1_b2 dd) )
)
(:action dummy-left-ul2_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-eyn_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p3-1)(can-observe a4 b2)(not (box-at b2 p3-1))(immediate-dummy-ul2_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-ul2_observe-box_a3_p3-1_b2 dd))(dummy-left-ul2_observe-box_a3_p3-1_b2 dd))
)
(:action dummy-right-ul2_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-eyn_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p3-1)(can-observe a4 b2)(box-at b2 p3-1)(immediate-dummy-ul2_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-ul2_observe-box_a3_p3-1_b2 dd))(dummy-right-ul2_observe-box_a3_p3-1_b2 dd))
)
(:action act-s0r_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ul2_observe-box_a3_p3-1_b2 dd)(immediate-dummy-s0r_observe-box_a4_p4-2_b3 dd)(not (box-at b2 p3-1))(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p4-2)(can-observe a4 b3))
	:observe (box-at b3 p4-2)
)
(:action act-dummy-s0r_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ul2_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p4-2)(can-observe a4 b3)(not (dummy-left-s0r_observe-box_a4_p4-2_b3 dd))(not (dummy-right-s0r_observe-box_a4_p4-2_b3 dd)))
	:effect (and (immediate-dummy-s0r_observe-box_a4_p4-2_b3 dd) )
)
(:action dummy-left-s0r_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ul2_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p4-2)(can-observe a4 b3)(not (box-at b3 p4-2))(immediate-dummy-s0r_observe-box_a4_p4-2_b3 dd))
	:effect (and (not (immediate-dummy-s0r_observe-box_a4_p4-2_b3 dd))(dummy-left-s0r_observe-box_a4_p4-2_b3 dd))
)
(:action dummy-right-s0r_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ul2_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p4-2)(can-observe a4 b3)(box-at b3 p4-2)(immediate-dummy-s0r_observe-box_a4_p4-2_b3 dd))
	:effect (and (not (immediate-dummy-s0r_observe-box_a4_p4-2_b3 dd))(dummy-right-s0r_observe-box_a4_p4-2_b3 dd))
)
(:action act-j4s_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-s0r_observe-box_a4_p4-2_b3 dd)(not (box-at b3 p4-2))(not (box-at b2 p3-1))(not (box-at b0 p1-2))(not (box-at b1 p2-1))(adj p4-1 p4-2)(agent-at a4 p4-1))
	:effect (and (pre-j4s_joint-push_p4-1_p4-2_b3_a3_a4 dd))
)
(:action goal-achieve-j4s_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-j4s_joint-push_p4-1_p4-2_b3_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-j4s_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
(:action goal-achieve-right-s0r_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-s0r_observe-box_a4_p4-2_b3 dd)(box-at b3 p4-2)(not (box-at b2 p3-1))(not (box-at b0 p1-2))(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-right-s0r_observe-box_a4_p4-2_b3 dd)))
)
(:action act-gw2_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ul2_observe-box_a3_p3-1_b2 dd)(immediate-dummy-gw2_observe-box_a4_p4-1_b3 dd)(box-at b2 p3-1)(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p4-1)(can-observe a4 b3))
	:observe (box-at b3 p4-1)
)
(:action act-dummy-gw2_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ul2_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p4-1)(can-observe a4 b3)(not (dummy-left-gw2_observe-box_a4_p4-1_b3 dd))(not (dummy-right-gw2_observe-box_a4_p4-1_b3 dd)))
	:effect (and (immediate-dummy-gw2_observe-box_a4_p4-1_b3 dd) )
)
(:action dummy-left-gw2_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ul2_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p4-1)(can-observe a4 b3)(not (box-at b3 p4-1))(immediate-dummy-gw2_observe-box_a4_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-gw2_observe-box_a4_p4-1_b3 dd))(dummy-left-gw2_observe-box_a4_p4-1_b3 dd))
)
(:action dummy-right-gw2_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ul2_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(not (box-at b0 p1-2))(not (box-at b1 p2-1))(agent-at a4 p4-1)(can-observe a4 b3)(box-at b3 p4-1)(immediate-dummy-gw2_observe-box_a4_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-gw2_observe-box_a4_p4-1_b3 dd))(dummy-right-gw2_observe-box_a4_p4-1_b3 dd))
)
(:action goal-achieve-left-gw2_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-gw2_observe-box_a4_p4-1_b3 dd)(not (box-at b3 p4-1))(box-at b2 p3-1)(not (box-at b0 p1-2))(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-left-gw2_observe-box_a4_p4-1_b3 dd)))
)
(:action act-335_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-gw2_observe-box_a4_p4-1_b3 dd)(box-at b3 p4-1)(box-at b2 p3-1)(not (box-at b0 p1-2))(not (box-at b1 p2-1))(adj p4-1 p4-2)(agent-at a4 p4-1))
	:effect (and (pre-335_joint-push_p4-1_p4-2_b3_a3_a4 dd))
)
(:action goal-achieve-335_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-335_joint-push_p4-1_p4-2_b3_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-335_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
(:action act-kwm_observe-box_a3_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-eyn_observe-box_a1_p1-2_b0 dd)(immediate-dummy-kwm_observe-box_a3_p4-1_b3 dd)(box-at b0 p1-2)(not (box-at b1 p2-1))(agent-at a4 p4-1)(can-observe a4 b3))
	:observe (box-at b3 p4-1)
)
(:action act-dummy-kwm_observe-box_a3_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-eyn_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(not (box-at b1 p2-1))(agent-at a4 p4-1)(can-observe a4 b3)(not (dummy-left-kwm_observe-box_a3_p4-1_b3 dd))(not (dummy-right-kwm_observe-box_a3_p4-1_b3 dd)))
	:effect (and (immediate-dummy-kwm_observe-box_a3_p4-1_b3 dd) )
)
(:action dummy-left-kwm_observe-box_a3_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-eyn_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(not (box-at b1 p2-1))(agent-at a4 p4-1)(can-observe a4 b3)(not (box-at b3 p4-1))(immediate-dummy-kwm_observe-box_a3_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-kwm_observe-box_a3_p4-1_b3 dd))(dummy-left-kwm_observe-box_a3_p4-1_b3 dd))
)
(:action dummy-right-kwm_observe-box_a3_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-eyn_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(not (box-at b1 p2-1))(agent-at a4 p4-1)(can-observe a4 b3)(box-at b3 p4-1)(immediate-dummy-kwm_observe-box_a3_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-kwm_observe-box_a3_p4-1_b3 dd))(dummy-right-kwm_observe-box_a3_p4-1_b3 dd))
)
(:action goal-achieve-left-kwm_observe-box_a3_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-kwm_observe-box_a3_p4-1_b3 dd)(not (box-at b3 p4-1))(box-at b0 p1-2)(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-left-kwm_observe-box_a3_p4-1_b3 dd)))
)
(:action act-7ot_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kwm_observe-box_a3_p4-1_b3 dd)(box-at b3 p4-1)(box-at b0 p1-2)(not (box-at b1 p2-1))(adj p4-1 p4-2)(agent-at a4 p4-1))
	:effect (and (pre-7ot_joint-push_p4-1_p4-2_b3_a3_a4 dd))
)
(:action goal-achieve-7ot_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-7ot_joint-push_p4-1_p4-2_b3_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-7ot_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
(:action act-p1z_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ffu_observe-box_a2_p2-1_b1 dd)(immediate-dummy-p1z_observe-box_a4_p4-1_b3 dd)(box-at b1 p2-1)(agent-at a4 p4-1)(can-observe a4 b3))
	:observe (box-at b3 p4-1)
)
(:action act-dummy-p1z_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ffu_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a4 p4-1)(can-observe a4 b3)(not (dummy-left-p1z_observe-box_a4_p4-1_b3 dd))(not (dummy-right-p1z_observe-box_a4_p4-1_b3 dd)))
	:effect (and (immediate-dummy-p1z_observe-box_a4_p4-1_b3 dd) )
)
(:action dummy-left-p1z_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ffu_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a4 p4-1)(can-observe a4 b3)(not (box-at b3 p4-1))(immediate-dummy-p1z_observe-box_a4_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-p1z_observe-box_a4_p4-1_b3 dd))(dummy-left-p1z_observe-box_a4_p4-1_b3 dd))
)
(:action dummy-right-p1z_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ffu_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a4 p4-1)(can-observe a4 b3)(box-at b3 p4-1)(immediate-dummy-p1z_observe-box_a4_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-p1z_observe-box_a4_p4-1_b3 dd))(dummy-right-p1z_observe-box_a4_p4-1_b3 dd))
)
(:action goal-achieve-left-p1z_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-p1z_observe-box_a4_p4-1_b3 dd)(not (box-at b3 p4-1))(box-at b1 p2-1))
	:effect (and (done-goal dd)(not (dummy-left-p1z_observe-box_a4_p4-1_b3 dd)))
)
(:action act-3d9_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-p1z_observe-box_a4_p4-1_b3 dd)(box-at b3 p4-1)(box-at b1 p2-1)(adj p4-1 p4-2)(agent-at a4 p4-1))
	:effect (and (pre-3d9_joint-push_p4-1_p4-2_b3_a3_a4 dd))
)
(:action goal-achieve-3d9_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-3d9_joint-push_p4-1_p4-2_b3_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-3d9_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
)