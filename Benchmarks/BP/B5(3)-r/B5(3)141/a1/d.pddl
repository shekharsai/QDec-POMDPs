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
	b2 - box
	a1 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a1 - agent ?b1 - box )
	(init-px4_observe-box_p1-1_a1_b0 ?dd - dummy)
	(immediate-dummy-px4_observe-box_p1-1_a1_b0 ?dd - dummy)
	(dummy-left-px4_observe-box_p1-1_a1_b0 ?dd - dummy)
	(immediate-dummy-uij_observe-box_p2-2_a3_b1 ?dd - dummy)
	(dummy-left-uij_observe-box_p2-2_a3_b1 ?dd - dummy)
	(pre-vcl_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-uij_observe-box_p2-2_a3_b1 ?dd - dummy)
	(dummy-right-px4_observe-box_p1-1_a1_b0 ?dd - dummy)
	(immediate-dummy-10e_observe-box_p3-2_a2_b2 ?dd - dummy)
	(dummy-left-10e_observe-box_p3-2_a2_b2 ?dd - dummy)
	(immediate-dummy-h85_observe-box_p2-1_a3_b1 ?dd - dummy)
	(dummy-left-h85_observe-box_p2-1_a3_b1 ?dd - dummy)
	(pre-8l0_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(dummy-right-h85_observe-box_p2-1_a3_b1 ?dd - dummy)
	(pre-hc2_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(pre-x1s_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(dummy-right-10e_observe-box_p3-2_a2_b2 ?dd - dummy)
	(immediate-dummy-3pa_observe-box_p2-2_a3_b1 ?dd - dummy)
	(dummy-left-3pa_observe-box_p2-2_a3_b1 ?dd - dummy)
	(pre-u5y_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(pre-aqd_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(dummy-right-3pa_observe-box_p2-2_a3_b1 ?dd - dummy)
	(pre-m40_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-px4_observe-box_p1-1_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-px4_observe-box_p1-1_a1_b0 dd)(immediate-dummy-px4_observe-box_p1-1_a1_b0 dd)(agent-at a1 p1-1)(can-observe a1 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-px4_observe-box_p1-1_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-px4_observe-box_p1-1_a1_b0 dd)(not (dummy-left-px4_observe-box_p1-1_a1_b0 dd))(not (dummy-right-px4_observe-box_p1-1_a1_b0 dd)))
	:effect (and (immediate-dummy-px4_observe-box_p1-1_a1_b0 dd) )
)
(:action dummy-left-px4_observe-box_p1-1_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-px4_observe-box_p1-1_a1_b0 dd)(agent-at a1 p1-1)(can-observe a1 b0)(not (box-at b0 p1-1))(immediate-dummy-px4_observe-box_p1-1_a1_b0 dd))
	:effect (and (not (init-px4_observe-box_p1-1_a1_b0 dd))(not (immediate-dummy-px4_observe-box_p1-1_a1_b0 dd))(dummy-left-px4_observe-box_p1-1_a1_b0 dd))
)
(:action dummy-right-px4_observe-box_p1-1_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-px4_observe-box_p1-1_a1_b0 dd)(agent-at a1 p1-1)(can-observe a1 b0)(box-at b0 p1-1)(immediate-dummy-px4_observe-box_p1-1_a1_b0 dd))
	:effect (and (not (init-px4_observe-box_p1-1_a1_b0 dd))(not (immediate-dummy-px4_observe-box_p1-1_a1_b0 dd))(dummy-right-px4_observe-box_p1-1_a1_b0 dd))
)
(:action act-uij_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-px4_observe-box_p1-1_a1_b0 dd)(immediate-dummy-uij_observe-box_p2-2_a3_b1 dd)(not (box-at b0 p1-1))(agent-at a1 p2-2)(can-observe a1 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-uij_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-px4_observe-box_p1-1_a1_b0 dd)(not (box-at b0 p1-1))(agent-at a1 p2-2)(can-observe a1 b1)(not (dummy-left-uij_observe-box_p2-2_a3_b1 dd))(not (dummy-right-uij_observe-box_p2-2_a3_b1 dd)))
	:effect (and (immediate-dummy-uij_observe-box_p2-2_a3_b1 dd) )
)
(:action dummy-left-uij_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-px4_observe-box_p1-1_a1_b0 dd)(not (box-at b0 p1-1))(agent-at a1 p2-2)(can-observe a1 b1)(not (box-at b1 p2-2))(immediate-dummy-uij_observe-box_p2-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-uij_observe-box_p2-2_a3_b1 dd))(dummy-left-uij_observe-box_p2-2_a3_b1 dd))
)
(:action dummy-right-uij_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-px4_observe-box_p1-1_a1_b0 dd)(not (box-at b0 p1-1))(agent-at a1 p2-2)(can-observe a1 b1)(box-at b1 p2-2)(immediate-dummy-uij_observe-box_p2-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-uij_observe-box_p2-2_a3_b1 dd))(dummy-right-uij_observe-box_p2-2_a3_b1 dd))
)
(:action act-vcl_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uij_observe-box_p2-2_a3_b1 dd)(not (box-at b1 p2-2))(not (box-at b0 p1-1))(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-vcl_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-vcl_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-vcl_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-vcl_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action goal-achieve-right-uij_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uij_observe-box_p2-2_a3_b1 dd)(box-at b1 p2-2)(not (box-at b0 p1-1)))
	:effect (and (done-goal dd)(not (dummy-right-uij_observe-box_p2-2_a3_b1 dd)))
)
(:action act-10e_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-px4_observe-box_p1-1_a1_b0 dd)(immediate-dummy-10e_observe-box_p3-2_a2_b2 dd)(box-at b0 p1-1)(agent-at a1 p3-2)(can-observe a1 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-10e_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-px4_observe-box_p1-1_a1_b0 dd)(box-at b0 p1-1)(agent-at a1 p3-2)(can-observe a1 b2)(not (dummy-left-10e_observe-box_p3-2_a2_b2 dd))(not (dummy-right-10e_observe-box_p3-2_a2_b2 dd)))
	:effect (and (immediate-dummy-10e_observe-box_p3-2_a2_b2 dd) )
)
(:action dummy-left-10e_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-px4_observe-box_p1-1_a1_b0 dd)(box-at b0 p1-1)(agent-at a1 p3-2)(can-observe a1 b2)(not (box-at b2 p3-2))(immediate-dummy-10e_observe-box_p3-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-10e_observe-box_p3-2_a2_b2 dd))(dummy-left-10e_observe-box_p3-2_a2_b2 dd))
)
(:action dummy-right-10e_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-px4_observe-box_p1-1_a1_b0 dd)(box-at b0 p1-1)(agent-at a1 p3-2)(can-observe a1 b2)(box-at b2 p3-2)(immediate-dummy-10e_observe-box_p3-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-10e_observe-box_p3-2_a2_b2 dd))(dummy-right-10e_observe-box_p3-2_a2_b2 dd))
)
(:action act-h85_observe-box_p2-1_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-10e_observe-box_p3-2_a2_b2 dd)(immediate-dummy-h85_observe-box_p2-1_a3_b1 dd)(not (box-at b2 p3-2))(box-at b0 p1-1)(agent-at a1 p2-1)(can-observe a1 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-h85_observe-box_p2-1_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-10e_observe-box_p3-2_a2_b2 dd)(not (box-at b2 p3-2))(box-at b0 p1-1)(agent-at a1 p2-1)(can-observe a1 b1)(not (dummy-left-h85_observe-box_p2-1_a3_b1 dd))(not (dummy-right-h85_observe-box_p2-1_a3_b1 dd)))
	:effect (and (immediate-dummy-h85_observe-box_p2-1_a3_b1 dd) )
)
(:action dummy-left-h85_observe-box_p2-1_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-10e_observe-box_p3-2_a2_b2 dd)(not (box-at b2 p3-2))(box-at b0 p1-1)(agent-at a1 p2-1)(can-observe a1 b1)(not (box-at b1 p2-1))(immediate-dummy-h85_observe-box_p2-1_a3_b1 dd))
	:effect (and (not (immediate-dummy-h85_observe-box_p2-1_a3_b1 dd))(dummy-left-h85_observe-box_p2-1_a3_b1 dd))
)
(:action dummy-right-h85_observe-box_p2-1_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-10e_observe-box_p3-2_a2_b2 dd)(not (box-at b2 p3-2))(box-at b0 p1-1)(agent-at a1 p2-1)(can-observe a1 b1)(box-at b1 p2-1)(immediate-dummy-h85_observe-box_p2-1_a3_b1 dd))
	:effect (and (not (immediate-dummy-h85_observe-box_p2-1_a3_b1 dd))(dummy-right-h85_observe-box_p2-1_a3_b1 dd))
)
(:action act-8l0_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-h85_observe-box_p2-1_a3_b1 dd)(not (box-at b1 p2-1))(not (box-at b2 p3-2))(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-8l0_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action goal-achieve-8l0_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-8l0_joint-push_p1-1_p1-2_b0_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-8l0_joint-push_p1-1_p1-2_b0_a1_a3 dd)))
)
(:action act-hc2_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-h85_observe-box_p2-1_a3_b1 dd)(box-at b1 p2-1)(not (box-at b2 p3-2))(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-hc2_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action act-x1s_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-hc2_joint-push_p1-1_p1-2_b0_a1_a3 dd)(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-x1s_joint-push_p2-1_p2-2_b1_a1_a3 dd)(not (pre-hc2_joint-push_p1-1_p1-2_b0_a1_a3 dd)))
)
(:action goal-achieve-x1s_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-x1s_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-x1s_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action act-3pa_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-10e_observe-box_p3-2_a2_b2 dd)(immediate-dummy-3pa_observe-box_p2-2_a3_b1 dd)(box-at b2 p3-2)(box-at b0 p1-1)(agent-at a1 p2-2)(can-observe a1 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-3pa_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-10e_observe-box_p3-2_a2_b2 dd)(box-at b2 p3-2)(box-at b0 p1-1)(agent-at a1 p2-2)(can-observe a1 b1)(not (dummy-left-3pa_observe-box_p2-2_a3_b1 dd))(not (dummy-right-3pa_observe-box_p2-2_a3_b1 dd)))
	:effect (and (immediate-dummy-3pa_observe-box_p2-2_a3_b1 dd) )
)
(:action dummy-left-3pa_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-10e_observe-box_p3-2_a2_b2 dd)(box-at b2 p3-2)(box-at b0 p1-1)(agent-at a1 p2-2)(can-observe a1 b1)(not (box-at b1 p2-2))(immediate-dummy-3pa_observe-box_p2-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-3pa_observe-box_p2-2_a3_b1 dd))(dummy-left-3pa_observe-box_p2-2_a3_b1 dd))
)
(:action dummy-right-3pa_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-10e_observe-box_p3-2_a2_b2 dd)(box-at b2 p3-2)(box-at b0 p1-1)(agent-at a1 p2-2)(can-observe a1 b1)(box-at b1 p2-2)(immediate-dummy-3pa_observe-box_p2-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-3pa_observe-box_p2-2_a3_b1 dd))(dummy-right-3pa_observe-box_p2-2_a3_b1 dd))
)
(:action act-u5y_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3pa_observe-box_p2-2_a3_b1 dd)(not (box-at b1 p2-2))(box-at b2 p3-2)(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-u5y_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action act-aqd_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-u5y_joint-push_p1-1_p1-2_b0_a1_a3 dd)(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-aqd_joint-push_p2-1_p2-2_b1_a1_a3 dd)(not (pre-u5y_joint-push_p1-1_p1-2_b0_a1_a3 dd)))
)
(:action goal-achieve-aqd_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-aqd_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-aqd_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action act-m40_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3pa_observe-box_p2-2_a3_b1 dd)(box-at b1 p2-2)(box-at b2 p3-2)(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-m40_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action goal-achieve-m40_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-m40_joint-push_p1-1_p1-2_b0_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-m40_joint-push_p1-1_p1-2_b0_a1_a3 dd)))
)
)