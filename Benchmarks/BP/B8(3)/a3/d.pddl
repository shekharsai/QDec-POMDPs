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
	b0 - box
	b1 - box
	b2 - box
	b4 - box
	a3 - agent
	dd - dummy)
(:predicates 
	(adj ?i - pos ?j - pos )
	(agent-at ?a - agent ?i - pos )
	(box-at ?b - box ?i - pos )
	(heavy ?b - box )
	(can-observe ?a - agent ?b - box )
	(init-7he_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-7he_observe-box_a1_p1-2_b0 ?dd - dummy)
	(dummy-left-7he_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-mvu_observe-box_a3_p3-2_b2 ?dd - dummy)
	(dummy-left-mvu_observe-box_a3_p3-2_b2 ?dd - dummy)
	(pre-cxi_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-mvu_observe-box_a3_p3-2_b2 ?dd - dummy)
	(immediate-dummy-zyk_observe-box_a3_p4-1_b4 ?dd - dummy)
	(dummy-left-zyk_observe-box_a3_p4-1_b4 ?dd - dummy)
	(dummy-right-zyk_observe-box_a3_p4-1_b4 ?dd - dummy)
	(pre-emb_one-push_p4-1_p4-2_b4_a3 ?dd - dummy)
	(dummy-right-7he_observe-box_a1_p1-2_b0 ?dd - dummy)
	(immediate-dummy-aio_observe-box_a3_p3-1_b2 ?dd - dummy)
	(dummy-left-aio_observe-box_a3_p3-1_b2 ?dd - dummy)
	(immediate-dummy-0hh_observe-box_a1_p2-1_b1 ?dd - dummy)
	(dummy-left-0hh_observe-box_a1_p2-1_b1 ?dd - dummy)
	(dummy-right-0hh_observe-box_a1_p2-1_b1 ?dd - dummy)
	(pre-rpu_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(dummy-right-aio_observe-box_a3_p3-1_b2 ?dd - dummy)
	(immediate-dummy-mct_observe-box_a4_p4-2_b4 ?dd - dummy)
	(dummy-left-mct_observe-box_a4_p4-2_b4 ?dd - dummy)
	(immediate-dummy-z21_observe-box_a3_p2-1_b1 ?dd - dummy)
	(dummy-left-z21_observe-box_a3_p2-1_b1 ?dd - dummy)
	(pre-o9n_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(dummy-right-z21_observe-box_a3_p2-1_b1 ?dd - dummy)
	(pre-tyw_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
	(pre-79w_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
	(dummy-right-mct_observe-box_a4_p4-2_b4 ?dd - dummy)
	(pre-xtp_joint-push_p3-1_p3-2_b2_a3_a4 ?dd - dummy)
)

(:action move
	:parameters ( ?start - pos ?end - pos ?a - agent)
	:precondition (and (adj ?start ?end) (agent-at ?a ?start) )
	:effect (and (not (agent-at ?a ?start)) (agent-at ?a ?end) )
)
(:action act-7he_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-7he_observe-box_a1_p1-2_b0 dd)(immediate-dummy-7he_observe-box_a1_p1-2_b0 dd)(agent-at a3 p1-2)(can-observe a3 b0))
	:observe (box-at b0 p1-2)
)
(:action act-dummy-7he_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-7he_observe-box_a1_p1-2_b0 dd)(not (dummy-left-7he_observe-box_a1_p1-2_b0 dd))(not (dummy-right-7he_observe-box_a1_p1-2_b0 dd)))
	:effect (and (immediate-dummy-7he_observe-box_a1_p1-2_b0 dd) )
)
(:action dummy-left-7he_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-7he_observe-box_a1_p1-2_b0 dd)(agent-at a3 p1-2)(can-observe a3 b0)(not (box-at b0 p1-2))(immediate-dummy-7he_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (init-7he_observe-box_a1_p1-2_b0 dd))(not (immediate-dummy-7he_observe-box_a1_p1-2_b0 dd))(dummy-left-7he_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-7he_observe-box_a1_p1-2_b0
	:parameters ( ?a - agent )
	:precondition (and (init-7he_observe-box_a1_p1-2_b0 dd)(agent-at a3 p1-2)(can-observe a3 b0)(box-at b0 p1-2)(immediate-dummy-7he_observe-box_a1_p1-2_b0 dd))
	:effect (and (not (init-7he_observe-box_a1_p1-2_b0 dd))(not (immediate-dummy-7he_observe-box_a1_p1-2_b0 dd))(dummy-right-7he_observe-box_a1_p1-2_b0 dd))
)
(:action act-mvu_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7he_observe-box_a1_p1-2_b0 dd)(immediate-dummy-mvu_observe-box_a3_p3-2_b2 dd)(not (box-at b0 p1-2))(agent-at a3 p3-2)(can-observe a3 b2))
	:observe (box-at b2 p3-2)
)
(:action act-dummy-mvu_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7he_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a3 p3-2)(can-observe a3 b2)(not (dummy-left-mvu_observe-box_a3_p3-2_b2 dd))(not (dummy-right-mvu_observe-box_a3_p3-2_b2 dd)))
	:effect (and (immediate-dummy-mvu_observe-box_a3_p3-2_b2 dd) )
)
(:action dummy-left-mvu_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7he_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a3 p3-2)(can-observe a3 b2)(not (box-at b2 p3-2))(immediate-dummy-mvu_observe-box_a3_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-mvu_observe-box_a3_p3-2_b2 dd))(dummy-left-mvu_observe-box_a3_p3-2_b2 dd))
)
(:action dummy-right-mvu_observe-box_a3_p3-2_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7he_observe-box_a1_p1-2_b0 dd)(not (box-at b0 p1-2))(agent-at a3 p3-2)(can-observe a3 b2)(box-at b2 p3-2)(immediate-dummy-mvu_observe-box_a3_p3-2_b2 dd))
	:effect (and (not (immediate-dummy-mvu_observe-box_a3_p3-2_b2 dd))(dummy-right-mvu_observe-box_a3_p3-2_b2 dd))
)
(:action act-cxi_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mvu_observe-box_a3_p3-2_b2 dd)(not (box-at b2 p3-2))(not (box-at b0 p1-2))(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-cxi_joint-push_p3-1_p3-2_b2_a3_a4 dd))
)
(:action goal-achieve-cxi_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-cxi_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-cxi_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action act-zyk_observe-box_a3_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mvu_observe-box_a3_p3-2_b2 dd)(immediate-dummy-zyk_observe-box_a3_p4-1_b4 dd)(box-at b2 p3-2)(not (box-at b0 p1-2))(agent-at a3 p4-1)(can-observe a3 b4))
	:observe (box-at b4 p4-1)
)
(:action act-dummy-zyk_observe-box_a3_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mvu_observe-box_a3_p3-2_b2 dd)(box-at b2 p3-2)(not (box-at b0 p1-2))(agent-at a3 p4-1)(can-observe a3 b4)(not (dummy-left-zyk_observe-box_a3_p4-1_b4 dd))(not (dummy-right-zyk_observe-box_a3_p4-1_b4 dd)))
	:effect (and (immediate-dummy-zyk_observe-box_a3_p4-1_b4 dd) )
)
(:action dummy-left-zyk_observe-box_a3_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mvu_observe-box_a3_p3-2_b2 dd)(box-at b2 p3-2)(not (box-at b0 p1-2))(agent-at a3 p4-1)(can-observe a3 b4)(not (box-at b4 p4-1))(immediate-dummy-zyk_observe-box_a3_p4-1_b4 dd))
	:effect (and (not (immediate-dummy-zyk_observe-box_a3_p4-1_b4 dd))(dummy-left-zyk_observe-box_a3_p4-1_b4 dd))
)
(:action dummy-right-zyk_observe-box_a3_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mvu_observe-box_a3_p3-2_b2 dd)(box-at b2 p3-2)(not (box-at b0 p1-2))(agent-at a3 p4-1)(can-observe a3 b4)(box-at b4 p4-1)(immediate-dummy-zyk_observe-box_a3_p4-1_b4 dd))
	:effect (and (not (immediate-dummy-zyk_observe-box_a3_p4-1_b4 dd))(dummy-right-zyk_observe-box_a3_p4-1_b4 dd))
)
(:action goal-achieve-left-zyk_observe-box_a3_p4-1_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-zyk_observe-box_a3_p4-1_b4 dd)(not (box-at b4 p4-1))(box-at b2 p3-2)(not (box-at b0 p1-2)))
	:effect (and (done-goal dd)(not (dummy-left-zyk_observe-box_a3_p4-1_b4 dd)))
)
(:action act-emb_one-push_p4-1_p4-2_b4_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-zyk_observe-box_a3_p4-1_b4 dd)(box-at b4 p4-1)(box-at b2 p3-2)(not (box-at b0 p1-2))(adj p4-1 p4-2)(agent-at a3 p4-1))
	:effect (and (pre-emb_one-push_p4-1_p4-2_b4_a3 dd))
)
(:action goal-achieve-emb_one-push_p4-1_p4-2_b4_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-emb_one-push_p4-1_p4-2_b4_a3 dd))
	:effect (and (done-goal dd)(not (pre-emb_one-push_p4-1_p4-2_b4_a3 dd)))
)
(:action act-aio_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7he_observe-box_a1_p1-2_b0 dd)(immediate-dummy-aio_observe-box_a3_p3-1_b2 dd)(box-at b0 p1-2)(agent-at a3 p3-1)(can-observe a3 b2))
	:observe (box-at b2 p3-1)
)
(:action act-dummy-aio_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7he_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a3 p3-1)(can-observe a3 b2)(not (dummy-left-aio_observe-box_a3_p3-1_b2 dd))(not (dummy-right-aio_observe-box_a3_p3-1_b2 dd)))
	:effect (and (immediate-dummy-aio_observe-box_a3_p3-1_b2 dd) )
)
(:action dummy-left-aio_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7he_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a3 p3-1)(can-observe a3 b2)(not (box-at b2 p3-1))(immediate-dummy-aio_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-aio_observe-box_a3_p3-1_b2 dd))(dummy-left-aio_observe-box_a3_p3-1_b2 dd))
)
(:action dummy-right-aio_observe-box_a3_p3-1_b2
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7he_observe-box_a1_p1-2_b0 dd)(box-at b0 p1-2)(agent-at a3 p3-1)(can-observe a3 b2)(box-at b2 p3-1)(immediate-dummy-aio_observe-box_a3_p3-1_b2 dd))
	:effect (and (not (immediate-dummy-aio_observe-box_a3_p3-1_b2 dd))(dummy-right-aio_observe-box_a3_p3-1_b2 dd))
)
(:action act-0hh_observe-box_a1_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-aio_observe-box_a3_p3-1_b2 dd)(immediate-dummy-0hh_observe-box_a1_p2-1_b1 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a3 p2-1)(can-observe a3 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-0hh_observe-box_a1_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-aio_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a3 p2-1)(can-observe a3 b1)(not (dummy-left-0hh_observe-box_a1_p2-1_b1 dd))(not (dummy-right-0hh_observe-box_a1_p2-1_b1 dd)))
	:effect (and (immediate-dummy-0hh_observe-box_a1_p2-1_b1 dd) )
)
(:action dummy-left-0hh_observe-box_a1_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-aio_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a3 p2-1)(can-observe a3 b1)(not (box-at b1 p2-1))(immediate-dummy-0hh_observe-box_a1_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-0hh_observe-box_a1_p2-1_b1 dd))(dummy-left-0hh_observe-box_a1_p2-1_b1 dd))
)
(:action dummy-right-0hh_observe-box_a1_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-aio_observe-box_a3_p3-1_b2 dd)(not (box-at b2 p3-1))(box-at b0 p1-2)(agent-at a3 p2-1)(can-observe a3 b1)(box-at b1 p2-1)(immediate-dummy-0hh_observe-box_a1_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-0hh_observe-box_a1_p2-1_b1 dd))(dummy-right-0hh_observe-box_a1_p2-1_b1 dd))
)
(:action goal-achieve-left-0hh_observe-box_a1_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0hh_observe-box_a1_p2-1_b1 dd)(not (box-at b1 p2-1))(not (box-at b2 p3-1))(box-at b0 p1-2))
	:effect (and (done-goal dd)(not (dummy-left-0hh_observe-box_a1_p2-1_b1 dd)))
)
(:action act-rpu_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0hh_observe-box_a1_p2-1_b1 dd)(box-at b1 p2-1)(not (box-at b2 p3-1))(box-at b0 p1-2)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-rpu_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-rpu_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (pre-rpu_joint-push_p2-1_p2-2_b1_a1_a3 dd))
	:effect (and (done-goal dd)(not (pre-rpu_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action act-mct_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-aio_observe-box_a3_p3-1_b2 dd)(immediate-dummy-mct_observe-box_a4_p4-2_b4 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a3 p4-2)(can-observe a3 b4))
	:observe (box-at b4 p4-2)
)
(:action act-dummy-mct_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-aio_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a3 p4-2)(can-observe a3 b4)(not (dummy-left-mct_observe-box_a4_p4-2_b4 dd))(not (dummy-right-mct_observe-box_a4_p4-2_b4 dd)))
	:effect (and (immediate-dummy-mct_observe-box_a4_p4-2_b4 dd) )
)
(:action dummy-left-mct_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-aio_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a3 p4-2)(can-observe a3 b4)(not (box-at b4 p4-2))(immediate-dummy-mct_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-mct_observe-box_a4_p4-2_b4 dd))(dummy-left-mct_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-mct_observe-box_a4_p4-2_b4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-aio_observe-box_a3_p3-1_b2 dd)(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a3 p4-2)(can-observe a3 b4)(box-at b4 p4-2)(immediate-dummy-mct_observe-box_a4_p4-2_b4 dd))
	:effect (and (not (immediate-dummy-mct_observe-box_a4_p4-2_b4 dd))(dummy-right-mct_observe-box_a4_p4-2_b4 dd))
)
(:action act-z21_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mct_observe-box_a4_p4-2_b4 dd)(immediate-dummy-z21_observe-box_a3_p2-1_b1 dd)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a3 p2-1)(can-observe a3 b1))
	:observe (box-at b1 p2-1)
)
(:action act-dummy-z21_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mct_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a3 p2-1)(can-observe a3 b1)(not (dummy-left-z21_observe-box_a3_p2-1_b1 dd))(not (dummy-right-z21_observe-box_a3_p2-1_b1 dd)))
	:effect (and (immediate-dummy-z21_observe-box_a3_p2-1_b1 dd) )
)
(:action dummy-left-z21_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mct_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a3 p2-1)(can-observe a3 b1)(not (box-at b1 p2-1))(immediate-dummy-z21_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-z21_observe-box_a3_p2-1_b1 dd))(dummy-left-z21_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-right-z21_observe-box_a3_p2-1_b1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mct_observe-box_a4_p4-2_b4 dd)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(agent-at a3 p2-1)(can-observe a3 b1)(box-at b1 p2-1)(immediate-dummy-z21_observe-box_a3_p2-1_b1 dd))
	:effect (and (not (immediate-dummy-z21_observe-box_a3_p2-1_b1 dd))(dummy-right-z21_observe-box_a3_p2-1_b1 dd))
)
(:action act-o9n_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-z21_observe-box_a3_p2-1_b1 dd)(not (box-at b1 p2-1))(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-o9n_joint-push_p3-1_p3-2_b2_a3_a4 dd))
)
(:action goal-achieve-o9n_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-o9n_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-o9n_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action act-tyw_joint-push_p2-1_p2-2_b1_a1_a3
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-z21_observe-box_a3_p2-1_b1 dd)(box-at b1 p2-1)(not (box-at b4 p4-2))(box-at b2 p3-1)(box-at b0 p1-2)(adj p2-1 p2-2)(agent-at a3 p2-1))
	:effect (and (pre-tyw_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action act-79w_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-tyw_joint-push_p2-1_p2-2_b1_a1_a3 dd)(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-79w_joint-push_p3-1_p3-2_b2_a3_a4 dd)(not (pre-tyw_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action goal-achieve-79w_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-79w_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-79w_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
(:action act-xtp_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mct_observe-box_a4_p4-2_b4 dd)(box-at b4 p4-2)(box-at b2 p3-1)(box-at b0 p1-2)(adj p3-1 p3-2)(agent-at a3 p3-1))
	:effect (and (pre-xtp_joint-push_p3-1_p3-2_b2_a3_a4 dd))
)
(:action goal-achieve-xtp_joint-push_p3-1_p3-2_b2_a3_a4
	:parameters ( ?a - agent )
	:precondition (and (pre-xtp_joint-push_p3-1_p3-2_b2_a3_a4 dd))
	:effect (and (done-goal dd)(not (pre-xtp_joint-push_p3-1_p3-2_b2_a3_a4 dd)))
)
)