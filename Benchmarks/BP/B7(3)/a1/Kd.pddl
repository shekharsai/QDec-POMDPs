(define (domain Kbox-3-a1)
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
 b0 - box
 b1 - box
 b2 - box
 b4 - box
 a1 - agent
 dd - dummy
 tag0 - TAG_TYPE ; (box-at b2 p3-1)
 tag1 - TAG_TYPE ; (box-at b2 p3-2)
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
(init-7bw_observe-box_a4_p4-1_b4 ?dd - dummy)
(immediate-dummy-7bw_observe-box_a4_p4-1_b4 ?dd - dummy)
(dummy-left-7bw_observe-box_a4_p4-1_b4 ?dd - dummy)
(immediate-dummy-u2w_observe-box_a1_p1-2_b0 ?dd - dummy)
(dummy-left-u2w_observe-box_a1_p1-2_b0 ?dd - dummy)
(pre-zkk_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-u2w_observe-box_a1_p1-2_b0 ?dd - dummy)
(dummy-right-7bw_observe-box_a4_p4-1_b4 ?dd - dummy)
(immediate-dummy-sfg_observe-box_a3_p1-1_b0 ?dd - dummy)
(dummy-left-sfg_observe-box_a3_p1-1_b0 ?dd - dummy)
(immediate-dummy-sma_observe-box_a1_p2-2_b1 ?dd - dummy)
(dummy-left-sma_observe-box_a1_p2-2_b1 ?dd - dummy)
(pre-qax_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
(dummy-right-sma_observe-box_a1_p2-2_b1 ?dd - dummy)
(dummy-right-sfg_observe-box_a3_p1-1_b0 ?dd - dummy)
(pre-6nd_joint-push_p1-1_p1-2_b0_a1_a3 ?dd - dummy)
(immediate-dummy-hkz_observe-box_a1_p2-2_b1 ?dd - dummy)
(dummy-left-hkz_observe-box_a1_p2-2_b1 ?dd - dummy)
(pre-zcv_joint-push_p2-1_p2-2_b1_a1_a3 ?dd - dummy)
(dummy-right-hkz_observe-box_a1_p2-2_b1 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-7bw_observe-box_a4_p4-1_b4-T
:parameters ( ?a - agent)
:precondition 
(and (init-7bw_observe-box_a4_p4-1_b4 dd) (immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd) (agent-at a1 p4-1) (box-at b4 p4-1) (not (Kbox-at b4 p4-1 V_TRUE)) (not (Kbox-at b4 p4-1 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-1 V_TRUE))
)
(:action act-7bw_observe-box_a4_p4-1_b4-F
:parameters ( ?a - agent)
:precondition 
(and (init-7bw_observe-box_a4_p4-1_b4 dd) (immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd) (agent-at a1 p4-1) (not (box-at b4 p4-1)) (not (Kbox-at b4 p4-1 V_TRUE)) (not (Kbox-at b4 p4-1 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-1 V_FALSE))
)
(:action act-dummy-7bw_observe-box_a4_p4-1_b4
:parameters ( ?a - agent)
:precondition 
(and (init-7bw_observe-box_a4_p4-1_b4 dd) (not (dummy-left-7bw_observe-box_a4_p4-1_b4 dd)) (not (dummy-right-7bw_observe-box_a4_p4-1_b4 dd)))
:effect 
(and (immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd))
)
(:action dummy-left-7bw_observe-box_a4_p4-1_b4
:parameters ( ?a - agent)
:precondition 
(and (init-7bw_observe-box_a4_p4-1_b4 dd) (agent-at a1 p4-1) (not (box-at b4 p4-1)) (immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd) (Kbox-at b4 p4-1 V_FALSE))
:effect 
(and (not (init-7bw_observe-box_a4_p4-1_b4 dd)) (not (immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd)) (dummy-left-7bw_observe-box_a4_p4-1_b4 dd))
)
(:action dummy-right-7bw_observe-box_a4_p4-1_b4
:parameters ( ?a - agent)
:precondition 
(and (init-7bw_observe-box_a4_p4-1_b4 dd) (agent-at a1 p4-1) (box-at b4 p4-1) (immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd) (Kbox-at b4 p4-1 V_TRUE))
:effect 
(and (not (init-7bw_observe-box_a4_p4-1_b4 dd)) (not (immediate-dummy-7bw_observe-box_a4_p4-1_b4 dd)) (dummy-right-7bw_observe-box_a4_p4-1_b4 dd))
)
(:action act-u2w_observe-box_a1_p1-2_b0-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7bw_observe-box_a4_p4-1_b4 dd) (immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd) (not (box-at b4 p4-1)) (agent-at a1 p1-2) (Kbox-at b4 p4-1 V_FALSE) (box-at b0 p1-2) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_TRUE))
)
(:action act-u2w_observe-box_a1_p1-2_b0-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7bw_observe-box_a4_p4-1_b4 dd) (immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd) (not (box-at b4 p4-1)) (agent-at a1 p1-2) (Kbox-at b4 p4-1 V_FALSE) (not (box-at b0 p1-2)) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_FALSE))
)
(:action act-dummy-u2w_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7bw_observe-box_a4_p4-1_b4 dd) (not (box-at b4 p4-1)) (agent-at a1 p1-2) (not (dummy-left-u2w_observe-box_a1_p1-2_b0 dd)) (not (dummy-right-u2w_observe-box_a1_p1-2_b0 dd)) (Kbox-at b4 p4-1 V_FALSE))
:effect 
(and (immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-left-u2w_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7bw_observe-box_a4_p4-1_b4 dd) (not (box-at b4 p4-1)) (agent-at a1 p1-2) (not (box-at b0 p1-2)) (immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd) (Kbox-at b4 p4-1 V_FALSE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (not (immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd)) (dummy-left-u2w_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-u2w_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7bw_observe-box_a4_p4-1_b4 dd) (not (box-at b4 p4-1)) (agent-at a1 p1-2) (box-at b0 p1-2) (immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd) (Kbox-at b4 p4-1 V_FALSE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (not (immediate-dummy-u2w_observe-box_a1_p1-2_b0 dd)) (dummy-right-u2w_observe-box_a1_p1-2_b0 dd))
)
(:action act-zkk_joint-push_p1-1_p1-2_b0_a1_a4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-u2w_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (not (box-at b4 p4-1)) (agent-at a1 p1-1) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b4 p4-1 V_FALSE))
:effect 
(and (pre-zkk_joint-push_p1-1_p1-2_b0_a1_a4 dd))
)
(:action goal-achieve-zkk_joint-push_p1-1_p1-2_b0_a1_a4
:parameters ( ?a - agent)
:precondition 
(and (pre-zkk_joint-push_p1-1_p1-2_b0_a1_a4 dd))
:effect 
(and (done-goal dd) (not (pre-zkk_joint-push_p1-1_p1-2_b0_a1_a4 dd)))
)
(:action goal-achieve-right-u2w_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-u2w_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (not (box-at b4 p4-1)) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b4 p4-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-u2w_observe-box_a1_p1-2_b0 dd)))
)
(:action act-sfg_observe-box_a3_p1-1_b0-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7bw_observe-box_a4_p4-1_b4 dd) (immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd) (box-at b4 p4-1) (agent-at a1 p1-1) (Kbox-at b4 p4-1 V_TRUE) (box-at b0 p1-1) (not (Kbox-at b0 p1-1 V_TRUE)) (not (Kbox-at b0 p1-1 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-1 V_TRUE))
)
(:action act-sfg_observe-box_a3_p1-1_b0-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7bw_observe-box_a4_p4-1_b4 dd) (immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd) (box-at b4 p4-1) (agent-at a1 p1-1) (Kbox-at b4 p4-1 V_TRUE) (not (box-at b0 p1-1)) (not (Kbox-at b0 p1-1 V_TRUE)) (not (Kbox-at b0 p1-1 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-1 V_FALSE))
)
(:action act-dummy-sfg_observe-box_a3_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7bw_observe-box_a4_p4-1_b4 dd) (box-at b4 p4-1) (agent-at a1 p1-1) (not (dummy-left-sfg_observe-box_a3_p1-1_b0 dd)) (not (dummy-right-sfg_observe-box_a3_p1-1_b0 dd)) (Kbox-at b4 p4-1 V_TRUE))
:effect 
(and (immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd))
)
(:action dummy-left-sfg_observe-box_a3_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7bw_observe-box_a4_p4-1_b4 dd) (box-at b4 p4-1) (agent-at a1 p1-1) (not (box-at b0 p1-1)) (immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd) (Kbox-at b4 p4-1 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (not (immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd)) (dummy-left-sfg_observe-box_a3_p1-1_b0 dd))
)
(:action dummy-right-sfg_observe-box_a3_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7bw_observe-box_a4_p4-1_b4 dd) (box-at b4 p4-1) (agent-at a1 p1-1) (box-at b0 p1-1) (immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd) (Kbox-at b4 p4-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (not (immediate-dummy-sfg_observe-box_a3_p1-1_b0 dd)) (dummy-right-sfg_observe-box_a3_p1-1_b0 dd))
)
(:action act-sma_observe-box_a1_p2-2_b1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sfg_observe-box_a3_p1-1_b0 dd) (immediate-dummy-sma_observe-box_a1_p2-2_b1 dd) (not (box-at b0 p1-1)) (box-at b4 p4-1) (agent-at a1 p2-2) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-1 V_TRUE) (box-at b1 p2-2) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_TRUE))
)
(:action act-sma_observe-box_a1_p2-2_b1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sfg_observe-box_a3_p1-1_b0 dd) (immediate-dummy-sma_observe-box_a1_p2-2_b1 dd) (not (box-at b0 p1-1)) (box-at b4 p4-1) (agent-at a1 p2-2) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-1 V_TRUE) (not (box-at b1 p2-2)) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_FALSE))
)
(:action act-dummy-sma_observe-box_a1_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sfg_observe-box_a3_p1-1_b0 dd) (not (box-at b0 p1-1)) (box-at b4 p4-1) (agent-at a1 p2-2) (not (dummy-left-sma_observe-box_a1_p2-2_b1 dd)) (not (dummy-right-sma_observe-box_a1_p2-2_b1 dd)) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-1 V_TRUE))
:effect 
(and (immediate-dummy-sma_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-left-sma_observe-box_a1_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sfg_observe-box_a3_p1-1_b0 dd) (not (box-at b0 p1-1)) (box-at b4 p4-1) (agent-at a1 p2-2) (not (box-at b1 p2-2)) (immediate-dummy-sma_observe-box_a1_p2-2_b1 dd) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-1 V_TRUE) (Kbox-at b1 p2-2 V_FALSE))
:effect 
(and (not (immediate-dummy-sma_observe-box_a1_p2-2_b1 dd)) (dummy-left-sma_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-right-sma_observe-box_a1_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sfg_observe-box_a3_p1-1_b0 dd) (not (box-at b0 p1-1)) (box-at b4 p4-1) (agent-at a1 p2-2) (box-at b1 p2-2) (immediate-dummy-sma_observe-box_a1_p2-2_b1 dd) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE))
:effect 
(and (not (immediate-dummy-sma_observe-box_a1_p2-2_b1 dd)) (dummy-right-sma_observe-box_a1_p2-2_b1 dd))
)
(:action act-qax_joint-push_p2-1_p2-2_b1_a1_a3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sma_observe-box_a1_p2-2_b1 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (box-at b4 p4-1) (agent-at a1 p2-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-1 V_TRUE))
:effect 
(and (pre-qax_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-qax_joint-push_p2-1_p2-2_b1_a1_a3
:parameters ( ?a - agent)
:precondition 
(and (pre-qax_joint-push_p2-1_p2-2_b1_a1_a3 dd))
:effect 
(and (done-goal dd) (not (pre-qax_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action goal-achieve-right-sma_observe-box_a1_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sma_observe-box_a1_p2-2_b1 dd) (box-at b1 p2-2) (not (box-at b0 p1-1)) (box-at b4 p4-1) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-sma_observe-box_a1_p2-2_b1 dd)))
)
(:action act-6nd_joint-push_p1-1_p1-2_b0_a1_a3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sfg_observe-box_a3_p1-1_b0 dd) (box-at b0 p1-1) (box-at b4 p4-1) (agent-at a1 p1-1) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b4 p4-1 V_TRUE))
:effect 
(and (pre-6nd_joint-push_p1-1_p1-2_b0_a1_a3 dd))
)
(:action act-hkz_observe-box_a1_p2-2_b1-T
:parameters ( ?a - agent)
:precondition 
(and (pre-6nd_joint-push_p1-1_p1-2_b0_a1_a3 dd) (immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd) (agent-at a1 p2-2) (box-at b1 p2-2) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_TRUE))
)
(:action act-hkz_observe-box_a1_p2-2_b1-F
:parameters ( ?a - agent)
:precondition 
(and (pre-6nd_joint-push_p1-1_p1-2_b0_a1_a3 dd) (immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd) (agent-at a1 p2-2) (not (box-at b1 p2-2)) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_FALSE))
)
(:action act-dummy-hkz_observe-box_a1_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (pre-6nd_joint-push_p1-1_p1-2_b0_a1_a3 dd) (agent-at a1 p2-2) (not (dummy-left-hkz_observe-box_a1_p2-2_b1 dd)) (not (dummy-right-hkz_observe-box_a1_p2-2_b1 dd)))
:effect 
(and (immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-left-hkz_observe-box_a1_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (agent-at a1 p2-2) (not (box-at b1 p2-2)) (immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd) (Kbox-at b1 p2-2 V_FALSE))
:effect 
(and (not (immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd)) (dummy-left-hkz_observe-box_a1_p2-2_b1 dd))
)
(:action dummy-right-hkz_observe-box_a1_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (agent-at a1 p2-2) (box-at b1 p2-2) (immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd) (Kbox-at b1 p2-2 V_TRUE))
:effect 
(and (not (immediate-dummy-hkz_observe-box_a1_p2-2_b1 dd)) (dummy-right-hkz_observe-box_a1_p2-2_b1 dd))
)
(:action act-zcv_joint-push_p2-1_p2-2_b1_a1_a3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hkz_observe-box_a1_p2-2_b1 dd) (not (box-at b1 p2-2)) (agent-at a1 p2-1) (Kbox-at b1 p2-2 V_FALSE))
:effect 
(and (pre-zcv_joint-push_p2-1_p2-2_b1_a1_a3 dd))
)
(:action goal-achieve-zcv_joint-push_p2-1_p2-2_b1_a1_a3
:parameters ( ?a - agent)
:precondition 
(and (pre-zcv_joint-push_p2-1_p2-2_b1_a1_a3 dd))
:effect 
(and (done-goal dd) (not (pre-zcv_joint-push_p2-1_p2-2_b1_a1_a3 dd)))
)
(:action goal-achieve-right-hkz_observe-box_a1_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hkz_observe-box_a1_p2-2_b1 dd) (box-at b1 p2-2) (Kbox-at b1 p2-2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-hkz_observe-box_a1_p2-2_b1 dd)))
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
