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
	b2 - box
	a3 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a1 - agent ?b1 - box )
	(init-ns4_observe-box_p1-1_a1_b0 ?dd - dummy)
	(immediate-dummy-ns4_observe-box_p1-1_a1_b0 ?dd - dummy)
	(dummy-left-ns4_observe-box_p1-1_a1_b0 ?dd - dummy)
	(immediate-dummy-iu5_observe-box_p2-2_a3_b1 ?dd - dummy)
	(dummy-left-iu5_observe-box_p2-2_a3_b1 ?dd - dummy)
	(pre-4p3_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-iu5_observe-box_p2-2_a3_b1 ?dd - dummy)
	(dummy-right-ns4_observe-box_p1-1_a1_b0 ?dd - dummy)
	(immediate-dummy-1x7_observe-box_p3-2_a2_b2 ?dd - dummy)
	(dummy-left-1x7_observe-box_p3-2_a2_b2 ?dd - dummy)
	(immediate-dummy-s26_observe-box_p2-1_a3_b1 ?dd - dummy)
	(dummy-left-s26_observe-box_p2-1_a3_b1 ?dd - dummy)
	(pre-m03_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(dummy-right-s26_observe-box_p2-1_a3_b1 ?dd - dummy)
	(pre-ibh_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(pre-w1k_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(dummy-right-1x7_observe-box_p3-2_a2_b2 ?dd - dummy)
	(immediate-dummy-b5e_observe-box_p2-2_a3_b1 ?dd - dummy)
	(dummy-left-b5e_observe-box_p2-2_a3_b1 ?dd - dummy)
	(pre-frs_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(pre-hrn_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(dummy-right-b5e_observe-box_p2-2_a3_b1 ?dd - dummy)
	(pre-8ji_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-ns4_observe-box_p1-1_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-ns4_observe-box_p1-1_a1_b0 dd)(immediate-dummy-ns4_observe-box_p1-1_a1_b0 dd)(agent-at a3 p1-1)(can-observe a3 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-ns4_observe-box_p1-1_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-ns4_observe-box_p1-1_a1_b0 dd)(not (dummy-left-ns4_observe-box_p1-1_a1_b0 dd))(not (dummy-right-ns4_observe-box_p1-1_a1_b0 dd)))
	:effect (and (immediate-dummy-ns4_observe-box_p1-1_a1_b0 dd) )
)
(:action dummy-left-ns4_observe-box_p1-1_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-ns4_observe-box_p1-1_a1_b0 dd)(agent-at a3 p1-1)(can-observe a3 b0)(not (box-at b0 p1-1))(immediate-dummy-ns4_observe-box_p1-1_a1_b0 dd))
	:effect (and (not (init-ns4_observe-box_p1-1_a1_b0 dd))(not (immediate-dummy-ns4_observe-box_p1-1_a1_b0 dd))(dummy-left-ns4_observe-box_p1-1_a1_b0 dd))
)
(:action dummy-right-ns4_observe-box_p1-1_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-ns4_observe-box_p1-1_a1_b0 dd)(agent-at a3 p1-1)(can-observe a3 b0)(box-at b0 p1-1)(immediate-dummy-ns4_observe-box_p1-1_a1_b0 dd))
	:effect (and (not (init-ns4_observe-box_p1-1_a1_b0 dd))(not (immediate-dummy-ns4_observe-box_p1-1_a1_b0 dd))(dummy-right-ns4_observe-box_p1-1_a1_b0 dd))
)
(:action act-iu5_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ns4_observe-box_p1-1_a1_b0 dd)(immediate-dummy-iu5_observe-box_p2-2_a3_b1 dd)(not (box-at b0 p1-1))(agent-at a3 p2-2)(can-observe a3 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-iu5_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ns4_observe-box_p1-1_a1_b0 dd)(not (box-at b0 p1-1))(agent-at a3 p2-2)(can-observe a3 b1)(not (dummy-left-iu5_observe-box_p2-2_a3_b1 dd))(not (dummy-right-iu5_observe-box_p2-2_a3_b1 dd)))
	:effect (and (immediate-dummy-iu5_observe-box_p2-2_a3_b1 dd) )
)
(:action dummy-left-iu5_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ns4_observe-box_p1-1_a1_b0 dd)(not (box-at b0 p1-1))(agent-at a3 p2-2)(can-observe a3 b1)(not (box-at b1 p2-2))(immediate-dummy-iu5_observe-box_p2-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-iu5_observe-box_p2-2_a3_b1 dd))(dummy-left-iu5_observe-box_p2-2_a3_b1 dd))
)
(:action dummy-right-iu5_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ns4_observe-box_p1-1_a1_b0 dd)(not (box-at b0 p1-1))(agent-at a3 p2-2)(can-observe a3 b1)(box-at b1 p2-2)(immediate-dummy-iu5_observe-box_p2-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-iu5_observe-box_p2-2_a3_b1 dd))(dummy-right-iu5_observe-box_p2-2_a3_b1 dd))
)
(:action act-4p3_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-iu5_observe-box_p2-2_a3_b1 dd)(not (box-at b1 p2-2))(not (box-at b0 p1-1))(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-4p3_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-4p3_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-4p3_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-4p3_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action goal-achieve-right-iu5_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-iu5_observe-box_p2-2_a3_b1 dd)(box-at b1 p2-2)(not (box-at b0 p1-1)))
	:effect (and (done-goal dd)(not (dummy-right-iu5_observe-box_p2-2_a3_b1 dd)))
)
(:action act-1x7_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ns4_observe-box_p1-1_a1_b0 dd)(immediate-dummy-1x7_observe-box_p3-2_a2_b2 dd)(box-at b0 p1-1)(agent-at a3 p3-2)(can-observe a3 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-1x7_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ns4_observe-box_p1-1_a1_b0 dd)(box-at b0 p1-1)(agent-at a3 p3-2)(can-observe a3 b2)(not (dummy-left-1x7_observe-box_p3-2_a2_b2 dd))(not (dummy-right-1x7_observe-box_p3-2_a2_b2 dd)))
	:effect (and (immediate-dummy-1x7_observe-box_p3-2_a2_b2 dd) )
)
(:action dummy-left-1x7_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ns4_observe-box_p1-1_a1_b0 dd)(box-at b0 p1-1)(agent-at a3 p3-2)(can-observe a3 b2)(not (box-at b2 p3-2))(immediate-dummy-1x7_observe-box_p3-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-1x7_observe-box_p3-2_a2_b2 dd))(dummy-left-1x7_observe-box_p3-2_a2_b2 dd))
)
(:action dummy-right-1x7_observe-box_p3-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ns4_observe-box_p1-1_a1_b0 dd)(box-at b0 p1-1)(agent-at a3 p3-2)(can-observe a3 b2)(box-at b2 p3-2)(immediate-dummy-1x7_observe-box_p3-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-1x7_observe-box_p3-2_a2_b2 dd))(dummy-right-1x7_observe-box_p3-2_a2_b2 dd))
)
(:action act-s26_observe-box_p2-1_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1x7_observe-box_p3-2_a2_b2 dd)(immediate-dummy-s26_observe-box_p2-1_a3_b1 dd)(not (box-at b2 p3-2))(box-at b0 p1-1)(agent-at a3 p2-1)(can-observe a3 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-s26_observe-box_p2-1_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1x7_observe-box_p3-2_a2_b2 dd)(not (box-at b2 p3-2))(box-at b0 p1-1)(agent-at a3 p2-1)(can-observe a3 b1)(not (dummy-left-s26_observe-box_p2-1_a3_b1 dd))(not (dummy-right-s26_observe-box_p2-1_a3_b1 dd)))
	:effect (and (immediate-dummy-s26_observe-box_p2-1_a3_b1 dd) )
)
(:action dummy-left-s26_observe-box_p2-1_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1x7_observe-box_p3-2_a2_b2 dd)(not (box-at b2 p3-2))(box-at b0 p1-1)(agent-at a3 p2-1)(can-observe a3 b1)(not (box-at b1 p2-1))(immediate-dummy-s26_observe-box_p2-1_a3_b1 dd))
	:effect (and (not (immediate-dummy-s26_observe-box_p2-1_a3_b1 dd))(dummy-left-s26_observe-box_p2-1_a3_b1 dd))
)
(:action dummy-right-s26_observe-box_p2-1_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1x7_observe-box_p3-2_a2_b2 dd)(not (box-at b2 p3-2))(box-at b0 p1-1)(agent-at a3 p2-1)(can-observe a3 b1)(box-at b1 p2-1)(immediate-dummy-s26_observe-box_p2-1_a3_b1 dd))
	:effect (and (not (immediate-dummy-s26_observe-box_p2-1_a3_b1 dd))(dummy-right-s26_observe-box_p2-1_a3_b1 dd))
)
(:action act-m03_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-s26_observe-box_p2-1_a3_b1 dd)(not (box-at b1 p2-1))(not (box-at b2 p3-2))(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a3 p1-1))
	:effect (and (pre-m03_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action goal-achieve-m03_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-m03_joint-push_p1-1_p1-2_b0_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-m03_joint-push_p1-1_p1-2_b0_a1_a3 dd)))
)
(:action act-ibh_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-s26_observe-box_p2-1_a3_b1 dd)(box-at b1 p2-1)(not (box-at b2 p3-2))(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a3 p1-1))
	:effect (and (pre-ibh_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action act-w1k_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-ibh_joint-push_p1-1_p1-2_b0_a1_a3 dd)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-w1k_joint-push_p2-1_p2-2_b1_a1_a3 dd)(not (pre-ibh_joint-push_p1-1_p1-2_b0_a1_a3 dd)))
)
(:action goal-achieve-w1k_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-w1k_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-w1k_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action act-b5e_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1x7_observe-box_p3-2_a2_b2 dd)(immediate-dummy-b5e_observe-box_p2-2_a3_b1 dd)(box-at b2 p3-2)(box-at b0 p1-1)(agent-at a3 p2-2)(can-observe a3 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-b5e_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1x7_observe-box_p3-2_a2_b2 dd)(box-at b2 p3-2)(box-at b0 p1-1)(agent-at a3 p2-2)(can-observe a3 b1)(not (dummy-left-b5e_observe-box_p2-2_a3_b1 dd))(not (dummy-right-b5e_observe-box_p2-2_a3_b1 dd)))
	:effect (and (immediate-dummy-b5e_observe-box_p2-2_a3_b1 dd) )
)
(:action dummy-left-b5e_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1x7_observe-box_p3-2_a2_b2 dd)(box-at b2 p3-2)(box-at b0 p1-1)(agent-at a3 p2-2)(can-observe a3 b1)(not (box-at b1 p2-2))(immediate-dummy-b5e_observe-box_p2-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-b5e_observe-box_p2-2_a3_b1 dd))(dummy-left-b5e_observe-box_p2-2_a3_b1 dd))
)
(:action dummy-right-b5e_observe-box_p2-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1x7_observe-box_p3-2_a2_b2 dd)(box-at b2 p3-2)(box-at b0 p1-1)(agent-at a3 p2-2)(can-observe a3 b1)(box-at b1 p2-2)(immediate-dummy-b5e_observe-box_p2-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-b5e_observe-box_p2-2_a3_b1 dd))(dummy-right-b5e_observe-box_p2-2_a3_b1 dd))
)
(:action act-frs_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-b5e_observe-box_p2-2_a3_b1 dd)(not (box-at b1 p2-2))(box-at b2 p3-2)(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a3 p1-1))
	:effect (and (pre-frs_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action act-hrn_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-frs_joint-push_p1-1_p1-2_b0_a1_a3 dd)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-hrn_joint-push_p2-1_p2-2_b1_a1_a3 dd)(not (pre-frs_joint-push_p1-1_p1-2_b0_a1_a3 dd)))
)
(:action goal-achieve-hrn_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-hrn_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-hrn_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action act-8ji_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-b5e_observe-box_p2-2_a3_b1 dd)(box-at b1 p2-2)(box-at b2 p3-2)(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a3 p1-1))
	:effect (and (pre-8ji_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action goal-achieve-8ji_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-8ji_joint-push_p1-1_p1-2_b0_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-8ji_joint-push_p1-1_p1-2_b0_a1_a3 dd)))
)
)