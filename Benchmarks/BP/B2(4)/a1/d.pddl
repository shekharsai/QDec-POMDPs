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
	(init-0gp_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-0gp_observe-box_a2_p2-1_b1 ?dd - dummy)
	(dummy-left-0gp_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-h3p_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-h3p_observe-box_a1_p1-2_b0 ?dd - dummy)
	(pre-b3h_one-push_p1-1_p1-2_b0_a1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-h3p_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-right-0gp_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-3e6_observe-box_a4_p4-1_b3 ?dd - dummy)
	(dummy-left-3e6_observe-box_a4_p4-1_b3 ?dd - dummy)
	(immediate-dummy-2lv_observe-box_a1_p1-1_b0 ?dd - dummy)
	(dummy-left-2lv_observe-box_a1_p1-1_b0 ?dd - dummy)
	(dummy-right-2lv_observe-box_a1_p1-1_b0 ?dd - dummy)
	(pre-1hd_one-push_p1-1_p1-2_b0_a1 ?dd - dummy)
	(dummy-right-3e6_observe-box_a4_p4-1_b3 ?dd - dummy)
	(immediate-dummy-p6h_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-p6h_observe-box_a1_p1-2_b0 ?dd - dummy)
	(pre-9fz_joint-push_p2-1_p2-2_b1_a1_a2 ?dd - dummy)
	(pre-w0y_one-push_p1-1_p1-2_b0_a1 ?dd - dummy)
	(dummy-right-p6h_observe-box_a1_p1-2_b0 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-0gp_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-0gp_observe-box_a2_p2-1_b1 dd)(immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd)(agent-at a1 p2-1)(can-observe a1 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-0gp_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-0gp_observe-box_a2_p2-1_b1 dd)(not (dummy-left-0gp_observe-box_a2_p2-1_b1 dd))(not (dummy-right-0gp_observe-box_a2_p2-1_b1 dd)))
	:effect (and (immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd) )
)
(:action dummy-left-0gp_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-0gp_observe-box_a2_p2-1_b1 dd)(agent-at a1 p2-1)(can-observe a1 b1)(not (box-at b1 p2-1))(immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-0gp_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd))(dummy-left-0gp_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-right-0gp_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-0gp_observe-box_a2_p2-1_b1 dd)(agent-at a1 p2-1)(can-observe a1 b1)(box-at b1 p2-1)(immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-0gp_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd))(dummy-right-0gp_observe-box_a2_p2-1_b1 dd))
)
(:action act-h3p_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0gp_observe-box_a2_p2-1_b1 dd)(immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd)(not (box-at b1 p2-1))(agent-at a1 p1-2)(can-observe a1 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-h3p_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0gp_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a1 p1-2)(can-observe a1 b0)(not (dummy-left-h3p_observe-box_a1_p1-2_b0 dd))(not (dummy-right-h3p_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-h3p_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0gp_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a1 p1-2)(can-observe a1 b0)(not (box-at b0 p1-2))(immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd))(dummy-left-h3p_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-h3p_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0gp_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a1 p1-2)(can-observe a1 b0)(box-at b0 p1-2)(immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd))(dummy-right-h3p_observe-box_a1_p1-2_b0 dd))
)
(:action act-b3h_one-push_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-h3p_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(not (box-at b1 p2-1))(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-b3h_one-push_p1-1_p1-2_b0_a1 dd))
)
(:action goal-achieve-b3h_one-push_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (pre-b3h_one-push_p1-1_p1-2_b0_a1 dd))
	:effect (and (done-goal dd)(not (pre-b3h_one-push_p1-1_p1-2_b0_a1 dd)))
)
(:action goal-achieve-right-h3p_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-h3p_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-right-h3p_observe-box_a1_p1-2_b0 dd)))
)
(:action act-3e6_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0gp_observe-box_a2_p2-1_b1 dd)(immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd)(box-at b1 p2-1)(agent-at a1 p4-1)(can-observe a1 b3))
	:observe (box-at b3 p4-1)
)
(:action act-dummy-3e6_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0gp_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a1 p4-1)(can-observe a1 b3)(not (dummy-left-3e6_observe-box_a4_p4-1_b3 dd))(not (dummy-right-3e6_observe-box_a4_p4-1_b3 dd)))
	:effect (and (immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd) )
)
(:action dummy-left-3e6_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0gp_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a1 p4-1)(can-observe a1 b3)(not (box-at b3 p4-1))(immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd))(dummy-left-3e6_observe-box_a4_p4-1_b3 dd))
)
(:action dummy-right-3e6_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0gp_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a1 p4-1)(can-observe a1 b3)(box-at b3 p4-1)(immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd))(dummy-right-3e6_observe-box_a4_p4-1_b3 dd))
)
(:action act-2lv_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3e6_observe-box_a4_p4-1_b3 dd)(immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd)(not (box-at b3 p4-1))(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-2lv_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3e6_observe-box_a4_p4-1_b3 dd)(not (box-at b3 p4-1))(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0)(not (dummy-left-2lv_observe-box_a1_p1-1_b0 dd))(not (dummy-right-2lv_observe-box_a1_p1-1_b0 dd)))
	:effect (and (immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd) )
)
(:action dummy-left-2lv_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3e6_observe-box_a4_p4-1_b3 dd)(not (box-at b3 p4-1))(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0)(not (box-at b0 p1-1))(immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd))(dummy-left-2lv_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-right-2lv_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3e6_observe-box_a4_p4-1_b3 dd)(not (box-at b3 p4-1))(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0)(box-at b0 p1-1)(immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd))(dummy-right-2lv_observe-box_a1_p1-1_b0 dd))
)
(:action goal-achieve-left-2lv_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2lv_observe-box_a1_p1-1_b0 dd)(not (box-at b0 p1-1))(not (box-at b3 p4-1))(box-at b1 p2-1))
	:effect (and (done-goal dd)(not (dummy-left-2lv_observe-box_a1_p1-1_b0 dd)))
)
(:action act-1hd_one-push_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2lv_observe-box_a1_p1-1_b0 dd)(box-at b0 p1-1)(not (box-at b3 p4-1))(box-at b1 p2-1)(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-1hd_one-push_p1-1_p1-2_b0_a1 dd))
)
(:action goal-achieve-1hd_one-push_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (pre-1hd_one-push_p1-1_p1-2_b0_a1 dd))
	:effect (and (done-goal dd)(not (pre-1hd_one-push_p1-1_p1-2_b0_a1 dd)))
)
(:action act-p6h_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3e6_observe-box_a4_p4-1_b3 dd)(immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd)(box-at b3 p4-1)(box-at b1 p2-1)(agent-at a1 p1-2)(can-observe a1 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-p6h_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3e6_observe-box_a4_p4-1_b3 dd)(box-at b3 p4-1)(box-at b1 p2-1)(agent-at a1 p1-2)(can-observe a1 b0)(not (dummy-left-p6h_observe-box_a1_p1-2_b0 dd))(not (dummy-right-p6h_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-p6h_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3e6_observe-box_a4_p4-1_b3 dd)(box-at b3 p4-1)(box-at b1 p2-1)(agent-at a1 p1-2)(can-observe a1 b0)(not (box-at b0 p1-2))(immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd))(dummy-left-p6h_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-p6h_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3e6_observe-box_a4_p4-1_b3 dd)(box-at b3 p4-1)(box-at b1 p2-1)(agent-at a1 p1-2)(can-observe a1 b0)(box-at b0 p1-2)(immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd))(dummy-right-p6h_observe-box_a1_p1-2_b0 dd))
)
(:action act-9fz_joint-push_p2-1_p2-2_b1_a1_a2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-p6h_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(box-at b3 p4-1)(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-9fz_joint-push_p2-1_p2-2_b1_a1_a2 dd))
)
(:action act-w0y_one-push_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (pre-9fz_joint-push_p2-1_p2-2_b1_a1_a2 dd)(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-w0y_one-push_p1-1_p1-2_b0_a1 dd)(not (pre-9fz_joint-push_p2-1_p2-2_b1_a1_a2 dd)))
)
(:action goal-achieve-w0y_one-push_p1-1_p1-2_b0_a1
	:parameters ( ?a - agent )
	:precondition (and (pre-w0y_one-push_p1-1_p1-2_b0_a1 dd))
	:effect (and (done-goal dd)(not (pre-w0y_one-push_p1-1_p1-2_b0_a1 dd)))
)
(:action goal-achieve-right-p6h_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-p6h_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(box-at b3 p4-1)(box-at b1 p2-1))
	:effect (and (done-goal dd)(not (dummy-right-p6h_observe-box_a1_p1-2_b0 dd)))
)
)