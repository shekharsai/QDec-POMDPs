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
	b4 - box
	a4 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-j9b_observe-box_a4_p4-1_b4 ?dd - dummy)
	(immediate-dummy-j9b_observe-box_a4_p4-1_b4 ?dd - dummy)
	(dummy-left-j9b_observe-box_a4_p4-1_b4 ?dd - dummy)
	(immediate-dummy-0mi_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-0mi_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-vgn_observe-box_a3_p2-1_b1 ?dd - dummy)
	(dummy-left-vgn_observe-box_a3_p2-1_b1 ?dd - dummy)
	(immediate-dummy-5s8_observe-box_a4_p3-1_b2 ?dd - dummy)
	(dummy-left-5s8_observe-box_a4_p3-1_b2 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-5s8_observe-box_a4_p3-1_b2 ?dd - dummy)
	(pre-qzq_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(dummy-right-vgn_observe-box_a3_p2-1_b1 ?dd - dummy)
	(immediate-dummy-iqq_observe-box_a4_p3-1_b2 ?dd - dummy)
	(dummy-left-iqq_observe-box_a4_p3-1_b2 ?dd - dummy)
	(pre-aii_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
	(pre-23u_joint-push_p2-1_p2-2_b1_a3_a4 ?dd - dummy)
	(dummy-right-iqq_observe-box_a4_p3-1_b2 ?dd - dummy)
	(pre-k2q_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
	(pre-5oi_joint-push_p2-1_p2-2_b1_a3_a4 ?dd - dummy)
	(pre-9l1_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(dummy-right-0mi_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-4tn_observe-box_a3_p2-2_b1 ?dd - dummy)
	(dummy-left-4tn_observe-box_a3_p2-2_b1 ?dd - dummy)
	(immediate-dummy-tk2_observe-box_a4_p3-1_b2 ?dd - dummy)
	(dummy-left-tk2_observe-box_a4_p3-1_b2 ?dd - dummy)
	(pre-wxh_joint-push_p2-1_p2-2_b1_a3_a4 ?dd - dummy)
	(dummy-right-tk2_observe-box_a4_p3-1_b2 ?dd - dummy)
	(pre-113_joint-push_p2-1_p2-2_b1_a3_a4 ?dd - dummy)
	(pre-bnp_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(dummy-right-4tn_observe-box_a3_p2-2_b1 ?dd - dummy)
	(immediate-dummy-u0y_observe-box_a4_p3-2_b2 ?dd - dummy)
	(dummy-left-u0y_observe-box_a4_p3-2_b2 ?dd - dummy)
	(pre-04a_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(dummy-right-u0y_observe-box_a4_p3-2_b2 ?dd - dummy)
	(dummy-right-j9b_observe-box_a4_p4-1_b4 ?dd - dummy)
	(immediate-dummy-erg_observe-box_a3_p1-1_b0 ?dd - dummy)
	(dummy-left-erg_observe-box_a3_p1-1_b0 ?dd - dummy)
	(pre-qpt_one-push_p4-1_p4-2_b4_a4 ?dd - dummy)
	(immediate-dummy-2z1_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-left-2z1_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-right-2z1_observe-box_a3_p3-1_b2 ?dd - dummy)
	(pre-e6h_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(dummy-right-erg_observe-box_a3_p1-1_b0 ?dd - dummy)
	(pre-hwg_one-push_p4-1_p4-2_b4_a4 ?dd - dummy)
	(immediate-dummy-dyf_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-left-dyf_observe-box_a1_p2-2_b1 ?dd - dummy)
	(immediate-dummy-you_observe-box_a4_p3-2_b2 ?dd - dummy)
	(dummy-left-you_observe-box_a4_p3-2_b2 ?dd - dummy)
	(pre-abc_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(dummy-right-you_observe-box_a4_p3-2_b2 ?dd - dummy)
	(dummy-right-dyf_observe-box_a1_p2-2_b1 ?dd - dummy)
	(immediate-dummy-1jp_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-left-1jp_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-right-1jp_observe-box_a3_p3-1_b2 ?dd - dummy)
	(pre-aly_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-j9b_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (init-j9b_observe-box_a4_p4-1_b4 dd)(immediate-dummy-j9b_observe-box_a4_p4-1_b4 dd)(agent-at a4 p4-1)(can-observe a4 b4))
	:observe (box-at b4 p4-1)
)
(:action act-dummy-j9b_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (init-j9b_observe-box_a4_p4-1_b4 dd)(not (dummy-left-j9b_observe-box_a4_p4-1_b4 dd))(not (dummy-right-j9b_observe-box_a4_p4-1_b4 dd)))
	:effect (and (immediate-dummy-j9b_observe-box_a4_p4-1_b4 dd) )
)
(:action dummy-left-j9b_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (init-j9b_observe-box_a4_p4-1_b4 dd)(agent-at a4 p4-1)(can-observe a4 b4)(not (box-at b4 p4-1))(immediate-dummy-j9b_observe-box_a4_p4-1_b4 dd))
	:effect (and (not (init-j9b_observe-box_a4_p4-1_b4 dd))(not (immediate-dummy-j9b_observe-box_a4_p4-1_b4 dd))(dummy-left-j9b_observe-box_a4_p4-1_b4 dd))
)
(:action dummy-right-j9b_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (init-j9b_observe-box_a4_p4-1_b4 dd)(agent-at a4 p4-1)(can-observe a4 b4)(box-at b4 p4-1)(immediate-dummy-j9b_observe-box_a4_p4-1_b4 dd))
	:effect (and (not (init-j9b_observe-box_a4_p4-1_b4 dd))(not (immediate-dummy-j9b_observe-box_a4_p4-1_b4 dd))(dummy-right-j9b_observe-box_a4_p4-1_b4 dd))
)
(:action act-0mi_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j9b_observe-box_a4_p4-1_b4 dd)(immediate-dummy-0mi_observe-box_a1_p1-2_b0 dd)(not (box-at b4 p4-1))(agent-at a4 p1-2)(can-observe a4 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-0mi_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j9b_observe-box_a4_p4-1_b4 dd)(not (box-at b4 p4-1))(agent-at a4 p1-2)(can-observe a4 b0)(not (dummy-left-0mi_observe-box_a1_p1-2_b0 dd))(not (dummy-right-0mi_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-0mi_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-0mi_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j9b_observe-box_a4_p4-1_b4 dd)(not (box-at b4 p4-1))(agent-at a4 p1-2)(can-observe a4 b0)(not (box-at b0 p1-2))(immediate-dummy-0mi_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-0mi_observe-box_a1_p1-2_b0 dd))(dummy-left-0mi_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-0mi_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j9b_observe-box_a4_p4-1_b4 dd)(not (box-at b4 p4-1))(agent-at a4 p1-2)(can-observe a4 b0)(box-at b0 p1-2)(immediate-dummy-0mi_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-0mi_observe-box_a1_p1-2_b0 dd))(dummy-right-0mi_observe-box_a1_p1-2_b0 dd))
)
(:action act-vgn_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0mi_observe-box_a1_p1-2_b0 dd)(immediate-dummy-vgn_observe-box_a3_p2-1_b1 dd)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p2-1)(can-observe a4 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-vgn_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0mi_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p2-1)(can-observe a4 b1)(not (dummy-left-vgn_observe-box_a3_p2-1_b1 dd))(not (dummy-right-vgn_observe-box_a3_p2-1_b1 dd)))
	:effect (and (immediate-dummy-vgn_observe-box_a3_p2-1_b1 dd) )
)
(:action dummy-left-vgn_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0mi_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p2-1)(can-observe a4 b1)(not (box-at b1 p2-1))(immediate-dummy-vgn_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-vgn_observe-box_a3_p2-1_b1 dd))(dummy-left-vgn_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-right-vgn_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0mi_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p2-1)(can-observe a4 b1)(box-at b1 p2-1)(immediate-dummy-vgn_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-vgn_observe-box_a3_p2-1_b1 dd))(dummy-right-vgn_observe-box_a3_p2-1_b1 dd))
)
(:action act-5s8_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vgn_observe-box_a3_p2-1_b1 dd)(immediate-dummy-5s8_observe-box_a4_p3-1_b2 dd)(not (box-at b1 p2-1))(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-5s8_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vgn_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1))(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2)(not (dummy-left-5s8_observe-box_a4_p3-1_b2 dd))(not (dummy-right-5s8_observe-box_a4_p3-1_b2 dd)))
	:effect (and (immediate-dummy-5s8_observe-box_a4_p3-1_b2 dd) )
)
(:action dummy-left-5s8_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vgn_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1))(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2)(not (box-at b2 p3-1))(immediate-dummy-5s8_observe-box_a4_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-5s8_observe-box_a4_p3-1_b2 dd))(dummy-left-5s8_observe-box_a4_p3-1_b2 dd))
)
(:action dummy-right-5s8_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-vgn_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1))(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2)(box-at b2 p3-1)(immediate-dummy-5s8_observe-box_a4_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-5s8_observe-box_a4_p3-1_b2 dd))(dummy-right-5s8_observe-box_a4_p3-1_b2 dd))
)
(:action goal-achieve-left-5s8_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-5s8_observe-box_a4_p3-1_b2 dd)(not (box-at b2 p3-1))(not (box-at b1 p2-1))(not (box-at b0 p1-2))(not (box-at b4 p4-1)))
	:effect (and (done-goal dd)(not (dummy-left-5s8_observe-box_a4_p3-1_b2 dd)))
)
(:action act-qzq_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-5s8_observe-box_a4_p3-1_b2 dd)(box-at b2 p3-1)(not (box-at b1 p2-1))(not (box-at b0 p1-2))(not (box-at b4 p4-1))(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-qzq_joint-push_p3-1_p3-2_b2_a3_a4 dd))
)
(:action goal-achieve-qzq_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-qzq_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-qzq_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action act-iqq_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vgn_observe-box_a3_p2-1_b1 dd)(immediate-dummy-iqq_observe-box_a4_p3-1_b2 dd)(box-at b1 p2-1)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-iqq_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vgn_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2)(not (dummy-left-iqq_observe-box_a4_p3-1_b2 dd))(not (dummy-right-iqq_observe-box_a4_p3-1_b2 dd)))
	:effect (and (immediate-dummy-iqq_observe-box_a4_p3-1_b2 dd) )
)
(:action dummy-left-iqq_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vgn_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2)(not (box-at b2 p3-1))(immediate-dummy-iqq_observe-box_a4_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-iqq_observe-box_a4_p3-1_b2 dd))(dummy-left-iqq_observe-box_a4_p3-1_b2 dd))
)
(:action dummy-right-iqq_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-vgn_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2)(box-at b2 p3-1)(immediate-dummy-iqq_observe-box_a4_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-iqq_observe-box_a4_p3-1_b2 dd))(dummy-right-iqq_observe-box_a4_p3-1_b2 dd))
)
(:action act-aii_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-iqq_observe-box_a4_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b1 p2-1)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(adj p1-1 p1-2)(agent-at a4 p1-1))
	:effect (and (pre-aii_joint-push_p1-1_p1-2_b0_a1_a4 dd))
)
(:action act-23u_joint-push_p2-1_p2-2_b1_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-aii_joint-push_p1-1_p1-2_b0_a1_a4 dd)(adj p2-1 p2-2)(agent-at a4 p2-1))
	:effect (and (pre-23u_joint-push_p2-1_p2-2_b1_a3_a4 dd)(not (pre-aii_joint-push_p1-1_p1-2_b0_a1_a4 dd)))
)
(:action goal-achieve-23u_joint-push_p2-1_p2-2_b1_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-23u_joint-push_p2-1_p2-2_b1_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-23u_joint-push_p2-1_p2-2_b1_a3_a4 dd)))
)
(:action act-k2q_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-iqq_observe-box_a4_p3-1_b2 dd)(box-at b2 p3-1)(box-at b1 p2-1)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(adj p1-1 p1-2)(agent-at a4 p1-1))
	:effect (and (pre-k2q_joint-push_p1-1_p1-2_b0_a1_a4 dd))
)
(:action act-5oi_joint-push_p2-1_p2-2_b1_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-k2q_joint-push_p1-1_p1-2_b0_a1_a4 dd)(adj p2-1 p2-2)(agent-at a4 p2-1))
	:effect (and (pre-5oi_joint-push_p2-1_p2-2_b1_a3_a4 dd)(not (pre-k2q_joint-push_p1-1_p1-2_b0_a1_a4 dd)))
)
(:action act-9l1_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-5oi_joint-push_p2-1_p2-2_b1_a3_a4 dd)(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-9l1_joint-push_p3-1_p3-2_b2_a3_a4 dd)(not (pre-5oi_joint-push_p2-1_p2-2_b1_a3_a4 dd)))
)
(:action goal-achieve-9l1_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-9l1_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-9l1_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action act-4tn_observe-box_a3_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0mi_observe-box_a1_p1-2_b0 dd)(immediate-dummy-4tn_observe-box_a3_p2-2_b1 dd)(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p2-2)(can-observe a4 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-4tn_observe-box_a3_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0mi_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p2-2)(can-observe a4 b1)(not (dummy-left-4tn_observe-box_a3_p2-2_b1 dd))(not (dummy-right-4tn_observe-box_a3_p2-2_b1 dd)))
	:effect (and (immediate-dummy-4tn_observe-box_a3_p2-2_b1 dd) )
)
(:action dummy-left-4tn_observe-box_a3_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0mi_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p2-2)(can-observe a4 b1)(not (box-at b1 p2-2))(immediate-dummy-4tn_observe-box_a3_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-4tn_observe-box_a3_p2-2_b1 dd))(dummy-left-4tn_observe-box_a3_p2-2_b1 dd))
)
(:action dummy-right-4tn_observe-box_a3_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0mi_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p2-2)(can-observe a4 b1)(box-at b1 p2-2)(immediate-dummy-4tn_observe-box_a3_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-4tn_observe-box_a3_p2-2_b1 dd))(dummy-right-4tn_observe-box_a3_p2-2_b1 dd))
)
(:action act-tk2_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4tn_observe-box_a3_p2-2_b1 dd)(immediate-dummy-tk2_observe-box_a4_p3-1_b2 dd)(not (box-at b1 p2-2))(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-tk2_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4tn_observe-box_a3_p2-2_b1 dd)(not (box-at b1 p2-2))(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2)(not (dummy-left-tk2_observe-box_a4_p3-1_b2 dd))(not (dummy-right-tk2_observe-box_a4_p3-1_b2 dd)))
	:effect (and (immediate-dummy-tk2_observe-box_a4_p3-1_b2 dd) )
)
(:action dummy-left-tk2_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4tn_observe-box_a3_p2-2_b1 dd)(not (box-at b1 p2-2))(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2)(not (box-at b2 p3-1))(immediate-dummy-tk2_observe-box_a4_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-tk2_observe-box_a4_p3-1_b2 dd))(dummy-left-tk2_observe-box_a4_p3-1_b2 dd))
)
(:action dummy-right-tk2_observe-box_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4tn_observe-box_a3_p2-2_b1 dd)(not (box-at b1 p2-2))(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p3-1)(can-observe a4 b2)(box-at b2 p3-1)(immediate-dummy-tk2_observe-box_a4_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-tk2_observe-box_a4_p3-1_b2 dd))(dummy-right-tk2_observe-box_a4_p3-1_b2 dd))
)
(:action act-wxh_joint-push_p2-1_p2-2_b1_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-tk2_observe-box_a4_p3-1_b2 dd)(not (box-at b2 p3-1))(not (box-at b1 p2-2))(box-at b0 p1-2)(not (box-at b4 p4-1))(adj p2-1 p2-2)(agent-at a4 p2-1))
	:effect (and (pre-wxh_joint-push_p2-1_p2-2_b1_a3_a4 dd))
)
(:action goal-achieve-wxh_joint-push_p2-1_p2-2_b1_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-wxh_joint-push_p2-1_p2-2_b1_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-wxh_joint-push_p2-1_p2-2_b1_a3_a4 dd)))
)
(:action act-113_joint-push_p2-1_p2-2_b1_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-tk2_observe-box_a4_p3-1_b2 dd)(box-at b2 p3-1)(not (box-at b1 p2-2))(box-at b0 p1-2)(not (box-at b4 p4-1))(adj p2-1 p2-2)(agent-at a4 p2-1))
	:effect (and (pre-113_joint-push_p2-1_p2-2_b1_a3_a4 dd))
)
(:action act-bnp_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-113_joint-push_p2-1_p2-2_b1_a3_a4 dd)(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-bnp_joint-push_p3-1_p3-2_b2_a3_a4 dd)(not (pre-113_joint-push_p2-1_p2-2_b1_a3_a4 dd)))
)
(:action goal-achieve-bnp_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-bnp_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-bnp_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action act-u0y_observe-box_a4_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4tn_observe-box_a3_p2-2_b1 dd)(immediate-dummy-u0y_observe-box_a4_p3-2_b2 dd)(box-at b1 p2-2)(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p3-2)(can-observe a4 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-u0y_observe-box_a4_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4tn_observe-box_a3_p2-2_b1 dd)(box-at b1 p2-2)(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p3-2)(can-observe a4 b2)(not (dummy-left-u0y_observe-box_a4_p3-2_b2 dd))(not (dummy-right-u0y_observe-box_a4_p3-2_b2 dd)))
	:effect (and (immediate-dummy-u0y_observe-box_a4_p3-2_b2 dd) )
)
(:action dummy-left-u0y_observe-box_a4_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4tn_observe-box_a3_p2-2_b1 dd)(box-at b1 p2-2)(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p3-2)(can-observe a4 b2)(not (box-at b2 p3-2))(immediate-dummy-u0y_observe-box_a4_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-u0y_observe-box_a4_p3-2_b2 dd))(dummy-left-u0y_observe-box_a4_p3-2_b2 dd))
)
(:action dummy-right-u0y_observe-box_a4_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4tn_observe-box_a3_p2-2_b1 dd)(box-at b1 p2-2)(box-at b0 p1-2)(not (box-at b4 p4-1))(agent-at a4 p3-2)(can-observe a4 b2)(box-at b2 p3-2)(immediate-dummy-u0y_observe-box_a4_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-u0y_observe-box_a4_p3-2_b2 dd))(dummy-right-u0y_observe-box_a4_p3-2_b2 dd))
)
(:action act-04a_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u0y_observe-box_a4_p3-2_b2 dd)(not (box-at b2 p3-2))(box-at b1 p2-2)(box-at b0 p1-2)(not (box-at b4 p4-1))(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-04a_joint-push_p3-1_p3-2_b2_a3_a4 dd))
)
(:action goal-achieve-04a_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-04a_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-04a_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action goal-achieve-right-u0y_observe-box_a4_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u0y_observe-box_a4_p3-2_b2 dd)(box-at b2 p3-2)(box-at b1 p2-2)(box-at b0 p1-2)(not (box-at b4 p4-1)))
	:effect (and (done-goal dd)(not (dummy-right-u0y_observe-box_a4_p3-2_b2 dd)))
)
(:action act-erg_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j9b_observe-box_a4_p4-1_b4 dd)(immediate-dummy-erg_observe-box_a3_p1-1_b0 dd)(box-at b4 p4-1)(agent-at a4 p1-1)(can-observe a4 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-erg_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j9b_observe-box_a4_p4-1_b4 dd)(box-at b4 p4-1)(agent-at a4 p1-1)(can-observe a4 b0)(not (dummy-left-erg_observe-box_a3_p1-1_b0 dd))(not (dummy-right-erg_observe-box_a3_p1-1_b0 dd)))
	:effect (and (immediate-dummy-erg_observe-box_a3_p1-1_b0 dd) )
)
(:action dummy-left-erg_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j9b_observe-box_a4_p4-1_b4 dd)(box-at b4 p4-1)(agent-at a4 p1-1)(can-observe a4 b0)(not (box-at b0 p1-1))(immediate-dummy-erg_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-erg_observe-box_a3_p1-1_b0 dd))(dummy-left-erg_observe-box_a3_p1-1_b0 dd))
)
(:action dummy-right-erg_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j9b_observe-box_a4_p4-1_b4 dd)(box-at b4 p4-1)(agent-at a4 p1-1)(can-observe a4 b0)(box-at b0 p1-1)(immediate-dummy-erg_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-erg_observe-box_a3_p1-1_b0 dd))(dummy-right-erg_observe-box_a3_p1-1_b0 dd))
)
(:action act-qpt_one-push_p4-1_p4-2_b4_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-erg_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(box-at b4 p4-1)(adj p4-1 p4-2)(agent-at a4 p4-1))
	:effect (and (pre-qpt_one-push_p4-1_p4-2_b4_a4 dd))
)
(:action act-2z1_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-qpt_one-push_p4-1_p4-2_b4_a4 dd)(immediate-dummy-2z1_observe-box_a3_p3-1_b2 dd)(agent-at a4 p3-1)(can-observe a4 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-2z1_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-qpt_one-push_p4-1_p4-2_b4_a4 dd)(agent-at a4 p3-1)(can-observe a4 b2)(not (dummy-left-2z1_observe-box_a3_p3-1_b2 dd))(not (dummy-right-2z1_observe-box_a3_p3-1_b2 dd)))
	:effect (and (immediate-dummy-2z1_observe-box_a3_p3-1_b2 dd) )
)
(:action dummy-left-2z1_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a4 p3-1)(can-observe a4 b2)(not (box-at b2 p3-1))(immediate-dummy-2z1_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-2z1_observe-box_a3_p3-1_b2 dd))(dummy-left-2z1_observe-box_a3_p3-1_b2 dd))
)
(:action dummy-right-2z1_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a4 p3-1)(can-observe a4 b2)(box-at b2 p3-1)(immediate-dummy-2z1_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-2z1_observe-box_a3_p3-1_b2 dd))(dummy-right-2z1_observe-box_a3_p3-1_b2 dd))
)
(:action goal-achieve-left-2z1_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2z1_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1)))
	:effect (and (done-goal dd)(not (dummy-left-2z1_observe-box_a3_p3-1_b2 dd)))
)
(:action act-e6h_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2z1_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-e6h_joint-push_p3-1_p3-2_b2_a3_a4 dd))
)
(:action goal-achieve-e6h_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-e6h_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-e6h_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action act-hwg_one-push_p4-1_p4-2_b4_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-erg_observe-box_a3_p1-1_b0 dd)(box-at b0 p1-1)(box-at b4 p4-1)(adj p4-1 p4-2)(agent-at a4 p4-1))
	:effect (and (pre-hwg_one-push_p4-1_p4-2_b4_a4 dd))
)
(:action act-dyf_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-hwg_one-push_p4-1_p4-2_b4_a4 dd)(immediate-dummy-dyf_observe-box_a1_p2-2_b1 dd)(agent-at a4 p2-2)(can-observe a4 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-dyf_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-hwg_one-push_p4-1_p4-2_b4_a4 dd)(agent-at a4 p2-2)(can-observe a4 b1)(not (dummy-left-dyf_observe-box_a1_p2-2_b1 dd))(not (dummy-right-dyf_observe-box_a1_p2-2_b1 dd)))
	:effect (and (immediate-dummy-dyf_observe-box_a1_p2-2_b1 dd) )
)
(:action dummy-left-dyf_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a4 p2-2)(can-observe a4 b1)(not (box-at b1 p2-2))(immediate-dummy-dyf_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-dyf_observe-box_a1_p2-2_b1 dd))(dummy-left-dyf_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-right-dyf_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a4 p2-2)(can-observe a4 b1)(box-at b1 p2-2)(immediate-dummy-dyf_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-dyf_observe-box_a1_p2-2_b1 dd))(dummy-right-dyf_observe-box_a1_p2-2_b1 dd))
)
(:action act-you_observe-box_a4_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-dyf_observe-box_a1_p2-2_b1 dd)(immediate-dummy-you_observe-box_a4_p3-2_b2 dd)(not (box-at b1 p2-2))(agent-at a4 p3-2)(can-observe a4 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-you_observe-box_a4_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-dyf_observe-box_a1_p2-2_b1 dd)(not (box-at b1 p2-2))(agent-at a4 p3-2)(can-observe a4 b2)(not (dummy-left-you_observe-box_a4_p3-2_b2 dd))(not (dummy-right-you_observe-box_a4_p3-2_b2 dd)))
	:effect (and (immediate-dummy-you_observe-box_a4_p3-2_b2 dd) )
)
(:action dummy-left-you_observe-box_a4_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-dyf_observe-box_a1_p2-2_b1 dd)(not (box-at b1 p2-2))(agent-at a4 p3-2)(can-observe a4 b2)(not (box-at b2 p3-2))(immediate-dummy-you_observe-box_a4_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-you_observe-box_a4_p3-2_b2 dd))(dummy-left-you_observe-box_a4_p3-2_b2 dd))
)
(:action dummy-right-you_observe-box_a4_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-dyf_observe-box_a1_p2-2_b1 dd)(not (box-at b1 p2-2))(agent-at a4 p3-2)(can-observe a4 b2)(box-at b2 p3-2)(immediate-dummy-you_observe-box_a4_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-you_observe-box_a4_p3-2_b2 dd))(dummy-right-you_observe-box_a4_p3-2_b2 dd))
)
(:action act-abc_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-you_observe-box_a4_p3-2_b2 dd)(not (box-at b2 p3-2))(not (box-at b1 p2-2))(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-abc_joint-push_p3-1_p3-2_b2_a3_a4 dd))
)
(:action goal-achieve-abc_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-abc_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-abc_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action goal-achieve-right-you_observe-box_a4_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-you_observe-box_a4_p3-2_b2 dd)(box-at b2 p3-2)(not (box-at b1 p2-2)))
	:effect (and (done-goal dd)(not (dummy-right-you_observe-box_a4_p3-2_b2 dd)))
)
(:action act-1jp_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dyf_observe-box_a1_p2-2_b1 dd)(immediate-dummy-1jp_observe-box_a3_p3-1_b2 dd)(box-at b1 p2-2)(agent-at a4 p3-1)(can-observe a4 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-1jp_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dyf_observe-box_a1_p2-2_b1 dd)(box-at b1 p2-2)(agent-at a4 p3-1)(can-observe a4 b2)(not (dummy-left-1jp_observe-box_a3_p3-1_b2 dd))(not (dummy-right-1jp_observe-box_a3_p3-1_b2 dd)))
	:effect (and (immediate-dummy-1jp_observe-box_a3_p3-1_b2 dd) )
)
(:action dummy-left-1jp_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dyf_observe-box_a1_p2-2_b1 dd)(box-at b1 p2-2)(agent-at a4 p3-1)(can-observe a4 b2)(not (box-at b2 p3-1))(immediate-dummy-1jp_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-1jp_observe-box_a3_p3-1_b2 dd))(dummy-left-1jp_observe-box_a3_p3-1_b2 dd))
)
(:action dummy-right-1jp_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dyf_observe-box_a1_p2-2_b1 dd)(box-at b1 p2-2)(agent-at a4 p3-1)(can-observe a4 b2)(box-at b2 p3-1)(immediate-dummy-1jp_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-1jp_observe-box_a3_p3-1_b2 dd))(dummy-right-1jp_observe-box_a3_p3-1_b2 dd))
)
(:action goal-achieve-left-1jp_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1jp_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b1 p2-2))
	:effect (and (done-goal dd)(not (dummy-left-1jp_observe-box_a3_p3-1_b2 dd)))
)
(:action act-aly_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1jp_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b1 p2-2)(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-aly_joint-push_p3-1_p3-2_b2_a3_a4 dd))
)
(:action goal-achieve-aly_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-aly_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-aly_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
)