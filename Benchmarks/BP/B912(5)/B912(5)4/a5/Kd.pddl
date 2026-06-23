(define (domain Kbox-3-a5)
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
 a5 - agent
 dd - dummy
 tag0 - TAG_TYPE ; (box-at b2 p3-2) (box-at b4 p4-2)
 tag1 - TAG_TYPE ; (box-at b2 p3-1) (box-at b4 p4-1)
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
(init-mxa_observe-box_a1_p1-2_b0 ?dd - dummy)
(immediate-dummy-mxa_observe-box_a1_p1-2_b0 ?dd - dummy)
(dummy-left-mxa_observe-box_a1_p1-2_b0 ?dd - dummy)
(immediate-dummy-2oc_observe-box_a2_p2-2_b1 ?dd - dummy)
(dummy-left-2oc_observe-box_a2_p2-2_b1 ?dd - dummy)
(immediate-dummy-io3_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-left-io3_observe-box_a5_p5-2_b5 ?dd - dummy)
(pre-94g_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-io3_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-right-2oc_observe-box_a2_p2-2_b1 ?dd - dummy)
(immediate-dummy-3cg_observe-box_a4_p4-2_b4 ?dd - dummy)
(dummy-left-3cg_observe-box_a4_p4-2_b4 ?dd - dummy)
(immediate-dummy-l1n_observe-box-un8_a5_p5-1_b5 ?dd - dummy)
(dummy-left-l1n_observe-box-un8_a5_p5-1_b5 ?dd - dummy)
(immediate-dummy-6an_observe-box_a4_p3-2_b2 ?dd - dummy)
(dummy-left-6an_observe-box_a4_p3-2_b2 ?dd - dummy)
(pre-kwu_joint-push_p3-1_p3-2_b2_a4_a5 ?dd - dummy)
(dummy-right-6an_observe-box_a4_p3-2_b2 ?dd - dummy)
(dummy-right-l1n_observe-box-un8_a5_p5-1_b5 ?dd - dummy)
(pre-hra_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(pre-ri1_one-push_p4-1_p4-2_b4_a5 ?dd - dummy)
(immediate-dummy-qih_observe-box_a5_p3-1_b2 ?dd - dummy)
(dummy-left-qih_observe-box_a5_p3-1_b2 ?dd - dummy)
(dummy-right-qih_observe-box_a5_p3-1_b2 ?dd - dummy)
(pre-y9v_joint-push_p3-1_p3-2_b2_a4_a5 ?dd - dummy)
(dummy-right-3cg_observe-box_a4_p4-2_b4 ?dd - dummy)
(immediate-dummy-5z8_observe-box-un8_a5_p5-1_b5 ?dd - dummy)
(dummy-left-5z8_observe-box-un8_a5_p5-1_b5 ?dd - dummy)
(immediate-dummy-yeu_observe-box-qyt_a4_p3-1_b2 ?dd - dummy)
(dummy-left-yeu_observe-box-qyt_a4_p3-1_b2 ?dd - dummy)
(dummy-right-yeu_observe-box-qyt_a4_p3-1_b2 ?dd - dummy)
(pre-u9l_joint-push_p3-1_p3-2_b2_a4_a5 ?dd - dummy)
(dummy-right-5z8_observe-box-un8_a5_p5-1_b5 ?dd - dummy)
(pre-un7_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(immediate-dummy-z95_observe-box_a5_p3-1_b2 ?dd - dummy)
(dummy-left-z95_observe-box_a5_p3-1_b2 ?dd - dummy)
(dummy-right-z95_observe-box_a5_p3-1_b2 ?dd - dummy)
(pre-0be_joint-push_p3-1_p3-2_b2_a4_a5 ?dd - dummy)
(dummy-right-mxa_observe-box_a1_p1-2_b0 ?dd - dummy)
(immediate-dummy-fcb_observe-box_a2_p2-2_b1 ?dd - dummy)
(dummy-left-fcb_observe-box_a2_p2-2_b1 ?dd - dummy)
(immediate-dummy-pu6_observe-box-un8_a5_p5-1_b5 ?dd - dummy)
(dummy-left-pu6_observe-box-un8_a5_p5-1_b5 ?dd - dummy)
(immediate-dummy-c1g_observe-box_a2_p3-1_b2 ?dd - dummy)
(dummy-left-c1g_observe-box_a2_p3-1_b2 ?dd - dummy)
(immediate-dummy-bsw_observe-box_a4_p4-2_b4 ?dd - dummy)
(dummy-left-bsw_observe-box_a4_p4-2_b4 ?dd - dummy)
(pre-9ed_one-push_p4-1_p4-2_b4_a5 ?dd - dummy)
(dummy-right-bsw_observe-box_a4_p4-2_b4 ?dd - dummy)
(dummy-right-c1g_observe-box_a2_p3-1_b2 ?dd - dummy)
(dummy-right-pu6_observe-box-un8_a5_p5-1_b5 ?dd - dummy)
(pre-vqc_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(immediate-dummy-oh5_observe-box_a2_p3-1_b2 ?dd - dummy)
(dummy-left-oh5_observe-box_a2_p3-1_b2 ?dd - dummy)
(immediate-dummy-3zx_observe-box_a5_p4-2_b4 ?dd - dummy)
(dummy-left-3zx_observe-box_a5_p4-2_b4 ?dd - dummy)
(pre-jxd_one-push_p4-1_p4-2_b4_a5 ?dd - dummy)
(dummy-right-3zx_observe-box_a5_p4-2_b4 ?dd - dummy)
(dummy-right-oh5_observe-box_a2_p3-1_b2 ?dd - dummy)
(immediate-dummy-c1j_observe-box_a5_p4-1_b4 ?dd - dummy)
(dummy-left-c1j_observe-box_a5_p4-1_b4 ?dd - dummy)
(pre-5zg_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
(dummy-right-c1j_observe-box_a5_p4-1_b4 ?dd - dummy)
(pre-cs6_one-push_p4-1_p4-2_b4_a5 ?dd - dummy)
(pre-upe_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
(dummy-right-fcb_observe-box_a2_p2-2_b1 ?dd - dummy)
(immediate-dummy-bwn_observe-box_a4_p4-2_b4 ?dd - dummy)
(dummy-left-bwn_observe-box_a4_p4-2_b4 ?dd - dummy)
(immediate-dummy-nsq_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-left-nsq_observe-box_a5_p5-2_b5 ?dd - dummy)
(pre-zvj_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(dummy-right-nsq_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-right-bwn_observe-box_a4_p4-2_b4 ?dd - dummy)
(immediate-dummy-4es_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-left-4es_observe-box_a5_p5-2_b5 ?dd - dummy)
(immediate-dummy-3m3_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
(dummy-left-3m3_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
(pre-jmn_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(pre-og7_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
(dummy-right-3m3_observe-box-5gx_a2_p3-2_b2 ?dd - dummy)
(pre-299_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(dummy-right-4es_observe-box_a5_p5-2_b5 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-mxa_observe-box_a1_p1-2_b0-T
:parameters ( ?a - agent)
:precondition 
(and (init-mxa_observe-box_a1_p1-2_b0 dd) (immediate-dummy-mxa_observe-box_a1_p1-2_b0 dd) (agent-at a5 p1-2) (box-at b0 p1-2) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_TRUE))
)
(:action act-mxa_observe-box_a1_p1-2_b0-F
:parameters ( ?a - agent)
:precondition 
(and (init-mxa_observe-box_a1_p1-2_b0 dd) (immediate-dummy-mxa_observe-box_a1_p1-2_b0 dd) (agent-at a5 p1-2) (not (box-at b0 p1-2)) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_FALSE))
)
(:action act-dummy-mxa_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (init-mxa_observe-box_a1_p1-2_b0 dd) (not (dummy-left-mxa_observe-box_a1_p1-2_b0 dd)) (not (dummy-right-mxa_observe-box_a1_p1-2_b0 dd)))
:effect 
(and (immediate-dummy-mxa_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-left-mxa_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (init-mxa_observe-box_a1_p1-2_b0 dd) (agent-at a5 p1-2) (not (box-at b0 p1-2)) (immediate-dummy-mxa_observe-box_a1_p1-2_b0 dd) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (not (init-mxa_observe-box_a1_p1-2_b0 dd)) (not (immediate-dummy-mxa_observe-box_a1_p1-2_b0 dd)) (dummy-left-mxa_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-mxa_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (init-mxa_observe-box_a1_p1-2_b0 dd) (agent-at a5 p1-2) (box-at b0 p1-2) (immediate-dummy-mxa_observe-box_a1_p1-2_b0 dd) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (not (init-mxa_observe-box_a1_p1-2_b0 dd)) (not (immediate-dummy-mxa_observe-box_a1_p1-2_b0 dd)) (dummy-right-mxa_observe-box_a1_p1-2_b0 dd))
)
(:action act-2oc_observe-box_a2_p2-2_b1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mxa_observe-box_a1_p1-2_b0 dd) (immediate-dummy-2oc_observe-box_a2_p2-2_b1 dd) (not (box-at b0 p1-2)) (agent-at a5 p2-2) (Kbox-at b0 p1-2 V_FALSE) (box-at b1 p2-2) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_TRUE))
)
(:action act-2oc_observe-box_a2_p2-2_b1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mxa_observe-box_a1_p1-2_b0 dd) (immediate-dummy-2oc_observe-box_a2_p2-2_b1 dd) (not (box-at b0 p1-2)) (agent-at a5 p2-2) (Kbox-at b0 p1-2 V_FALSE) (not (box-at b1 p2-2)) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_FALSE))
)
(:action act-dummy-2oc_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mxa_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (agent-at a5 p2-2) (not (dummy-left-2oc_observe-box_a2_p2-2_b1 dd)) (not (dummy-right-2oc_observe-box_a2_p2-2_b1 dd)) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (immediate-dummy-2oc_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-left-2oc_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mxa_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (agent-at a5 p2-2) (not (box-at b1 p2-2)) (immediate-dummy-2oc_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-2 V_FALSE))
:effect 
(and (not (immediate-dummy-2oc_observe-box_a2_p2-2_b1 dd)) (dummy-left-2oc_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-2oc_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mxa_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (agent-at a5 p2-2) (box-at b1 p2-2) (immediate-dummy-2oc_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE))
:effect 
(and (not (immediate-dummy-2oc_observe-box_a2_p2-2_b1 dd)) (dummy-right-2oc_observe-box_a2_p2-2_b1 dd))
)
(:action act-io3_observe-box_a5_p5-2_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2oc_observe-box_a2_p2-2_b1 dd) (immediate-dummy-io3_observe-box_a5_p5-2_b5 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-2)) (agent-at a5 p5-2) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_FALSE) (box-at b5 p5-2) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_TRUE))
)
(:action act-io3_observe-box_a5_p5-2_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2oc_observe-box_a2_p2-2_b1 dd) (immediate-dummy-io3_observe-box_a5_p5-2_b5 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-2)) (agent-at a5 p5-2) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_FALSE) (not (box-at b5 p5-2)) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_FALSE))
)
(:action act-dummy-io3_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2oc_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-2)) (agent-at a5 p5-2) (not (dummy-left-io3_observe-box_a5_p5-2_b5 dd)) (not (dummy-right-io3_observe-box_a5_p5-2_b5 dd)) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (immediate-dummy-io3_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-left-io3_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2oc_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-2)) (agent-at a5 p5-2) (not (box-at b5 p5-2)) (immediate-dummy-io3_observe-box_a5_p5-2_b5 dd) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b5 p5-2 V_FALSE))
:effect 
(and (not (immediate-dummy-io3_observe-box_a5_p5-2_b5 dd)) (dummy-left-io3_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-right-io3_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2oc_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-2)) (agent-at a5 p5-2) (box-at b5 p5-2) (immediate-dummy-io3_observe-box_a5_p5-2_b5 dd) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b5 p5-2 V_TRUE))
:effect 
(and (not (immediate-dummy-io3_observe-box_a5_p5-2_b5 dd)) (dummy-right-io3_observe-box_a5_p5-2_b5 dd))
)
(:action act-94g_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-io3_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (not (box-at b1 p2-2)) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (pre-94g_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action goal-achieve-94g_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-94g_joint-push_p5-1_p5-2_b5_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-94g_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-right-io3_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-io3_observe-box_a5_p5-2_b5 dd) (box-at b5 p5-2) (not (box-at b1 p2-2)) (not (box-at b0 p1-2)) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-io3_observe-box_a5_p5-2_b5 dd)))
)
(:action act-3cg_observe-box_a4_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2oc_observe-box_a2_p2-2_b1 dd) (immediate-dummy-3cg_observe-box_a4_p4-2_b4 dd) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p4-2) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-3cg_observe-box_a4_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2oc_observe-box_a2_p2-2_b1 dd) (immediate-dummy-3cg_observe-box_a4_p4-2_b4 dd) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p4-2) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-3cg_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2oc_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p4-2) (not (dummy-left-3cg_observe-box_a4_p4-2_b4 dd)) (not (dummy-right-3cg_observe-box_a4_p4-2_b4 dd)) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (immediate-dummy-3cg_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-left-3cg_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2oc_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-3cg_observe-box_a4_p4-2_b4 dd) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-3cg_observe-box_a4_p4-2_b4 dd)) (dummy-left-3cg_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-3cg_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2oc_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p4-2) (box-at b4 p4-2) (immediate-dummy-3cg_observe-box_a4_p4-2_b4 dd) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-3cg_observe-box_a4_p4-2_b4 dd)) (dummy-right-3cg_observe-box_a4_p4-2_b4 dd))
)
(:action act-l1n_observe-box-un8_a5_p5-1_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3cg_observe-box_a4_p4-2_b4 dd) (immediate-dummy-l1n_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (box-at b5 p5-1) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_TRUE))
)
(:action act-l1n_observe-box-un8_a5_p5-1_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3cg_observe-box_a4_p4-2_b4 dd) (immediate-dummy-l1n_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (not (box-at b5 p5-1)) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_FALSE))
)
(:action act-dummy-l1n_observe-box-un8_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3cg_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (not (dummy-left-l1n_observe-box-un8_a5_p5-1_b5 dd)) (not (dummy-right-l1n_observe-box-un8_a5_p5-1_b5 dd)) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (immediate-dummy-l1n_observe-box-un8_a5_p5-1_b5 dd))
)
(:action dummy-left-l1n_observe-box-un8_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3cg_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (not (box-at b5 p5-1)) (immediate-dummy-l1n_observe-box-un8_a5_p5-1_b5 dd) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b5 p5-1 V_FALSE))
:effect 
(and (not (immediate-dummy-l1n_observe-box-un8_a5_p5-1_b5 dd)) (dummy-left-l1n_observe-box-un8_a5_p5-1_b5 dd))
)
(:action dummy-right-l1n_observe-box-un8_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3cg_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (box-at b5 p5-1) (immediate-dummy-l1n_observe-box-un8_a5_p5-1_b5 dd) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b5 p5-1 V_TRUE))
:effect 
(and (not (immediate-dummy-l1n_observe-box-un8_a5_p5-1_b5 dd)) (dummy-right-l1n_observe-box-un8_a5_p5-1_b5 dd))
)
(:action act-6an_observe-box_a4_p3-2_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l1n_observe-box-un8_a5_p5-1_b5 dd) (immediate-dummy-6an_observe-box_a4_p3-2_b2 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-2) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (box-at b2 p3-2) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_TRUE))
)
(:action act-6an_observe-box_a4_p3-2_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l1n_observe-box-un8_a5_p5-1_b5 dd) (immediate-dummy-6an_observe-box_a4_p3-2_b2 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-2) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (not (box-at b2 p3-2)) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_FALSE))
)
(:action act-dummy-6an_observe-box_a4_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l1n_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-2) (not (dummy-left-6an_observe-box_a4_p3-2_b2 dd)) (not (dummy-right-6an_observe-box_a4_p3-2_b2 dd)) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (immediate-dummy-6an_observe-box_a4_p3-2_b2 dd))
)
(:action dummy-left-6an_observe-box_a4_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l1n_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-2) (not (box-at b2 p3-2)) (immediate-dummy-6an_observe-box_a4_p3-2_b2 dd) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b2 p3-2 V_FALSE))
:effect 
(and (not (immediate-dummy-6an_observe-box_a4_p3-2_b2 dd)) (dummy-left-6an_observe-box_a4_p3-2_b2 dd))
)
(:action dummy-right-6an_observe-box_a4_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l1n_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-2) (box-at b2 p3-2) (immediate-dummy-6an_observe-box_a4_p3-2_b2 dd) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b2 p3-2 V_TRUE))
:effect 
(and (not (immediate-dummy-6an_observe-box_a4_p3-2_b2 dd)) (dummy-right-6an_observe-box_a4_p3-2_b2 dd))
)
(:action act-kwu_joint-push_p3-1_p3-2_b2_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6an_observe-box_a4_p3-2_b2 dd) (not (box-at b2 p3-2)) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-1) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (pre-kwu_joint-push_p3-1_p3-2_b2_a4_a5 dd))
)
(:action goal-achieve-kwu_joint-push_p3-1_p3-2_b2_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-kwu_joint-push_p3-1_p3-2_b2_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-kwu_joint-push_p3-1_p3-2_b2_a4_a5 dd)))
)
(:action goal-achieve-right-6an_observe-box_a4_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-6an_observe-box_a4_p3-2_b2 dd) (box-at b2 p3-2) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (Kbox-at b2 p3-2 V_TRUE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-6an_observe-box_a4_p3-2_b2 dd)))
)
(:action act-hra_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l1n_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (pre-hra_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action act-ri1_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-hra_joint-push_p5-1_p5-2_b5_a4_a5 dd) (agent-at a5 p4-1))
:effect 
(and (pre-ri1_one-push_p4-1_p4-2_b4_a5 dd) (not (pre-hra_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action act-qih_observe-box_a5_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (pre-ri1_one-push_p4-1_p4-2_b4_a5 dd) (immediate-dummy-qih_observe-box_a5_p3-1_b2 dd) (agent-at a5 p3-1) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-qih_observe-box_a5_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (pre-ri1_one-push_p4-1_p4-2_b4_a5 dd) (immediate-dummy-qih_observe-box_a5_p3-1_b2 dd) (agent-at a5 p3-1) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-qih_observe-box_a5_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (pre-ri1_one-push_p4-1_p4-2_b4_a5 dd) (agent-at a5 p3-1) (not (dummy-left-qih_observe-box_a5_p3-1_b2 dd)) (not (dummy-right-qih_observe-box_a5_p3-1_b2 dd)))
:effect 
(and (immediate-dummy-qih_observe-box_a5_p3-1_b2 dd))
)
(:action dummy-left-qih_observe-box_a5_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (agent-at a5 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-qih_observe-box_a5_p3-1_b2 dd) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-qih_observe-box_a5_p3-1_b2 dd)) (dummy-left-qih_observe-box_a5_p3-1_b2 dd))
)
(:action dummy-right-qih_observe-box_a5_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (agent-at a5 p3-1) (box-at b2 p3-1) (immediate-dummy-qih_observe-box_a5_p3-1_b2 dd) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-qih_observe-box_a5_p3-1_b2 dd)) (dummy-right-qih_observe-box_a5_p3-1_b2 dd))
)
(:action goal-achieve-left-qih_observe-box_a5_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qih_observe-box_a5_p3-1_b2 dd) (not (box-at b2 p3-1)) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-qih_observe-box_a5_p3-1_b2 dd)))
)
(:action act-y9v_joint-push_p3-1_p3-2_b2_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qih_observe-box_a5_p3-1_b2 dd) (box-at b2 p3-1) (agent-at a5 p3-1) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (pre-y9v_joint-push_p3-1_p3-2_b2_a4_a5 dd))
)
(:action goal-achieve-y9v_joint-push_p3-1_p3-2_b2_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-y9v_joint-push_p3-1_p3-2_b2_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-y9v_joint-push_p3-1_p3-2_b2_a4_a5 dd)))
)
(:action act-5z8_observe-box-un8_a5_p5-1_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3cg_observe-box_a4_p4-2_b4 dd) (immediate-dummy-5z8_observe-box-un8_a5_p5-1_b5 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (box-at b5 p5-1) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_TRUE))
)
(:action act-5z8_observe-box-un8_a5_p5-1_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3cg_observe-box_a4_p4-2_b4 dd) (immediate-dummy-5z8_observe-box-un8_a5_p5-1_b5 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (not (box-at b5 p5-1)) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_FALSE))
)
(:action act-dummy-5z8_observe-box-un8_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3cg_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (not (dummy-left-5z8_observe-box-un8_a5_p5-1_b5 dd)) (not (dummy-right-5z8_observe-box-un8_a5_p5-1_b5 dd)) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (immediate-dummy-5z8_observe-box-un8_a5_p5-1_b5 dd))
)
(:action dummy-left-5z8_observe-box-un8_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3cg_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (not (box-at b5 p5-1)) (immediate-dummy-5z8_observe-box-un8_a5_p5-1_b5 dd) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b5 p5-1 V_FALSE))
:effect 
(and (not (immediate-dummy-5z8_observe-box-un8_a5_p5-1_b5 dd)) (dummy-left-5z8_observe-box-un8_a5_p5-1_b5 dd))
)
(:action dummy-right-5z8_observe-box-un8_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3cg_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (box-at b5 p5-1) (immediate-dummy-5z8_observe-box-un8_a5_p5-1_b5 dd) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b5 p5-1 V_TRUE))
:effect 
(and (not (immediate-dummy-5z8_observe-box-un8_a5_p5-1_b5 dd)) (dummy-right-5z8_observe-box-un8_a5_p5-1_b5 dd))
)
(:action act-yeu_observe-box-qyt_a4_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5z8_observe-box-un8_a5_p5-1_b5 dd) (immediate-dummy-yeu_observe-box-qyt_a4_p3-1_b2 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-1) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-yeu_observe-box-qyt_a4_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5z8_observe-box-un8_a5_p5-1_b5 dd) (immediate-dummy-yeu_observe-box-qyt_a4_p3-1_b2 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-1) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-yeu_observe-box-qyt_a4_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5z8_observe-box-un8_a5_p5-1_b5 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-1) (not (dummy-left-yeu_observe-box-qyt_a4_p3-1_b2 dd)) (not (dummy-right-yeu_observe-box-qyt_a4_p3-1_b2 dd)) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (immediate-dummy-yeu_observe-box-qyt_a4_p3-1_b2 dd))
)
(:action dummy-left-yeu_observe-box-qyt_a4_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5z8_observe-box-un8_a5_p5-1_b5 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-yeu_observe-box-qyt_a4_p3-1_b2 dd) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-yeu_observe-box-qyt_a4_p3-1_b2 dd)) (dummy-left-yeu_observe-box-qyt_a4_p3-1_b2 dd))
)
(:action dummy-right-yeu_observe-box-qyt_a4_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5z8_observe-box-un8_a5_p5-1_b5 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-1) (box-at b2 p3-1) (immediate-dummy-yeu_observe-box-qyt_a4_p3-1_b2 dd) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-yeu_observe-box-qyt_a4_p3-1_b2 dd)) (dummy-right-yeu_observe-box-qyt_a4_p3-1_b2 dd))
)
(:action goal-achieve-left-yeu_observe-box-qyt_a4_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yeu_observe-box-qyt_a4_p3-1_b2 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-yeu_observe-box-qyt_a4_p3-1_b2 dd)))
)
(:action act-u9l_joint-push_p3-1_p3-2_b2_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yeu_observe-box-qyt_a4_p3-1_b2 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p3-1) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (pre-u9l_joint-push_p3-1_p3-2_b2_a4_a5 dd))
)
(:action goal-achieve-u9l_joint-push_p3-1_p3-2_b2_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-u9l_joint-push_p3-1_p3-2_b2_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-u9l_joint-push_p3-1_p3-2_b2_a4_a5 dd)))
)
(:action act-un7_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5z8_observe-box-un8_a5_p5-1_b5 dd) (box-at b4 p4-2) (box-at b1 p2-2) (not (box-at b0 p1-2)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (pre-un7_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action act-z95_observe-box_a5_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (pre-un7_joint-push_p5-1_p5-2_b5_a4_a5 dd) (immediate-dummy-z95_observe-box_a5_p3-1_b2 dd) (agent-at a5 p3-1) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-z95_observe-box_a5_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (pre-un7_joint-push_p5-1_p5-2_b5_a4_a5 dd) (immediate-dummy-z95_observe-box_a5_p3-1_b2 dd) (agent-at a5 p3-1) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-z95_observe-box_a5_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (pre-un7_joint-push_p5-1_p5-2_b5_a4_a5 dd) (agent-at a5 p3-1) (not (dummy-left-z95_observe-box_a5_p3-1_b2 dd)) (not (dummy-right-z95_observe-box_a5_p3-1_b2 dd)))
:effect 
(and (immediate-dummy-z95_observe-box_a5_p3-1_b2 dd))
)
(:action dummy-left-z95_observe-box_a5_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (agent-at a5 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-z95_observe-box_a5_p3-1_b2 dd) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-z95_observe-box_a5_p3-1_b2 dd)) (dummy-left-z95_observe-box_a5_p3-1_b2 dd))
)
(:action dummy-right-z95_observe-box_a5_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (agent-at a5 p3-1) (box-at b2 p3-1) (immediate-dummy-z95_observe-box_a5_p3-1_b2 dd) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-z95_observe-box_a5_p3-1_b2 dd)) (dummy-right-z95_observe-box_a5_p3-1_b2 dd))
)
(:action goal-achieve-left-z95_observe-box_a5_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-z95_observe-box_a5_p3-1_b2 dd) (not (box-at b2 p3-1)) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-z95_observe-box_a5_p3-1_b2 dd)))
)
(:action act-0be_joint-push_p3-1_p3-2_b2_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-z95_observe-box_a5_p3-1_b2 dd) (box-at b2 p3-1) (agent-at a5 p3-1) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (pre-0be_joint-push_p3-1_p3-2_b2_a4_a5 dd))
)
(:action goal-achieve-0be_joint-push_p3-1_p3-2_b2_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-0be_joint-push_p3-1_p3-2_b2_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-0be_joint-push_p3-1_p3-2_b2_a4_a5 dd)))
)
(:action act-fcb_observe-box_a2_p2-2_b1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mxa_observe-box_a1_p1-2_b0 dd) (immediate-dummy-fcb_observe-box_a2_p2-2_b1 dd) (box-at b0 p1-2) (agent-at a5 p2-2) (Kbox-at b0 p1-2 V_TRUE) (box-at b1 p2-2) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_TRUE))
)
(:action act-fcb_observe-box_a2_p2-2_b1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mxa_observe-box_a1_p1-2_b0 dd) (immediate-dummy-fcb_observe-box_a2_p2-2_b1 dd) (box-at b0 p1-2) (agent-at a5 p2-2) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b1 p2-2)) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_FALSE))
)
(:action act-dummy-fcb_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mxa_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (agent-at a5 p2-2) (not (dummy-left-fcb_observe-box_a2_p2-2_b1 dd)) (not (dummy-right-fcb_observe-box_a2_p2-2_b1 dd)) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-fcb_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-left-fcb_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mxa_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (agent-at a5 p2-2) (not (box-at b1 p2-2)) (immediate-dummy-fcb_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-2 V_FALSE))
:effect 
(and (not (immediate-dummy-fcb_observe-box_a2_p2-2_b1 dd)) (dummy-left-fcb_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-fcb_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mxa_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (agent-at a5 p2-2) (box-at b1 p2-2) (immediate-dummy-fcb_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE))
:effect 
(and (not (immediate-dummy-fcb_observe-box_a2_p2-2_b1 dd)) (dummy-right-fcb_observe-box_a2_p2-2_b1 dd))
)
(:action act-pu6_observe-box-un8_a5_p5-1_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fcb_observe-box_a2_p2-2_b1 dd) (immediate-dummy-pu6_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p5-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (box-at b5 p5-1) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_TRUE))
)
(:action act-pu6_observe-box-un8_a5_p5-1_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fcb_observe-box_a2_p2-2_b1 dd) (immediate-dummy-pu6_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p5-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b5 p5-1)) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_FALSE))
)
(:action act-dummy-pu6_observe-box-un8_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fcb_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p5-1) (not (dummy-left-pu6_observe-box-un8_a5_p5-1_b5 dd)) (not (dummy-right-pu6_observe-box-un8_a5_p5-1_b5 dd)) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-pu6_observe-box-un8_a5_p5-1_b5 dd))
)
(:action dummy-left-pu6_observe-box-un8_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fcb_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p5-1) (not (box-at b5 p5-1)) (immediate-dummy-pu6_observe-box-un8_a5_p5-1_b5 dd) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b5 p5-1 V_FALSE))
:effect 
(and (not (immediate-dummy-pu6_observe-box-un8_a5_p5-1_b5 dd)) (dummy-left-pu6_observe-box-un8_a5_p5-1_b5 dd))
)
(:action dummy-right-pu6_observe-box-un8_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fcb_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p5-1) (box-at b5 p5-1) (immediate-dummy-pu6_observe-box-un8_a5_p5-1_b5 dd) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b5 p5-1 V_TRUE))
:effect 
(and (not (immediate-dummy-pu6_observe-box-un8_a5_p5-1_b5 dd)) (dummy-right-pu6_observe-box-un8_a5_p5-1_b5 dd))
)
(:action act-c1g_observe-box_a2_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pu6_observe-box-un8_a5_p5-1_b5 dd) (immediate-dummy-c1g_observe-box_a2_p3-1_b2 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p3-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-c1g_observe-box_a2_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pu6_observe-box-un8_a5_p5-1_b5 dd) (immediate-dummy-c1g_observe-box_a2_p3-1_b2 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p3-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-c1g_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pu6_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p3-1) (not (dummy-left-c1g_observe-box_a2_p3-1_b2 dd)) (not (dummy-right-c1g_observe-box_a2_p3-1_b2 dd)) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-c1g_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-left-c1g_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pu6_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-c1g_observe-box_a2_p3-1_b2 dd) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-c1g_observe-box_a2_p3-1_b2 dd)) (dummy-left-c1g_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-c1g_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pu6_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p3-1) (box-at b2 p3-1) (immediate-dummy-c1g_observe-box_a2_p3-1_b2 dd) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-c1g_observe-box_a2_p3-1_b2 dd)) (dummy-right-c1g_observe-box_a2_p3-1_b2 dd))
)
(:action act-bsw_observe-box_a4_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-c1g_observe-box_a2_p3-1_b2 dd) (immediate-dummy-bsw_observe-box_a4_p4-2_b4 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p4-2) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-bsw_observe-box_a4_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-c1g_observe-box_a2_p3-1_b2 dd) (immediate-dummy-bsw_observe-box_a4_p4-2_b4 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p4-2) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-bsw_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-c1g_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p4-2) (not (dummy-left-bsw_observe-box_a4_p4-2_b4 dd)) (not (dummy-right-bsw_observe-box_a4_p4-2_b4 dd)) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-bsw_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-left-bsw_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-c1g_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-bsw_observe-box_a4_p4-2_b4 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-bsw_observe-box_a4_p4-2_b4 dd)) (dummy-left-bsw_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-bsw_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-c1g_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p4-2) (box-at b4 p4-2) (immediate-dummy-bsw_observe-box_a4_p4-2_b4 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-bsw_observe-box_a4_p4-2_b4 dd)) (dummy-right-bsw_observe-box_a4_p4-2_b4 dd))
)
(:action act-9ed_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bsw_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p4-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (pre-9ed_one-push_p4-1_p4-2_b4_a5 dd))
)
(:action goal-achieve-9ed_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-9ed_one-push_p4-1_p4-2_b4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-9ed_one-push_p4-1_p4-2_b4_a5 dd)))
)
(:action goal-achieve-right-bsw_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bsw_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (box-at b0 p1-2) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-bsw_observe-box_a4_p4-2_b4 dd)))
)
(:action goal-achieve-right-c1g_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-c1g_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (not (box-at b1 p2-2)) (box-at b0 p1-2) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-c1g_observe-box_a2_p3-1_b2 dd)))
)
(:action act-vqc_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pu6_observe-box-un8_a5_p5-1_b5 dd) (not (box-at b1 p2-2)) (box-at b0 p1-2) (agent-at a5 p5-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (pre-vqc_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action act-oh5_observe-box_a2_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (pre-vqc_joint-push_p5-1_p5-2_b5_a4_a5 dd) (immediate-dummy-oh5_observe-box_a2_p3-1_b2 dd) (agent-at a5 p3-1) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-oh5_observe-box_a2_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (pre-vqc_joint-push_p5-1_p5-2_b5_a4_a5 dd) (immediate-dummy-oh5_observe-box_a2_p3-1_b2 dd) (agent-at a5 p3-1) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-oh5_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (pre-vqc_joint-push_p5-1_p5-2_b5_a4_a5 dd) (agent-at a5 p3-1) (not (dummy-left-oh5_observe-box_a2_p3-1_b2 dd)) (not (dummy-right-oh5_observe-box_a2_p3-1_b2 dd)))
:effect 
(and (immediate-dummy-oh5_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-left-oh5_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (agent-at a5 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-oh5_observe-box_a2_p3-1_b2 dd) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-oh5_observe-box_a2_p3-1_b2 dd)) (dummy-left-oh5_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-oh5_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (agent-at a5 p3-1) (box-at b2 p3-1) (immediate-dummy-oh5_observe-box_a2_p3-1_b2 dd) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-oh5_observe-box_a2_p3-1_b2 dd)) (dummy-right-oh5_observe-box_a2_p3-1_b2 dd))
)
(:action act-3zx_observe-box_a5_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oh5_observe-box_a2_p3-1_b2 dd) (immediate-dummy-3zx_observe-box_a5_p4-2_b4 dd) (not (box-at b2 p3-1)) (agent-at a5 p4-2) (Kbox-at b2 p3-1 V_FALSE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-3zx_observe-box_a5_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oh5_observe-box_a2_p3-1_b2 dd) (immediate-dummy-3zx_observe-box_a5_p4-2_b4 dd) (not (box-at b2 p3-1)) (agent-at a5 p4-2) (Kbox-at b2 p3-1 V_FALSE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-3zx_observe-box_a5_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oh5_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (agent-at a5 p4-2) (not (dummy-left-3zx_observe-box_a5_p4-2_b4 dd)) (not (dummy-right-3zx_observe-box_a5_p4-2_b4 dd)) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (immediate-dummy-3zx_observe-box_a5_p4-2_b4 dd))
)
(:action dummy-left-3zx_observe-box_a5_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oh5_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (agent-at a5 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-3zx_observe-box_a5_p4-2_b4 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-3zx_observe-box_a5_p4-2_b4 dd)) (dummy-left-3zx_observe-box_a5_p4-2_b4 dd))
)
(:action dummy-right-3zx_observe-box_a5_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oh5_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (agent-at a5 p4-2) (box-at b4 p4-2) (immediate-dummy-3zx_observe-box_a5_p4-2_b4 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-3zx_observe-box_a5_p4-2_b4 dd)) (dummy-right-3zx_observe-box_a5_p4-2_b4 dd))
)
(:action act-jxd_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3zx_observe-box_a5_p4-2_b4 dd) (not (box-at b4 p4-2)) (not (box-at b2 p3-1)) (agent-at a5 p4-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (pre-jxd_one-push_p4-1_p4-2_b4_a5 dd))
)
(:action goal-achieve-jxd_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-jxd_one-push_p4-1_p4-2_b4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-jxd_one-push_p4-1_p4-2_b4_a5 dd)))
)
(:action goal-achieve-right-3zx_observe-box_a5_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3zx_observe-box_a5_p4-2_b4 dd) (box-at b4 p4-2) (not (box-at b2 p3-1)) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-3zx_observe-box_a5_p4-2_b4 dd)))
)
(:action act-c1j_observe-box_a5_p4-1_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oh5_observe-box_a2_p3-1_b2 dd) (immediate-dummy-c1j_observe-box_a5_p4-1_b4 dd) (box-at b2 p3-1) (agent-at a5 p4-1) (Kbox-at b2 p3-1 V_TRUE) (box-at b4 p4-1) (not (Kbox-at b4 p4-1 V_TRUE)) (not (Kbox-at b4 p4-1 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-1 V_TRUE))
)
(:action act-c1j_observe-box_a5_p4-1_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oh5_observe-box_a2_p3-1_b2 dd) (immediate-dummy-c1j_observe-box_a5_p4-1_b4 dd) (box-at b2 p3-1) (agent-at a5 p4-1) (Kbox-at b2 p3-1 V_TRUE) (not (box-at b4 p4-1)) (not (Kbox-at b4 p4-1 V_TRUE)) (not (Kbox-at b4 p4-1 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-1 V_FALSE))
)
(:action act-dummy-c1j_observe-box_a5_p4-1_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oh5_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (agent-at a5 p4-1) (not (dummy-left-c1j_observe-box_a5_p4-1_b4 dd)) (not (dummy-right-c1j_observe-box_a5_p4-1_b4 dd)) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (immediate-dummy-c1j_observe-box_a5_p4-1_b4 dd))
)
(:action dummy-left-c1j_observe-box_a5_p4-1_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oh5_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (agent-at a5 p4-1) (not (box-at b4 p4-1)) (immediate-dummy-c1j_observe-box_a5_p4-1_b4 dd) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b4 p4-1 V_FALSE))
:effect 
(and (not (immediate-dummy-c1j_observe-box_a5_p4-1_b4 dd)) (dummy-left-c1j_observe-box_a5_p4-1_b4 dd))
)
(:action dummy-right-c1j_observe-box_a5_p4-1_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oh5_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (agent-at a5 p4-1) (box-at b4 p4-1) (immediate-dummy-c1j_observe-box_a5_p4-1_b4 dd) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b4 p4-1 V_TRUE))
:effect 
(and (not (immediate-dummy-c1j_observe-box_a5_p4-1_b4 dd)) (dummy-right-c1j_observe-box_a5_p4-1_b4 dd))
)
(:action act-5zg_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-c1j_observe-box_a5_p4-1_b4 dd) (not (box-at b4 p4-1)) (box-at b2 p3-1) (agent-at a5 p3-1) (Kbox-at b4 p4-1 V_FALSE) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (pre-5zg_joint-push_p3-1_p3-2_b2_a2_a5 dd))
)
(:action goal-achieve-5zg_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-5zg_joint-push_p3-1_p3-2_b2_a2_a5 dd))
:effect 
(and (done-goal dd) (not (pre-5zg_joint-push_p3-1_p3-2_b2_a2_a5 dd)))
)
(:action act-cs6_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-c1j_observe-box_a5_p4-1_b4 dd) (box-at b4 p4-1) (box-at b2 p3-1) (agent-at a5 p4-1) (Kbox-at b4 p4-1 V_TRUE) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (pre-cs6_one-push_p4-1_p4-2_b4_a5 dd))
)
(:action act-upe_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-cs6_one-push_p4-1_p4-2_b4_a5 dd) (agent-at a5 p3-1))
:effect 
(and (pre-upe_joint-push_p3-1_p3-2_b2_a2_a5 dd) (not (pre-cs6_one-push_p4-1_p4-2_b4_a5 dd)))
)
(:action goal-achieve-upe_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-upe_joint-push_p3-1_p3-2_b2_a2_a5 dd))
:effect 
(and (done-goal dd) (not (pre-upe_joint-push_p3-1_p3-2_b2_a2_a5 dd)))
)
(:action act-bwn_observe-box_a4_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fcb_observe-box_a2_p2-2_b1 dd) (immediate-dummy-bwn_observe-box_a4_p4-2_b4 dd) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p4-2) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-bwn_observe-box_a4_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fcb_observe-box_a2_p2-2_b1 dd) (immediate-dummy-bwn_observe-box_a4_p4-2_b4 dd) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p4-2) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-bwn_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fcb_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p4-2) (not (dummy-left-bwn_observe-box_a4_p4-2_b4 dd)) (not (dummy-right-bwn_observe-box_a4_p4-2_b4 dd)) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-bwn_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-left-bwn_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fcb_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-bwn_observe-box_a4_p4-2_b4 dd) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-bwn_observe-box_a4_p4-2_b4 dd)) (dummy-left-bwn_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-bwn_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fcb_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p4-2) (box-at b4 p4-2) (immediate-dummy-bwn_observe-box_a4_p4-2_b4 dd) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-bwn_observe-box_a4_p4-2_b4 dd)) (dummy-right-bwn_observe-box_a4_p4-2_b4 dd))
)
(:action act-nsq_observe-box_a5_p5-2_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bwn_observe-box_a4_p4-2_b4 dd) (immediate-dummy-nsq_observe-box_a5_p5-2_b5 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-2) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (box-at b5 p5-2) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_TRUE))
)
(:action act-nsq_observe-box_a5_p5-2_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bwn_observe-box_a4_p4-2_b4 dd) (immediate-dummy-nsq_observe-box_a5_p5-2_b5 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-2) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b5 p5-2)) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_FALSE))
)
(:action act-dummy-nsq_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bwn_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-2) (not (dummy-left-nsq_observe-box_a5_p5-2_b5 dd)) (not (dummy-right-nsq_observe-box_a5_p5-2_b5 dd)) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-nsq_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-left-nsq_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bwn_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-2) (not (box-at b5 p5-2)) (immediate-dummy-nsq_observe-box_a5_p5-2_b5 dd) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b5 p5-2 V_FALSE))
:effect 
(and (not (immediate-dummy-nsq_observe-box_a5_p5-2_b5 dd)) (dummy-left-nsq_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-right-nsq_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bwn_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-2) (box-at b5 p5-2) (immediate-dummy-nsq_observe-box_a5_p5-2_b5 dd) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b5 p5-2 V_TRUE))
:effect 
(and (not (immediate-dummy-nsq_observe-box_a5_p5-2_b5 dd)) (dummy-right-nsq_observe-box_a5_p5-2_b5 dd))
)
(:action act-zvj_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nsq_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-1) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (pre-zvj_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action goal-achieve-zvj_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-zvj_joint-push_p5-1_p5-2_b5_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-zvj_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-right-nsq_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nsq_observe-box_a5_p5-2_b5 dd) (box-at b5 p5-2) (not (box-at b4 p4-2)) (box-at b1 p2-2) (box-at b0 p1-2) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-nsq_observe-box_a5_p5-2_b5 dd)))
)
(:action act-4es_observe-box_a5_p5-2_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bwn_observe-box_a4_p4-2_b4 dd) (immediate-dummy-4es_observe-box_a5_p5-2_b5 dd) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-2) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (box-at b5 p5-2) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_TRUE))
)
(:action act-4es_observe-box_a5_p5-2_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bwn_observe-box_a4_p4-2_b4 dd) (immediate-dummy-4es_observe-box_a5_p5-2_b5 dd) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-2) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b5 p5-2)) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_FALSE))
)
(:action act-dummy-4es_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bwn_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-2) (not (dummy-left-4es_observe-box_a5_p5-2_b5 dd)) (not (dummy-right-4es_observe-box_a5_p5-2_b5 dd)) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-4es_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-left-4es_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bwn_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-2) (not (box-at b5 p5-2)) (immediate-dummy-4es_observe-box_a5_p5-2_b5 dd) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b5 p5-2 V_FALSE))
:effect 
(and (not (immediate-dummy-4es_observe-box_a5_p5-2_b5 dd)) (dummy-left-4es_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-right-4es_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bwn_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-2) (box-at b5 p5-2) (immediate-dummy-4es_observe-box_a5_p5-2_b5 dd) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b5 p5-2 V_TRUE))
:effect 
(and (not (immediate-dummy-4es_observe-box_a5_p5-2_b5 dd)) (dummy-right-4es_observe-box_a5_p5-2_b5 dd))
)
(:action act-3m3_observe-box-5gx_a2_p3-2_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4es_observe-box_a5_p5-2_b5 dd) (immediate-dummy-3m3_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p3-2) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (box-at b2 p3-2) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_TRUE))
)
(:action act-3m3_observe-box-5gx_a2_p3-2_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4es_observe-box_a5_p5-2_b5 dd) (immediate-dummy-3m3_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p3-2) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (not (box-at b2 p3-2)) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_FALSE))
)
(:action act-dummy-3m3_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4es_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p3-2) (not (dummy-left-3m3_observe-box-5gx_a2_p3-2_b2 dd)) (not (dummy-right-3m3_observe-box-5gx_a2_p3-2_b2 dd)) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (immediate-dummy-3m3_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action dummy-left-3m3_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4es_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p3-2) (not (box-at b2 p3-2)) (immediate-dummy-3m3_observe-box-5gx_a2_p3-2_b2 dd) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b2 p3-2 V_FALSE))
:effect 
(and (not (immediate-dummy-3m3_observe-box-5gx_a2_p3-2_b2 dd)) (dummy-left-3m3_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action dummy-right-3m3_observe-box-5gx_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4es_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p3-2) (box-at b2 p3-2) (immediate-dummy-3m3_observe-box-5gx_a2_p3-2_b2 dd) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b2 p3-2 V_TRUE))
:effect 
(and (not (immediate-dummy-3m3_observe-box-5gx_a2_p3-2_b2 dd)) (dummy-right-3m3_observe-box-5gx_a2_p3-2_b2 dd))
)
(:action act-jmn_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3m3_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-1) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (pre-jmn_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action act-og7_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-jmn_joint-push_p5-1_p5-2_b5_a4_a5 dd) (agent-at a5 p3-1))
:effect 
(and (pre-og7_joint-push_p3-1_p3-2_b2_a2_a5 dd) (not (pre-jmn_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-og7_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-og7_joint-push_p3-1_p3-2_b2_a2_a5 dd))
:effect 
(and (done-goal dd) (not (pre-og7_joint-push_p3-1_p3-2_b2_a2_a5 dd)))
)
(:action act-299_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3m3_observe-box-5gx_a2_p3-2_b2 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (agent-at a5 p5-1) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (pre-299_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action goal-achieve-299_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-299_joint-push_p5-1_p5-2_b5_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-299_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-right-4es_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4es_observe-box_a5_p5-2_b5 dd) (box-at b5 p5-2) (box-at b4 p4-2) (box-at b1 p2-2) (box-at b0 p1-2) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-4es_observe-box_a5_p5-2_b5 dd)))
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
