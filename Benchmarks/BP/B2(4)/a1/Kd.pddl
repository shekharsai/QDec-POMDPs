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
 b3 - box
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
(init-0gp_observe-box_a2_p2-1_b1 ?dd - dummy)
(immediate-dummy-0gp_observe-box_a2_p2-1_b1 ?dd - dummy)
(dummy-left-0gp_observe-box_a2_p2-1_b1 ?dd - dummy)
(immediate-dummy-h3p_observe-box_a1_p1-2_b0 ?dd - dummy)
(dummy-left-h3p_observe-box_a1_p1-2_b0 ?dd - dummy)
(pre-b3h_one-push_p1-1_p1-2_b0_a1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-h3p_observe-box_a1_p1-2_b0 ?dd - dummy)
(dummy-right-0gp_observe-box_a2_p2-1_b1 ?dd - dummy)
(immediate-dummy-3e6_observe-box_a4_p4-1_b3 ?dd - dummy)
(dummy-left-3e6_observe-box_a4_p4-1_b3 ?dd - dummy)
(immediate-dummy-2lv_observe-box_a1_p1-1_b0 ?dd - dummy)
(dummy-left-2lv_observe-box_a1_p1-1_b0 ?dd - dummy)
(dummy-right-2lv_observe-box_a1_p1-1_b0 ?dd - dummy)
(pre-1hd_one-push_p1-1_p1-2_b0_a1 ?dd - dummy)
(dummy-right-3e6_observe-box_a4_p4-1_b3 ?dd - dummy)
(immediate-dummy-p6h_observe-box_a1_p1-2_b0 ?dd - dummy)
(dummy-left-p6h_observe-box_a1_p1-2_b0 ?dd - dummy)
(pre-9fz_joint-push_p2-1_p2-2_b1_a1_a2 ?dd - dummy)
(pre-w0y_one-push_p1-1_p1-2_b0_a1 ?dd - dummy)
(dummy-right-p6h_observe-box_a1_p1-2_b0 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-0gp_observe-box_a2_p2-1_b1-T
:parameters ( ?a - agent)
:precondition 
(and (init-0gp_observe-box_a2_p2-1_b1 dd) (immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd) (agent-at a1 p2-1) (box-at b1 p2-1) (not (Kbox-at b1 p2-1 V_TRUE)) (not (Kbox-at b1 p2-1 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-1 V_TRUE))
)
(:action act-0gp_observe-box_a2_p2-1_b1-F
:parameters ( ?a - agent)
:precondition 
(and (init-0gp_observe-box_a2_p2-1_b1 dd) (immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd) (agent-at a1 p2-1) (not (box-at b1 p2-1)) (not (Kbox-at b1 p2-1 V_TRUE)) (not (Kbox-at b1 p2-1 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-1 V_FALSE))
)
(:action act-dummy-0gp_observe-box_a2_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (init-0gp_observe-box_a2_p2-1_b1 dd) (not (dummy-left-0gp_observe-box_a2_p2-1_b1 dd)) (not (dummy-right-0gp_observe-box_a2_p2-1_b1 dd)))
:effect 
(and (immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-left-0gp_observe-box_a2_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (init-0gp_observe-box_a2_p2-1_b1 dd) (agent-at a1 p2-1) (not (box-at b1 p2-1)) (immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (not (init-0gp_observe-box_a2_p2-1_b1 dd)) (not (immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd)) (dummy-left-0gp_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-right-0gp_observe-box_a2_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (init-0gp_observe-box_a2_p2-1_b1 dd) (agent-at a1 p2-1) (box-at b1 p2-1) (immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (not (init-0gp_observe-box_a2_p2-1_b1 dd)) (not (immediate-dummy-0gp_observe-box_a2_p2-1_b1 dd)) (dummy-right-0gp_observe-box_a2_p2-1_b1 dd))
)
(:action act-h3p_observe-box_a1_p1-2_b0-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0gp_observe-box_a2_p2-1_b1 dd) (immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd) (not (box-at b1 p2-1)) (agent-at a1 p1-2) (Kbox-at b1 p2-1 V_FALSE) (box-at b0 p1-2) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_TRUE))
)
(:action act-h3p_observe-box_a1_p1-2_b0-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0gp_observe-box_a2_p2-1_b1 dd) (immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd) (not (box-at b1 p2-1)) (agent-at a1 p1-2) (Kbox-at b1 p2-1 V_FALSE) (not (box-at b0 p1-2)) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_FALSE))
)
(:action act-dummy-h3p_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0gp_observe-box_a2_p2-1_b1 dd) (not (box-at b1 p2-1)) (agent-at a1 p1-2) (not (dummy-left-h3p_observe-box_a1_p1-2_b0 dd)) (not (dummy-right-h3p_observe-box_a1_p1-2_b0 dd)) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-left-h3p_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0gp_observe-box_a2_p2-1_b1 dd) (not (box-at b1 p2-1)) (agent-at a1 p1-2) (not (box-at b0 p1-2)) (immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (not (immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd)) (dummy-left-h3p_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-h3p_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0gp_observe-box_a2_p2-1_b1 dd) (not (box-at b1 p2-1)) (agent-at a1 p1-2) (box-at b0 p1-2) (immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (not (immediate-dummy-h3p_observe-box_a1_p1-2_b0 dd)) (dummy-right-h3p_observe-box_a1_p1-2_b0 dd))
)
(:action act-b3h_one-push_p1-1_p1-2_b0_a1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-h3p_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (not (box-at b1 p2-1)) (agent-at a1 p1-1) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (pre-b3h_one-push_p1-1_p1-2_b0_a1 dd))
)
(:action goal-achieve-b3h_one-push_p1-1_p1-2_b0_a1
:parameters ( ?a - agent)
:precondition 
(and (pre-b3h_one-push_p1-1_p1-2_b0_a1 dd))
:effect 
(and (done-goal dd) (not (pre-b3h_one-push_p1-1_p1-2_b0_a1 dd)))
)
(:action goal-achieve-right-h3p_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h3p_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (not (box-at b1 p2-1)) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-h3p_observe-box_a1_p1-2_b0 dd)))
)
(:action act-3e6_observe-box_a4_p4-1_b3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0gp_observe-box_a2_p2-1_b1 dd) (immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd) (box-at b1 p2-1) (agent-at a1 p4-1) (Kbox-at b1 p2-1 V_TRUE) (box-at b3 p4-1) (not (Kbox-at b3 p4-1 V_TRUE)) (not (Kbox-at b3 p4-1 V_FALSE)))
:effect 
(and (Kbox-at b3 p4-1 V_TRUE))
)
(:action act-3e6_observe-box_a4_p4-1_b3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0gp_observe-box_a2_p2-1_b1 dd) (immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd) (box-at b1 p2-1) (agent-at a1 p4-1) (Kbox-at b1 p2-1 V_TRUE) (not (box-at b3 p4-1)) (not (Kbox-at b3 p4-1 V_TRUE)) (not (Kbox-at b3 p4-1 V_FALSE)))
:effect 
(and (Kbox-at b3 p4-1 V_FALSE))
)
(:action act-dummy-3e6_observe-box_a4_p4-1_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0gp_observe-box_a2_p2-1_b1 dd) (box-at b1 p2-1) (agent-at a1 p4-1) (not (dummy-left-3e6_observe-box_a4_p4-1_b3 dd)) (not (dummy-right-3e6_observe-box_a4_p4-1_b3 dd)) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd))
)
(:action dummy-left-3e6_observe-box_a4_p4-1_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0gp_observe-box_a2_p2-1_b1 dd) (box-at b1 p2-1) (agent-at a1 p4-1) (not (box-at b3 p4-1)) (immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b3 p4-1 V_FALSE))
:effect 
(and (not (immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd)) (dummy-left-3e6_observe-box_a4_p4-1_b3 dd))
)
(:action dummy-right-3e6_observe-box_a4_p4-1_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0gp_observe-box_a2_p2-1_b1 dd) (box-at b1 p2-1) (agent-at a1 p4-1) (box-at b3 p4-1) (immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b3 p4-1 V_TRUE))
:effect 
(and (not (immediate-dummy-3e6_observe-box_a4_p4-1_b3 dd)) (dummy-right-3e6_observe-box_a4_p4-1_b3 dd))
)
(:action act-2lv_observe-box_a1_p1-1_b0-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3e6_observe-box_a4_p4-1_b3 dd) (immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd) (not (box-at b3 p4-1)) (box-at b1 p2-1) (agent-at a1 p1-1) (Kbox-at b3 p4-1 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (box-at b0 p1-1) (not (Kbox-at b0 p1-1 V_TRUE)) (not (Kbox-at b0 p1-1 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-1 V_TRUE))
)
(:action act-2lv_observe-box_a1_p1-1_b0-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3e6_observe-box_a4_p4-1_b3 dd) (immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd) (not (box-at b3 p4-1)) (box-at b1 p2-1) (agent-at a1 p1-1) (Kbox-at b3 p4-1 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (not (box-at b0 p1-1)) (not (Kbox-at b0 p1-1 V_TRUE)) (not (Kbox-at b0 p1-1 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-1 V_FALSE))
)
(:action act-dummy-2lv_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3e6_observe-box_a4_p4-1_b3 dd) (not (box-at b3 p4-1)) (box-at b1 p2-1) (agent-at a1 p1-1) (not (dummy-left-2lv_observe-box_a1_p1-1_b0 dd)) (not (dummy-right-2lv_observe-box_a1_p1-1_b0 dd)) (Kbox-at b3 p4-1 V_FALSE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-left-2lv_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3e6_observe-box_a4_p4-1_b3 dd) (not (box-at b3 p4-1)) (box-at b1 p2-1) (agent-at a1 p1-1) (not (box-at b0 p1-1)) (immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd) (Kbox-at b3 p4-1 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (not (immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd)) (dummy-left-2lv_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-right-2lv_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3e6_observe-box_a4_p4-1_b3 dd) (not (box-at b3 p4-1)) (box-at b1 p2-1) (agent-at a1 p1-1) (box-at b0 p1-1) (immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd) (Kbox-at b3 p4-1 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (not (immediate-dummy-2lv_observe-box_a1_p1-1_b0 dd)) (dummy-right-2lv_observe-box_a1_p1-1_b0 dd))
)
(:action goal-achieve-left-2lv_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2lv_observe-box_a1_p1-1_b0 dd) (not (box-at b0 p1-1)) (not (box-at b3 p4-1)) (box-at b1 p2-1) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b3 p4-1 V_FALSE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-2lv_observe-box_a1_p1-1_b0 dd)))
)
(:action act-1hd_one-push_p1-1_p1-2_b0_a1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2lv_observe-box_a1_p1-1_b0 dd) (box-at b0 p1-1) (not (box-at b3 p4-1)) (box-at b1 p2-1) (agent-at a1 p1-1) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b3 p4-1 V_FALSE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (pre-1hd_one-push_p1-1_p1-2_b0_a1 dd))
)
(:action goal-achieve-1hd_one-push_p1-1_p1-2_b0_a1
:parameters ( ?a - agent)
:precondition 
(and (pre-1hd_one-push_p1-1_p1-2_b0_a1 dd))
:effect 
(and (done-goal dd) (not (pre-1hd_one-push_p1-1_p1-2_b0_a1 dd)))
)
(:action act-p6h_observe-box_a1_p1-2_b0-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3e6_observe-box_a4_p4-1_b3 dd) (immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd) (box-at b3 p4-1) (box-at b1 p2-1) (agent-at a1 p1-2) (Kbox-at b3 p4-1 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (box-at b0 p1-2) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_TRUE))
)
(:action act-p6h_observe-box_a1_p1-2_b0-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3e6_observe-box_a4_p4-1_b3 dd) (immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd) (box-at b3 p4-1) (box-at b1 p2-1) (agent-at a1 p1-2) (Kbox-at b3 p4-1 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (not (box-at b0 p1-2)) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_FALSE))
)
(:action act-dummy-p6h_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3e6_observe-box_a4_p4-1_b3 dd) (box-at b3 p4-1) (box-at b1 p2-1) (agent-at a1 p1-2) (not (dummy-left-p6h_observe-box_a1_p1-2_b0 dd)) (not (dummy-right-p6h_observe-box_a1_p1-2_b0 dd)) (Kbox-at b3 p4-1 V_TRUE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-left-p6h_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3e6_observe-box_a4_p4-1_b3 dd) (box-at b3 p4-1) (box-at b1 p2-1) (agent-at a1 p1-2) (not (box-at b0 p1-2)) (immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd) (Kbox-at b3 p4-1 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (not (immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd)) (dummy-left-p6h_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-p6h_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3e6_observe-box_a4_p4-1_b3 dd) (box-at b3 p4-1) (box-at b1 p2-1) (agent-at a1 p1-2) (box-at b0 p1-2) (immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd) (Kbox-at b3 p4-1 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (not (immediate-dummy-p6h_observe-box_a1_p1-2_b0 dd)) (dummy-right-p6h_observe-box_a1_p1-2_b0 dd))
)
(:action act-9fz_joint-push_p2-1_p2-2_b1_a1_a2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-p6h_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (box-at b3 p4-1) (box-at b1 p2-1) (agent-at a1 p2-1) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b3 p4-1 V_TRUE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (pre-9fz_joint-push_p2-1_p2-2_b1_a1_a2 dd))
)
(:action act-w0y_one-push_p1-1_p1-2_b0_a1
:parameters ( ?a - agent)
:precondition 
(and (pre-9fz_joint-push_p2-1_p2-2_b1_a1_a2 dd) (agent-at a1 p1-1))
:effect 
(and (pre-w0y_one-push_p1-1_p1-2_b0_a1 dd) (not (pre-9fz_joint-push_p2-1_p2-2_b1_a1_a2 dd)))
)
(:action goal-achieve-w0y_one-push_p1-1_p1-2_b0_a1
:parameters ( ?a - agent)
:precondition 
(and (pre-w0y_one-push_p1-1_p1-2_b0_a1 dd))
:effect 
(and (done-goal dd) (not (pre-w0y_one-push_p1-1_p1-2_b0_a1 dd)))
)
(:action goal-achieve-right-p6h_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-p6h_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (box-at b3 p4-1) (box-at b1 p2-1) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b3 p4-1 V_TRUE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-p6h_observe-box_a1_p1-2_b0 dd)))
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
