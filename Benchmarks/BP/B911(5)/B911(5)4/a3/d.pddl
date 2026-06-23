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
	p5-1 - pos
	p5-2 - pos
	b0 - box
	b1 - box
	b2 - box
	b4 - box
	b5 - box
	a3 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-hmh_observe-box_a1_p1-1_b0 ?dd - dummy)
	(immediate-dummy-hmh_observe-box_a1_p1-1_b0 ?dd - dummy)
	(dummy-left-hmh_observe-box_a1_p1-1_b0 ?dd - dummy)
	(immediate-dummy-jrw_observe-box_a2_p2-2_b1 ?dd - dummy)
	(dummy-left-jrw_observe-box_a2_p2-2_b1 ?dd - dummy)
	(pre-c5k_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-jrw_observe-box_a2_p2-2_b1 ?dd - dummy)
	(dummy-right-hmh_observe-box_a1_p1-1_b0 ?dd - dummy)
	(immediate-dummy-rd7_observe-box_a3_p2-1_b1 ?dd - dummy)
	(dummy-left-rd7_observe-box_a3_p2-1_b1 ?dd - dummy)
	(dummy-right-rd7_observe-box_a3_p2-1_b1 ?dd - dummy)
	(pre-532_joint-push_p2-1_p2-2_b1_a3_a4 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-hmh_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-hmh_observe-box_a1_p1-1_b0 dd)(immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd)(agent-at a3 p1-1)(can-observe a3 b0))
	:observe (box-at b0 p1-1)
)
(:action act-dummy-hmh_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-hmh_observe-box_a1_p1-1_b0 dd)(not (dummy-left-hmh_observe-box_a1_p1-1_b0 dd))(not (dummy-right-hmh_observe-box_a1_p1-1_b0 dd)))
	:effect (and (immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd) )
)
(:action dummy-left-hmh_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-hmh_observe-box_a1_p1-1_b0 dd)(agent-at a3 p1-1)(can-observe a3 b0)(not (box-at b0 p1-1))(immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (init-hmh_observe-box_a1_p1-1_b0 dd))(not (immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd))(dummy-left-hmh_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-right-hmh_observe-box_a1_p1-1_b0
	:parameters ( ?a - agent )
	:precondition (and (init-hmh_observe-box_a1_p1-1_b0 dd)(agent-at a3 p1-1)(can-observe a3 b0)(box-at b0 p1-1)(immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd))
	:effect (and (not (init-hmh_observe-box_a1_p1-1_b0 dd))(not (immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd))(dummy-right-hmh_observe-box_a1_p1-1_b0 dd))
)
(:action act-jrw_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hmh_observe-box_a1_p1-1_b0 dd)(immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd)(not (box-at b0 p1-1))(agent-at a3 p2-2)(can-observe a3 b1))
	:observe (box-at b1 p2-2)
)
(:action act-dummy-jrw_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hmh_observe-box_a1_p1-1_b0 dd)(not (box-at b0 p1-1))(agent-at a3 p2-2)(can-observe a3 b1)(not (dummy-left-jrw_observe-box_a2_p2-2_b1 dd))(not (dummy-right-jrw_observe-box_a2_p2-2_b1 dd)))
	:effect (and (immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd) )
)
(:action dummy-left-jrw_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hmh_observe-box_a1_p1-1_b0 dd)(not (box-at b0 p1-1))(agent-at a3 p2-2)(can-observe a3 b1)(not (box-at b1 p2-2))(immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd))(dummy-left-jrw_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-jrw_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hmh_observe-box_a1_p1-1_b0 dd)(not (box-at b0 p1-1))(agent-at a3 p2-2)(can-observe a3 b1)(box-at b1 p2-2)(immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd))
	:effect (and (not (immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd))(dummy-right-jrw_observe-box_a2_p2-2_b1 dd))
)
(:action act-c5k_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jrw_observe-box_a2_p2-2_b1 dd)(not (box-at b1 p2-2))(not (box-at b0 p1-1))(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-c5k_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action goal-achieve-c5k_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-c5k_joint-push_p2-1_p2-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-c5k_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
(:action goal-achieve-right-jrw_observe-box_a2_p2-2_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jrw_observe-box_a2_p2-2_b1 dd)(box-at b1 p2-2)(not (box-at b0 p1-1)))
	:effect (and (done-goal dd)(not (dummy-right-jrw_observe-box_a2_p2-2_b1 dd)))
)
(:action act-rd7_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hmh_observe-box_a1_p1-1_b0 dd)(immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd)(box-at b0 p1-1)(agent-at a3 p2-1)(can-observe a3 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-rd7_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hmh_observe-box_a1_p1-1_b0 dd)(box-at b0 p1-1)(agent-at a3 p2-1)(can-observe a3 b1)(not (dummy-left-rd7_observe-box_a3_p2-1_b1 dd))(not (dummy-right-rd7_observe-box_a3_p2-1_b1 dd)))
	:effect (and (immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd) )
)
(:action dummy-left-rd7_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hmh_observe-box_a1_p1-1_b0 dd)(box-at b0 p1-1)(agent-at a3 p2-1)(can-observe a3 b1)(not (box-at b1 p2-1))(immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd))(dummy-left-rd7_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-right-rd7_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hmh_observe-box_a1_p1-1_b0 dd)(box-at b0 p1-1)(agent-at a3 p2-1)(can-observe a3 b1)(box-at b1 p2-1)(immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd))(dummy-right-rd7_observe-box_a3_p2-1_b1 dd))
)
(:action goal-achieve-left-rd7_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-rd7_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1))(box-at b0 p1-1))
	:effect (and (done-goal dd)(not (dummy-left-rd7_observe-box_a3_p2-1_b1 dd)))
)
(:action act-532_joint-push_p2-1_p2-2_b1_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-rd7_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(box-at b0 p1-1)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-532_joint-push_p2-1_p2-2_b1_a3_a4 dd))
)
(:action goal-achieve-532_joint-push_p2-1_p2-2_b1_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-532_joint-push_p2-1_p2-2_b1_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-532_joint-push_p2-1_p2-2_b1_a3_a4 dd)))
)
)