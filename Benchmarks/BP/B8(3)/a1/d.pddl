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
	(init-ykr_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-ykr_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-ykr_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-4ev_observe-box_a3_p3-2_b2 ?dd - dummy)
	(dummy-left-4ev_observe-box_a3_p3-2_b2 ?dd - dummy)
	(pre-85b_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
	(immediate-dummy-uw8_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-left-uw8_observe-box_a1_p2-2_b1 ?dd - dummy)
	(pre-3kc_joint-push_p2-1_p2-2_b1_a1_a4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-uw8_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-right-4ev_observe-box_a3_p3-2_b2 ?dd - dummy)
	(pre-je5_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
	(immediate-dummy-b8p_observe-box_a4_p2-1_b1 ?dd - dummy)
	(dummy-left-b8p_observe-box_a4_p2-1_b1 ?dd - dummy)
	(dummy-right-b8p_observe-box_a4_p2-1_b1 ?dd - dummy)
	(pre-ac1_joint-push_p2-1_p2-2_b1_a1_a4 ?dd - dummy)
	(dummy-right-ykr_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-g4r_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-left-g4r_observe-box_a3_p3-1_b2 ?dd - dummy)
	(immediate-dummy-v3b_observe-box_a1_p2-1_b1 ?dd - dummy)
	(dummy-left-v3b_observe-box_a1_p2-1_b1 ?dd - dummy)
	(dummy-right-v3b_observe-box_a1_p2-1_b1 ?dd - dummy)
	(pre-lhh_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(dummy-right-g4r_observe-box_a3_p3-1_b2 ?dd - dummy)
	(immediate-dummy-wcu_observe-box_a4_p4-2_b4 ?dd - dummy)
	(dummy-left-wcu_observe-box_a4_p4-2_b4 ?dd - dummy)
	(immediate-dummy-4tt_observe-box_a3_p2-1_b1 ?dd - dummy)
	(dummy-left-4tt_observe-box_a3_p2-1_b1 ?dd - dummy)
	(dummy-right-4tt_observe-box_a3_p2-1_b1 ?dd - dummy)
	(pre-9p0_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(dummy-right-wcu_observe-box_a4_p4-2_b4 ?dd - dummy)
	(immediate-dummy-iln_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-left-iln_observe-box_a1_p2-2_b1 ?dd - dummy)
	(pre-hq7_joint-push_p2-1_p2-2_b1_a1_a4 ?dd - dummy)
	(dummy-right-iln_observe-box_a1_p2-2_b1 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-ykr_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-ykr_observe-box_a1_p1-2_b0 dd)(immediate-dummy-ykr_observe-box_a1_p1-2_b0 dd)(agent-at a1 p1-2)(can-observe a1 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-ykr_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-ykr_observe-box_a1_p1-2_b0 dd)(not (dummy-left-ykr_observe-box_a1_p1-2_b0 dd))(not (dummy-right-ykr_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-ykr_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-ykr_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-ykr_observe-box_a1_p1-2_b0 dd)(agent-at a1 p1-2)(can-observe a1 b0)(not (box-at b0 p1-2))(immediate-dummy-ykr_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (init-ykr_observe-box_a1_p1-2_b0 dd))(not (immediate-dummy-ykr_observe-box_a1_p1-2_b0 dd))(dummy-left-ykr_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-ykr_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-ykr_observe-box_a1_p1-2_b0 dd)(agent-at a1 p1-2)(can-observe a1 b0)(box-at b0 p1-2)(immediate-dummy-ykr_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (init-ykr_observe-box_a1_p1-2_b0 dd))(not (immediate-dummy-ykr_observe-box_a1_p1-2_b0 dd))(dummy-right-ykr_observe-box_a1_p1-2_b0 dd))
)
(:action act-4ev_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ykr_observe-box_a1_p1-2_b0 dd)(immediate-dummy-4ev_observe-box_a3_p3-2_b2 dd)(not (box-at b0 p1-2))(agent-at a1 p3-2)(can-observe a1 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-4ev_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ykr_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a1 p3-2)(can-observe a1 b2)(not (dummy-left-4ev_observe-box_a3_p3-2_b2 dd))(not (dummy-right-4ev_observe-box_a3_p3-2_b2 dd)))
	:effect (and (immediate-dummy-4ev_observe-box_a3_p3-2_b2 dd) )
)
(:action dummy-left-4ev_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ykr_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a1 p3-2)(can-observe a1 b2)(not (box-at b2 p3-2))(immediate-dummy-4ev_observe-box_a3_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-4ev_observe-box_a3_p3-2_b2 dd))(dummy-left-4ev_observe-box_a3_p3-2_b2 dd))
)
(:action dummy-right-4ev_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ykr_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a1 p3-2)(can-observe a1 b2)(box-at b2 p3-2)(immediate-dummy-4ev_observe-box_a3_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-4ev_observe-box_a3_p3-2_b2 dd))(dummy-right-4ev_observe-box_a3_p3-2_b2 dd))
)
(:action act-85b_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4ev_observe-box_a3_p3-2_b2 dd)(not (box-at b2 p3-2))(not (box-at b0 p1-2))(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-85b_joint-push_p1-1_p1-2_b0_a1_a4 dd))
)
(:action act-uw8_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-85b_joint-push_p1-1_p1-2_b0_a1_a4 dd)(immediate-dummy-uw8_observe-box_a1_p2-2_b1 dd)(agent-at a1 p2-2)(can-observe a1 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-uw8_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-85b_joint-push_p1-1_p1-2_b0_a1_a4 dd)(agent-at a1 p2-2)(can-observe a1 b1)(not (dummy-left-uw8_observe-box_a1_p2-2_b1 dd))(not (dummy-right-uw8_observe-box_a1_p2-2_b1 dd)))
	:effect (and (immediate-dummy-uw8_observe-box_a1_p2-2_b1 dd) )
)
(:action dummy-left-uw8_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a1 p2-2)(can-observe a1 b1)(not (box-at b1 p2-2))(immediate-dummy-uw8_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-uw8_observe-box_a1_p2-2_b1 dd))(dummy-left-uw8_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-right-uw8_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a1 p2-2)(can-observe a1 b1)(box-at b1 p2-2)(immediate-dummy-uw8_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-uw8_observe-box_a1_p2-2_b1 dd))(dummy-right-uw8_observe-box_a1_p2-2_b1 dd))
)
(:action act-3kc_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uw8_observe-box_a1_p2-2_b1 dd)(not (box-at b1 p2-2))(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-3kc_joint-push_p2-1_p2-2_b1_a1_a4 dd))
)
(:action goal-achieve-3kc_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-3kc_joint-push_p2-1_p2-2_b1_a1_a4 dd))
	:effect (and (done-goal dd)(not (pre-3kc_joint-push_p2-1_p2-2_b1_a1_a4 dd)))
)
(:action goal-achieve-right-uw8_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uw8_observe-box_a1_p2-2_b1 dd)(box-at b1 p2-2))
	:effect (and (done-goal dd)(not (dummy-right-uw8_observe-box_a1_p2-2_b1 dd)))
)
(:action act-je5_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4ev_observe-box_a3_p3-2_b2 dd)(box-at b2 p3-2)(not (box-at b0 p1-2))(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-je5_joint-push_p1-1_p1-2_b0_a1_a4 dd))
)
(:action act-b8p_observe-box_a4_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-je5_joint-push_p1-1_p1-2_b0_a1_a4 dd)(immediate-dummy-b8p_observe-box_a4_p2-1_b1 dd)(agent-at a1 p2-1)(can-observe a1 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-b8p_observe-box_a4_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-je5_joint-push_p1-1_p1-2_b0_a1_a4 dd)(agent-at a1 p2-1)(can-observe a1 b1)(not (dummy-left-b8p_observe-box_a4_p2-1_b1 dd))(not (dummy-right-b8p_observe-box_a4_p2-1_b1 dd)))
	:effect (and (immediate-dummy-b8p_observe-box_a4_p2-1_b1 dd) )
)
(:action dummy-left-b8p_observe-box_a4_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a1 p2-1)(can-observe a1 b1)(not (box-at b1 p2-1))(immediate-dummy-b8p_observe-box_a4_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-b8p_observe-box_a4_p2-1_b1 dd))(dummy-left-b8p_observe-box_a4_p2-1_b1 dd))
)
(:action dummy-right-b8p_observe-box_a4_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a1 p2-1)(can-observe a1 b1)(box-at b1 p2-1)(immediate-dummy-b8p_observe-box_a4_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-b8p_observe-box_a4_p2-1_b1 dd))(dummy-right-b8p_observe-box_a4_p2-1_b1 dd))
)
(:action goal-achieve-left-b8p_observe-box_a4_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-b8p_observe-box_a4_p2-1_b1 dd)(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-left-b8p_observe-box_a4_p2-1_b1 dd)))
)
(:action act-ac1_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-b8p_observe-box_a4_p2-1_b1 dd)(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-ac1_joint-push_p2-1_p2-2_b1_a1_a4 dd))
)
(:action goal-achieve-ac1_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-ac1_joint-push_p2-1_p2-2_b1_a1_a4 dd))
	:effect (and (done-goal dd)(not (pre-ac1_joint-push_p2-1_p2-2_b1_a1_a4 dd)))
)
(:action act-g4r_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ykr_observe-box_a1_p1-2_b0 dd)(immediate-dummy-g4r_observe-box_a3_p3-1_b2 dd)(box-at b0 p1-2)(agent-at a1 p3-1)(can-observe a1 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-g4r_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ykr_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a1 p3-1)(can-observe a1 b2)(not (dummy-left-g4r_observe-box_a3_p3-1_b2 dd))(not (dummy-right-g4r_observe-box_a3_p3-1_b2 dd)))
	:effect (and (immediate-dummy-g4r_observe-box_a3_p3-1_b2 dd) )
)
(:action dummy-left-g4r_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ykr_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a1 p3-1)(can-observe a1 b2)(not (box-at b2 p3-1))(immediate-dummy-g4r_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-g4r_observe-box_a3_p3-1_b2 dd))(dummy-left-g4r_observe-box_a3_p3-1_b2 dd))
)
(:action dummy-right-g4r_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ykr_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a1 p3-1)(can-observe a1 b2)(box-at b2 p3-1)(immediate-dummy-g4r_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-g4r_observe-box_a3_p3-1_b2 dd))(dummy-right-g4r_observe-box_a3_p3-1_b2 dd))
)
(:action act-v3b_observe-box_a1_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g4r_observe-box_a3_p3-1_b2 dd)(immediate-dummy-v3b_observe-box_a1_p2-1_b1 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a1 p2-1)(can-observe a1 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-v3b_observe-box_a1_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g4r_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a1 p2-1)(can-observe a1 b1)(not (dummy-left-v3b_observe-box_a1_p2-1_b1 dd))(not (dummy-right-v3b_observe-box_a1_p2-1_b1 dd)))
	:effect (and (immediate-dummy-v3b_observe-box_a1_p2-1_b1 dd) )
)
(:action dummy-left-v3b_observe-box_a1_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g4r_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a1 p2-1)(can-observe a1 b1)(not (box-at b1 p2-1))(immediate-dummy-v3b_observe-box_a1_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-v3b_observe-box_a1_p2-1_b1 dd))(dummy-left-v3b_observe-box_a1_p2-1_b1 dd))
)
(:action dummy-right-v3b_observe-box_a1_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g4r_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a1 p2-1)(can-observe a1 b1)(box-at b1 p2-1)(immediate-dummy-v3b_observe-box_a1_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-v3b_observe-box_a1_p2-1_b1 dd))(dummy-right-v3b_observe-box_a1_p2-1_b1 dd))
)
(:action goal-achieve-left-v3b_observe-box_a1_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-v3b_observe-box_a1_p2-1_b1 dd)(not (box-at b1 p2-1))(not (box-at b2 p3-1))(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-left-v3b_observe-box_a1_p2-1_b1 dd)))
)
(:action act-lhh_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-v3b_observe-box_a1_p2-1_b1 dd)(box-at b1 p2-1)(not (box-at b2 p3-1))(box-at b0 p1-2)(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-lhh_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-lhh_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-lhh_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-lhh_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action act-wcu_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g4r_observe-box_a3_p3-1_b2 dd)(immediate-dummy-wcu_observe-box_a4_p4-2_b4 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p4-2)(can-observe a1 b4))
	:observe (box-at b4 p4-2)
)
(:action act-dummy-wcu_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g4r_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p4-2)(can-observe a1 b4)(not (dummy-left-wcu_observe-box_a4_p4-2_b4 dd))(not (dummy-right-wcu_observe-box_a4_p4-2_b4 dd)))
	:effect (and (immediate-dummy-wcu_observe-box_a4_p4-2_b4 dd) )
)
(:action dummy-left-wcu_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g4r_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p4-2)(can-observe a1 b4)(not (box-at b4 p4-2))(immediate-dummy-wcu_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-wcu_observe-box_a4_p4-2_b4 dd))(dummy-left-wcu_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-wcu_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g4r_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p4-2)(can-observe a1 b4)(box-at b4 p4-2)(immediate-dummy-wcu_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-wcu_observe-box_a4_p4-2_b4 dd))(dummy-right-wcu_observe-box_a4_p4-2_b4 dd))
)
(:action act-4tt_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wcu_observe-box_a4_p4-2_b4 dd)(immediate-dummy-4tt_observe-box_a3_p2-1_b1 dd)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p2-1)(can-observe a1 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-4tt_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wcu_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p2-1)(can-observe a1 b1)(not (dummy-left-4tt_observe-box_a3_p2-1_b1 dd))(not (dummy-right-4tt_observe-box_a3_p2-1_b1 dd)))
	:effect (and (immediate-dummy-4tt_observe-box_a3_p2-1_b1 dd) )
)
(:action dummy-left-4tt_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wcu_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p2-1)(can-observe a1 b1)(not (box-at b1 p2-1))(immediate-dummy-4tt_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-4tt_observe-box_a3_p2-1_b1 dd))(dummy-left-4tt_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-right-4tt_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wcu_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p2-1)(can-observe a1 b1)(box-at b1 p2-1)(immediate-dummy-4tt_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-4tt_observe-box_a3_p2-1_b1 dd))(dummy-right-4tt_observe-box_a3_p2-1_b1 dd))
)
(:action goal-achieve-left-4tt_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4tt_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1))(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-left-4tt_observe-box_a3_p2-1_b1 dd)))
)
(:action act-9p0_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4tt_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-9p0_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-9p0_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-9p0_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-9p0_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action act-iln_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wcu_observe-box_a4_p4-2_b4 dd)(immediate-dummy-iln_observe-box_a1_p2-2_b1 dd)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p2-2)(can-observe a1 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-iln_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wcu_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p2-2)(can-observe a1 b1)(not (dummy-left-iln_observe-box_a1_p2-2_b1 dd))(not (dummy-right-iln_observe-box_a1_p2-2_b1 dd)))
	:effect (and (immediate-dummy-iln_observe-box_a1_p2-2_b1 dd) )
)
(:action dummy-left-iln_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wcu_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p2-2)(can-observe a1 b1)(not (box-at b1 p2-2))(immediate-dummy-iln_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-iln_observe-box_a1_p2-2_b1 dd))(dummy-left-iln_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-right-iln_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wcu_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a1 p2-2)(can-observe a1 b1)(box-at b1 p2-2)(immediate-dummy-iln_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-iln_observe-box_a1_p2-2_b1 dd))(dummy-right-iln_observe-box_a1_p2-2_b1 dd))
)
(:action act-hq7_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-iln_observe-box_a1_p2-2_b1 dd)(not (box-at b1 p2-2))(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(adj p2-1 p2-2)(agent-at a1 p2-1))
	:effect (and (pre-hq7_joint-push_p2-1_p2-2_b1_a1_a4 dd))
)
(:action goal-achieve-hq7_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-hq7_joint-push_p2-1_p2-2_b1_a1_a4 dd))
	:effect (and (done-goal dd)(not (pre-hq7_joint-push_p2-1_p2-2_b1_a1_a4 dd)))
)
(:action goal-achieve-right-iln_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-iln_observe-box_a1_p2-2_b1 dd)(box-at b1 p2-2)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-right-iln_observe-box_a1_p2-2_b1 dd)))
)
)