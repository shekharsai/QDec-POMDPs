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
	b0 - box
	b1 - box
	b2 - box
	b3 - box
	a2 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-iqo_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-iqo_observe-box_a2_p2-1_b1 ?dd - dummy)
	(dummy-left-iqo_observe-box_a2_p2-1_b1 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-iqo_observe-box_a2_p2-1_b1 ?dd - dummy)
	(immediate-dummy-ya1_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-ya1_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-ady_observe-box_a4_p4-2_b3 ?dd - dummy)
	(dummy-left-ady_observe-box_a4_p4-2_b3 ?dd - dummy)
	(pre-bnn_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(dummy-right-ady_observe-box_a4_p4-2_b3 ?dd - dummy)
	(pre-8ag_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(immediate-dummy-1r9_observe-box_a2_p3-2_b2 ?dd - dummy)
	(dummy-left-1r9_observe-box_a2_p3-2_b2 ?dd - dummy)
	(pre-vsl_one-push_p3-1_p3-2_b2_a2 ?dd - dummy)
	(dummy-right-1r9_observe-box_a2_p3-2_b2 ?dd - dummy)
	(dummy-right-ya1_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-dlu_observe-box_a4_p4-1_b3 ?dd - dummy)
	(dummy-left-dlu_observe-box_a4_p4-1_b3 ?dd - dummy)
	(pre-k5g_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
	(immediate-dummy-80a_observe-box_a2_p3-2_b2 ?dd - dummy)
	(dummy-left-80a_observe-box_a2_p3-2_b2 ?dd - dummy)
	(pre-fl9_one-push_p3-1_p3-2_b2_a2 ?dd - dummy)
	(dummy-right-80a_observe-box_a2_p3-2_b2 ?dd - dummy)
	(dummy-right-dlu_observe-box_a4_p4-1_b3 ?dd - dummy)
	(pre-6xg_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-iqo_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-iqo_observe-box_a2_p2-1_b1 dd)(immediate-dummy-iqo_observe-box_a2_p2-1_b1 dd)(agent-at a2 p2-1)(can-observe a2 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-iqo_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-iqo_observe-box_a2_p2-1_b1 dd)(not (dummy-left-iqo_observe-box_a2_p2-1_b1 dd))(not (dummy-right-iqo_observe-box_a2_p2-1_b1 dd)))
	:effect (and (immediate-dummy-iqo_observe-box_a2_p2-1_b1 dd) )
)
(:action dummy-left-iqo_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-iqo_observe-box_a2_p2-1_b1 dd)(agent-at a2 p2-1)(can-observe a2 b1)(not (box-at b1 p2-1))(immediate-dummy-iqo_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-iqo_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-iqo_observe-box_a2_p2-1_b1 dd))(dummy-left-iqo_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-right-iqo_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (init-iqo_observe-box_a2_p2-1_b1 dd)(agent-at a2 p2-1)(can-observe a2 b1)(box-at b1 p2-1)(immediate-dummy-iqo_observe-box_a2_p2-1_b1 dd))
	:effect (and (not (init-iqo_observe-box_a2_p2-1_b1 dd))(not (immediate-dummy-iqo_observe-box_a2_p2-1_b1 dd))(dummy-right-iqo_observe-box_a2_p2-1_b1 dd))
)
(:action goal-achieve-left-iqo_observe-box_a2_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-iqo_observe-box_a2_p2-1_b1 dd)(not (box-at b1 p2-1)))
	:effect (and (done-goal dd)(not (dummy-left-iqo_observe-box_a2_p2-1_b1 dd)))
)
(:action act-ya1_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-iqo_observe-box_a2_p2-1_b1 dd)(immediate-dummy-ya1_observe-box_a1_p1-2_b0 dd)(box-at b1 p2-1)(agent-at a2 p1-2)(can-observe a2 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-ya1_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-iqo_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a2 p1-2)(can-observe a2 b0)(not (dummy-left-ya1_observe-box_a1_p1-2_b0 dd))(not (dummy-right-ya1_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-ya1_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-ya1_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-iqo_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a2 p1-2)(can-observe a2 b0)(not (box-at b0 p1-2))(immediate-dummy-ya1_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-ya1_observe-box_a1_p1-2_b0 dd))(dummy-left-ya1_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-ya1_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-iqo_observe-box_a2_p2-1_b1 dd)(box-at b1 p2-1)(agent-at a2 p1-2)(can-observe a2 b0)(box-at b0 p1-2)(immediate-dummy-ya1_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (immediate-dummy-ya1_observe-box_a1_p1-2_b0 dd))(dummy-right-ya1_observe-box_a1_p1-2_b0 dd))
)
(:action act-ady_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ya1_observe-box_a1_p1-2_b0 dd)(immediate-dummy-ady_observe-box_a4_p4-2_b3 dd)(not (box-at b0 p1-2))(box-at b1 p2-1)(agent-at a2 p4-2)(can-observe a2 b3))
	:observe (box-at b3 p4-2)
)
(:action act-dummy-ady_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ya1_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(box-at b1 p2-1)(agent-at a2 p4-2)(can-observe a2 b3)(not (dummy-left-ady_observe-box_a4_p4-2_b3 dd))(not (dummy-right-ady_observe-box_a4_p4-2_b3 dd)))
	:effect (and (immediate-dummy-ady_observe-box_a4_p4-2_b3 dd) )
)
(:action dummy-left-ady_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ya1_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(box-at b1 p2-1)(agent-at a2 p4-2)(can-observe a2 b3)(not (box-at b3 p4-2))(immediate-dummy-ady_observe-box_a4_p4-2_b3 dd))
	:effect (and (not (immediate-dummy-ady_observe-box_a4_p4-2_b3 dd))(dummy-left-ady_observe-box_a4_p4-2_b3 dd))
)
(:action dummy-right-ady_observe-box_a4_p4-2_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ya1_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(box-at b1 p2-1)(agent-at a2 p4-2)(can-observe a2 b3)(box-at b3 p4-2)(immediate-dummy-ady_observe-box_a4_p4-2_b3 dd))
	:effect (and (not (immediate-dummy-ady_observe-box_a4_p4-2_b3 dd))(dummy-right-ady_observe-box_a4_p4-2_b3 dd))
)
(:action act-bnn_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ady_observe-box_a4_p4-2_b3 dd)(not (box-at b3 p4-2))(not (box-at b0 p1-2))(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a2 p2-1))
	:effect (and (pre-bnn_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action goal-achieve-bnn_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-bnn_joint-push_p2-1_p2-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-bnn_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
(:action act-8ag_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ady_observe-box_a4_p4-2_b3 dd)(box-at b3 p4-2)(not (box-at b0 p1-2))(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a2 p2-1))
	:effect (and (pre-8ag_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action act-1r9_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-8ag_joint-push_p2-1_p2-2_b1_a2_a3 dd)(immediate-dummy-1r9_observe-box_a2_p3-2_b2 dd)(agent-at a2 p3-2)(can-observe a2 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-1r9_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-8ag_joint-push_p2-1_p2-2_b1_a2_a3 dd)(agent-at a2 p3-2)(can-observe a2 b2)(not (dummy-left-1r9_observe-box_a2_p3-2_b2 dd))(not (dummy-right-1r9_observe-box_a2_p3-2_b2 dd)))
	:effect (and (immediate-dummy-1r9_observe-box_a2_p3-2_b2 dd) )
)
(:action dummy-left-1r9_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p3-2)(can-observe a2 b2)(not (box-at b2 p3-2))(immediate-dummy-1r9_observe-box_a2_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-1r9_observe-box_a2_p3-2_b2 dd))(dummy-left-1r9_observe-box_a2_p3-2_b2 dd))
)
(:action dummy-right-1r9_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p3-2)(can-observe a2 b2)(box-at b2 p3-2)(immediate-dummy-1r9_observe-box_a2_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-1r9_observe-box_a2_p3-2_b2 dd))(dummy-right-1r9_observe-box_a2_p3-2_b2 dd))
)
(:action act-vsl_one-push_p3-1_p3-2_b2_a2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1r9_observe-box_a2_p3-2_b2 dd)(not (box-at b2 p3-2))(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-vsl_one-push_p3-1_p3-2_b2_a2 dd))
)
(:action goal-achieve-vsl_one-push_p3-1_p3-2_b2_a2
	:parameters ( ?a - agent )
	:precondition (and (pre-vsl_one-push_p3-1_p3-2_b2_a2 dd))
	:effect (and (done-goal dd)(not (pre-vsl_one-push_p3-1_p3-2_b2_a2 dd)))
)
(:action goal-achieve-right-1r9_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1r9_observe-box_a2_p3-2_b2 dd)(box-at b2 p3-2))
	:effect (and (done-goal dd)(not (dummy-right-1r9_observe-box_a2_p3-2_b2 dd)))
)
(:action act-dlu_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ya1_observe-box_a1_p1-2_b0 dd)(immediate-dummy-dlu_observe-box_a4_p4-1_b3 dd)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a2 p4-1)(can-observe a2 b3))
	:observe (box-at b3 p4-1)
)
(:action act-dummy-dlu_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ya1_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a2 p4-1)(can-observe a2 b3)(not (dummy-left-dlu_observe-box_a4_p4-1_b3 dd))(not (dummy-right-dlu_observe-box_a4_p4-1_b3 dd)))
	:effect (and (immediate-dummy-dlu_observe-box_a4_p4-1_b3 dd) )
)
(:action dummy-left-dlu_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ya1_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a2 p4-1)(can-observe a2 b3)(not (box-at b3 p4-1))(immediate-dummy-dlu_observe-box_a4_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-dlu_observe-box_a4_p4-1_b3 dd))(dummy-left-dlu_observe-box_a4_p4-1_b3 dd))
)
(:action dummy-right-dlu_observe-box_a4_p4-1_b3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ya1_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(box-at b1 p2-1)(agent-at a2 p4-1)(can-observe a2 b3)(box-at b3 p4-1)(immediate-dummy-dlu_observe-box_a4_p4-1_b3 dd))
	:effect (and (not (immediate-dummy-dlu_observe-box_a4_p4-1_b3 dd))(dummy-right-dlu_observe-box_a4_p4-1_b3 dd))
)
(:action act-k5g_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-dlu_observe-box_a4_p4-1_b3 dd)(not (box-at b3 p4-1))(box-at b0 p1-2)(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a2 p2-1))
	:effect (and (pre-k5g_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action act-80a_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-k5g_joint-push_p2-1_p2-2_b1_a2_a3 dd)(immediate-dummy-80a_observe-box_a2_p3-2_b2 dd)(agent-at a2 p3-2)(can-observe a2 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-80a_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (pre-k5g_joint-push_p2-1_p2-2_b1_a2_a3 dd)(agent-at a2 p3-2)(can-observe a2 b2)(not (dummy-left-80a_observe-box_a2_p3-2_b2 dd))(not (dummy-right-80a_observe-box_a2_p3-2_b2 dd)))
	:effect (and (immediate-dummy-80a_observe-box_a2_p3-2_b2 dd) )
)
(:action dummy-left-80a_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p3-2)(can-observe a2 b2)(not (box-at b2 p3-2))(immediate-dummy-80a_observe-box_a2_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-80a_observe-box_a2_p3-2_b2 dd))(dummy-left-80a_observe-box_a2_p3-2_b2 dd))
)
(:action dummy-right-80a_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (agent-at a2 p3-2)(can-observe a2 b2)(box-at b2 p3-2)(immediate-dummy-80a_observe-box_a2_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-80a_observe-box_a2_p3-2_b2 dd))(dummy-right-80a_observe-box_a2_p3-2_b2 dd))
)
(:action act-fl9_one-push_p3-1_p3-2_b2_a2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-80a_observe-box_a2_p3-2_b2 dd)(not (box-at b2 p3-2))(adj p3-1 p3-2)(agent-at a2 p3-1))
	:effect (and (pre-fl9_one-push_p3-1_p3-2_b2_a2 dd))
)
(:action goal-achieve-fl9_one-push_p3-1_p3-2_b2_a2
	:parameters ( ?a - agent )
	:precondition (and (pre-fl9_one-push_p3-1_p3-2_b2_a2 dd))
	:effect (and (done-goal dd)(not (pre-fl9_one-push_p3-1_p3-2_b2_a2 dd)))
)
(:action goal-achieve-right-80a_observe-box_a2_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-80a_observe-box_a2_p3-2_b2 dd)(box-at b2 p3-2))
	:effect (and (done-goal dd)(not (dummy-right-80a_observe-box_a2_p3-2_b2 dd)))
)
(:action act-6xg_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-dlu_observe-box_a4_p4-1_b3 dd)(box-at b3 p4-1)(box-at b0 p1-2)(box-at b1 p2-1)(adj p2-1 p2-2)(agent-at a2 p2-1))
	:effect (and (pre-6xg_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action goal-achieve-6xg_joint-push_p2-1_p2-2_b1_a2_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-6xg_joint-push_p2-1_p2-2_b1_a2_a3 dd))
	:effect (and (done-goal dd)(not (pre-6xg_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
)