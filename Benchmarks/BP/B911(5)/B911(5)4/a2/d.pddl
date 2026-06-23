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
	(init-zgh_observe-box_a1_p1-1_b0 ?dd - dummy)
	(immediate-dummy-zgh_observe-box_a1_p1-1_b0 ?dd - dummy)
	(dummy-left-zgh_observe-box_a1_p1-1_b0 ?dd - dummy)
	(immediate-dummy-e9j_observe-box_a2_p2-2_b1 ?dd - dummy)
	(dummy-left-e9j_observe-box_a2_p2-2_b1 ?dd - dummy)
	(pre-1xn_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(immediate-dummy-svz_observe-box_a2_p3-1_b2 ?dd - dummy)
	(dummy-left-svz_observe-box_a2_p3-1_b2 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-svz_observe-box_a2_p3-1_b2 ?dd - dummy)
	(pre-0t1_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
	(dummy-right-e9j_observe-box_a2_p2-2_b1 ?dd - dummy)
	(immediate-dummy-v23_observe-box_a2_p3-1_b2 ?dd - dummy)
	(dummy-left-v23_observe-box_a2_p3-1_b2 ?dd - dummy)
	(dummy-right-v23_observe-box_a2_p3-1_b2 ?dd - dummy)
	(pre-owk_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
	(dummy-right-zgh_observe-box_a1_p1-1_b0 ?dd - dummy)
	(immediate-dummy-954_observe-box_a3_p2-1_b1 ?dd - dummy)
	(dummy-left-954_observe-box_a3_p2-1_b1 ?dd - dummy)
	(pre-k90_joint-push_p1-1_p1-2_b0_a1_a2 ?dd - dummy)
	(immediate-dummy-7eh_observe-box_a4_p4-2_b4 ?dd - dummy)
	(dummy-left-7eh_observe-box_a4_p4-2_b4 ?dd - dummy)
	(immediate-dummy-79j_observe-box_a2_p3-1_b2 ?dd - dummy)
	(dummy-left-79j_observe-box_a2_p3-1_b2 ?dd - dummy)
	(dummy-right-79j_observe-box_a2_p3-1_b2 ?dd - dummy)
	(pre-dsv_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
	(dummy-right-7eh_observe-box_a4_p4-2_b4 ?dd - dummy)
	(immediate-dummy-j9m_observe-box_a5_p5-2_b5 ?dd - dummy)
	(dummy-left-j9m_observe-box_a5_p5-2_b5 ?dd - dummy)
	(immediate-dummy-psc_observe-box_a2_p3-1_b2 ?dd - dummy)
	(dummy-left-psc_observe-box_a2_p3-1_b2 ?dd - dummy)
	(dummy-right-psc_observe-box_a2_p3-1_b2 ?dd - dummy)
	(pre-wxu_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
	(dummy-right-j9m_observe-box_a5_p5-2_b5 ?dd - dummy)
	(immediate-dummy-3nx_observe-box-x4h_a4_p3-1_b2 ?dd - dummy)
	(dummy-left-3nx_observe-box-x4h_a4_p3-1_b2 ?dd - dummy)
	(dummy-right-3nx_observe-box-x4h_a4_p3-1_b2 ?dd - dummy)
	(pre-b4z_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
	(dummy-right-954_observe-box_a3_p2-1_b1 ?dd - dummy)
	(immediate-dummy-4bo_observe-box_a2_p3-2_b2 ?dd - dummy)
	(dummy-left-4bo_observe-box_a2_p3-2_b2 ?dd - dummy)
	(immediate-dummy-k0l_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
	(dummy-left-k0l_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
	(pre-n3a_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
	(dummy-right-k0l_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
	(pre-t4t_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
	(immediate-dummy-guw_observe-box_a2_p4-2_b4 ?dd - dummy)
	(dummy-left-guw_observe-box_a2_p4-2_b4 ?dd - dummy)
	(pre-qwa_one-push_p4-1_p4-2_b4_a2 ?dd - dummy)
	(pre-fm3_joint-push_p5-1_p5-2_b5_a2_a5 ?dd - dummy)
	(dummy-right-guw_observe-box_a2_p4-2_b4 ?dd - dummy)
	(pre-q9e_joint-push_p5-1_p5-2_b5_a2_a5 ?dd - dummy)
	(dummy-right-4bo_observe-box_a2_p3-2_b2 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-zgh_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-zgh_observe-box_a1_p1-1_b0 dd)(immediate-dummy-zgh_observe-box_a1_p1-1_b0 dd)(agent-at a2 p1-1)(can-observe a2 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-zgh_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-zgh_observe-box_a1_p1-1_b0 dd)(not (dummy-left-zgh_observe-box_a1_p1-1_b0 dd))(not (dummy-right-zgh_observe-box_a1_p1-1_b0 dd)))
	:effect (and (immediate-dummy-zgh_observe-box_a1_p1-1_b0 dd) )
)
(:action dummy-left-zgh_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-zgh_observe-box_a1_p1-1_b0 dd)(agent-at a2 p1-1)(can-observe a2 b0)(not (box-at b0 p1-1))(immediate-dummy-zgh_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (init-zgh_observe-box_a1_p1-1_b0 dd))(not (immediate-dummy-zgh_observe-box_a1_p1-1_b0 dd))(dummy-left-zgh_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-right-zgh_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-zgh_observe-box_a1_p1-1_b0 dd)(agent-at a2 p1-1)(can-observe a2 b0)(box-at b0 p1-1)(immediate-dummy-zgh_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (init-zgh_observe-box_a1_p1-1_b0 dd))(not (immediate-dummy-zgh_observe-box_a1_p1-1_b0 dd))(dummy-right-zgh_observe-box_a1_p1-1_b0 dd))
)
(:action act-e9j_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-zgh_observe-box_a1_p1-1_b0 dd)(immediate-dummy-e9j_observe-box_a2_p2-2_b1 dd)(not (box-at b0 p1-1))(agent-at a2 p2-2)(can-observe a2 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-e9j_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-zgh_observe-box_a1_p1-1_b0 dd)(not (box-at b0 p1-1))(agent-at a2 p2-2)(can-observe a2 b1)(not (dummy-left-e9j_observe-box_a2_p2-2_b1 dd))(not (dummy-right-e9j_observe-box_a2_p2-2_b1 dd)))
	:effect (and (immediate-dummy-e9j_observe-box_a2_p2-2_b1 dd) )
)
(:action dummy-left-e9j_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-zgh_observe-box_a1_p1-1_b0 dd)(not (box-at b0 p1-1))(agent-at a2 p2-2)(can-observe a2 b1)(not (box-at b1 p2-2))(immediate-dummy-e9j_observe-box_a2_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-e9j_observe-box_a2_p2-2_b1 dd))(dummy-left-e9j_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-e9j_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-zgh_observe-box_a1_p1-1_b0 dd)(not (box-at b0 p1-1))(agent-at a2 p2-2)(can-observe a2 b1)(box-at b1 p2-2)(immediate-dummy-e9j_observe-box_a2_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-e9j_observe-box_a2_p2-2_b1 dd))(dummy-right-e9j_observe-box_a2_p2-2_b1 dd))
)
(:action act-1xn_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-e9j_observe-box_a2_p2-2_b1 dd)(not (box-at b1 p2-2))(not (box-at b0 p1-1))(adj p2-1 p2-2)(agent-at a2 p2-1))
	:effect (and (pre-1xn_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action act-svz_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-1xn_joint-push_p2-1_p2-2_b1_a2_a3 dd)(immediate-dummy-svz_observe-box_a2_p3-1_b2 dd)(agent-at a2 p3-1)(can-observe a2 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-svz_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-1xn_joint-push_p2-1_p2-2_b1_a2_a3 dd)(agent-at a2 p3-1)(can-observe a2 b2)(not (dummy-left-svz_observe-box_a2_p3-1_b2 dd))(not (dummy-right-svz_observe-box_a2_p3-1_b2 dd)))
	:effect (and (immediate-dummy-svz_observe-box_a2_p3-1_b2 dd) )
)
(:action dummy-left-svz_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p3-1)(can-observe a2 b2)(not (box-at b2 p3-1))(immediate-dummy-svz_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-svz_observe-box_a2_p3-1_b2 dd))(dummy-left-svz_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-svz_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p3-1)(can-observe a2 b2)(box-at b2 p3-1)(immediate-dummy-svz_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-svz_observe-box_a2_p3-1_b2 dd))(dummy-right-svz_observe-box_a2_p3-1_b2 dd))
)
(:action goal-achieve-left-svz_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-svz_observe-box_a2_p3-1_b2 dd)(not (box-at b2 p3-1)))
	:effect (and (done-goal dd)(not (dummy-left-svz_observe-box_a2_p3-1_b2 dd)))
)
(:action act-0t1_joint-push_p3-1_p3-2_b2_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-svz_observe-box_a2_p3-1_b2 dd)(box-at b2 p3-1)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-0t1_joint-push_p3-1_p3-2_b2_a2_a5 dd))
)
(:action goal-achieve-0t1_joint-push_p3-1_p3-2_b2_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (pre-0t1_joint-push_p3-1_p3-2_b2_a2_a5 dd))
	:effect (and (done-goal dd)(not (pre-0t1_joint-push_p3-1_p3-2_b2_a2_a5 dd)))
)
(:action act-v23_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-e9j_observe-box_a2_p2-2_b1 dd)(immediate-dummy-v23_observe-box_a2_p3-1_b2 dd)(box-at b1 p2-2)(not (box-at b0 p1-1))(agent-at a2 p3-1)(can-observe a2 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-v23_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-e9j_observe-box_a2_p2-2_b1 dd)(box-at b1 p2-2)(not (box-at b0 p1-1))(agent-at a2 p3-1)(can-observe a2 b2)(not (dummy-left-v23_observe-box_a2_p3-1_b2 dd))(not (dummy-right-v23_observe-box_a2_p3-1_b2 dd)))
	:effect (and (immediate-dummy-v23_observe-box_a2_p3-1_b2 dd) )
)
(:action dummy-left-v23_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-e9j_observe-box_a2_p2-2_b1 dd)(box-at b1 p2-2)(not (box-at b0 p1-1))(agent-at a2 p3-1)(can-observe a2 b2)(not (box-at b2 p3-1))(immediate-dummy-v23_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-v23_observe-box_a2_p3-1_b2 dd))(dummy-left-v23_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-v23_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-e9j_observe-box_a2_p2-2_b1 dd)(box-at b1 p2-2)(not (box-at b0 p1-1))(agent-at a2 p3-1)(can-observe a2 b2)(box-at b2 p3-1)(immediate-dummy-v23_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-v23_observe-box_a2_p3-1_b2 dd))(dummy-right-v23_observe-box_a2_p3-1_b2 dd))
)
(:action goal-achieve-left-v23_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-v23_observe-box_a2_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b1 p2-2)(not (box-at b0 p1-1)))
	:effect (and (done-goal dd)(not (dummy-left-v23_observe-box_a2_p3-1_b2 dd)))
)
(:action act-owk_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-v23_observe-box_a2_p3-1_b2 dd)(box-at b2 p3-1)(box-at b1 p2-2)(not (box-at b0 p1-1))(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-owk_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-owk_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-owk_joint-push_p3-1_p3-2_b2_a2_a4 dd))
	:effect (and (done-goal dd)(not (pre-owk_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
(:action act-954_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-zgh_observe-box_a1_p1-1_b0 dd)(immediate-dummy-954_observe-box_a3_p2-1_b1 dd)(box-at b0 p1-1)(agent-at a2 p2-1)(can-observe a2 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-954_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-zgh_observe-box_a1_p1-1_b0 dd)(box-at b0 p1-1)(agent-at a2 p2-1)(can-observe a2 b1)(not (dummy-left-954_observe-box_a3_p2-1_b1 dd))(not (dummy-right-954_observe-box_a3_p2-1_b1 dd)))
	:effect (and (immediate-dummy-954_observe-box_a3_p2-1_b1 dd) )
)
(:action dummy-left-954_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-zgh_observe-box_a1_p1-1_b0 dd)(box-at b0 p1-1)(agent-at a2 p2-1)(can-observe a2 b1)(not (box-at b1 p2-1))(immediate-dummy-954_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-954_observe-box_a3_p2-1_b1 dd))(dummy-left-954_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-right-954_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-zgh_observe-box_a1_p1-1_b0 dd)(box-at b0 p1-1)(agent-at a2 p2-1)(can-observe a2 b1)(box-at b1 p2-1)(immediate-dummy-954_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-954_observe-box_a3_p2-1_b1 dd))(dummy-right-954_observe-box_a3_p2-1_b1 dd))
)
(:action act-k90_joint-push_p1-1_p1-2_b0_a1_a2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-954_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1))(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a2 p1-1))
	:effect (and (pre-k90_joint-push_p1-1_p1-2_b0_a1_a2 dd))
)
(:action act-7eh_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (pre-k90_joint-push_p1-1_p1-2_b0_a1_a2 dd)(immediate-dummy-7eh_observe-box_a4_p4-2_b4 dd)(agent-at a2 p4-2)(can-observe a2 b4))
	:observe (box-at b4 p4-2)
)
(:action act-dummy-7eh_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (pre-k90_joint-push_p1-1_p1-2_b0_a1_a2 dd)(agent-at a2 p4-2)(can-observe a2 b4)(not (dummy-left-7eh_observe-box_a4_p4-2_b4 dd))(not (dummy-right-7eh_observe-box_a4_p4-2_b4 dd)))
	:effect (and (immediate-dummy-7eh_observe-box_a4_p4-2_b4 dd) )
)
(:action dummy-left-7eh_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p4-2)(can-observe a2 b4)(not (box-at b4 p4-2))(immediate-dummy-7eh_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-7eh_observe-box_a4_p4-2_b4 dd))(dummy-left-7eh_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-7eh_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p4-2)(can-observe a2 b4)(box-at b4 p4-2)(immediate-dummy-7eh_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-7eh_observe-box_a4_p4-2_b4 dd))(dummy-right-7eh_observe-box_a4_p4-2_b4 dd))
)
(:action act-79j_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7eh_observe-box_a4_p4-2_b4 dd)(immediate-dummy-79j_observe-box_a2_p3-1_b2 dd)(not (box-at b4 p4-2))(agent-at a2 p3-1)(can-observe a2 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-79j_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7eh_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(agent-at a2 p3-1)(can-observe a2 b2)(not (dummy-left-79j_observe-box_a2_p3-1_b2 dd))(not (dummy-right-79j_observe-box_a2_p3-1_b2 dd)))
	:effect (and (immediate-dummy-79j_observe-box_a2_p3-1_b2 dd) )
)
(:action dummy-left-79j_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7eh_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(agent-at a2 p3-1)(can-observe a2 b2)(not (box-at b2 p3-1))(immediate-dummy-79j_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-79j_observe-box_a2_p3-1_b2 dd))(dummy-left-79j_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-79j_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7eh_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(agent-at a2 p3-1)(can-observe a2 b2)(box-at b2 p3-1)(immediate-dummy-79j_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-79j_observe-box_a2_p3-1_b2 dd))(dummy-right-79j_observe-box_a2_p3-1_b2 dd))
)
(:action goal-achieve-left-79j_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-79j_observe-box_a2_p3-1_b2 dd)(not (box-at b2 p3-1))(not (box-at b4 p4-2)))
	:effect (and (done-goal dd)(not (dummy-left-79j_observe-box_a2_p3-1_b2 dd)))
)
(:action act-dsv_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-79j_observe-box_a2_p3-1_b2 dd)(box-at b2 p3-1)(not (box-at b4 p4-2))(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-dsv_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-dsv_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-dsv_joint-push_p3-1_p3-2_b2_a2_a4 dd))
	:effect (and (done-goal dd)(not (pre-dsv_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
(:action act-j9m_observe-box_a5_p5-2_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7eh_observe-box_a4_p4-2_b4 dd)(immediate-dummy-j9m_observe-box_a5_p5-2_b5 dd)(box-at b4 p4-2)(agent-at a2 p5-2)(can-observe a2 b5))
	:observe (box-at b5 p5-2)
)
(:action act-dummy-j9m_observe-box_a5_p5-2_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7eh_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(agent-at a2 p5-2)(can-observe a2 b5)(not (dummy-left-j9m_observe-box_a5_p5-2_b5 dd))(not (dummy-right-j9m_observe-box_a5_p5-2_b5 dd)))
	:effect (and (immediate-dummy-j9m_observe-box_a5_p5-2_b5 dd) )
)
(:action dummy-left-j9m_observe-box_a5_p5-2_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7eh_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(agent-at a2 p5-2)(can-observe a2 b5)(not (box-at b5 p5-2))(immediate-dummy-j9m_observe-box_a5_p5-2_b5 dd))
	:effect (and (not (immediate-dummy-j9m_observe-box_a5_p5-2_b5 dd))(dummy-left-j9m_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-right-j9m_observe-box_a5_p5-2_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7eh_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(agent-at a2 p5-2)(can-observe a2 b5)(box-at b5 p5-2)(immediate-dummy-j9m_observe-box_a5_p5-2_b5 dd))
	:effect (and (not (immediate-dummy-j9m_observe-box_a5_p5-2_b5 dd))(dummy-right-j9m_observe-box_a5_p5-2_b5 dd))
)
(:action act-psc_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j9m_observe-box_a5_p5-2_b5 dd)(immediate-dummy-psc_observe-box_a2_p3-1_b2 dd)(not (box-at b5 p5-2))(box-at b4 p4-2)(agent-at a2 p3-1)(can-observe a2 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-psc_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j9m_observe-box_a5_p5-2_b5 dd)(not (box-at b5 p5-2))(box-at b4 p4-2)(agent-at a2 p3-1)(can-observe a2 b2)(not (dummy-left-psc_observe-box_a2_p3-1_b2 dd))(not (dummy-right-psc_observe-box_a2_p3-1_b2 dd)))
	:effect (and (immediate-dummy-psc_observe-box_a2_p3-1_b2 dd) )
)
(:action dummy-left-psc_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j9m_observe-box_a5_p5-2_b5 dd)(not (box-at b5 p5-2))(box-at b4 p4-2)(agent-at a2 p3-1)(can-observe a2 b2)(not (box-at b2 p3-1))(immediate-dummy-psc_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-psc_observe-box_a2_p3-1_b2 dd))(dummy-left-psc_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-psc_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j9m_observe-box_a5_p5-2_b5 dd)(not (box-at b5 p5-2))(box-at b4 p4-2)(agent-at a2 p3-1)(can-observe a2 b2)(box-at b2 p3-1)(immediate-dummy-psc_observe-box_a2_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-psc_observe-box_a2_p3-1_b2 dd))(dummy-right-psc_observe-box_a2_p3-1_b2 dd))
)
(:action goal-achieve-left-psc_observe-box_a2_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-psc_observe-box_a2_p3-1_b2 dd)(not (box-at b2 p3-1))(not (box-at b5 p5-2))(box-at b4 p4-2))
	:effect (and (done-goal dd)(not (dummy-left-psc_observe-box_a2_p3-1_b2 dd)))
)
(:action act-wxu_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-psc_observe-box_a2_p3-1_b2 dd)(box-at b2 p3-1)(not (box-at b5 p5-2))(box-at b4 p4-2)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-wxu_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-wxu_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-wxu_joint-push_p3-1_p3-2_b2_a2_a4 dd))
	:effect (and (done-goal dd)(not (pre-wxu_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
(:action act-3nx_observe-box-x4h_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j9m_observe-box_a5_p5-2_b5 dd)(immediate-dummy-3nx_observe-box-x4h_a4_p3-1_b2 dd)(box-at b5 p5-2)(box-at b4 p4-2)(agent-at a2 p3-1)(can-observe a2 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-3nx_observe-box-x4h_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j9m_observe-box_a5_p5-2_b5 dd)(box-at b5 p5-2)(box-at b4 p4-2)(agent-at a2 p3-1)(can-observe a2 b2)(not (dummy-left-3nx_observe-box-x4h_a4_p3-1_b2 dd))(not (dummy-right-3nx_observe-box-x4h_a4_p3-1_b2 dd)))
	:effect (and (immediate-dummy-3nx_observe-box-x4h_a4_p3-1_b2 dd) )
)
(:action dummy-left-3nx_observe-box-x4h_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j9m_observe-box_a5_p5-2_b5 dd)(box-at b5 p5-2)(box-at b4 p4-2)(agent-at a2 p3-1)(can-observe a2 b2)(not (box-at b2 p3-1))(immediate-dummy-3nx_observe-box-x4h_a4_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-3nx_observe-box-x4h_a4_p3-1_b2 dd))(dummy-left-3nx_observe-box-x4h_a4_p3-1_b2 dd))
)
(:action dummy-right-3nx_observe-box-x4h_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j9m_observe-box_a5_p5-2_b5 dd)(box-at b5 p5-2)(box-at b4 p4-2)(agent-at a2 p3-1)(can-observe a2 b2)(box-at b2 p3-1)(immediate-dummy-3nx_observe-box-x4h_a4_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-3nx_observe-box-x4h_a4_p3-1_b2 dd))(dummy-right-3nx_observe-box-x4h_a4_p3-1_b2 dd))
)
(:action goal-achieve-left-3nx_observe-box-x4h_a4_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3nx_observe-box-x4h_a4_p3-1_b2 dd)(box-at b5 p5-2)(box-at b4 p4-2))
	:effect (and (done-goal dd)(not (dummy-left-3nx_observe-box-x4h_a4_p3-1_b2 dd)))
)
(:action act-b4z_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3nx_observe-box-x4h_a4_p3-1_b2 dd)(box-at b5 p5-2)(box-at b4 p4-2)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-b4z_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-b4z_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-b4z_joint-push_p3-1_p3-2_b2_a2_a4 dd))
	:effect (and (done-goal dd)(not (pre-b4z_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
(:action act-4bo_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-954_observe-box_a3_p2-1_b1 dd)(immediate-dummy-4bo_observe-box_a2_p3-2_b2 dd)(box-at b1 p2-1)(box-at b0 p1-1)(agent-at a2 p3-2)(can-observe a2 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-4bo_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-954_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(box-at b0 p1-1)(agent-at a2 p3-2)(can-observe a2 b2)(not (dummy-left-4bo_observe-box_a2_p3-2_b2 dd))(not (dummy-right-4bo_observe-box_a2_p3-2_b2 dd)))
	:effect (and (immediate-dummy-4bo_observe-box_a2_p3-2_b2 dd) )
)
(:action dummy-left-4bo_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-954_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(box-at b0 p1-1)(agent-at a2 p3-2)(can-observe a2 b2)(not (box-at b2 p3-2))(immediate-dummy-4bo_observe-box_a2_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-4bo_observe-box_a2_p3-2_b2 dd))(dummy-left-4bo_observe-box_a2_p3-2_b2 dd))
)
(:action dummy-right-4bo_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-954_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(box-at b0 p1-1)(agent-at a2 p3-2)(can-observe a2 b2)(box-at b2 p3-2)(immediate-dummy-4bo_observe-box_a2_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-4bo_observe-box_a2_p3-2_b2 dd))(dummy-right-4bo_observe-box_a2_p3-2_b2 dd))
)
(:action act-k0l_observe-box-gp1_a5_p5-1_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4bo_observe-box_a2_p3-2_b2 dd)(immediate-dummy-k0l_observe-box-gp1_a5_p5-1_b5 dd)(not (box-at b2 p3-2))(box-at b1 p2-1)(box-at b0 p1-1)(agent-at a2 p5-1)(can-observe a2 b5))
	:observe (box-at b5 p5-1)
)
(:action act-dummy-k0l_observe-box-gp1_a5_p5-1_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4bo_observe-box_a2_p3-2_b2 dd)(not (box-at b2 p3-2))(box-at b1 p2-1)(box-at b0 p1-1)(agent-at a2 p5-1)(can-observe a2 b5)(not (dummy-left-k0l_observe-box-gp1_a5_p5-1_b5 dd))(not (dummy-right-k0l_observe-box-gp1_a5_p5-1_b5 dd)))
	:effect (and (immediate-dummy-k0l_observe-box-gp1_a5_p5-1_b5 dd) )
)
(:action dummy-left-k0l_observe-box-gp1_a5_p5-1_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4bo_observe-box_a2_p3-2_b2 dd)(not (box-at b2 p3-2))(box-at b1 p2-1)(box-at b0 p1-1)(agent-at a2 p5-1)(can-observe a2 b5)(not (box-at b5 p5-1))(immediate-dummy-k0l_observe-box-gp1_a5_p5-1_b5 dd))
	:effect (and (not (immediate-dummy-k0l_observe-box-gp1_a5_p5-1_b5 dd))(dummy-left-k0l_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-right-k0l_observe-box-gp1_a5_p5-1_b5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4bo_observe-box_a2_p3-2_b2 dd)(not (box-at b2 p3-2))(box-at b1 p2-1)(box-at b0 p1-1)(agent-at a2 p5-1)(can-observe a2 b5)(box-at b5 p5-1)(immediate-dummy-k0l_observe-box-gp1_a5_p5-1_b5 dd))
	:effect (and (not (immediate-dummy-k0l_observe-box-gp1_a5_p5-1_b5 dd))(dummy-right-k0l_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action act-n3a_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-k0l_observe-box-gp1_a5_p5-1_b5 dd)(not (box-at b2 p3-2))(box-at b1 p2-1)(box-at b0 p1-1)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-n3a_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-n3a_joint-push_p3-1_p3-2_b2_a2_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-n3a_joint-push_p3-1_p3-2_b2_a2_a4 dd))
	:effect (and (done-goal dd)(not (pre-n3a_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
(:action act-t4t_joint-push_p3-1_p3-2_b2_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-k0l_observe-box-gp1_a5_p5-1_b5 dd)(not (box-at b2 p3-2))(box-at b1 p2-1)(box-at b0 p1-1)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-t4t_joint-push_p3-1_p3-2_b2_a2_a5 dd))
)
(:action act-guw_observe-box_a2_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (pre-t4t_joint-push_p3-1_p3-2_b2_a2_a5 dd)(immediate-dummy-guw_observe-box_a2_p4-2_b4 dd)(agent-at a2 p4-2)(can-observe a2 b4))
	:observe (box-at b4 p4-2)
)
(:action act-dummy-guw_observe-box_a2_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (pre-t4t_joint-push_p3-1_p3-2_b2_a2_a5 dd)(agent-at a2 p4-2)(can-observe a2 b4)(not (dummy-left-guw_observe-box_a2_p4-2_b4 dd))(not (dummy-right-guw_observe-box_a2_p4-2_b4 dd)))
	:effect (and (immediate-dummy-guw_observe-box_a2_p4-2_b4 dd) )
)
(:action dummy-left-guw_observe-box_a2_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p4-2)(can-observe a2 b4)(not (box-at b4 p4-2))(immediate-dummy-guw_observe-box_a2_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-guw_observe-box_a2_p4-2_b4 dd))(dummy-left-guw_observe-box_a2_p4-2_b4 dd))
)
(:action dummy-right-guw_observe-box_a2_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p4-2)(can-observe a2 b4)(box-at b4 p4-2)(immediate-dummy-guw_observe-box_a2_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-guw_observe-box_a2_p4-2_b4 dd))(dummy-right-guw_observe-box_a2_p4-2_b4 dd))
)
(:action act-qwa_one-push_p4-1_p4-2_b4_a2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-guw_observe-box_a2_p4-2_b4 dd)(not (box-at b4 p4-2))(adj p4-1 p4-2)(agent-at a2 p4-1))
	:effect (and (pre-qwa_one-push_p4-1_p4-2_b4_a2 dd))
)
(:action act-fm3_joint-push_p5-1_p5-2_b5_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (pre-qwa_one-push_p4-1_p4-2_b4_a2 dd)(adj p5-1 p5-2)(agent-at a2 p5-1))
	:effect (and (pre-fm3_joint-push_p5-1_p5-2_b5_a2_a5 dd)(not (pre-qwa_one-push_p4-1_p4-2_b4_a2 dd)))
)
(:action goal-achieve-fm3_joint-push_p5-1_p5-2_b5_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (pre-fm3_joint-push_p5-1_p5-2_b5_a2_a5 dd))
	:effect (and (done-goal dd)(not (pre-fm3_joint-push_p5-1_p5-2_b5_a2_a5 dd)))
)
(:action act-q9e_joint-push_p5-1_p5-2_b5_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-guw_observe-box_a2_p4-2_b4 dd)(box-at b4 p4-2)(adj p5-1 p5-2)(agent-at a2 p5-1))
	:effect (and (pre-q9e_joint-push_p5-1_p5-2_b5_a2_a5 dd))
)
(:action goal-achieve-q9e_joint-push_p5-1_p5-2_b5_a2_a5
	:parameters ( ?a - agent )
	:precondition (and (pre-q9e_joint-push_p5-1_p5-2_b5_a2_a5 dd))
	:effect (and (done-goal dd)(not (pre-q9e_joint-push_p5-1_p5-2_b5_a2_a5 dd)))
)
(:action goal-achieve-right-4bo_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4bo_observe-box_a2_p3-2_b2 dd)(box-at b2 p3-2)(box-at b1 p2-1)(box-at b0 p1-1))
	:effect (and (done-goal dd)(not (dummy-right-4bo_observe-box_a2_p3-2_b2 dd)))
)
)