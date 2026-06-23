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
	b4 - box
	a1 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-7bw_observe-box_a4_p4-1_b4 ?dd - dummy)
	(immediate-dummy-7bw_observe-box_a4_p4-1_b4 ?dd - dummy)
	(dummy-left-7bw_observe-box_a4_p4-1_b4 ?dd - dummy)
	(immediate-dummy-u2w_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-u2w_observe-box_a1_p1-2_b0 ?dd - dummy)
	(pre-zkk_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-u2w_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-right-7bw_observe-box_a4_p4-1_b4 ?dd - dummy)
	(immediate-dummy-sfg_observe-box_a3_p1-1_b0 ?dd - dummy)
	(dummy-left-sfg_observe-box_a3_p1-1_b0 ?dd - dummy)
	(immediate-dummy-sma_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-left-sma_observe-box_a1_p2-2_b1 ?dd - dummy)
	(pre-qax_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(dummy-right-sma_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-right-sfg_observe-box_a3_p1-1_b0 ?dd - dummy)
	(pre-6nd_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(immediate-dummy-hkz_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-left-hkz_observe-box_a1_p2-2_b1 ?dd - dummy)
	(pre-zcv_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(dummy-right-hkz_observe-box_a1_p2-2_b1 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-7bw_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (init-7bw_observe-box_a4_p4-1_b4 dd)(immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd)(agent-at a1 p4-1)(can-observe a1 b4))
	:observe (box-at b4 p4-1)
)
(:action act-dummy-7bw_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (init-7bw_observe-box_a4_p4-1_b4 dd)(not (dummy-left-7bw_observe-box_a4_p4-1_b4 dd))(not (dummy-right-7bw_observe-box_a4_p4-1_b4 dd)))
	:effect (and (immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd) )
)
(:action dummy-left-7bw_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (init-7bw_observe-box_a4_p4-1_b4 dd)(agent-at a1 p4-1)(can-observe a1 b4)(not (box-at b4 p4-1))(immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd))
	:effect (and (not (init-7bw_observe-box_a4_p4-1_b4 dd))(not (immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd))(dummy-left-7bw_observe-box_a4_p4-1_b4 dd))
)
(:action dummy-right-7bw_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (init-7bw_observe-box_a4_p4-1_b4 dd)(agent-at a1 p4-1)(can-observe a1 b4)(box-at b4 p4-1)(immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd))
	:effect (and (not (init-7bw_observe-box_a4_p4-1_b4 dd))(not (immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd))(dummy-right-7bw_observe-box_a4_p4-1_b4 dd))
)
(:action act-u2w_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7bw_observe-box_a4_p4-1_b4 dd)(immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd)(not (box-at b4 p4-1))(agent-at a1 p1-2)(can-observe a1 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-u2w_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7bw_observe-box_a4_p4-1_b4 dd)(not (box-at b4 p4-1))(agent-at a1 p1-2)(can-observe a1 b0)(not (dummy-left-u2w_observe-box_a1_p1-2_b0 dd))(not (dummy-right-u2w_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-u2w_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7bw_observe-box_a4_p4-1_b4 dd)(not (box-at b4 p4-1))(agent-at a1 p1-2)(can-observe a1 b0)(not (box-at b0 p1-2))(immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd))(dummy-left-u2w_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-u2w_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7bw_observe-box_a4_p4-1_b4 dd)(not (box-at b4 p4-1))(agent-at a1 p1-2)(can-observe a1 b0)(box-at b0 p1-2)(immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd))(dummy-right-u2w_observe-box_a1_p1-2_b0 dd))
)
(:action act-zkk_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u2w_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(not (box-at b4 p4-1))(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-zkk_joint-push_p1-1_p1-2_b0_a1_a4 dd))
)
(:action goal-achieve-zkk_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-zkk_joint-push_p1-1_p1-2_b0_a1_a4 dd))
	:effect (and (done-goal dd)(not (pre-zkk_joint-push_p1-1_p1-2_b0_a1_a4 dd)))
)
(:action goal-achieve-right-u2w_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u2w_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(not (box-at b4 p4-1)))
	:effect (and (done-goal dd)(not (dummy-right-u2w_observe-box_a1_p1-2_b0 dd)))
)
(:action act-sfg_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7bw_observe-box_a4_p4-1_b4 dd)(immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd)(box-at b4 p4-1)(agent-at a1 p1-1)(can-observe a1 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-sfg_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7bw_observe-box_a4_p4-1_b4 dd)(box-at b4 p4-1)(agent-at a1 p1-1)(can-observe a1 b0)(not (dummy-left-sfg_observe-box_a3_p1-1_b0 dd))(not (dummy-right-sfg_observe-box_a3_p1-1_b0 dd)))
	:effect (and (immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd) )
)
(:action dummy-left-sfg_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7bw_observe-box_a4_p4-1_b4 dd)(box-at b4 p4-1)(agent-at a1 p1-1)(can-observe a1 b0)(not (box-at b0 p1-1))(immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd))(dummy-left-sfg_observe-box_a3_p1-1_b0 dd))
)
(:action dummy-right-sfg_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7bw_observe-box_a4_p4-1_b4 dd)(box-at b4 p4-1)(agent-at a1 p1-1)(can-observe a1 b0)(box-at b0 p1-1)(immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd))(dummy-right-sfg_observe-box_a3_p1-1_b0 dd))
)
(:action act-sma_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-sfg_observe-box_a3_p1-1_b0 dd)(immediate-dummy-sma_observe-box_a1_p2-2_b1 dd)(not (box-at b0 p1-1))(box-at b4 p4-1)(agent-at a1 p2-2)(can-observe a1 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-sma_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-sfg_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(box-at b4 p4-1)(agent-at a1 p2-2)(can-observe a1 b1)(not (dummy-left-sma_observe-box_a1_p2-2_b1 dd))(not (dummy-right-sma_observe-box_a1_p2-2_b1 dd)))
	:effect (and (immediate-dummy-sma_observe-box_a1_p2-2_b1 dd) )
)
(:action dummy-left-sma_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-sfg_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(box-at b4 p4-1)(agent-at a1 p2-2)(can-observe a1 b1)(not (box-at b1 p2-2))(immediate-dummy-sma_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-sma_observe-box_a1_p2-2_b1 dd))(dummy-left-sma_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-right-sma_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-sfg_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(box-at b4 p4-1)(agent-at a1 p2-2)(can-observe a1 b1)(box-at b1 p2-2)(immediate-dummy-sma_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-sma_observe-box_a1_p2-2_b1 dd))(dummy-right-sma_observe-box_a1_p2-2_b1 dd))
)
(:action act-qax_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-sma_observe-box_a1_p2-2_b1 dd)(not (box-at b1 p2-2))(not (box-at b0 p1-1))(box-at b4 p4-1)(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-qax_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-qax_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-qax_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-qax_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action goal-achieve-right-sma_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-sma_observe-box_a1_p2-2_b1 dd)(box-at b1 p2-2)(not (box-at b0 p1-1))(box-at b4 p4-1))
	:effect (and (done-goal dd)(not (dummy-right-sma_observe-box_a1_p2-2_b1 dd)))
)
(:action act-6nd_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-sfg_observe-box_a3_p1-1_b0 dd)(box-at b0 p1-1)(box-at b4 p4-1)(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-6nd_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action act-hkz_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-6nd_joint-push_p1-1_p1-2_b0_a1_a3 dd)(immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd)(agent-at a1 p2-2)(can-observe a1 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-hkz_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-6nd_joint-push_p1-1_p1-2_b0_a1_a3 dd)(agent-at a1 p2-2)(can-observe a1 b1)(not (dummy-left-hkz_observe-box_a1_p2-2_b1 dd))(not (dummy-right-hkz_observe-box_a1_p2-2_b1 dd)))
	:effect (and (immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd) )
)
(:action dummy-left-hkz_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a1 p2-2)(can-observe a1 b1)(not (box-at b1 p2-2))(immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd))(dummy-left-hkz_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-right-hkz_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a1 p2-2)(can-observe a1 b1)(box-at b1 p2-2)(immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd))(dummy-right-hkz_observe-box_a1_p2-2_b1 dd))
)
(:action act-zcv_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hkz_observe-box_a1_p2-2_b1 dd)(not (box-at b1 p2-2))(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-zcv_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-zcv_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-zcv_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-zcv_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action goal-achieve-right-hkz_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hkz_observe-box_a1_p2-2_b1 dd)(box-at b1 p2-2))
	:effect (and (done-goal dd)(not (dummy-right-hkz_observe-box_a1_p2-2_b1 dd)))
)
)