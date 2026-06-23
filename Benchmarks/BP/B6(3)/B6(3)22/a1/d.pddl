(define (domain box-3-a1)
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
	a1 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-oeq_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-oeq_observe-box_a2_p2-1_b1 ?dd - dummy)
	(dummy-left-oeq_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-8yx_observe-box_a3_p1-1_b0 ?dd - dummy)
	(dummy-left-8yx_observe-box_a3_p1-1_b0 ?dd - dummy)
	(immediate-dummy-c4y_observe-box-3yz-hgq_a1_p3-1_b2 ?dd - dummy)
	(dummy-left-c4y_observe-box-3yz-hgq_a1_p3-1_b2 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-c4y_observe-box-3yz-hgq_a1_p3-1_b2 ?dd - dummy)
	(pre-3u8_joint-push_p3-1_p3-2_b2_a1_a3 ?dd - dummy)
	(dummy-right-8yx_observe-box_a3_p1-1_b0 ?dd - dummy)
	(pre-iys_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(immediate-dummy-ru1_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(dummy-left-ru1_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(pre-011_joint-push_p3-1_p3-2_b2_a1_a3 ?dd - dummy)
	(dummy-right-ru1_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(dummy-right-oeq_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-pdt_observe-box_a3_p1-1_b0 ?dd - dummy)
	(dummy-left-pdt_observe-box_a3_p1-1_b0 ?dd - dummy)
	(immediate-dummy-ikk_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(dummy-left-ikk_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(pre-9fr_joint-push_p3-1_p3-2_b2_a1_a3 ?dd - dummy)
	(dummy-right-ikk_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(dummy-right-pdt_observe-box_a3_p1-1_b0 ?dd - dummy)
	(pre-0e8_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
	(immediate-dummy-7y5_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(dummy-left-7y5_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
	(pre-mu8_joint-push_p3-1_p3-2_b2_a1_a3 ?dd - dummy)
	(dummy-right-7y5_observe-box-fw9-icr_a1_p3-2_b2 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-oeq_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-oeq_observe-box_a2_p2-1_b1 dd)(immediate-dummy-oeq_observe-box_a2_p2-1_b1 dd)(agent-at a1 p2-1)(can-observe a1 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-oeq_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-oeq_observe-box_a2_p2-1_b1 dd)(not (dummy-left-oeq_observe-box_a2_p2-1_b1 dd))(not (dummy-right-oeq_observe-box_a2_p2-1_b1 dd)))
	:effect (and (immediate-dummy-oeq_observe-box_a2_p2-1_b1 dd) )
)
(:action dummy-left-oeq_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-oeq_observe-box_a2_p2-1_b1 dd)(agent-at a1 p2-1)(can-observe a1 b1)(not (box-at b1 p2-1))(immediate-dummy-oeq_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-oeq_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-oeq_observe-box_a2_p2-1_b1 dd))(dummy-left-oeq_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-right-oeq_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-oeq_observe-box_a2_p2-1_b1 dd)(agent-at a1 p2-1)(can-observe a1 b1)(box-at b1 p2-1)(immediate-dummy-oeq_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-oeq_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-oeq_observe-box_a2_p2-1_b1 dd))(dummy-right-oeq_observe-box_a2_p2-1_b1 dd))
)
(:action act-8yx_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-oeq_observe-box_a2_p2-1_b1 dd)(immediate-dummy-8yx_observe-box_a3_p1-1_b0 dd)(not (box-at b1 p2-1))(agent-at a1 p1-1)(can-observe a1 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-8yx_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-oeq_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a1 p1-1)(can-observe a1 b0)(not (dummy-left-8yx_observe-box_a3_p1-1_b0 dd))(not (dummy-right-8yx_observe-box_a3_p1-1_b0 dd)))
	:effect (and (immediate-dummy-8yx_observe-box_a3_p1-1_b0 dd) )
)
(:action dummy-left-8yx_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-oeq_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a1 p1-1)(can-observe a1 b0)(not (box-at b0 p1-1))(immediate-dummy-8yx_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-8yx_observe-box_a3_p1-1_b0 dd))(dummy-left-8yx_observe-box_a3_p1-1_b0 dd))
)
(:action dummy-right-8yx_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-oeq_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1))(agent-at a1 p1-1)(can-observe a1 b0)(box-at b0 p1-1)(immediate-dummy-8yx_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-8yx_observe-box_a3_p1-1_b0 dd))(dummy-right-8yx_observe-box_a3_p1-1_b0 dd))
)
(:action act-c4y_observe-box-3yz-hgq_a1_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8yx_observe-box_a3_p1-1_b0 dd)(immediate-dummy-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1))(agent-at a1 p3-1)(can-observe a1 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-c4y_observe-box-3yz-hgq_a1_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8yx_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1))(agent-at a1 p3-1)(can-observe a1 b2)(not (dummy-left-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd))(not (dummy-right-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd)))
	:effect (and (immediate-dummy-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd) )
)
(:action dummy-left-c4y_observe-box-3yz-hgq_a1_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8yx_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1))(agent-at a1 p3-1)(can-observe a1 b2)(not (box-at b2 p3-1))(immediate-dummy-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd))(dummy-left-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd))
)
(:action dummy-right-c4y_observe-box-3yz-hgq_a1_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8yx_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1))(agent-at a1 p3-1)(can-observe a1 b2)(box-at b2 p3-1)(immediate-dummy-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd))(dummy-right-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd))
)
(:action goal-achieve-left-c4y_observe-box-3yz-hgq_a1_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-left-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd)))
)
(:action act-3u8_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-c4y_observe-box-3yz-hgq_a1_p3-1_b2 dd)(not (box-at b0 p1-1))(not (box-at b1 p2-1))(adj p3-1 p3-2)(agent-at a1 p3-1))
	:effect (and (pre-3u8_joint-push_p3-1_p3-2_b2_a1_a3 dd))
)
(:action goal-achieve-3u8_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-3u8_joint-push_p3-1_p3-2_b2_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-3u8_joint-push_p3-1_p3-2_b2_a1_a3 dd)))
)
(:action act-iys_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8yx_observe-box_a3_p1-1_b0 dd)(box-at b0 p1-1)(not (box-at b1 p2-1))(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-iys_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action act-ru1_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-iys_joint-push_p1-1_p1-2_b0_a1_a3 dd)(immediate-dummy-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd)(agent-at a1 p3-2)(can-observe a1 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-ru1_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-iys_joint-push_p1-1_p1-2_b0_a1_a3 dd)(agent-at a1 p3-2)(can-observe a1 b2)(not (dummy-left-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd))(not (dummy-right-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd)))
	:effect (and (immediate-dummy-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd) )
)
(:action dummy-left-ru1_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a1 p3-2)(can-observe a1 b2)(not (box-at b2 p3-2))(immediate-dummy-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-left-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action dummy-right-ru1_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a1 p3-2)(can-observe a1 b2)(box-at b2 p3-2)(immediate-dummy-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-right-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action act-011_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd)(adj p3-1 p3-2)(agent-at a1 p3-1))
	:effect (and (pre-011_joint-push_p3-1_p3-2_b2_a1_a3 dd))
)
(:action goal-achieve-011_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-011_joint-push_p3-1_p3-2_b2_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-011_joint-push_p3-1_p3-2_b2_a1_a3 dd)))
)
(:action goal-achieve-right-ru1_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (done-goal dd)(not (dummy-right-ru1_observe-box-fw9-icr_a1_p3-2_b2 dd)))
)
(:action act-pdt_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-oeq_observe-box_a2_p2-1_b1 dd)(immediate-dummy-pdt_observe-box_a3_p1-1_b0 dd)(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-pdt_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-oeq_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0)(not (dummy-left-pdt_observe-box_a3_p1-1_b0 dd))(not (dummy-right-pdt_observe-box_a3_p1-1_b0 dd)))
	:effect (and (immediate-dummy-pdt_observe-box_a3_p1-1_b0 dd) )
)
(:action dummy-left-pdt_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-oeq_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0)(not (box-at b0 p1-1))(immediate-dummy-pdt_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-pdt_observe-box_a3_p1-1_b0 dd))(dummy-left-pdt_observe-box_a3_p1-1_b0 dd))
)
(:action dummy-right-pdt_observe-box_a3_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-oeq_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a1 p1-1)(can-observe a1 b0)(box-at b0 p1-1)(immediate-dummy-pdt_observe-box_a3_p1-1_b0 dd))
	:effect (and (not (immediate-dummy-pdt_observe-box_a3_p1-1_b0 dd))(dummy-right-pdt_observe-box_a3_p1-1_b0 dd))
)
(:action act-ikk_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-pdt_observe-box_a3_p1-1_b0 dd)(immediate-dummy-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd)(not (box-at b0 p1-1))(box-at b1 p2-1)(agent-at a1 p3-2)(can-observe a1 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-ikk_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-pdt_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(box-at b1 p2-1)(agent-at a1 p3-2)(can-observe a1 b2)(not (dummy-left-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd))(not (dummy-right-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd)))
	:effect (and (immediate-dummy-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd) )
)
(:action dummy-left-ikk_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-pdt_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(box-at b1 p2-1)(agent-at a1 p3-2)(can-observe a1 b2)(not (box-at b2 p3-2))(immediate-dummy-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-left-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action dummy-right-ikk_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-pdt_observe-box_a3_p1-1_b0 dd)(not (box-at b0 p1-1))(box-at b1 p2-1)(agent-at a1 p3-2)(can-observe a1 b2)(box-at b2 p3-2)(immediate-dummy-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-right-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action act-9fr_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd)(not (box-at b0 p1-1))(box-at b1 p2-1)(adj p3-1 p3-2)(agent-at a1 p3-1))
	:effect (and (pre-9fr_joint-push_p3-1_p3-2_b2_a1_a3 dd))
)
(:action goal-achieve-9fr_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-9fr_joint-push_p3-1_p3-2_b2_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-9fr_joint-push_p3-1_p3-2_b2_a1_a3 dd)))
)
(:action goal-achieve-right-ikk_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd)(not (box-at b0 p1-1))(box-at b1 p2-1))
	:effect (and (done-goal dd)(not (dummy-right-ikk_observe-box-fw9-icr_a1_p3-2_b2 dd)))
)
(:action act-0e8_joint-push_p1-1_p1-2_b0_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-pdt_observe-box_a3_p1-1_b0 dd)(box-at b0 p1-1)(box-at b1 p2-1)(adj p1-1 p1-2)(agent-at a1 p1-1))
	:effect (and (pre-0e8_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action act-7y5_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-0e8_joint-push_p1-1_p1-2_b0_a1_a3 dd)(immediate-dummy-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd)(agent-at a1 p3-2)(can-observe a1 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-7y5_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-0e8_joint-push_p1-1_p1-2_b0_a1_a3 dd)(agent-at a1 p3-2)(can-observe a1 b2)(not (dummy-left-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd))(not (dummy-right-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd)))
	:effect (and (immediate-dummy-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd) )
)
(:action dummy-left-7y5_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a1 p3-2)(can-observe a1 b2)(not (box-at b2 p3-2))(immediate-dummy-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-left-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action dummy-right-7y5_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a1 p3-2)(can-observe a1 b2)(box-at b2 p3-2)(immediate-dummy-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd))(dummy-right-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd))
)
(:action act-mu8_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd)(adj p3-1 p3-2)(agent-at a1 p3-1))
	:effect (and (pre-mu8_joint-push_p3-1_p3-2_b2_a1_a3 dd))
)
(:action goal-achieve-mu8_joint-push_p3-1_p3-2_b2_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-mu8_joint-push_p3-1_p3-2_b2_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-mu8_joint-push_p3-1_p3-2_b2_a1_a3 dd)))
)
(:action goal-achieve-right-7y5_observe-box-fw9-icr_a1_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd))
	:effect (and (done-goal dd)(not (dummy-right-7y5_observe-box-fw9-icr_a1_p3-2_b2 dd)))
)
)