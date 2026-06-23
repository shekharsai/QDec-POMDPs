(define (domain Kbox-3-a2)
(:requirements :strips :typing)
(:types pos agent box push dummy TAG_TYPE VALUE_TYPE)
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
 dd - dummy
 tag0 - TAG_TYPE ; (box-at b2 p3-1) (box-at b4 p4-1) (box-at b5 p5-1)
 tag1 - TAG_TYPE ; (box-at b2 p3-2) (box-at b4 p4-2) (box-at b5 p5-2)
 V_TRUE - VALUE_TYPE
 V_FALSE - VALUE_TYPE
)

(:predicates
(adj ?i - pos ?j - pos)
(agent-at ?a - agent ?i - pos)
(box-at ?b - box ?i - pos)
(Kbox-at ?b - box ?i - pos ?V_PARAM - VALUE_TYPE)
(KGivenbox-at ?b - box ?i - pos ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(heavy ?b - box)
(can-observe ?a - agent ?b - box)
(init-4xw_observe-box_a1_p1-2_b0 ?dd - dummy)
(immediate-dummy-4xw_observe-box_a1_p1-2_b0 ?dd - dummy)
(dummy-left-4xw_observe-box_a1_p1-2_b0 ?dd - dummy)
(immediate-dummy-saj_observe-box_a2_p2-2_b1 ?dd - dummy)
(dummy-left-saj_observe-box_a2_p2-2_b1 ?dd - dummy)
(pre-1yq_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
(pre-jr7_joint-push_p1-1_p1-2_b0_a1_a2 ?dd - dummy)
(immediate-dummy-prb_observe-box_a2_p3-1_b2 ?dd - dummy)
(dummy-left-prb_observe-box_a2_p3-1_b2 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-prb_observe-box_a2_p3-1_b2 ?dd - dummy)
(pre-hpk_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
(dummy-right-saj_observe-box_a2_p2-2_b1 ?dd - dummy)
(pre-m3o_joint-push_p1-1_p1-2_b0_a1_a2 ?dd - dummy)
(dummy-right-4xw_observe-box_a1_p1-2_b0 ?dd - dummy)
(immediate-dummy-grs_observe-box_a2_p2-2_b1 ?dd - dummy)
(dummy-left-grs_observe-box_a2_p2-2_b1 ?dd - dummy)
(pre-wrq_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
(immediate-dummy-qlx_observe-box_a2_p3-1_b2 ?dd - dummy)
(dummy-left-qlx_observe-box_a2_p3-1_b2 ?dd - dummy)
(dummy-right-qlx_observe-box_a2_p3-1_b2 ?dd - dummy)
(pre-syc_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
(dummy-right-grs_observe-box_a2_p2-2_b1 ?dd - dummy)
(immediate-dummy-1qp_observe-box_a4_p4-2_b4 ?dd - dummy)
(dummy-left-1qp_observe-box_a4_p4-2_b4 ?dd - dummy)
(immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
(dummy-left-7wm_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
(pre-wr0_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
(dummy-right-7wm_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
(dummy-right-1qp_observe-box_a4_p4-2_b4 ?dd - dummy)
(immediate-dummy-l0x_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-left-l0x_observe-box_a5_p5-2_b5 ?dd - dummy)
(immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
(dummy-left-hlc_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
(pre-bbi_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
(dummy-right-hlc_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
(dummy-right-l0x_observe-box_a5_p5-2_b5 ?dd - dummy)
(immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 ?dd - dummy)
(dummy-left-3tw_observe-box-qyt_a4_p3-1_b2 ?dd - dummy)
(dummy-right-3tw_observe-box-qyt_a4_p3-1_b2 ?dd - dummy)
(pre-lyf_joint-push_p3-1_p3-2_b2_a2_a4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-4xw_observe-box_a1_p1-2_b0-T
:parameters ( ?a - agent)
:precondition 
(and (init-4xw_observe-box_a1_p1-2_b0 dd) (immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd) (agent-at a2 p1-2) (box-at b0 p1-2) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_TRUE))
)
(:action act-4xw_observe-box_a1_p1-2_b0-F
:parameters ( ?a - agent)
:precondition 
(and (init-4xw_observe-box_a1_p1-2_b0 dd) (immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd) (agent-at a2 p1-2) (not (box-at b0 p1-2)) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_FALSE))
)
(:action act-dummy-4xw_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (init-4xw_observe-box_a1_p1-2_b0 dd) (not (dummy-left-4xw_observe-box_a1_p1-2_b0 dd)) (not (dummy-right-4xw_observe-box_a1_p1-2_b0 dd)))
:effect 
(and (immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-left-4xw_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (init-4xw_observe-box_a1_p1-2_b0 dd) (agent-at a2 p1-2) (not (box-at b0 p1-2)) (immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (not (init-4xw_observe-box_a1_p1-2_b0 dd)) (not (immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd)) (dummy-left-4xw_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-4xw_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (init-4xw_observe-box_a1_p1-2_b0 dd) (agent-at a2 p1-2) (box-at b0 p1-2) (immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (not (init-4xw_observe-box_a1_p1-2_b0 dd)) (not (immediate-dummy-4xw_observe-box_a1_p1-2_b0 dd)) (dummy-right-4xw_observe-box_a1_p1-2_b0 dd))
)
(:action act-saj_observe-box_a2_p2-2_b1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4xw_observe-box_a1_p1-2_b0 dd) (immediate-dummy-saj_observe-box_a2_p2-2_b1 dd) (not (box-at b0 p1-2)) (agent-at a2 p2-2) (Kbox-at b0 p1-2 V_FALSE) (box-at b1 p2-2) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_TRUE))
)
(:action act-saj_observe-box_a2_p2-2_b1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4xw_observe-box_a1_p1-2_b0 dd) (immediate-dummy-saj_observe-box_a2_p2-2_b1 dd) (not (box-at b0 p1-2)) (agent-at a2 p2-2) (Kbox-at b0 p1-2 V_FALSE) (not (box-at b1 p2-2)) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_FALSE))
)
(:action act-dummy-saj_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4xw_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (agent-at a2 p2-2) (not (dummy-left-saj_observe-box_a2_p2-2_b1 dd)) (not (dummy-right-saj_observe-box_a2_p2-2_b1 dd)) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (immediate-dummy-saj_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-left-saj_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4xw_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (agent-at a2 p2-2) (not (box-at b1 p2-2)) (immediate-dummy-saj_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-2 V_FALSE))
:effect 
(and (not (immediate-dummy-saj_observe-box_a2_p2-2_b1 dd)) (dummy-left-saj_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-saj_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4xw_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (agent-at a2 p2-2) (box-at b1 p2-2) (immediate-dummy-saj_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE))
:effect 
(and (not (immediate-dummy-saj_observe-box_a2_p2-2_b1 dd)) (dummy-right-saj_observe-box_a2_p2-2_b1 dd))
)
(:action act-1yq_joint-push_p2-1_p2-2_b1_a2_a3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-saj_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-2)) (agent-at a2 p2-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (pre-1yq_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action act-jr7_joint-push_p1-1_p1-2_b0_a1_a2
:parameters ( ?a - agent)
:precondition 
(and (pre-1yq_joint-push_p2-1_p2-2_b1_a2_a3 dd) (agent-at a2 p1-1))
:effect 
(and (pre-jr7_joint-push_p1-1_p1-2_b0_a1_a2 dd) (not (pre-1yq_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
(:action act-prb_observe-box_a2_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (pre-jr7_joint-push_p1-1_p1-2_b0_a1_a2 dd) (immediate-dummy-prb_observe-box_a2_p3-1_b2 dd) (agent-at a2 p3-1) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-prb_observe-box_a2_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (pre-jr7_joint-push_p1-1_p1-2_b0_a1_a2 dd) (immediate-dummy-prb_observe-box_a2_p3-1_b2 dd) (agent-at a2 p3-1) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-prb_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (pre-jr7_joint-push_p1-1_p1-2_b0_a1_a2 dd) (agent-at a2 p3-1) (not (dummy-left-prb_observe-box_a2_p3-1_b2 dd)) (not (dummy-right-prb_observe-box_a2_p3-1_b2 dd)))
:effect 
(and (immediate-dummy-prb_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-left-prb_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (agent-at a2 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-prb_observe-box_a2_p3-1_b2 dd) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-prb_observe-box_a2_p3-1_b2 dd)) (dummy-left-prb_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-prb_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (agent-at a2 p3-1) (box-at b2 p3-1) (immediate-dummy-prb_observe-box_a2_p3-1_b2 dd) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-prb_observe-box_a2_p3-1_b2 dd)) (dummy-right-prb_observe-box_a2_p3-1_b2 dd))
)
(:action goal-achieve-left-prb_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-prb_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-prb_observe-box_a2_p3-1_b2 dd)))
)
(:action act-hpk_joint-push_p3-1_p3-2_b2_a2_a4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-prb_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (agent-at a2 p3-1) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (pre-hpk_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-hpk_joint-push_p3-1_p3-2_b2_a2_a4
:parameters ( ?a - agent)
:precondition 
(and (pre-hpk_joint-push_p3-1_p3-2_b2_a2_a4 dd))
:effect 
(and (done-goal dd) (not (pre-hpk_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
(:action act-m3o_joint-push_p1-1_p1-2_b0_a1_a2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-saj_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a2 p1-1) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (pre-m3o_joint-push_p1-1_p1-2_b0_a1_a2 dd))
)
(:action goal-achieve-m3o_joint-push_p1-1_p1-2_b0_a1_a2
:parameters ( ?a - agent)
:precondition 
(and (pre-m3o_joint-push_p1-1_p1-2_b0_a1_a2 dd))
:effect 
(and (done-goal dd) (not (pre-m3o_joint-push_p1-1_p1-2_b0_a1_a2 dd)))
)
(:action act-grs_observe-box_a2_p2-2_b1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4xw_observe-box_a1_p1-2_b0 dd) (immediate-dummy-grs_observe-box_a2_p2-2_b1 dd) (box-at b0 p1-2) (agent-at a2 p2-2) (Kbox-at b0 p1-2 V_TRUE) (box-at b1 p2-2) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_TRUE))
)
(:action act-grs_observe-box_a2_p2-2_b1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4xw_observe-box_a1_p1-2_b0 dd) (immediate-dummy-grs_observe-box_a2_p2-2_b1 dd) (box-at b0 p1-2) (agent-at a2 p2-2) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b1 p2-2)) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_FALSE))
)
(:action act-dummy-grs_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4xw_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (agent-at a2 p2-2) (not (dummy-left-grs_observe-box_a2_p2-2_b1 dd)) (not (dummy-right-grs_observe-box_a2_p2-2_b1 dd)) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-grs_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-left-grs_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4xw_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (agent-at a2 p2-2) (not (box-at b1 p2-2)) (immediate-dummy-grs_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-2 V_FALSE))
:effect 
(and (not (immediate-dummy-grs_observe-box_a2_p2-2_b1 dd)) (dummy-left-grs_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-grs_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4xw_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (agent-at a2 p2-2) (box-at b1 p2-2) (immediate-dummy-grs_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE))
:effect 
(and (not (immediate-dummy-grs_observe-box_a2_p2-2_b1 dd)) (dummy-right-grs_observe-box_a2_p2-2_b1 dd))
)
(:action act-wrq_joint-push_p2-1_p2-2_b1_a2_a3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-grs_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a2 p2-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (pre-wrq_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action act-qlx_observe-box_a2_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (pre-wrq_joint-push_p2-1_p2-2_b1_a2_a3 dd) (immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd) (agent-at a2 p3-1) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-qlx_observe-box_a2_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (pre-wrq_joint-push_p2-1_p2-2_b1_a2_a3 dd) (immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd) (agent-at a2 p3-1) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-qlx_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (pre-wrq_joint-push_p2-1_p2-2_b1_a2_a3 dd) (agent-at a2 p3-1) (not (dummy-left-qlx_observe-box_a2_p3-1_b2 dd)) (not (dummy-right-qlx_observe-box_a2_p3-1_b2 dd)))
:effect 
(and (immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-left-qlx_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (agent-at a2 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd)) (dummy-left-qlx_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-qlx_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (agent-at a2 p3-1) (box-at b2 p3-1) (immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-qlx_observe-box_a2_p3-1_b2 dd)) (dummy-right-qlx_observe-box_a2_p3-1_b2 dd))
)
(:action goal-achieve-left-qlx_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qlx_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-qlx_observe-box_a2_p3-1_b2 dd)))
)
(:action act-syc_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qlx_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (agent-at a2 p3-1) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (pre-syc_joint-push_p3-1_p3-2_b2_a2_a5 dd))
)
(:action goal-achieve-syc_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-syc_joint-push_p3-1_p3-2_b2_a2_a5 dd))
:effect 
(and (done-goal dd) (not (pre-syc_joint-push_p3-1_p3-2_b2_a2_a5 dd)))
)
(:action act-1qp_observe-box_a4_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-grs_observe-box_a2_p2-2_b1 dd) (immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p4-2) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-1qp_observe-box_a4_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-grs_observe-box_a2_p2-2_b1 dd) (immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p4-2) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-1qp_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-grs_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p4-2) (not (dummy-left-1qp_observe-box_a4_p4-2_b4 dd)) (not (dummy-right-1qp_observe-box_a4_p4-2_b4 dd)) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-left-1qp_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-grs_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd)) (dummy-left-1qp_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-1qp_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-grs_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p4-2) (box-at b4 p4-2) (immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-1qp_observe-box_a4_p4-2_b4 dd)) (dummy-right-1qp_observe-box_a4_p4-2_b4 dd))
)
(:action act-7wm_observe-box-5gx_a2_p3-2_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1qp_observe-box_a4_p4-2_b4 dd) (immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-2) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (box-at b2 p3-2) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_TRUE))
)
(:action act-7wm_observe-box-5gx_a2_p3-2_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1qp_observe-box_a4_p4-2_b4 dd) (immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-2) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b2 p3-2)) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_FALSE))
)
(:action act-dummy-7wm_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1qp_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-2) (not (dummy-left-7wm_observe-box-5gx_a2_p3-2_b2 dd)) (not (dummy-right-7wm_observe-box-5gx_a2_p3-2_b2 dd)) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action dummy-left-7wm_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1qp_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-2) (not (box-at b2 p3-2)) (immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b2 p3-2 V_FALSE))
:effect 
(and (not (immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd)) (dummy-left-7wm_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action dummy-right-7wm_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1qp_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-2) (box-at b2 p3-2) (immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b2 p3-2 V_TRUE))
:effect 
(and (not (immediate-dummy-7wm_observe-box-5gx_a2_p3-2_b2 dd)) (dummy-right-7wm_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action act-wr0_joint-push_p3-1_p3-2_b2_a2_a4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7wm_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (pre-wr0_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-wr0_joint-push_p3-1_p3-2_b2_a2_a4
:parameters ( ?a - agent)
:precondition 
(and (pre-wr0_joint-push_p3-1_p3-2_b2_a2_a4 dd))
:effect 
(and (done-goal dd) (not (pre-wr0_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
(:action goal-achieve-right-7wm_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7wm_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-7wm_observe-box-5gx_a2_p3-2_b2 dd)))
)
(:action act-l0x_observe-box_a5_p5-2_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1qp_observe-box_a4_p4-2_b4 dd) (immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p5-2) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (box-at b5 p5-2) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_TRUE))
)
(:action act-l0x_observe-box_a5_p5-2_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1qp_observe-box_a4_p4-2_b4 dd) (immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p5-2) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b5 p5-2)) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_FALSE))
)
(:action act-dummy-l0x_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1qp_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p5-2) (not (dummy-left-l0x_observe-box_a5_p5-2_b5 dd)) (not (dummy-right-l0x_observe-box_a5_p5-2_b5 dd)) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-left-l0x_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1qp_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p5-2) (not (box-at b5 p5-2)) (immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b5 p5-2 V_FALSE))
:effect 
(and (not (immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd)) (dummy-left-l0x_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-right-l0x_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1qp_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p5-2) (box-at b5 p5-2) (immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b5 p5-2 V_TRUE))
:effect 
(and (not (immediate-dummy-l0x_observe-box_a5_p5-2_b5 dd)) (dummy-right-l0x_observe-box_a5_p5-2_b5 dd))
)
(:action act-hlc_observe-box-5gx_a2_p3-2_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l0x_observe-box_a5_p5-2_b5 dd) (immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-2) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (box-at b2 p3-2) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_TRUE))
)
(:action act-hlc_observe-box-5gx_a2_p3-2_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l0x_observe-box_a5_p5-2_b5 dd) (immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-2) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b2 p3-2)) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_FALSE))
)
(:action act-dummy-hlc_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l0x_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-2) (not (dummy-left-hlc_observe-box-5gx_a2_p3-2_b2 dd)) (not (dummy-right-hlc_observe-box-5gx_a2_p3-2_b2 dd)) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action dummy-left-hlc_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l0x_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-2) (not (box-at b2 p3-2)) (immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b2 p3-2 V_FALSE))
:effect 
(and (not (immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd)) (dummy-left-hlc_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action dummy-right-hlc_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l0x_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-2) (box-at b2 p3-2) (immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b2 p3-2 V_TRUE))
:effect 
(and (not (immediate-dummy-hlc_observe-box-5gx_a2_p3-2_b2 dd)) (dummy-right-hlc_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action act-bbi_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hlc_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-1) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (pre-bbi_joint-push_p3-1_p3-2_b2_a2_a5 dd))
)
(:action goal-achieve-bbi_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-bbi_joint-push_p3-1_p3-2_b2_a2_a5 dd))
:effect 
(and (done-goal dd) (not (pre-bbi_joint-push_p3-1_p3-2_b2_a2_a5 dd)))
)
(:action goal-achieve-right-hlc_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hlc_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-hlc_observe-box-5gx_a2_p3-2_b2 dd)))
)
(:action act-3tw_observe-box-qyt_a4_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l0x_observe-box_a5_p5-2_b5 dd) (immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd) (box-at b5 p5-2) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-1) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-3tw_observe-box-qyt_a4_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l0x_observe-box_a5_p5-2_b5 dd) (immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd) (box-at b5 p5-2) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-1) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-3tw_observe-box-qyt_a4_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l0x_observe-box_a5_p5-2_b5 dd) (box-at b5 p5-2) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-1) (not (dummy-left-3tw_observe-box-qyt_a4_p3-1_b2 dd)) (not (dummy-right-3tw_observe-box-qyt_a4_p3-1_b2 dd)) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd))
)
(:action dummy-left-3tw_observe-box-qyt_a4_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l0x_observe-box_a5_p5-2_b5 dd) (box-at b5 p5-2) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd)) (dummy-left-3tw_observe-box-qyt_a4_p3-1_b2 dd))
)
(:action dummy-right-3tw_observe-box-qyt_a4_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l0x_observe-box_a5_p5-2_b5 dd) (box-at b5 p5-2) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-1) (box-at b2 p3-1) (immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-3tw_observe-box-qyt_a4_p3-1_b2 dd)) (dummy-right-3tw_observe-box-qyt_a4_p3-1_b2 dd))
)
(:action goal-achieve-left-3tw_observe-box-qyt_a4_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3tw_observe-box-qyt_a4_p3-1_b2 dd) (box-at b5 p5-2) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-3tw_observe-box-qyt_a4_p3-1_b2 dd)))
)
(:action act-lyf_joint-push_p3-1_p3-2_b2_a2_a4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3tw_observe-box-qyt_a4_p3-1_b2 dd) (box-at b5 p5-2) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a2 p3-1) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (pre-lyf_joint-push_p3-1_p3-2_b2_a2_a4 dd))
)
(:action goal-achieve-lyf_joint-push_p3-1_p3-2_b2_a2_a4
:parameters ( ?a - agent)
:precondition 
(and (pre-lyf_joint-push_p3-1_p3-2_b2_a2_a4 dd))
:effect 
(and (done-goal dd) (not (pre-lyf_joint-push_p3-1_p3-2_b2_a2_a4 dd)))
)
(:action Merge-box-at
:parameters ( ?b - box ?i - pos ?V_PARAM - VALUE_TYPE)
:precondition 
(and (not (Kbox-at ?b ?i ?V_PARAM)) 
	(or (KGivenbox-at ?b ?i tag0 ?V_PARAM) (KNot tag0))
	(or (KGivenbox-at ?b ?i tag1 ?V_PARAM) (KNot tag1)))
:effect 
(and (Kbox-at ?b ?i ?V_PARAM))
)

(:action RefuteT-box-at
:parameters ( ?b - box ?i - pos ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenbox-at ?b ?i ?TAG_PARAM V_TRUE) (Kbox-at ?b ?i V_TRUE) (not (box-at ?b ?i)))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action RefuteF-box-at
:parameters ( ?b - box ?i - pos ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenbox-at ?b ?i ?TAG_PARAM V_FALSE) (Kbox-at ?b ?i V_TRUE) (box-at ?b ?i))
:effect 
(and (KNot ?TAG_PARAM))
)

)
