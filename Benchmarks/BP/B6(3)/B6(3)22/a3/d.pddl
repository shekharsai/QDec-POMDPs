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
	(can-observe ?a - agent ?b - box )
	(init-4mz_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-4mz_observe-box_a2_p2-1_b1 ?dd - dummy)
	(dummy-left-4mz_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-gbm_observe-box_a3_p1-1_b0 ?dd - dummy)
	(dummy-left-gbm_observe-box_a3_p1-1_b0 ?dd - dummy)
	(immediate-dummy-ejl_observe-box-3yz-hgq_a1_p3-1_b2 ?dd - dummy)
	(dummy-left-ejl_observe-box-3yz-hgq_a1_p3-1_b2 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-ejl_observe-box-3yz-hgq_a1_p3-1_b2 ?dd - dummy)
	(pre-l9a_joint-push_p3-1_p3-2_b2_a1_a3 ?dd - dummy)
	(dummy-right-gbm_observe-box_a3_p1-1_b0 ?dd - dummy)
	(pre-70n_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(immediate-dummy-mcz_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(dummy-left-mcz_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(pre-hcq_joint-push_p3-1_p3-2_b2_a1_a3 ?dd - dummy)
	(dummy-right-mcz_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(dummy-right-4mz_observe-box_a2_p2-1_b1 ?dd - dummy)
	(pre-9l9_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(immediate-dummy-wea_observe-box_a3_p1-1_b0 ?dd - dummy)
	(dummy-left-wea_observe-box_a3_p1-1_b0 ?dd - dummy)
	(immediate-dummy-2re_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(dummy-left-2re_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(pre-g4x_joint-push_p3-1_p3-2_b2_a1_a3 ?dd - dummy)
	(dummy-right-2re_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(dummy-right-wea_observe-box_a3_p1-1_b0 ?dd - dummy)
	(pre-1n8_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(immediate-dummy-u3d_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(dummy-left-u3d_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(pre-ew4_joint-push_p3-1_p3-2_b2_a1_a3 ?dd - dummy)
	(dummy-right-u3d_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-4mz_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-4mz_observe-box_a2_p2-1_b1 dd)(immediate-dummy-4mz_observe-box_a2_p2-1_b1 dd)(agent-at a3 p2-1)(can-observe a3 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-4mz_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-4mz_observe-box_a2_p2-1_b1 dd)(not (dummy-left-4mz_observe-box_a2_p2-1_b1 dd))(not (dummy-right-4mz_observe-box_a2_p2-1_b1 dd)))
	:effect (and (immediate-dummy-4mz_observe-box_a2_p2-1_b1 dd) )
)
(:action dummy-left-4mz_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-4mz_observe-box_a2_p2-1_b1 dd)(agent-at a3 p2-1)(can-observe a3 b1)(not (box-at b1 p2-1))(immediate-dummy-4mz_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-4mz_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-4mz_observe-box_a2_p2-1_b1 dd))(dummy-left-4mz_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-right-4mz_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-4mz_observe-box_a2_p2-1_b1 dd)(agent-at a3 p2-1)(can-observe a3 b1)(box-at b1 p2-1)(immediate-dummy-4mz_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-4mz_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-4mz_observe-box_a2_p2-1_b1 dd))(dummy-right-4mz_observe-box_a2_p2-1_b1 dd))
)
(:action act-gbm_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4mz_observe-box_a2_p2-1_b1 dd)(immediate-dummy-gbm_observe-box_a3_p1-1_b0 dd)(not (box-at b1 p2-1))(agent-at a3 p1-1)(can-observe a3 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-gbm_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4mz_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a3 p1-1)(can-observe a3 b0)(not (dummy-left-gbm_observe-box_a3_p1-1_b0 dd))(not (dummy-right-gbm_observe-box_a3_p1-1_b0 dd)))
	:effect (and (immediate-dummy-gbm_observe-box_a3_p1-1_b0 dd) )
)
(:action dummy-left-gbm_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4mz_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a3 p1-1)(can-observe a3 b0)(not (box-at b0 p1-1))(immediate-dummy-gbm_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-gbm_observe-box_a3_p1-1_b0 dd))(dummy-left-gbm_observe-box_a3_p1-1_b0 dd))
)
(:action dummy-right-gbm_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4mz_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a3 p1-1)(can-observe a3 b0)(box-at b0 p1-1)(immediate-dummy-gbm_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-gbm_observe-box_a3_p1-1_b0 dd))(dummy-right-gbm_observe-box_a3_p1-1_b0 dd))
)
(:action act-ejl_observe-box-3yz-hgq_a1_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-gbm_observe-box_a3_p1-1_b0 dd)(immediate-dummy-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1))(agent-at a3 p3-1)(can-observe a3 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-ejl_observe-box-3yz-hgq_a1_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-gbm_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1))(agent-at a3 p3-1)(can-observe a3 b2)(not (dummy-left-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd))(not (dummy-right-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd)))
	:effect (and (immediate-dummy-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd) )
)
(:action dummy-left-ejl_observe-box-3yz-hgq_a1_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-gbm_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1))(agent-at a3 p3-1)(can-observe a3 b2)(not (box-at b2 p3-1))(immediate-dummy-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd))(dummy-left-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd))
)
(:action dummy-right-ejl_observe-box-3yz-hgq_a1_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-gbm_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1))(agent-at a3 p3-1)(can-observe a3 b2)(box-at b2 p3-1)(immediate-dummy-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd))(dummy-right-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd))
)
(:action goal-achieve-left-ejl_observe-box-3yz-hgq_a1_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-left-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd)))
)
(:action act-l9a_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ejl_observe-box-3yz-hgq_a1_p3-1_b2 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1))(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-l9a_joint-push_p3-1_p3-2_b2_a1_a3 dd))
)
(:action goal-achieve-l9a_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-l9a_joint-push_p3-1_p3-2_b2_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-l9a_joint-push_p3-1_p3-2_b2_a1_a3 dd)))
)
(:action act-70n_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-gbm_observe-box_a3_p1-1_b0 dd)(box-at b0 p1-1)(not (box-at b1 p2-1))(adj p1-1 p1-2)(agent-at a3 p1-1))
	:effect (and (pre-70n_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action act-mcz_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-70n_joint-push_p1-1_p1-2_b0_a1_a3 dd)(immediate-dummy-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd)(agent-at a3 p3-2)(can-observe a3 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-mcz_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-70n_joint-push_p1-1_p1-2_b0_a1_a3 dd)(agent-at a3 p3-2)(can-observe a3 b2)(not (dummy-left-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd))(not (dummy-right-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd)))
	:effect (and (immediate-dummy-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd) )
)
(:action dummy-left-mcz_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a3 p3-2)(can-observe a3 b2)(not (box-at b2 p3-2))(immediate-dummy-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-left-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action dummy-right-mcz_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a3 p3-2)(can-observe a3 b2)(box-at b2 p3-2)(immediate-dummy-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-right-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action act-hcq_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd)(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-hcq_joint-push_p3-1_p3-2_b2_a1_a3 dd))
)
(:action goal-achieve-hcq_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-hcq_joint-push_p3-1_p3-2_b2_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-hcq_joint-push_p3-1_p3-2_b2_a1_a3 dd)))
)
(:action goal-achieve-right-mcz_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (done-goal dd)(not (dummy-right-mcz_observe-box-fw9-icr_a1_p3-2_b2 dd)))
)
(:action act-9l9_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4mz_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-9l9_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action act-wea_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (pre-9l9_joint-push_p2-1_p2-2_b1_a2_a3 dd)(immediate-dummy-wea_observe-box_a3_p1-1_b0 dd)(agent-at a3 p1-1)(can-observe a3 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-wea_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (pre-9l9_joint-push_p2-1_p2-2_b1_a2_a3 dd)(agent-at a3 p1-1)(can-observe a3 b0)(not (dummy-left-wea_observe-box_a3_p1-1_b0 dd))(not (dummy-right-wea_observe-box_a3_p1-1_b0 dd)))
	:effect (and (immediate-dummy-wea_observe-box_a3_p1-1_b0 dd) )
)
(:action dummy-left-wea_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (agent-at a3 p1-1)(can-observe a3 b0)(not (box-at b0 p1-1))(immediate-dummy-wea_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-wea_observe-box_a3_p1-1_b0 dd))(dummy-left-wea_observe-box_a3_p1-1_b0 dd))
)
(:action dummy-right-wea_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (agent-at a3 p1-1)(can-observe a3 b0)(box-at b0 p1-1)(immediate-dummy-wea_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-wea_observe-box_a3_p1-1_b0 dd))(dummy-right-wea_observe-box_a3_p1-1_b0 dd))
)
(:action act-2re_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wea_observe-box_a3_p1-1_b0 dd)(immediate-dummy-2re_observe-box-fw9-icr_a1_p3-2_b2 dd)(not (box-at b0 p1-1))(agent-at a3 p3-2)(can-observe a3 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-2re_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wea_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(agent-at a3 p3-2)(can-observe a3 b2)(not (dummy-left-2re_observe-box-fw9-icr_a1_p3-2_b2 dd))(not (dummy-right-2re_observe-box-fw9-icr_a1_p3-2_b2 dd)))
	:effect (and (immediate-dummy-2re_observe-box-fw9-icr_a1_p3-2_b2 dd) )
)
(:action dummy-left-2re_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wea_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(agent-at a3 p3-2)(can-observe a3 b2)(not (box-at b2 p3-2))(immediate-dummy-2re_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-2re_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-left-2re_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action dummy-right-2re_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wea_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(agent-at a3 p3-2)(can-observe a3 b2)(box-at b2 p3-2)(immediate-dummy-2re_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-2re_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-right-2re_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action act-g4x_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2re_observe-box-fw9-icr_a1_p3-2_b2 dd)(not (box-at b0 p1-1))(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-g4x_joint-push_p3-1_p3-2_b2_a1_a3 dd))
)
(:action goal-achieve-g4x_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-g4x_joint-push_p3-1_p3-2_b2_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-g4x_joint-push_p3-1_p3-2_b2_a1_a3 dd)))
)
(:action goal-achieve-right-2re_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2re_observe-box-fw9-icr_a1_p3-2_b2 dd)(not (box-at b0 p1-1)))
	:effect (and (done-goal dd)(not (dummy-right-2re_observe-box-fw9-icr_a1_p3-2_b2 dd)))
)
(:action act-1n8_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wea_observe-box_a3_p1-1_b0 dd)(box-at b0 p1-1)(adj p1-1 p1-2)(agent-at a3 p1-1))
	:effect (and (pre-1n8_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action act-u3d_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-1n8_joint-push_p1-1_p1-2_b0_a1_a3 dd)(immediate-dummy-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd)(agent-at a3 p3-2)(can-observe a3 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-u3d_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-1n8_joint-push_p1-1_p1-2_b0_a1_a3 dd)(agent-at a3 p3-2)(can-observe a3 b2)(not (dummy-left-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd))(not (dummy-right-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd)))
	:effect (and (immediate-dummy-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd) )
)
(:action dummy-left-u3d_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a3 p3-2)(can-observe a3 b2)(not (box-at b2 p3-2))(immediate-dummy-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-left-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action dummy-right-u3d_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a3 p3-2)(can-observe a3 b2)(box-at b2 p3-2)(immediate-dummy-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-right-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action act-ew4_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd)(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-ew4_joint-push_p3-1_p3-2_b2_a1_a3 dd))
)
(:action goal-achieve-ew4_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-ew4_joint-push_p3-1_p3-2_b2_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-ew4_joint-push_p3-1_p3-2_b2_a1_a3 dd)))
)
(:action goal-achieve-right-u3d_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (done-goal dd)(not (dummy-right-u3d_observe-box-fw9-icr_a1_p3-2_b2 dd)))
)
)