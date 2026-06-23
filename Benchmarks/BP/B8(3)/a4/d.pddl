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
	(init-me5_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-me5_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-me5_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-j5c_observe-box_a3_p3-2_b2 ?dd - dummy)
	(dummy-left-j5c_observe-box_a3_p3-2_b2 ?dd - dummy)
	(immediate-dummy-yic_observe-box_a4_p4-2_b4 ?dd - dummy)
	(dummy-left-yic_observe-box_a4_p4-2_b4 ?dd - dummy)
	(pre-8rj_one-push_p4-1_p4-2_b4_a4 ?dd - dummy)
	(pre-zq1_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
	(pre-tas_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(immediate-dummy-bn5_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-left-bn5_observe-box_a1_p2-2_b1 ?dd - dummy)
	(pre-qly_joint-push_p2-1_p2-2_b1_a1_a4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-bn5_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-right-yic_observe-box_a4_p4-2_b4 ?dd - dummy)
	(pre-6uy_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
	(pre-pcj_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(immediate-dummy-2dy_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-left-2dy_observe-box_a1_p2-2_b1 ?dd - dummy)
	(pre-2el_joint-push_p2-1_p2-2_b1_a1_a4 ?dd - dummy)
	(dummy-right-2dy_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-right-j5c_observe-box_a3_p3-2_b2 ?dd - dummy)
	(pre-zdh_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
	(immediate-dummy-qat_observe-box_a4_p2-1_b1 ?dd - dummy)
	(dummy-left-qat_observe-box_a4_p2-1_b1 ?dd - dummy)
	(dummy-right-qat_observe-box_a4_p2-1_b1 ?dd - dummy)
	(pre-yqs_joint-push_p2-1_p2-2_b1_a1_a4 ?dd - dummy)
	(dummy-right-me5_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-e4h_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-left-e4h_observe-box_a3_p3-1_b2 ?dd - dummy)
	(immediate-dummy-4n9_observe-box_a4_p4-1_b4 ?dd - dummy)
	(dummy-left-4n9_observe-box_a4_p4-1_b4 ?dd - dummy)
	(dummy-right-4n9_observe-box_a4_p4-1_b4 ?dd - dummy)
	(pre-dvg_one-push_p4-1_p4-2_b4_a4 ?dd - dummy)
	(dummy-right-e4h_observe-box_a3_p3-1_b2 ?dd - dummy)
	(immediate-dummy-t62_observe-box_a4_p4-2_b4 ?dd - dummy)
	(dummy-left-t62_observe-box_a4_p4-2_b4 ?dd - dummy)
	(pre-gmk_one-push_p4-1_p4-2_b4_a4 ?dd - dummy)
	(pre-nif_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(dummy-right-t62_observe-box_a4_p4-2_b4 ?dd - dummy)
	(immediate-dummy-2gn_observe-box_a1_p2-2_b1 ?dd - dummy)
	(dummy-left-2gn_observe-box_a1_p2-2_b1 ?dd - dummy)
	(pre-u6l_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(pre-q47_joint-push_p2-1_p2-2_b1_a1_a4 ?dd - dummy)
	(dummy-right-2gn_observe-box_a1_p2-2_b1 ?dd - dummy)
	(pre-lvm_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-me5_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-me5_observe-box_a1_p1-2_b0 dd)(immediate-dummy-me5_observe-box_a1_p1-2_b0 dd)(agent-at a4 p1-2)(can-observe a4 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-me5_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-me5_observe-box_a1_p1-2_b0 dd)(not (dummy-left-me5_observe-box_a1_p1-2_b0 dd))(not (dummy-right-me5_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-me5_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-me5_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-me5_observe-box_a1_p1-2_b0 dd)(agent-at a4 p1-2)(can-observe a4 b0)(not (box-at b0 p1-2))(immediate-dummy-me5_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (init-me5_observe-box_a1_p1-2_b0 dd))(not (immediate-dummy-me5_observe-box_a1_p1-2_b0 dd))(dummy-left-me5_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-me5_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-me5_observe-box_a1_p1-2_b0 dd)(agent-at a4 p1-2)(can-observe a4 b0)(box-at b0 p1-2)(immediate-dummy-me5_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (init-me5_observe-box_a1_p1-2_b0 dd))(not (immediate-dummy-me5_observe-box_a1_p1-2_b0 dd))(dummy-right-me5_observe-box_a1_p1-2_b0 dd))
)
(:action act-j5c_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-me5_observe-box_a1_p1-2_b0 dd)(immediate-dummy-j5c_observe-box_a3_p3-2_b2 dd)(not (box-at b0 p1-2))(agent-at a4 p3-2)(can-observe a4 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-j5c_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-me5_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a4 p3-2)(can-observe a4 b2)(not (dummy-left-j5c_observe-box_a3_p3-2_b2 dd))(not (dummy-right-j5c_observe-box_a3_p3-2_b2 dd)))
	:effect (and (immediate-dummy-j5c_observe-box_a3_p3-2_b2 dd) )
)
(:action dummy-left-j5c_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-me5_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a4 p3-2)(can-observe a4 b2)(not (box-at b2 p3-2))(immediate-dummy-j5c_observe-box_a3_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-j5c_observe-box_a3_p3-2_b2 dd))(dummy-left-j5c_observe-box_a3_p3-2_b2 dd))
)
(:action dummy-right-j5c_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-me5_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a4 p3-2)(can-observe a4 b2)(box-at b2 p3-2)(immediate-dummy-j5c_observe-box_a3_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-j5c_observe-box_a3_p3-2_b2 dd))(dummy-right-j5c_observe-box_a3_p3-2_b2 dd))
)
(:action act-yic_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j5c_observe-box_a3_p3-2_b2 dd)(immediate-dummy-yic_observe-box_a4_p4-2_b4 dd)(not (box-at b2 p3-2))(not (box-at b0 p1-2))(agent-at a4 p4-2)(can-observe a4 b4))
	:observe (box-at b4 p4-2)
)
(:action act-dummy-yic_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j5c_observe-box_a3_p3-2_b2 dd)(not (box-at b2 p3-2))(not (box-at b0 p1-2))(agent-at a4 p4-2)(can-observe a4 b4)(not (dummy-left-yic_observe-box_a4_p4-2_b4 dd))(not (dummy-right-yic_observe-box_a4_p4-2_b4 dd)))
	:effect (and (immediate-dummy-yic_observe-box_a4_p4-2_b4 dd) )
)
(:action dummy-left-yic_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j5c_observe-box_a3_p3-2_b2 dd)(not (box-at b2 p3-2))(not (box-at b0 p1-2))(agent-at a4 p4-2)(can-observe a4 b4)(not (box-at b4 p4-2))(immediate-dummy-yic_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-yic_observe-box_a4_p4-2_b4 dd))(dummy-left-yic_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-yic_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-j5c_observe-box_a3_p3-2_b2 dd)(not (box-at b2 p3-2))(not (box-at b0 p1-2))(agent-at a4 p4-2)(can-observe a4 b4)(box-at b4 p4-2)(immediate-dummy-yic_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-yic_observe-box_a4_p4-2_b4 dd))(dummy-right-yic_observe-box_a4_p4-2_b4 dd))
)
(:action act-8rj_one-push_p4-1_p4-2_b4_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-yic_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(not (box-at b2 p3-2))(not (box-at b0 p1-2))(adj p4-1 p4-2)(agent-at a4 p4-1))
	:effect (and (pre-8rj_one-push_p4-1_p4-2_b4_a4 dd))
)
(:action act-zq1_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-8rj_one-push_p4-1_p4-2_b4_a4 dd)(adj p1-1 p1-2)(agent-at a4 p1-1))
	:effect (and (pre-zq1_joint-push_p1-1_p1-2_b0_a1_a4 dd)(not (pre-8rj_one-push_p4-1_p4-2_b4_a4 dd)))
)
(:action act-tas_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-zq1_joint-push_p1-1_p1-2_b0_a1_a4 dd)(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-tas_joint-push_p3-1_p3-2_b2_a3_a4 dd)(not (pre-zq1_joint-push_p1-1_p1-2_b0_a1_a4 dd)))
)
(:action act-bn5_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-tas_joint-push_p3-1_p3-2_b2_a3_a4 dd)(immediate-dummy-bn5_observe-box_a1_p2-2_b1 dd)(agent-at a4 p2-2)(can-observe a4 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-bn5_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-tas_joint-push_p3-1_p3-2_b2_a3_a4 dd)(agent-at a4 p2-2)(can-observe a4 b1)(not (dummy-left-bn5_observe-box_a1_p2-2_b1 dd))(not (dummy-right-bn5_observe-box_a1_p2-2_b1 dd)))
	:effect (and (immediate-dummy-bn5_observe-box_a1_p2-2_b1 dd) )
)
(:action dummy-left-bn5_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a4 p2-2)(can-observe a4 b1)(not (box-at b1 p2-2))(immediate-dummy-bn5_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-bn5_observe-box_a1_p2-2_b1 dd))(dummy-left-bn5_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-right-bn5_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a4 p2-2)(can-observe a4 b1)(box-at b1 p2-2)(immediate-dummy-bn5_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-bn5_observe-box_a1_p2-2_b1 dd))(dummy-right-bn5_observe-box_a1_p2-2_b1 dd))
)
(:action act-qly_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bn5_observe-box_a1_p2-2_b1 dd)(not (box-at b1 p2-2))(adj p2-1 p2-2)(agent-at a4 p2-1))
	:effect (and (pre-qly_joint-push_p2-1_p2-2_b1_a1_a4 dd))
)
(:action goal-achieve-qly_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-qly_joint-push_p2-1_p2-2_b1_a1_a4 dd))
	:effect (and (done-goal dd)(not (pre-qly_joint-push_p2-1_p2-2_b1_a1_a4 dd)))
)
(:action goal-achieve-right-bn5_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bn5_observe-box_a1_p2-2_b1 dd)(box-at b1 p2-2))
	:effect (and (done-goal dd)(not (dummy-right-bn5_observe-box_a1_p2-2_b1 dd)))
)
(:action act-6uy_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-yic_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(not (box-at b2 p3-2))(not (box-at b0 p1-2))(adj p1-1 p1-2)(agent-at a4 p1-1))
	:effect (and (pre-6uy_joint-push_p1-1_p1-2_b0_a1_a4 dd))
)
(:action act-pcj_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-6uy_joint-push_p1-1_p1-2_b0_a1_a4 dd)(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-pcj_joint-push_p3-1_p3-2_b2_a3_a4 dd)(not (pre-6uy_joint-push_p1-1_p1-2_b0_a1_a4 dd)))
)
(:action act-2dy_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-pcj_joint-push_p3-1_p3-2_b2_a3_a4 dd)(immediate-dummy-2dy_observe-box_a1_p2-2_b1 dd)(agent-at a4 p2-2)(can-observe a4 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-2dy_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-pcj_joint-push_p3-1_p3-2_b2_a3_a4 dd)(agent-at a4 p2-2)(can-observe a4 b1)(not (dummy-left-2dy_observe-box_a1_p2-2_b1 dd))(not (dummy-right-2dy_observe-box_a1_p2-2_b1 dd)))
	:effect (and (immediate-dummy-2dy_observe-box_a1_p2-2_b1 dd) )
)
(:action dummy-left-2dy_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a4 p2-2)(can-observe a4 b1)(not (box-at b1 p2-2))(immediate-dummy-2dy_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-2dy_observe-box_a1_p2-2_b1 dd))(dummy-left-2dy_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-right-2dy_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a4 p2-2)(can-observe a4 b1)(box-at b1 p2-2)(immediate-dummy-2dy_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-2dy_observe-box_a1_p2-2_b1 dd))(dummy-right-2dy_observe-box_a1_p2-2_b1 dd))
)
(:action act-2el_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2dy_observe-box_a1_p2-2_b1 dd)(not (box-at b1 p2-2))(adj p2-1 p2-2)(agent-at a4 p2-1))
	:effect (and (pre-2el_joint-push_p2-1_p2-2_b1_a1_a4 dd))
)
(:action goal-achieve-2el_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-2el_joint-push_p2-1_p2-2_b1_a1_a4 dd))
	:effect (and (done-goal dd)(not (pre-2el_joint-push_p2-1_p2-2_b1_a1_a4 dd)))
)
(:action goal-achieve-right-2dy_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2dy_observe-box_a1_p2-2_b1 dd)(box-at b1 p2-2))
	:effect (and (done-goal dd)(not (dummy-right-2dy_observe-box_a1_p2-2_b1 dd)))
)
(:action act-zdh_joint-push_p1-1_p1-2_b0_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-j5c_observe-box_a3_p3-2_b2 dd)(box-at b2 p3-2)(not (box-at b0 p1-2))(adj p1-1 p1-2)(agent-at a4 p1-1))
	:effect (and (pre-zdh_joint-push_p1-1_p1-2_b0_a1_a4 dd))
)
(:action act-qat_observe-box_a4_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-zdh_joint-push_p1-1_p1-2_b0_a1_a4 dd)(immediate-dummy-qat_observe-box_a4_p2-1_b1 dd)(agent-at a4 p2-1)(can-observe a4 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-qat_observe-box_a4_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (pre-zdh_joint-push_p1-1_p1-2_b0_a1_a4 dd)(agent-at a4 p2-1)(can-observe a4 b1)(not (dummy-left-qat_observe-box_a4_p2-1_b1 dd))(not (dummy-right-qat_observe-box_a4_p2-1_b1 dd)))
	:effect (and (immediate-dummy-qat_observe-box_a4_p2-1_b1 dd) )
)
(:action dummy-left-qat_observe-box_a4_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a4 p2-1)(can-observe a4 b1)(not (box-at b1 p2-1))(immediate-dummy-qat_observe-box_a4_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-qat_observe-box_a4_p2-1_b1 dd))(dummy-left-qat_observe-box_a4_p2-1_b1 dd))
)
(:action dummy-right-qat_observe-box_a4_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (agent-at a4 p2-1)(can-observe a4 b1)(box-at b1 p2-1)(immediate-dummy-qat_observe-box_a4_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-qat_observe-box_a4_p2-1_b1 dd))(dummy-right-qat_observe-box_a4_p2-1_b1 dd))
)
(:action goal-achieve-left-qat_observe-box_a4_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-qat_observe-box_a4_p2-1_b1 dd)(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-left-qat_observe-box_a4_p2-1_b1 dd)))
)
(:action act-yqs_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qat_observe-box_a4_p2-1_b1 dd)(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a4 p2-1))
	:effect (and (pre-yqs_joint-push_p2-1_p2-2_b1_a1_a4 dd))
)
(:action goal-achieve-yqs_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-yqs_joint-push_p2-1_p2-2_b1_a1_a4 dd))
	:effect (and (done-goal dd)(not (pre-yqs_joint-push_p2-1_p2-2_b1_a1_a4 dd)))
)
(:action act-e4h_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-me5_observe-box_a1_p1-2_b0 dd)(immediate-dummy-e4h_observe-box_a3_p3-1_b2 dd)(box-at b0 p1-2)(agent-at a4 p3-1)(can-observe a4 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-e4h_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-me5_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a4 p3-1)(can-observe a4 b2)(not (dummy-left-e4h_observe-box_a3_p3-1_b2 dd))(not (dummy-right-e4h_observe-box_a3_p3-1_b2 dd)))
	:effect (and (immediate-dummy-e4h_observe-box_a3_p3-1_b2 dd) )
)
(:action dummy-left-e4h_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-me5_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a4 p3-1)(can-observe a4 b2)(not (box-at b2 p3-1))(immediate-dummy-e4h_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-e4h_observe-box_a3_p3-1_b2 dd))(dummy-left-e4h_observe-box_a3_p3-1_b2 dd))
)
(:action dummy-right-e4h_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-me5_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a4 p3-1)(can-observe a4 b2)(box-at b2 p3-1)(immediate-dummy-e4h_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-e4h_observe-box_a3_p3-1_b2 dd))(dummy-right-e4h_observe-box_a3_p3-1_b2 dd))
)
(:action act-4n9_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-e4h_observe-box_a3_p3-1_b2 dd)(immediate-dummy-4n9_observe-box_a4_p4-1_b4 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a4 p4-1)(can-observe a4 b4))
	:observe (box-at b4 p4-1)
)
(:action act-dummy-4n9_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-e4h_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a4 p4-1)(can-observe a4 b4)(not (dummy-left-4n9_observe-box_a4_p4-1_b4 dd))(not (dummy-right-4n9_observe-box_a4_p4-1_b4 dd)))
	:effect (and (immediate-dummy-4n9_observe-box_a4_p4-1_b4 dd) )
)
(:action dummy-left-4n9_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-e4h_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a4 p4-1)(can-observe a4 b4)(not (box-at b4 p4-1))(immediate-dummy-4n9_observe-box_a4_p4-1_b4 dd))
	:effect (and (not (immediate-dummy-4n9_observe-box_a4_p4-1_b4 dd))(dummy-left-4n9_observe-box_a4_p4-1_b4 dd))
)
(:action dummy-right-4n9_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-e4h_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a4 p4-1)(can-observe a4 b4)(box-at b4 p4-1)(immediate-dummy-4n9_observe-box_a4_p4-1_b4 dd))
	:effect (and (not (immediate-dummy-4n9_observe-box_a4_p4-1_b4 dd))(dummy-right-4n9_observe-box_a4_p4-1_b4 dd))
)
(:action goal-achieve-left-4n9_observe-box_a4_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4n9_observe-box_a4_p4-1_b4 dd)(not (box-at b4 p4-1))(not (box-at b2 p3-1))(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-left-4n9_observe-box_a4_p4-1_b4 dd)))
)
(:action act-dvg_one-push_p4-1_p4-2_b4_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4n9_observe-box_a4_p4-1_b4 dd)(box-at b4 p4-1)(not (box-at b2 p3-1))(box-at b0 p1-2)(adj p4-1 p4-2)(agent-at a4 p4-1))
	:effect (and (pre-dvg_one-push_p4-1_p4-2_b4_a4 dd))
)
(:action goal-achieve-dvg_one-push_p4-1_p4-2_b4_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-dvg_one-push_p4-1_p4-2_b4_a4 dd))
	:effect (and (done-goal dd)(not (pre-dvg_one-push_p4-1_p4-2_b4_a4 dd)))
)
(:action act-t62_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-e4h_observe-box_a3_p3-1_b2 dd)(immediate-dummy-t62_observe-box_a4_p4-2_b4 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a4 p4-2)(can-observe a4 b4))
	:observe (box-at b4 p4-2)
)
(:action act-dummy-t62_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-e4h_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a4 p4-2)(can-observe a4 b4)(not (dummy-left-t62_observe-box_a4_p4-2_b4 dd))(not (dummy-right-t62_observe-box_a4_p4-2_b4 dd)))
	:effect (and (immediate-dummy-t62_observe-box_a4_p4-2_b4 dd) )
)
(:action dummy-left-t62_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-e4h_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a4 p4-2)(can-observe a4 b4)(not (box-at b4 p4-2))(immediate-dummy-t62_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-t62_observe-box_a4_p4-2_b4 dd))(dummy-left-t62_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-t62_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-e4h_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a4 p4-2)(can-observe a4 b4)(box-at b4 p4-2)(immediate-dummy-t62_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-t62_observe-box_a4_p4-2_b4 dd))(dummy-right-t62_observe-box_a4_p4-2_b4 dd))
)
(:action act-gmk_one-push_p4-1_p4-2_b4_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-t62_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(adj p4-1 p4-2)(agent-at a4 p4-1))
	:effect (and (pre-gmk_one-push_p4-1_p4-2_b4_a4 dd))
)
(:action act-nif_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-gmk_one-push_p4-1_p4-2_b4_a4 dd)(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-nif_joint-push_p3-1_p3-2_b2_a3_a4 dd)(not (pre-gmk_one-push_p4-1_p4-2_b4_a4 dd)))
)
(:action goal-achieve-nif_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-nif_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-nif_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action act-2gn_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-t62_observe-box_a4_p4-2_b4 dd)(immediate-dummy-2gn_observe-box_a1_p2-2_b1 dd)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a4 p2-2)(can-observe a4 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-2gn_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-t62_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a4 p2-2)(can-observe a4 b1)(not (dummy-left-2gn_observe-box_a1_p2-2_b1 dd))(not (dummy-right-2gn_observe-box_a1_p2-2_b1 dd)))
	:effect (and (immediate-dummy-2gn_observe-box_a1_p2-2_b1 dd) )
)
(:action dummy-left-2gn_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-t62_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a4 p2-2)(can-observe a4 b1)(not (box-at b1 p2-2))(immediate-dummy-2gn_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-2gn_observe-box_a1_p2-2_b1 dd))(dummy-left-2gn_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-right-2gn_observe-box_a1_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-t62_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a4 p2-2)(can-observe a4 b1)(box-at b1 p2-2)(immediate-dummy-2gn_observe-box_a1_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-2gn_observe-box_a1_p2-2_b1 dd))(dummy-right-2gn_observe-box_a1_p2-2_b1 dd))
)
(:action act-u6l_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2gn_observe-box_a1_p2-2_b1 dd)(not (box-at b1 p2-2))(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-u6l_joint-push_p3-1_p3-2_b2_a3_a4 dd))
)
(:action act-q47_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-u6l_joint-push_p3-1_p3-2_b2_a3_a4 dd)(adj p2-1 p2-2)(agent-at a4 p2-1))
	:effect (and (pre-q47_joint-push_p2-1_p2-2_b1_a1_a4 dd)(not (pre-u6l_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action goal-achieve-q47_joint-push_p2-1_p2-2_b1_a1_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-q47_joint-push_p2-1_p2-2_b1_a1_a4 dd))
	:effect (and (done-goal dd)(not (pre-q47_joint-push_p2-1_p2-2_b1_a1_a4 dd)))
)
(:action act-lvm_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2gn_observe-box_a1_p2-2_b1 dd)(box-at b1 p2-2)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a4 p3-1))
	:effect (and (pre-lvm_joint-push_p3-1_p3-2_b2_a3_a4 dd))
)
(:action goal-achieve-lvm_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-lvm_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-lvm_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
)