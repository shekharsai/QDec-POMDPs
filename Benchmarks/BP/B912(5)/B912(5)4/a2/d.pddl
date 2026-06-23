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
	p5-1 - pos
	p5-2 - pos
	b0 - box
	b1 - box
	b2 - box
	b4 - box
	b5 - box
	a2 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-4xw_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-4xw_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-4xw_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-saj_observe-box_a2_p2-2_b1 ?dd - dummy)
	(dummy-left-saj_observe-box_a2_p2-2_b1 ?dd - dummy)
	(pre-1yq_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(pre-jr7_joint-push_p1-1_p1-2_b0_a1_a2 ?dd - dummy)
	(immediate-dummy-prb_observe-box_a2_p3-1_b2 ?dd - dummy)
	(dummy-left-prb_observe-box_a2_p3-1_b2 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-prb_observe-box_a2_p3-1_b2 ?dd - dummy)
	(pre-hpk_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
	(dummy-right-saj_observe-box_a2_p2-2_b1 ?dd - dummy)
	(pre-m3o_joint-push_p1-1_p1-2_b0_a1_a2 ?dd - dummy)
	(dummy-right-4xw_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-grs_observe-box_a2_p2-2_b1 ?dd - dummy)
	(dummy-left-grs_observe-box_a2_p2-2_b1 ?dd - dummy)
	(pre-wrq_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(immediate-dummy-qlx_observe-box_a2_p3-1_b2 ?dd - dummy)
	(dummy-left-qlx_observe-box_a2_p3-1_b2 ?dd - dummy)
	(dummy-right-qlx_observe-box_a2_p3-1_b2 ?dd - dummy)
	(pre-syc_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
	(dummy-right-grs_observe-box_a2_p2-2_b1 ?dd - dummy)
	(immediate-dummy-1qp_observe-box_a4_p4-2_b4 ?dd - dummy)
	(dummy-left-1qp_observe-box_a4_p4-2_b4 ?dd - dummy)
	(immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
	(dummy-left-7wm_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
	(pre-wr0_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
	(dummy-right-7wm_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
	(dummy-right-1qp_observe-box_a4_p4-2_b4 ?dd - dummy)
	(immediate-dummy-l0x_observe-box_a5_p5-2_b5 ?dd - dummy)
	(dummy-left-l0x_observe-box_a5_p5-2_b5 ?dd - dummy)
	(immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
	(dummy-left-hlc_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
	(pre-bbi_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
	(dummy-right-hlc_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
	(dummy-right-l0x_observe-box_a5_p5-2_b5 ?dd - dummy)
	(immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 ?dd - dummy)
	(dummy-left-3tw_observe-box-qyt_a4_p3-1_b2 ?dd - dummy)
	(dummy-right-3tw_observe-box-qyt_a4_p3-1_b2 ?dd - dummy)
	(pre-lyf_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-4xw_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-4xw_observe-box_a1_p1-2_b0 dd)(immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd)(agent-at a2 p1-2)(can-observe a2 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-4xw_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-4xw_observe-box_a1_p1-2_b0 dd)(not (dummy-left-4xw_observe-box_a1_p1-2_b0 dd))(not (dummy-right-4xw_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-4xw_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-4xw_observe-box_a1_p1-2_b0 dd)(agent-at a2 p1-2)(can-observe a2 b0)(not (box-at b0 p1-2))(immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (init-4xw_observe-box_a1_p1-2_b0 dd))(not (immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd))(dummy-left-4xw_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-4xw_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-4xw_observe-box_a1_p1-2_b0 dd)(agent-at a2 p1-2)(can-observe a2 b0)(box-at b0 p1-2)(immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (init-4xw_observe-box_a1_p1-2_b0 dd))(not (immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd))(dummy-right-4xw_observe-box_a1_p1-2_b0 dd))
)
(:action act-saj_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4xw_observe-box_a1_p1-2_b0 dd)(immediate-dummy-saj_observe-box_a2_p2-2_b1 dd)(not (box-at b0 p1-2))(agent-at a2 p2-2)(can-observe a2 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-saj_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4xw_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a2 p2-2)(can-observe a2 b1)(not (dummy-left-saj_observe-box_a2_p2-2_b1 dd))(not (dummy-right-saj_observe-box_a2_p2-2_b1 dd)))
	:effect (and (immediate-dummy-saj_observe-box_a2_p2-2_b1 dd) )
)
(:action dummy-left-saj_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4xw_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a2 p2-2)(can-observe a2 b1)(not (box-at b1 p2-2))(immediate-dummy-saj_observe-box_a2_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-saj_observe-box_a2_p2-2_b1 dd))(dummy-left-saj_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-saj_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4xw_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a2 p2-2)(can-observe a2 b1)(box-at b1 p2-2)(immediate-dummy-saj_observe-box_a2_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-saj_observe-box_a2_p2-2_b1 dd))(dummy-right-saj_observe-box_a2_p2-2_b1 dd))
)
(:action act-1yq_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-saj_observe-box_a2_p2-2_b1 dd)(not (box-at b1 p2-2))(not (box-at b0 p1-2))(adj p2-1 p2-2)(agent-at a2 p2-1))
	:effect (and (pre-1yq_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action act-jr7_joint-push_p1-1_p1-2_b0_a1_a2
	:parameters ( ?a - agent )
	:precondition (and (pre-1yq_joint-push_p2-1_p2-2_b1_a2_a3 dd)(adj p1-1 p1-2)(agent-at a2 p1-1))
	:effect (and (pre-jr7_joint-push_p1-1_p1-2_b0_a1_a2 dd)(not (pre-1yq_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
(:action act-prb_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-jr7_joint-push_p1-1_p1-2_b0_a1_a2 dd)(immediate-dummy-prb_observe-box_a2_p3-1_b2 dd)(agent-at a2 p3-1)(can-observe a2 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-prb_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-jr7_joint-push_p1-1_p1-2_b0_a1_a2 dd)(agent-at a2 p3-1)(can-observe a2 b2)(not (dummy-left-prb_observe-box_a2_p3-1_b2 dd))(not (dummy-right-prb_observe-box_a2_p3-1_b2 dd)))
	:effect (and (immediate-dummy-prb_observe-box_a2_p3-1_b2 dd) )
)
(:action dummy-left-prb_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p3-1)(can-observe a2 b2)(not (box-at b2 p3-1))(immediate-dummy-prb_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-prb_observe-box_a2_p3-1_b2 dd))(dummy-left-prb_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-prb_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p3-1)(can-observe a2 b2)(box-at b2 p3-1)(immediate-dummy-prb_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-prb_observe-box_a2_p3-1_b2 dd))(dummy-right-prb_observe-box_a2_p3-1_b2 dd))
)
(:action goal-achieve-left-prb_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-prb_observe-box_a2_p3-1_b2 dd)(not (box-at b2 p3-1)))
	:effect (and (done-goal dd)(not (dummy-left-prb_observe-box_a2_p3-1_b2 dd)))
)
(:action act-hpk_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-prb_observe-box_a2_p3-1_b2 dd)(box-at b2 p3-1)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-hpk_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-hpk_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-hpk_joint-push_p3-1_p3-2_b2_a2_a4 dd))
	:effect (and (done-goal dd)(not (pre-hpk_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
(:action act-m3o_joint-push_p1-1_p1-2_b0_a1_a2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-saj_observe-box_a2_p2-2_b1 dd)(box-at b1 p2-2)(not (box-at b0 p1-2))(adj p1-1 p1-2)(agent-at a2 p1-1))
	:effect (and (pre-m3o_joint-push_p1-1_p1-2_b0_a1_a2 dd))
)
(:action goal-achieve-m3o_joint-push_p1-1_p1-2_b0_a1_a2
	:parameters ( ?a - agent )
	:precondition (and (pre-m3o_joint-push_p1-1_p1-2_b0_a1_a2 dd))
	:effect (and (done-goal dd)(not (pre-m3o_joint-push_p1-1_p1-2_b0_a1_a2 dd)))
)
(:action act-grs_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4xw_observe-box_a1_p1-2_b0 dd)(immediate-dummy-grs_observe-box_a2_p2-2_b1 dd)(box-at b0 p1-2)(agent-at a2 p2-2)(can-observe a2 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-grs_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4xw_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a2 p2-2)(can-observe a2 b1)(not (dummy-left-grs_observe-box_a2_p2-2_b1 dd))(not (dummy-right-grs_observe-box_a2_p2-2_b1 dd)))
	:effect (and (immediate-dummy-grs_observe-box_a2_p2-2_b1 dd) )
)
(:action dummy-left-grs_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4xw_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a2 p2-2)(can-observe a2 b1)(not (box-at b1 p2-2))(immediate-dummy-grs_observe-box_a2_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-grs_observe-box_a2_p2-2_b1 dd))(dummy-left-grs_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-grs_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4xw_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a2 p2-2)(can-observe a2 b1)(box-at b1 p2-2)(immediate-dummy-grs_observe-box_a2_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-grs_observe-box_a2_p2-2_b1 dd))(dummy-right-grs_observe-box_a2_p2-2_b1 dd))
)
(:action act-wrq_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-grs_observe-box_a2_p2-2_b1 dd)(not (box-at b1 p2-2))(box-at b0 p1-2)(adj p2-1 p2-2)(agent-at a2 p2-1))
	:effect (and (pre-wrq_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action act-qlx_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-wrq_joint-push_p2-1_p2-2_b1_a2_a3 dd)(immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd)(agent-at a2 p3-1)(can-observe a2 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-qlx_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-wrq_joint-push_p2-1_p2-2_b1_a2_a3 dd)(agent-at a2 p3-1)(can-observe a2 b2)(not (dummy-left-qlx_observe-box_a2_p3-1_b2 dd))(not (dummy-right-qlx_observe-box_a2_p3-1_b2 dd)))
	:effect (and (immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd) )
)
(:action dummy-left-qlx_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p3-1)(can-observe a2 b2)(not (box-at b2 p3-1))(immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd))(dummy-left-qlx_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-qlx_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p3-1)(can-observe a2 b2)(box-at b2 p3-1)(immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd))(dummy-right-qlx_observe-box_a2_p3-1_b2 dd))
)
(:action goal-achieve-left-qlx_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-qlx_observe-box_a2_p3-1_b2 dd)(not (box-at b2 p3-1)))
	:effect (and (done-goal dd)(not (dummy-left-qlx_observe-box_a2_p3-1_b2 dd)))
)
(:action act-syc_joint-push_p3-1_p3-2_b2_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qlx_observe-box_a2_p3-1_b2 dd)(box-at b2 p3-1)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-syc_joint-push_p3-1_p3-2_b2_a2_a5 dd))
)
(:action goal-achieve-syc_joint-push_p3-1_p3-2_b2_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (pre-syc_joint-push_p3-1_p3-2_b2_a2_a5 dd))
	:effect (and (done-goal dd)(not (pre-syc_joint-push_p3-1_p3-2_b2_a2_a5 dd)))
)
(:action act-1qp_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-grs_observe-box_a2_p2-2_b1 dd)(immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p4-2)(can-observe a2 b4))
	:observe (box-at b4 p4-2)
)
(:action act-dummy-1qp_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-grs_observe-box_a2_p2-2_b1 dd)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p4-2)(can-observe a2 b4)(not (dummy-left-1qp_observe-box_a4_p4-2_b4 dd))(not (dummy-right-1qp_observe-box_a4_p4-2_b4 dd)))
	:effect (and (immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd) )
)
(:action dummy-left-1qp_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-grs_observe-box_a2_p2-2_b1 dd)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p4-2)(can-observe a2 b4)(not (box-at b4 p4-2))(immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd))(dummy-left-1qp_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-1qp_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-grs_observe-box_a2_p2-2_b1 dd)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p4-2)(can-observe a2 b4)(box-at b4 p4-2)(immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd))(dummy-right-1qp_observe-box_a4_p4-2_b4 dd))
)
(:action act-7wm_observe-box-5gx_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1qp_observe-box_a4_p4-2_b4 dd)(immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd)(not (box-at b4 p4-2))(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-2)(can-observe a2 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-7wm_observe-box-5gx_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1qp_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-2)(can-observe a2 b2)(not (dummy-left-7wm_observe-box-5gx_a2_p3-2_b2 dd))(not (dummy-right-7wm_observe-box-5gx_a2_p3-2_b2 dd)))
	:effect (and (immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd) )
)
(:action dummy-left-7wm_observe-box-5gx_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1qp_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-2)(can-observe a2 b2)(not (box-at b2 p3-2))(immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd))(dummy-left-7wm_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action dummy-right-7wm_observe-box-5gx_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1qp_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-2)(can-observe a2 b2)(box-at b2 p3-2)(immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd))(dummy-right-7wm_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action act-wr0_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7wm_observe-box-5gx_a2_p3-2_b2 dd)(not (box-at b4 p4-2))(box-at b1 p2-2)(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-wr0_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-wr0_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-wr0_joint-push_p3-1_p3-2_b2_a2_a4 dd))
	:effect (and (done-goal dd)(not (pre-wr0_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
(:action goal-achieve-right-7wm_observe-box-5gx_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7wm_observe-box-5gx_a2_p3-2_b2 dd)(not (box-at b4 p4-2))(box-at b1 p2-2)(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-right-7wm_observe-box-5gx_a2_p3-2_b2 dd)))
)
(:action act-l0x_observe-box_a5_p5-2_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1qp_observe-box_a4_p4-2_b4 dd)(immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd)(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p5-2)(can-observe a2 b5))
	:observe (box-at b5 p5-2)
)
(:action act-dummy-l0x_observe-box_a5_p5-2_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1qp_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p5-2)(can-observe a2 b5)(not (dummy-left-l0x_observe-box_a5_p5-2_b5 dd))(not (dummy-right-l0x_observe-box_a5_p5-2_b5 dd)))
	:effect (and (immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd) )
)
(:action dummy-left-l0x_observe-box_a5_p5-2_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1qp_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p5-2)(can-observe a2 b5)(not (box-at b5 p5-2))(immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd))
	:effect (and (not (immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd))(dummy-left-l0x_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-right-l0x_observe-box_a5_p5-2_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1qp_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p5-2)(can-observe a2 b5)(box-at b5 p5-2)(immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd))
	:effect (and (not (immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd))(dummy-right-l0x_observe-box_a5_p5-2_b5 dd))
)
(:action act-hlc_observe-box-5gx_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-l0x_observe-box_a5_p5-2_b5 dd)(immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd)(not (box-at b5 p5-2))(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-2)(can-observe a2 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-hlc_observe-box-5gx_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-l0x_observe-box_a5_p5-2_b5 dd)(not (box-at b5 p5-2))(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-2)(can-observe a2 b2)(not (dummy-left-hlc_observe-box-5gx_a2_p3-2_b2 dd))(not (dummy-right-hlc_observe-box-5gx_a2_p3-2_b2 dd)))
	:effect (and (immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd) )
)
(:action dummy-left-hlc_observe-box-5gx_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-l0x_observe-box_a5_p5-2_b5 dd)(not (box-at b5 p5-2))(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-2)(can-observe a2 b2)(not (box-at b2 p3-2))(immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd))(dummy-left-hlc_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action dummy-right-hlc_observe-box-5gx_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-l0x_observe-box_a5_p5-2_b5 dd)(not (box-at b5 p5-2))(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-2)(can-observe a2 b2)(box-at b2 p3-2)(immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd))(dummy-right-hlc_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action act-bbi_joint-push_p3-1_p3-2_b2_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hlc_observe-box-5gx_a2_p3-2_b2 dd)(not (box-at b5 p5-2))(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-bbi_joint-push_p3-1_p3-2_b2_a2_a5 dd))
)
(:action goal-achieve-bbi_joint-push_p3-1_p3-2_b2_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (pre-bbi_joint-push_p3-1_p3-2_b2_a2_a5 dd))
	:effect (and (done-goal dd)(not (pre-bbi_joint-push_p3-1_p3-2_b2_a2_a5 dd)))
)
(:action goal-achieve-right-hlc_observe-box-5gx_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hlc_observe-box-5gx_a2_p3-2_b2 dd)(not (box-at b5 p5-2))(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-right-hlc_observe-box-5gx_a2_p3-2_b2 dd)))
)
(:action act-3tw_observe-box-qyt_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-l0x_observe-box_a5_p5-2_b5 dd)(immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd)(box-at b5 p5-2)(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-1)(can-observe a2 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-3tw_observe-box-qyt_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-l0x_observe-box_a5_p5-2_b5 dd)(box-at b5 p5-2)(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-1)(can-observe a2 b2)(not (dummy-left-3tw_observe-box-qyt_a4_p3-1_b2 dd))(not (dummy-right-3tw_observe-box-qyt_a4_p3-1_b2 dd)))
	:effect (and (immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd) )
)
(:action dummy-left-3tw_observe-box-qyt_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-l0x_observe-box_a5_p5-2_b5 dd)(box-at b5 p5-2)(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-1)(can-observe a2 b2)(not (box-at b2 p3-1))(immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd))(dummy-left-3tw_observe-box-qyt_a4_p3-1_b2 dd))
)
(:action dummy-right-3tw_observe-box-qyt_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-l0x_observe-box_a5_p5-2_b5 dd)(box-at b5 p5-2)(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(agent-at a2 p3-1)(can-observe a2 b2)(box-at b2 p3-1)(immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd))(dummy-right-3tw_observe-box-qyt_a4_p3-1_b2 dd))
)
(:action goal-achieve-left-3tw_observe-box-qyt_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3tw_observe-box-qyt_a4_p3-1_b2 dd)(box-at b5 p5-2)(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-left-3tw_observe-box-qyt_a4_p3-1_b2 dd)))
)
(:action act-lyf_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3tw_observe-box-qyt_a4_p3-1_b2 dd)(box-at b5 p5-2)(box-at b4 p4-2)(box-at b1 p2-2)(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-lyf_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-lyf_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-lyf_joint-push_p3-1_p3-2_b2_a2_a4 dd))
	:effect (and (done-goal dd)(not (pre-lyf_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
)