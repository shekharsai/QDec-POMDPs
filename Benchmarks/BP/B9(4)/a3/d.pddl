(define (domain box-3-a3)
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
	a3 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-ael_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-ael_observe-box_a2_p2-1_b1 ?dd - dummy)
	(dummy-left-ael_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-y39_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-left-y39_observe-box_a3_p3-1_b2 ?dd - dummy)
	(immediate-dummy-8u6_observe-box_a4_p4-2_b3 ?dd - dummy)
	(dummy-left-8u6_observe-box_a4_p4-2_b3 ?dd - dummy)
	(pre-mvr_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-8u6_observe-box_a4_p4-2_b3 ?dd - dummy)
	(dummy-right-y39_observe-box_a3_p3-1_b2 ?dd - dummy)
	(immediate-dummy-x4s_observe-box_a4_p4-2_b3 ?dd - dummy)
	(dummy-left-x4s_observe-box_a4_p4-2_b3 ?dd - dummy)
	(pre-tjt_one-push_p3-1_p3-2_b2_a3 ?dd - dummy)
	(pre-eef_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
	(dummy-right-x4s_observe-box_a4_p4-2_b3 ?dd - dummy)
	(pre-3of_one-push_p3-1_p3-2_b2_a3 ?dd - dummy)
	(dummy-right-ael_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-ubn_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-ubn_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-x5c_observe-box_a4_p4-2_b3 ?dd - dummy)
	(dummy-left-x5c_observe-box_a4_p4-2_b3 ?dd - dummy)
	(pre-ncm_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(immediate-dummy-a1m_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-left-a1m_observe-box_a3_p3-1_b2 ?dd - dummy)
	(pre-y6z_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
	(dummy-right-a1m_observe-box_a3_p3-1_b2 ?dd - dummy)
	(pre-mf0_one-push_p3-1_p3-2_b2_a3 ?dd - dummy)
	(pre-x7k_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
	(dummy-right-x5c_observe-box_a4_p4-2_b3 ?dd - dummy)
	(pre-zl6_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(dummy-right-ubn_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-swb_observe-box_a4_p4-1_b3 ?dd - dummy)
	(dummy-left-swb_observe-box_a4_p4-1_b3 ?dd - dummy)
	(pre-q1s_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(dummy-right-swb_observe-box_a4_p4-1_b3 ?dd - dummy)
	(immediate-dummy-bg0_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-left-bg0_observe-box_a3_p3-1_b2 ?dd - dummy)
	(pre-ge2_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(pre-wkz_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
	(dummy-right-bg0_observe-box_a3_p3-1_b2 ?dd - dummy)
	(pre-48s_one-push_p3-1_p3-2_b2_a3 ?dd - dummy)
	(pre-ewc_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(pre-f4m_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-ael_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-ael_observe-box_a2_p2-1_b1 dd)(immediate-dummy-ael_observe-box_a2_p2-1_b1 dd)(agent-at a3 p2-1)(can-observe a3 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-ael_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-ael_observe-box_a2_p2-1_b1 dd)(not (dummy-left-ael_observe-box_a2_p2-1_b1 dd))(not (dummy-right-ael_observe-box_a2_p2-1_b1 dd)))
	:effect (and (immediate-dummy-ael_observe-box_a2_p2-1_b1 dd) )
)
(:action dummy-left-ael_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-ael_observe-box_a2_p2-1_b1 dd)(agent-at a3 p2-1)(can-observe a3 b1)(not (box-at b1 p2-1))(immediate-dummy-ael_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-ael_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-ael_observe-box_a2_p2-1_b1 dd))(dummy-left-ael_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-right-ael_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-ael_observe-box_a2_p2-1_b1 dd)(agent-at a3 p2-1)(can-observe a3 b1)(box-at b1 p2-1)(immediate-dummy-ael_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-ael_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-ael_observe-box_a2_p2-1_b1 dd))(dummy-right-ael_observe-box_a2_p2-1_b1 dd))
)
(:action act-y39_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ael_observe-box_a2_p2-1_b1 dd)(immediate-dummy-y39_observe-box_a3_p3-1_b2 dd)(not (box-at b1 p2-1))(agent-at a3 p3-1)(can-observe a3 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-y39_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ael_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a3 p3-1)(can-observe a3 b2)(not (dummy-left-y39_observe-box_a3_p3-1_b2 dd))(not (dummy-right-y39_observe-box_a3_p3-1_b2 dd)))
	:effect (and (immediate-dummy-y39_observe-box_a3_p3-1_b2 dd) )
)
(:action dummy-left-y39_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ael_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a3 p3-1)(can-observe a3 b2)(not (box-at b2 p3-1))(immediate-dummy-y39_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-y39_observe-box_a3_p3-1_b2 dd))(dummy-left-y39_observe-box_a3_p3-1_b2 dd))
)
(:action dummy-right-y39_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ael_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a3 p3-1)(can-observe a3 b2)(box-at b2 p3-1)(immediate-dummy-y39_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-y39_observe-box_a3_p3-1_b2 dd))(dummy-right-y39_observe-box_a3_p3-1_b2 dd))
)
(:action act-8u6_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-y39_observe-box_a3_p3-1_b2 dd)(immediate-dummy-8u6_observe-box_a4_p4-2_b3 dd)(not (box-at b2 p3-1))(not (box-at b1 p2-1))(agent-at a3 p4-2)(can-observe a3 b3))
	:observe (box-at b3 p4-2)
)
(:action act-dummy-8u6_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-y39_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(not (box-at b1 p2-1))(agent-at a3 p4-2)(can-observe a3 b3)(not (dummy-left-8u6_observe-box_a4_p4-2_b3 dd))(not (dummy-right-8u6_observe-box_a4_p4-2_b3 dd)))
	:effect (and (immediate-dummy-8u6_observe-box_a4_p4-2_b3 dd) )
)
(:action dummy-left-8u6_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-y39_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(not (box-at b1 p2-1))(agent-at a3 p4-2)(can-observe a3 b3)(not (box-at b3 p4-2))(immediate-dummy-8u6_observe-box_a4_p4-2_b3 dd))
	:effect (and (not (immediate-dummy-8u6_observe-box_a4_p4-2_b3 dd))(dummy-left-8u6_observe-box_a4_p4-2_b3 dd))
)
(:action dummy-right-8u6_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-y39_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(not (box-at b1 p2-1))(agent-at a3 p4-2)(can-observe a3 b3)(box-at b3 p4-2)(immediate-dummy-8u6_observe-box_a4_p4-2_b3 dd))
	:effect (and (not (immediate-dummy-8u6_observe-box_a4_p4-2_b3 dd))(dummy-right-8u6_observe-box_a4_p4-2_b3 dd))
)
(:action act-mvr_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8u6_observe-box_a4_p4-2_b3 dd)(not (box-at b3 p4-2))(not (box-at b2 p3-1))(not (box-at b1 p2-1))(adj p4-1 p4-2)(agent-at a3 p4-1))
	:effect (and (pre-mvr_joint-push_p4-1_p4-2_b3_a3_a4 dd))
)
(:action goal-achieve-mvr_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-mvr_joint-push_p4-1_p4-2_b3_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-mvr_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
(:action goal-achieve-right-8u6_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8u6_observe-box_a4_p4-2_b3 dd)(box-at b3 p4-2)(not (box-at b2 p3-1))(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-right-8u6_observe-box_a4_p4-2_b3 dd)))
)
(:action act-x4s_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-y39_observe-box_a3_p3-1_b2 dd)(immediate-dummy-x4s_observe-box_a4_p4-2_b3 dd)(box-at b2 p3-1)(not (box-at b1 p2-1))(agent-at a3 p4-2)(can-observe a3 b3))
	:observe (box-at b3 p4-2)
)
(:action act-dummy-x4s_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-y39_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(not (box-at b1 p2-1))(agent-at a3 p4-2)(can-observe a3 b3)(not (dummy-left-x4s_observe-box_a4_p4-2_b3 dd))(not (dummy-right-x4s_observe-box_a4_p4-2_b3 dd)))
	:effect (and (immediate-dummy-x4s_observe-box_a4_p4-2_b3 dd) )
)
(:action dummy-left-x4s_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-y39_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(not (box-at b1 p2-1))(agent-at a3 p4-2)(can-observe a3 b3)(not (box-at b3 p4-2))(immediate-dummy-x4s_observe-box_a4_p4-2_b3 dd))
	:effect (and (not (immediate-dummy-x4s_observe-box_a4_p4-2_b3 dd))(dummy-left-x4s_observe-box_a4_p4-2_b3 dd))
)
(:action dummy-right-x4s_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-y39_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(not (box-at b1 p2-1))(agent-at a3 p4-2)(can-observe a3 b3)(box-at b3 p4-2)(immediate-dummy-x4s_observe-box_a4_p4-2_b3 dd))
	:effect (and (not (immediate-dummy-x4s_observe-box_a4_p4-2_b3 dd))(dummy-right-x4s_observe-box_a4_p4-2_b3 dd))
)
(:action act-tjt_one-push_p3-1_p3-2_b2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-x4s_observe-box_a4_p4-2_b3 dd)(not (box-at b3 p4-2))(box-at b2 p3-1)(not (box-at b1 p2-1))(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-tjt_one-push_p3-1_p3-2_b2_a3 dd))
)
(:action act-eef_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-tjt_one-push_p3-1_p3-2_b2_a3 dd)(adj p4-1 p4-2)(agent-at a3 p4-1))
	:effect (and (pre-eef_joint-push_p4-1_p4-2_b3_a3_a4 dd)(not (pre-tjt_one-push_p3-1_p3-2_b2_a3 dd)))
)
(:action goal-achieve-eef_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-eef_joint-push_p4-1_p4-2_b3_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-eef_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
(:action act-3of_one-push_p3-1_p3-2_b2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-x4s_observe-box_a4_p4-2_b3 dd)(box-at b3 p4-2)(box-at b2 p3-1)(not (box-at b1 p2-1))(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-3of_one-push_p3-1_p3-2_b2_a3 dd))
)
(:action goal-achieve-3of_one-push_p3-1_p3-2_b2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-3of_one-push_p3-1_p3-2_b2_a3 dd))
	:effect (and (done-goal dd)(not (pre-3of_one-push_p3-1_p3-2_b2_a3 dd)))
)
(:action act-ubn_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ael_observe-box_a2_p2-1_b1 dd)(immediate-dummy-ubn_observe-box_a1_p1-2_b0 dd)(box-at b1 p2-1)(agent-at a3 p1-2)(can-observe a3 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-ubn_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ael_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a3 p1-2)(can-observe a3 b0)(not (dummy-left-ubn_observe-box_a1_p1-2_b0 dd))(not (dummy-right-ubn_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-ubn_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-ubn_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ael_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a3 p1-2)(can-observe a3 b0)(not (box-at b0 p1-2))(immediate-dummy-ubn_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-ubn_observe-box_a1_p1-2_b0 dd))(dummy-left-ubn_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-ubn_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ael_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a3 p1-2)(can-observe a3 b0)(box-at b0 p1-2)(immediate-dummy-ubn_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-ubn_observe-box_a1_p1-2_b0 dd))(dummy-right-ubn_observe-box_a1_p1-2_b0 dd))
)
(:action act-x5c_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ubn_observe-box_a1_p1-2_b0 dd)(immediate-dummy-x5c_observe-box_a4_p4-2_b3 dd)(not (box-at b0 p1-2))(box-at b1 p2-1)(agent-at a3 p4-2)(can-observe a3 b3))
	:observe (box-at b3 p4-2)
)
(:action act-dummy-x5c_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ubn_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(box-at b1 p2-1)(agent-at a3 p4-2)(can-observe a3 b3)(not (dummy-left-x5c_observe-box_a4_p4-2_b3 dd))(not (dummy-right-x5c_observe-box_a4_p4-2_b3 dd)))
	:effect (and (immediate-dummy-x5c_observe-box_a4_p4-2_b3 dd) )
)
(:action dummy-left-x5c_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ubn_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(box-at b1 p2-1)(agent-at a3 p4-2)(can-observe a3 b3)(not (box-at b3 p4-2))(immediate-dummy-x5c_observe-box_a4_p4-2_b3 dd))
	:effect (and (not (immediate-dummy-x5c_observe-box_a4_p4-2_b3 dd))(dummy-left-x5c_observe-box_a4_p4-2_b3 dd))
)
(:action dummy-right-x5c_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ubn_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(box-at b1 p2-1)(agent-at a3 p4-2)(can-observe a3 b3)(box-at b3 p4-2)(immediate-dummy-x5c_observe-box_a4_p4-2_b3 dd))
	:effect (and (not (immediate-dummy-x5c_observe-box_a4_p4-2_b3 dd))(dummy-right-x5c_observe-box_a4_p4-2_b3 dd))
)
(:action act-ncm_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-x5c_observe-box_a4_p4-2_b3 dd)(not (box-at b3 p4-2))(not (box-at b0 p1-2))(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-ncm_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action act-a1m_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-ncm_joint-push_p2-1_p2-2_b1_a2_a3 dd)(immediate-dummy-a1m_observe-box_a3_p3-1_b2 dd)(agent-at a3 p3-1)(can-observe a3 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-a1m_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-ncm_joint-push_p2-1_p2-2_b1_a2_a3 dd)(agent-at a3 p3-1)(can-observe a3 b2)(not (dummy-left-a1m_observe-box_a3_p3-1_b2 dd))(not (dummy-right-a1m_observe-box_a3_p3-1_b2 dd)))
	:effect (and (immediate-dummy-a1m_observe-box_a3_p3-1_b2 dd) )
)
(:action dummy-left-a1m_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a3 p3-1)(can-observe a3 b2)(not (box-at b2 p3-1))(immediate-dummy-a1m_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-a1m_observe-box_a3_p3-1_b2 dd))(dummy-left-a1m_observe-box_a3_p3-1_b2 dd))
)
(:action dummy-right-a1m_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a3 p3-1)(can-observe a3 b2)(box-at b2 p3-1)(immediate-dummy-a1m_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-a1m_observe-box_a3_p3-1_b2 dd))(dummy-right-a1m_observe-box_a3_p3-1_b2 dd))
)
(:action act-y6z_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-a1m_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(adj p4-1 p4-2)(agent-at a3 p4-1))
	:effect (and (pre-y6z_joint-push_p4-1_p4-2_b3_a3_a4 dd))
)
(:action goal-achieve-y6z_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-y6z_joint-push_p4-1_p4-2_b3_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-y6z_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
(:action act-mf0_one-push_p3-1_p3-2_b2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-a1m_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-mf0_one-push_p3-1_p3-2_b2_a3 dd))
)
(:action act-x7k_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-mf0_one-push_p3-1_p3-2_b2_a3 dd)(adj p4-1 p4-2)(agent-at a3 p4-1))
	:effect (and (pre-x7k_joint-push_p4-1_p4-2_b3_a3_a4 dd)(not (pre-mf0_one-push_p3-1_p3-2_b2_a3 dd)))
)
(:action goal-achieve-x7k_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-x7k_joint-push_p4-1_p4-2_b3_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-x7k_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
(:action act-zl6_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-x5c_observe-box_a4_p4-2_b3 dd)(box-at b3 p4-2)(not (box-at b0 p1-2))(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-zl6_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action goal-achieve-zl6_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-zl6_joint-push_p2-1_p2-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-zl6_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
(:action act-swb_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ubn_observe-box_a1_p1-2_b0 dd)(immediate-dummy-swb_observe-box_a4_p4-1_b3 dd)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a3 p4-1)(can-observe a3 b3))
	:observe (box-at b3 p4-1)
)
(:action act-dummy-swb_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ubn_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a3 p4-1)(can-observe a3 b3)(not (dummy-left-swb_observe-box_a4_p4-1_b3 dd))(not (dummy-right-swb_observe-box_a4_p4-1_b3 dd)))
	:effect (and (immediate-dummy-swb_observe-box_a4_p4-1_b3 dd) )
)
(:action dummy-left-swb_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ubn_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a3 p4-1)(can-observe a3 b3)(not (box-at b3 p4-1))(immediate-dummy-swb_observe-box_a4_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-swb_observe-box_a4_p4-1_b3 dd))(dummy-left-swb_observe-box_a4_p4-1_b3 dd))
)
(:action dummy-right-swb_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ubn_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a3 p4-1)(can-observe a3 b3)(box-at b3 p4-1)(immediate-dummy-swb_observe-box_a4_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-swb_observe-box_a4_p4-1_b3 dd))(dummy-right-swb_observe-box_a4_p4-1_b3 dd))
)
(:action act-q1s_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-swb_observe-box_a4_p4-1_b3 dd)(not (box-at b3 p4-1))(box-at b0 p1-2)(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-q1s_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action goal-achieve-q1s_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-q1s_joint-push_p2-1_p2-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-q1s_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
(:action act-bg0_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-swb_observe-box_a4_p4-1_b3 dd)(immediate-dummy-bg0_observe-box_a3_p3-1_b2 dd)(box-at b3 p4-1)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a3 p3-1)(can-observe a3 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-bg0_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-swb_observe-box_a4_p4-1_b3 dd)(box-at b3 p4-1)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a3 p3-1)(can-observe a3 b2)(not (dummy-left-bg0_observe-box_a3_p3-1_b2 dd))(not (dummy-right-bg0_observe-box_a3_p3-1_b2 dd)))
	:effect (and (immediate-dummy-bg0_observe-box_a3_p3-1_b2 dd) )
)
(:action dummy-left-bg0_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-swb_observe-box_a4_p4-1_b3 dd)(box-at b3 p4-1)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a3 p3-1)(can-observe a3 b2)(not (box-at b2 p3-1))(immediate-dummy-bg0_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-bg0_observe-box_a3_p3-1_b2 dd))(dummy-left-bg0_observe-box_a3_p3-1_b2 dd))
)
(:action dummy-right-bg0_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-swb_observe-box_a4_p4-1_b3 dd)(box-at b3 p4-1)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a3 p3-1)(can-observe a3 b2)(box-at b2 p3-1)(immediate-dummy-bg0_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-bg0_observe-box_a3_p3-1_b2 dd))(dummy-right-bg0_observe-box_a3_p3-1_b2 dd))
)
(:action act-ge2_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bg0_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b3 p4-1)(box-at b0 p1-2)(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-ge2_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action act-wkz_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-ge2_joint-push_p2-1_p2-2_b1_a2_a3 dd)(adj p4-1 p4-2)(agent-at a3 p4-1))
	:effect (and (pre-wkz_joint-push_p4-1_p4-2_b3_a3_a4 dd)(not (pre-ge2_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
(:action goal-achieve-wkz_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-wkz_joint-push_p4-1_p4-2_b3_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-wkz_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
(:action act-48s_one-push_p3-1_p3-2_b2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bg0_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b3 p4-1)(box-at b0 p1-2)(box-at b1 p2-1)(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-48s_one-push_p3-1_p3-2_b2_a3 dd))
)
(:action act-ewc_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-48s_one-push_p3-1_p3-2_b2_a3 dd)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-ewc_joint-push_p2-1_p2-2_b1_a2_a3 dd)(not (pre-48s_one-push_p3-1_p3-2_b2_a3 dd)))
)
(:action act-f4m_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-ewc_joint-push_p2-1_p2-2_b1_a2_a3 dd)(adj p4-1 p4-2)(agent-at a3 p4-1))
	:effect (and (pre-f4m_joint-push_p4-1_p4-2_b3_a3_a4 dd)(not (pre-ewc_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
(:action goal-achieve-f4m_joint-push_p4-1_p4-2_b3_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-f4m_joint-push_p4-1_p4-2_b3_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-f4m_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
)