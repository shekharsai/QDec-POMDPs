(define (domain box-4-a3)
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
	a3 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(init-u6b_observe-box_p1-2_a1_b0 ?dd - dummy)
	(immediate-dummy-u6b_observe-box_p1-2_a1_b0 ?dd - dummy)
	(dummy-left-u6b_observe-box_p1-2_a1_b0 ?dd - dummy)
	(immediate-dummy-i55_observe-box_p3-2_a3_b1 ?dd - dummy)
	(dummy-left-i55_observe-box_p3-2_a3_b1 ?dd - dummy)
	(immediate-dummy-8af_observe-box_p5-2_a2_b2 ?dd - dummy)
	(dummy-left-8af_observe-box_p5-2_a2_b2 ?dd - dummy)
	(pre-pvf_joint-push_p3-1_p3-2_b1_a2_a3 ?dd - dummy)
	(pre-wys_joint-push_p5-1_p5-2_b2_a2_a3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-8af_observe-box_p5-2_a2_b2 ?dd - dummy)
	(pre-agc_joint-push_p3-1_p3-2_b1_a2_a3 ?dd - dummy)
	(dummy-right-i55_observe-box_p3-2_a3_b1 ?dd - dummy)
	(immediate-dummy-s9t_observe-box_p5-1_a2_b2 ?dd - dummy)
	(dummy-left-s9t_observe-box_p5-1_a2_b2 ?dd - dummy)
	(dummy-right-s9t_observe-box_p5-1_a2_b2 ?dd - dummy)
	(pre-trn_joint-push_p5-1_p5-2_b2_a2_a3 ?dd - dummy)
	(dummy-right-u6b_observe-box_p1-2_a1_b0 ?dd - dummy)
	(immediate-dummy-nai_observe-box_p3-2_a3_b1 ?dd - dummy)
	(dummy-left-nai_observe-box_p3-2_a3_b1 ?dd - dummy)
	(immediate-dummy-kv1_observe-box_p5-2_a2_b2 ?dd - dummy)
	(dummy-left-kv1_observe-box_p5-2_a2_b2 ?dd - dummy)
	(pre-6d1_joint-push_p3-1_p3-2_b1_a2_a3 ?dd - dummy)
	(pre-2zw_joint-push_p5-1_p5-2_b2_a2_a3 ?dd - dummy)
	(dummy-right-kv1_observe-box_p5-2_a2_b2 ?dd - dummy)
	(pre-hqw_joint-push_p3-1_p3-2_b1_a2_a3 ?dd - dummy)
	(dummy-right-nai_observe-box_p3-2_a3_b1 ?dd - dummy)
	(immediate-dummy-rpy_observe-box_p5-2_a2_b2 ?dd - dummy)
	(dummy-left-rpy_observe-box_p5-2_a2_b2 ?dd - dummy)
	(pre-4ee_joint-push_p5-1_p5-2_b2_a2_a3 ?dd - dummy)
	(dummy-right-rpy_observe-box_p5-2_a2_b2 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-u6b_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-u6b_observe-box_p1-2_a1_b0 dd)(immediate-dummy-u6b_observe-box_p1-2_a1_b0 dd)(agent-at a3 p1-2))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-u6b_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-u6b_observe-box_p1-2_a1_b0 dd)(not (dummy-left-u6b_observe-box_p1-2_a1_b0 dd))(not (dummy-right-u6b_observe-box_p1-2_a1_b0 dd)))
	:effect (and (immediate-dummy-u6b_observe-box_p1-2_a1_b0 dd) )
)
(:action dummy-left-u6b_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-u6b_observe-box_p1-2_a1_b0 dd)(agent-at a3 p1-2)(not (box-at b0 p1-2))(immediate-dummy-u6b_observe-box_p1-2_a1_b0 dd))
	:effect (and (not (init-u6b_observe-box_p1-2_a1_b0 dd))(not (immediate-dummy-u6b_observe-box_p1-2_a1_b0 dd))(dummy-left-u6b_observe-box_p1-2_a1_b0 dd))
)
(:action dummy-right-u6b_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-u6b_observe-box_p1-2_a1_b0 dd)(agent-at a3 p1-2)(box-at b0 p1-2)(immediate-dummy-u6b_observe-box_p1-2_a1_b0 dd))
	:effect (and (not (init-u6b_observe-box_p1-2_a1_b0 dd))(not (immediate-dummy-u6b_observe-box_p1-2_a1_b0 dd))(dummy-right-u6b_observe-box_p1-2_a1_b0 dd))
)
(:action act-i55_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u6b_observe-box_p1-2_a1_b0 dd)(immediate-dummy-i55_observe-box_p3-2_a3_b1 dd)(not (box-at b0 p1-2))(agent-at a3 p3-2))
	:observe (box-at b1 p3-2)
)
(:action act-dummy-i55_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u6b_observe-box_p1-2_a1_b0 dd)(not (box-at b0 p1-2))(agent-at a3 p3-2)(not (dummy-left-i55_observe-box_p3-2_a3_b1 dd))(not (dummy-right-i55_observe-box_p3-2_a3_b1 dd)))
	:effect (and (immediate-dummy-i55_observe-box_p3-2_a3_b1 dd) )
)
(:action dummy-left-i55_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u6b_observe-box_p1-2_a1_b0 dd)(not (box-at b0 p1-2))(agent-at a3 p3-2)(not (box-at b1 p3-2))(immediate-dummy-i55_observe-box_p3-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-i55_observe-box_p3-2_a3_b1 dd))(dummy-left-i55_observe-box_p3-2_a3_b1 dd))
)
(:action dummy-right-i55_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u6b_observe-box_p1-2_a1_b0 dd)(not (box-at b0 p1-2))(agent-at a3 p3-2)(box-at b1 p3-2)(immediate-dummy-i55_observe-box_p3-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-i55_observe-box_p3-2_a3_b1 dd))(dummy-right-i55_observe-box_p3-2_a3_b1 dd))
)
(:action act-8af_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-i55_observe-box_p3-2_a3_b1 dd)(immediate-dummy-8af_observe-box_p5-2_a2_b2 dd)(not (box-at b1 p3-2))(not (box-at b0 p1-2))(agent-at a3 p5-2))
	:observe (box-at b2 p5-2)
)
(:action act-dummy-8af_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-i55_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(not (box-at b0 p1-2))(agent-at a3 p5-2)(not (dummy-left-8af_observe-box_p5-2_a2_b2 dd))(not (dummy-right-8af_observe-box_p5-2_a2_b2 dd)))
	:effect (and (immediate-dummy-8af_observe-box_p5-2_a2_b2 dd) )
)
(:action dummy-left-8af_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-i55_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(not (box-at b0 p1-2))(agent-at a3 p5-2)(not (box-at b2 p5-2))(immediate-dummy-8af_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-8af_observe-box_p5-2_a2_b2 dd))(dummy-left-8af_observe-box_p5-2_a2_b2 dd))
)
(:action dummy-right-8af_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-i55_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(not (box-at b0 p1-2))(agent-at a3 p5-2)(box-at b2 p5-2)(immediate-dummy-8af_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-8af_observe-box_p5-2_a2_b2 dd))(dummy-right-8af_observe-box_p5-2_a2_b2 dd))
)
(:action act-pvf_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8af_observe-box_p5-2_a2_b2 dd)(not (box-at b2 p5-2))(not (box-at b1 p3-2))(not (box-at b0 p1-2))(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-pvf_joint-push_p3-1_p3-2_b1_a2_a3 dd))
)
(:action act-wys_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-pvf_joint-push_p3-1_p3-2_b1_a2_a3 dd)(adj p5-1 p5-2)(agent-at a3 p5-1))
	:effect (and (pre-wys_joint-push_p5-1_p5-2_b2_a2_a3 dd)(not (pre-pvf_joint-push_p3-1_p3-2_b1_a2_a3 dd)))
)
(:action goal-achieve-wys_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-wys_joint-push_p5-1_p5-2_b2_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-wys_joint-push_p5-1_p5-2_b2_a2_a3 dd)))
)
(:action act-agc_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8af_observe-box_p5-2_a2_b2 dd)(box-at b2 p5-2)(not (box-at b1 p3-2))(not (box-at b0 p1-2))(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-agc_joint-push_p3-1_p3-2_b1_a2_a3 dd))
)
(:action goal-achieve-agc_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-agc_joint-push_p3-1_p3-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-agc_joint-push_p3-1_p3-2_b1_a2_a3 dd)))
)
(:action act-s9t_observe-box_p5-1_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-i55_observe-box_p3-2_a3_b1 dd)(immediate-dummy-s9t_observe-box_p5-1_a2_b2 dd)(box-at b1 p3-2)(not (box-at b0 p1-2))(agent-at a3 p5-1))
	:observe (box-at b2 p5-1)
)
(:action act-dummy-s9t_observe-box_p5-1_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-i55_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(not (box-at b0 p1-2))(agent-at a3 p5-1)(not (dummy-left-s9t_observe-box_p5-1_a2_b2 dd))(not (dummy-right-s9t_observe-box_p5-1_a2_b2 dd)))
	:effect (and (immediate-dummy-s9t_observe-box_p5-1_a2_b2 dd) )
)
(:action dummy-left-s9t_observe-box_p5-1_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-i55_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(not (box-at b0 p1-2))(agent-at a3 p5-1)(not (box-at b2 p5-1))(immediate-dummy-s9t_observe-box_p5-1_a2_b2 dd))
	:effect (and (not (immediate-dummy-s9t_observe-box_p5-1_a2_b2 dd))(dummy-left-s9t_observe-box_p5-1_a2_b2 dd))
)
(:action dummy-right-s9t_observe-box_p5-1_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-i55_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(not (box-at b0 p1-2))(agent-at a3 p5-1)(box-at b2 p5-1)(immediate-dummy-s9t_observe-box_p5-1_a2_b2 dd))
	:effect (and (not (immediate-dummy-s9t_observe-box_p5-1_a2_b2 dd))(dummy-right-s9t_observe-box_p5-1_a2_b2 dd))
)
(:action goal-achieve-left-s9t_observe-box_p5-1_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-s9t_observe-box_p5-1_a2_b2 dd)(not (box-at b2 p5-1))(box-at b1 p3-2)(not (box-at b0 p1-2)))
	:effect (and (done-goal dd)(not (dummy-left-s9t_observe-box_p5-1_a2_b2 dd)))
)
(:action act-trn_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-s9t_observe-box_p5-1_a2_b2 dd)(box-at b2 p5-1)(box-at b1 p3-2)(not (box-at b0 p1-2))(adj p5-1 p5-2)(agent-at a3 p5-1))
	:effect (and (pre-trn_joint-push_p5-1_p5-2_b2_a2_a3 dd))
)
(:action goal-achieve-trn_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-trn_joint-push_p5-1_p5-2_b2_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-trn_joint-push_p5-1_p5-2_b2_a2_a3 dd)))
)
(:action act-nai_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u6b_observe-box_p1-2_a1_b0 dd)(immediate-dummy-nai_observe-box_p3-2_a3_b1 dd)(box-at b0 p1-2)(agent-at a3 p3-2))
	:observe (box-at b1 p3-2)
)
(:action act-dummy-nai_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u6b_observe-box_p1-2_a1_b0 dd)(box-at b0 p1-2)(agent-at a3 p3-2)(not (dummy-left-nai_observe-box_p3-2_a3_b1 dd))(not (dummy-right-nai_observe-box_p3-2_a3_b1 dd)))
	:effect (and (immediate-dummy-nai_observe-box_p3-2_a3_b1 dd) )
)
(:action dummy-left-nai_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u6b_observe-box_p1-2_a1_b0 dd)(box-at b0 p1-2)(agent-at a3 p3-2)(not (box-at b1 p3-2))(immediate-dummy-nai_observe-box_p3-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-nai_observe-box_p3-2_a3_b1 dd))(dummy-left-nai_observe-box_p3-2_a3_b1 dd))
)
(:action dummy-right-nai_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u6b_observe-box_p1-2_a1_b0 dd)(box-at b0 p1-2)(agent-at a3 p3-2)(box-at b1 p3-2)(immediate-dummy-nai_observe-box_p3-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-nai_observe-box_p3-2_a3_b1 dd))(dummy-right-nai_observe-box_p3-2_a3_b1 dd))
)
(:action act-kv1_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-nai_observe-box_p3-2_a3_b1 dd)(immediate-dummy-kv1_observe-box_p5-2_a2_b2 dd)(not (box-at b1 p3-2))(box-at b0 p1-2)(agent-at a3 p5-2))
	:observe (box-at b2 p5-2)
)
(:action act-dummy-kv1_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-nai_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(box-at b0 p1-2)(agent-at a3 p5-2)(not (dummy-left-kv1_observe-box_p5-2_a2_b2 dd))(not (dummy-right-kv1_observe-box_p5-2_a2_b2 dd)))
	:effect (and (immediate-dummy-kv1_observe-box_p5-2_a2_b2 dd) )
)
(:action dummy-left-kv1_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-nai_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(box-at b0 p1-2)(agent-at a3 p5-2)(not (box-at b2 p5-2))(immediate-dummy-kv1_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-kv1_observe-box_p5-2_a2_b2 dd))(dummy-left-kv1_observe-box_p5-2_a2_b2 dd))
)
(:action dummy-right-kv1_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-nai_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(box-at b0 p1-2)(agent-at a3 p5-2)(box-at b2 p5-2)(immediate-dummy-kv1_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-kv1_observe-box_p5-2_a2_b2 dd))(dummy-right-kv1_observe-box_p5-2_a2_b2 dd))
)
(:action act-6d1_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-kv1_observe-box_p5-2_a2_b2 dd)(not (box-at b2 p5-2))(not (box-at b1 p3-2))(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-6d1_joint-push_p3-1_p3-2_b1_a2_a3 dd))
)
(:action act-2zw_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-6d1_joint-push_p3-1_p3-2_b1_a2_a3 dd)(adj p5-1 p5-2)(agent-at a3 p5-1))
	:effect (and (pre-2zw_joint-push_p5-1_p5-2_b2_a2_a3 dd)(not (pre-6d1_joint-push_p3-1_p3-2_b1_a2_a3 dd)))
)
(:action goal-achieve-2zw_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-2zw_joint-push_p5-1_p5-2_b2_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-2zw_joint-push_p5-1_p5-2_b2_a2_a3 dd)))
)
(:action act-hqw_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kv1_observe-box_p5-2_a2_b2 dd)(box-at b2 p5-2)(not (box-at b1 p3-2))(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-hqw_joint-push_p3-1_p3-2_b1_a2_a3 dd))
)
(:action goal-achieve-hqw_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-hqw_joint-push_p3-1_p3-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-hqw_joint-push_p3-1_p3-2_b1_a2_a3 dd)))
)
(:action act-rpy_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-nai_observe-box_p3-2_a3_b1 dd)(immediate-dummy-rpy_observe-box_p5-2_a2_b2 dd)(box-at b1 p3-2)(box-at b0 p1-2)(agent-at a3 p5-2))
	:observe (box-at b2 p5-2)
)
(:action act-dummy-rpy_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-nai_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(box-at b0 p1-2)(agent-at a3 p5-2)(not (dummy-left-rpy_observe-box_p5-2_a2_b2 dd))(not (dummy-right-rpy_observe-box_p5-2_a2_b2 dd)))
	:effect (and (immediate-dummy-rpy_observe-box_p5-2_a2_b2 dd) )
)
(:action dummy-left-rpy_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-nai_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(box-at b0 p1-2)(agent-at a3 p5-2)(not (box-at b2 p5-2))(immediate-dummy-rpy_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-rpy_observe-box_p5-2_a2_b2 dd))(dummy-left-rpy_observe-box_p5-2_a2_b2 dd))
)
(:action dummy-right-rpy_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-nai_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(box-at b0 p1-2)(agent-at a3 p5-2)(box-at b2 p5-2)(immediate-dummy-rpy_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-rpy_observe-box_p5-2_a2_b2 dd))(dummy-right-rpy_observe-box_p5-2_a2_b2 dd))
)
(:action act-4ee_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-rpy_observe-box_p5-2_a2_b2 dd)(not (box-at b2 p5-2))(box-at b1 p3-2)(box-at b0 p1-2)(adj p5-1 p5-2)(agent-at a3 p5-1))
	:effect (and (pre-4ee_joint-push_p5-1_p5-2_b2_a2_a3 dd))
)
(:action goal-achieve-4ee_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-4ee_joint-push_p5-1_p5-2_b2_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-4ee_joint-push_p5-1_p5-2_b2_a2_a3 dd)))
)
(:action goal-achieve-right-rpy_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-rpy_observe-box_p5-2_a2_b2 dd)(box-at b2 p5-2)(box-at b1 p3-2)(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-right-rpy_observe-box_p5-2_a2_b2 dd)))
)
)