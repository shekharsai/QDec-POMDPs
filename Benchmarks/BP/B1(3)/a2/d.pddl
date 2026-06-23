(define (domain box-4-a2)
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
	a2 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(init-0n9_observe-box_p1-2_a1_b0 ?dd - dummy)
	(immediate-dummy-0n9_observe-box_p1-2_a1_b0 ?dd - dummy)
	(dummy-left-0n9_observe-box_p1-2_a1_b0 ?dd - dummy)
	(immediate-dummy-8cj_observe-box_p3-2_a3_b1 ?dd - dummy)
	(dummy-left-8cj_observe-box_p3-2_a3_b1 ?dd - dummy)
	(immediate-dummy-4u5_observe-box_p5-2_a2_b2 ?dd - dummy)
	(dummy-left-4u5_observe-box_p5-2_a2_b2 ?dd - dummy)
	(pre-nht_joint-push_p3-1_p3-2_b1_a2_a3 ?dd - dummy)
	(pre-cdv_joint-push_p5-1_p5-2_b2_a2_a3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-4u5_observe-box_p5-2_a2_b2 ?dd - dummy)
	(pre-iwl_joint-push_p3-1_p3-2_b1_a2_a3 ?dd - dummy)
	(dummy-right-8cj_observe-box_p3-2_a3_b1 ?dd - dummy)
	(immediate-dummy-jnz_observe-box_p5-1_a2_b2 ?dd - dummy)
	(dummy-left-jnz_observe-box_p5-1_a2_b2 ?dd - dummy)
	(dummy-right-jnz_observe-box_p5-1_a2_b2 ?dd - dummy)
	(pre-ehm_joint-push_p5-1_p5-2_b2_a2_a3 ?dd - dummy)
	(dummy-right-0n9_observe-box_p1-2_a1_b0 ?dd - dummy)
	(immediate-dummy-ktj_observe-box_p3-2_a3_b1 ?dd - dummy)
	(dummy-left-ktj_observe-box_p3-2_a3_b1 ?dd - dummy)
	(immediate-dummy-ysn_observe-box_p5-2_a2_b2 ?dd - dummy)
	(dummy-left-ysn_observe-box_p5-2_a2_b2 ?dd - dummy)
	(pre-ny9_joint-push_p3-1_p3-2_b1_a2_a3 ?dd - dummy)
	(pre-u0i_joint-push_p5-1_p5-2_b2_a2_a3 ?dd - dummy)
	(dummy-right-ysn_observe-box_p5-2_a2_b2 ?dd - dummy)
	(pre-hob_joint-push_p3-1_p3-2_b1_a2_a3 ?dd - dummy)
	(dummy-right-ktj_observe-box_p3-2_a3_b1 ?dd - dummy)
	(immediate-dummy-yv2_observe-box_p5-2_a2_b2 ?dd - dummy)
	(dummy-left-yv2_observe-box_p5-2_a2_b2 ?dd - dummy)
	(pre-aqu_joint-push_p5-1_p5-2_b2_a2_a3 ?dd - dummy)
	(dummy-right-yv2_observe-box_p5-2_a2_b2 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-0n9_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-0n9_observe-box_p1-2_a1_b0 dd)(immediate-dummy-0n9_observe-box_p1-2_a1_b0 dd)(agent-at a2 p1-2))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-0n9_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-0n9_observe-box_p1-2_a1_b0 dd)(not (dummy-left-0n9_observe-box_p1-2_a1_b0 dd))(not (dummy-right-0n9_observe-box_p1-2_a1_b0 dd)))
	:effect (and (immediate-dummy-0n9_observe-box_p1-2_a1_b0 dd) )
)
(:action dummy-left-0n9_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-0n9_observe-box_p1-2_a1_b0 dd)(agent-at a2 p1-2)(not (box-at b0 p1-2))(immediate-dummy-0n9_observe-box_p1-2_a1_b0 dd))
	:effect (and (not (init-0n9_observe-box_p1-2_a1_b0 dd))(not (immediate-dummy-0n9_observe-box_p1-2_a1_b0 dd))(dummy-left-0n9_observe-box_p1-2_a1_b0 dd))
)
(:action dummy-right-0n9_observe-box_p1-2_a1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-0n9_observe-box_p1-2_a1_b0 dd)(agent-at a2 p1-2)(box-at b0 p1-2)(immediate-dummy-0n9_observe-box_p1-2_a1_b0 dd))
	:effect (and (not (init-0n9_observe-box_p1-2_a1_b0 dd))(not (immediate-dummy-0n9_observe-box_p1-2_a1_b0 dd))(dummy-right-0n9_observe-box_p1-2_a1_b0 dd))
)
(:action act-8cj_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0n9_observe-box_p1-2_a1_b0 dd)(immediate-dummy-8cj_observe-box_p3-2_a3_b1 dd)(not (box-at b0 p1-2))(agent-at a2 p3-2))
	:observe (box-at b1 p3-2)
)
(:action act-dummy-8cj_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0n9_observe-box_p1-2_a1_b0 dd)(not (box-at b0 p1-2))(agent-at a2 p3-2)(not (dummy-left-8cj_observe-box_p3-2_a3_b1 dd))(not (dummy-right-8cj_observe-box_p3-2_a3_b1 dd)))
	:effect (and (immediate-dummy-8cj_observe-box_p3-2_a3_b1 dd) )
)
(:action dummy-left-8cj_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0n9_observe-box_p1-2_a1_b0 dd)(not (box-at b0 p1-2))(agent-at a2 p3-2)(not (box-at b1 p3-2))(immediate-dummy-8cj_observe-box_p3-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-8cj_observe-box_p3-2_a3_b1 dd))(dummy-left-8cj_observe-box_p3-2_a3_b1 dd))
)
(:action dummy-right-8cj_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0n9_observe-box_p1-2_a1_b0 dd)(not (box-at b0 p1-2))(agent-at a2 p3-2)(box-at b1 p3-2)(immediate-dummy-8cj_observe-box_p3-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-8cj_observe-box_p3-2_a3_b1 dd))(dummy-right-8cj_observe-box_p3-2_a3_b1 dd))
)
(:action act-4u5_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8cj_observe-box_p3-2_a3_b1 dd)(immediate-dummy-4u5_observe-box_p5-2_a2_b2 dd)(not (box-at b1 p3-2))(not (box-at b0 p1-2))(agent-at a2 p5-2))
	:observe (box-at b2 p5-2)
)
(:action act-dummy-4u5_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8cj_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(not (box-at b0 p1-2))(agent-at a2 p5-2)(not (dummy-left-4u5_observe-box_p5-2_a2_b2 dd))(not (dummy-right-4u5_observe-box_p5-2_a2_b2 dd)))
	:effect (and (immediate-dummy-4u5_observe-box_p5-2_a2_b2 dd) )
)
(:action dummy-left-4u5_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8cj_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(not (box-at b0 p1-2))(agent-at a2 p5-2)(not (box-at b2 p5-2))(immediate-dummy-4u5_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-4u5_observe-box_p5-2_a2_b2 dd))(dummy-left-4u5_observe-box_p5-2_a2_b2 dd))
)
(:action dummy-right-4u5_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8cj_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(not (box-at b0 p1-2))(agent-at a2 p5-2)(box-at b2 p5-2)(immediate-dummy-4u5_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-4u5_observe-box_p5-2_a2_b2 dd))(dummy-right-4u5_observe-box_p5-2_a2_b2 dd))
)
(:action act-nht_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4u5_observe-box_p5-2_a2_b2 dd)(not (box-at b2 p5-2))(not (box-at b1 p3-2))(not (box-at b0 p1-2))(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-nht_joint-push_p3-1_p3-2_b1_a2_a3 dd))
)
(:action act-cdv_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-nht_joint-push_p3-1_p3-2_b1_a2_a3 dd)(adj p5-1 p5-2)(agent-at a2 p5-1))
	:effect (and (pre-cdv_joint-push_p5-1_p5-2_b2_a2_a3 dd)(not (pre-nht_joint-push_p3-1_p3-2_b1_a2_a3 dd)))
)
(:action goal-achieve-cdv_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-cdv_joint-push_p5-1_p5-2_b2_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-cdv_joint-push_p5-1_p5-2_b2_a2_a3 dd)))
)
(:action act-iwl_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4u5_observe-box_p5-2_a2_b2 dd)(box-at b2 p5-2)(not (box-at b1 p3-2))(not (box-at b0 p1-2))(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-iwl_joint-push_p3-1_p3-2_b1_a2_a3 dd))
)
(:action goal-achieve-iwl_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-iwl_joint-push_p3-1_p3-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-iwl_joint-push_p3-1_p3-2_b1_a2_a3 dd)))
)
(:action act-jnz_observe-box_p5-1_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8cj_observe-box_p3-2_a3_b1 dd)(immediate-dummy-jnz_observe-box_p5-1_a2_b2 dd)(box-at b1 p3-2)(not (box-at b0 p1-2))(agent-at a2 p5-1))
	:observe (box-at b2 p5-1)
)
(:action act-dummy-jnz_observe-box_p5-1_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8cj_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(not (box-at b0 p1-2))(agent-at a2 p5-1)(not (dummy-left-jnz_observe-box_p5-1_a2_b2 dd))(not (dummy-right-jnz_observe-box_p5-1_a2_b2 dd)))
	:effect (and (immediate-dummy-jnz_observe-box_p5-1_a2_b2 dd) )
)
(:action dummy-left-jnz_observe-box_p5-1_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8cj_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(not (box-at b0 p1-2))(agent-at a2 p5-1)(not (box-at b2 p5-1))(immediate-dummy-jnz_observe-box_p5-1_a2_b2 dd))
	:effect (and (not (immediate-dummy-jnz_observe-box_p5-1_a2_b2 dd))(dummy-left-jnz_observe-box_p5-1_a2_b2 dd))
)
(:action dummy-right-jnz_observe-box_p5-1_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8cj_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(not (box-at b0 p1-2))(agent-at a2 p5-1)(box-at b2 p5-1)(immediate-dummy-jnz_observe-box_p5-1_a2_b2 dd))
	:effect (and (not (immediate-dummy-jnz_observe-box_p5-1_a2_b2 dd))(dummy-right-jnz_observe-box_p5-1_a2_b2 dd))
)
(:action goal-achieve-left-jnz_observe-box_p5-1_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jnz_observe-box_p5-1_a2_b2 dd)(not (box-at b2 p5-1))(box-at b1 p3-2)(not (box-at b0 p1-2)))
	:effect (and (done-goal dd)(not (dummy-left-jnz_observe-box_p5-1_a2_b2 dd)))
)
(:action act-ehm_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jnz_observe-box_p5-1_a2_b2 dd)(box-at b2 p5-1)(box-at b1 p3-2)(not (box-at b0 p1-2))(adj p5-1 p5-2)(agent-at a2 p5-1))
	:effect (and (pre-ehm_joint-push_p5-1_p5-2_b2_a2_a3 dd))
)
(:action goal-achieve-ehm_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-ehm_joint-push_p5-1_p5-2_b2_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-ehm_joint-push_p5-1_p5-2_b2_a2_a3 dd)))
)
(:action act-ktj_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0n9_observe-box_p1-2_a1_b0 dd)(immediate-dummy-ktj_observe-box_p3-2_a3_b1 dd)(box-at b0 p1-2)(agent-at a2 p3-2))
	:observe (box-at b1 p3-2)
)
(:action act-dummy-ktj_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0n9_observe-box_p1-2_a1_b0 dd)(box-at b0 p1-2)(agent-at a2 p3-2)(not (dummy-left-ktj_observe-box_p3-2_a3_b1 dd))(not (dummy-right-ktj_observe-box_p3-2_a3_b1 dd)))
	:effect (and (immediate-dummy-ktj_observe-box_p3-2_a3_b1 dd) )
)
(:action dummy-left-ktj_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0n9_observe-box_p1-2_a1_b0 dd)(box-at b0 p1-2)(agent-at a2 p3-2)(not (box-at b1 p3-2))(immediate-dummy-ktj_observe-box_p3-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-ktj_observe-box_p3-2_a3_b1 dd))(dummy-left-ktj_observe-box_p3-2_a3_b1 dd))
)
(:action dummy-right-ktj_observe-box_p3-2_a3_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0n9_observe-box_p1-2_a1_b0 dd)(box-at b0 p1-2)(agent-at a2 p3-2)(box-at b1 p3-2)(immediate-dummy-ktj_observe-box_p3-2_a3_b1 dd))
	:effect (and (not (immediate-dummy-ktj_observe-box_p3-2_a3_b1 dd))(dummy-right-ktj_observe-box_p3-2_a3_b1 dd))
)
(:action act-ysn_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ktj_observe-box_p3-2_a3_b1 dd)(immediate-dummy-ysn_observe-box_p5-2_a2_b2 dd)(not (box-at b1 p3-2))(box-at b0 p1-2)(agent-at a2 p5-2))
	:observe (box-at b2 p5-2)
)
(:action act-dummy-ysn_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ktj_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(box-at b0 p1-2)(agent-at a2 p5-2)(not (dummy-left-ysn_observe-box_p5-2_a2_b2 dd))(not (dummy-right-ysn_observe-box_p5-2_a2_b2 dd)))
	:effect (and (immediate-dummy-ysn_observe-box_p5-2_a2_b2 dd) )
)
(:action dummy-left-ysn_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ktj_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(box-at b0 p1-2)(agent-at a2 p5-2)(not (box-at b2 p5-2))(immediate-dummy-ysn_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-ysn_observe-box_p5-2_a2_b2 dd))(dummy-left-ysn_observe-box_p5-2_a2_b2 dd))
)
(:action dummy-right-ysn_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ktj_observe-box_p3-2_a3_b1 dd)(not (box-at b1 p3-2))(box-at b0 p1-2)(agent-at a2 p5-2)(box-at b2 p5-2)(immediate-dummy-ysn_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-ysn_observe-box_p5-2_a2_b2 dd))(dummy-right-ysn_observe-box_p5-2_a2_b2 dd))
)
(:action act-ny9_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ysn_observe-box_p5-2_a2_b2 dd)(not (box-at b2 p5-2))(not (box-at b1 p3-2))(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-ny9_joint-push_p3-1_p3-2_b1_a2_a3 dd))
)
(:action act-u0i_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-ny9_joint-push_p3-1_p3-2_b1_a2_a3 dd)(adj p5-1 p5-2)(agent-at a2 p5-1))
	:effect (and (pre-u0i_joint-push_p5-1_p5-2_b2_a2_a3 dd)(not (pre-ny9_joint-push_p3-1_p3-2_b1_a2_a3 dd)))
)
(:action goal-achieve-u0i_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-u0i_joint-push_p5-1_p5-2_b2_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-u0i_joint-push_p5-1_p5-2_b2_a2_a3 dd)))
)
(:action act-hob_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ysn_observe-box_p5-2_a2_b2 dd)(box-at b2 p5-2)(not (box-at b1 p3-2))(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-hob_joint-push_p3-1_p3-2_b1_a2_a3 dd))
)
(:action goal-achieve-hob_joint-push_p3-1_p3-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-hob_joint-push_p3-1_p3-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-hob_joint-push_p3-1_p3-2_b1_a2_a3 dd)))
)
(:action act-yv2_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ktj_observe-box_p3-2_a3_b1 dd)(immediate-dummy-yv2_observe-box_p5-2_a2_b2 dd)(box-at b1 p3-2)(box-at b0 p1-2)(agent-at a2 p5-2))
	:observe (box-at b2 p5-2)
)
(:action act-dummy-yv2_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ktj_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(box-at b0 p1-2)(agent-at a2 p5-2)(not (dummy-left-yv2_observe-box_p5-2_a2_b2 dd))(not (dummy-right-yv2_observe-box_p5-2_a2_b2 dd)))
	:effect (and (immediate-dummy-yv2_observe-box_p5-2_a2_b2 dd) )
)
(:action dummy-left-yv2_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ktj_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(box-at b0 p1-2)(agent-at a2 p5-2)(not (box-at b2 p5-2))(immediate-dummy-yv2_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-yv2_observe-box_p5-2_a2_b2 dd))(dummy-left-yv2_observe-box_p5-2_a2_b2 dd))
)
(:action dummy-right-yv2_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ktj_observe-box_p3-2_a3_b1 dd)(box-at b1 p3-2)(box-at b0 p1-2)(agent-at a2 p5-2)(box-at b2 p5-2)(immediate-dummy-yv2_observe-box_p5-2_a2_b2 dd))
	:effect (and (not (immediate-dummy-yv2_observe-box_p5-2_a2_b2 dd))(dummy-right-yv2_observe-box_p5-2_a2_b2 dd))
)
(:action act-aqu_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-yv2_observe-box_p5-2_a2_b2 dd)(not (box-at b2 p5-2))(box-at b1 p3-2)(box-at b0 p1-2)(adj p5-1 p5-2)(agent-at a2 p5-1))
	:effect (and (pre-aqu_joint-push_p5-1_p5-2_b2_a2_a3 dd))
)
(:action goal-achieve-aqu_joint-push_p5-1_p5-2_b2_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-aqu_joint-push_p5-1_p5-2_b2_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-aqu_joint-push_p5-1_p5-2_b2_a2_a3 dd)))
)
(:action goal-achieve-right-yv2_observe-box_p5-2_a2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-yv2_observe-box_p5-2_a2_b2 dd)(box-at b2 p5-2)(box-at b1 p3-2)(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-right-yv2_observe-box_p5-2_a2_b2 dd)))
)
)