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
 tag0 - TAG_TYPE ; (box-at b4 p4-2)
 tag1 - TAG_TYPE ; (box-at b4 p4-1)
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
(init-n96_observe-box_a1_p1-1_b0 ?dd - dummy)
(immediate-dummy-n96_observe-box_a1_p1-1_b0 ?dd - dummy)
(dummy-left-n96_observe-box_a1_p1-1_b0 ?dd - dummy)
(immediate-dummy-iwm_observe-box_a2_p2-2_b1 ?dd - dummy)
(dummy-left-iwm_observe-box_a2_p2-2_b1 ?dd - dummy)
(immediate-dummy-ram_observe-box_a2_p3-1_b2 ?dd - dummy)
(dummy-left-ram_observe-box_a2_p3-1_b2 ?dd - dummy)
(immediate-dummy-h56_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(dummy-left-h56_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-h56_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(immediate-dummy-knt_observe-box_a2_p4-2_b4 ?dd - dummy)
(dummy-left-knt_observe-box_a2_p4-2_b4 ?dd - dummy)
(pre-f5e_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(pre-44e_one-push_p4-1_p4-2_b4_a5 ?dd - dummy)
(dummy-right-knt_observe-box_a2_p4-2_b4 ?dd - dummy)
(pre-tnb_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(dummy-right-ram_observe-box_a2_p3-1_b2 ?dd - dummy)
(immediate-dummy-vv4_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(dummy-left-vv4_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(dummy-right-vv4_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(pre-s2c_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(pre-xl2_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
(immediate-dummy-s16_observe-box_a5_p4-1_b4 ?dd - dummy)
(dummy-left-s16_observe-box_a5_p4-1_b4 ?dd - dummy)
(dummy-right-s16_observe-box_a5_p4-1_b4 ?dd - dummy)
(pre-wp5_one-push_p4-1_p4-2_b4_a5 ?dd - dummy)
(dummy-right-iwm_observe-box_a2_p2-2_b1 ?dd - dummy)
(immediate-dummy-4dw_observe-box_a2_p3-1_b2 ?dd - dummy)
(dummy-left-4dw_observe-box_a2_p3-1_b2 ?dd - dummy)
(immediate-dummy-qhq_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(dummy-left-qhq_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(immediate-dummy-e1e_observe-box_a4_p4-2_b4 ?dd - dummy)
(dummy-left-e1e_observe-box_a4_p4-2_b4 ?dd - dummy)
(pre-oym_one-push_p4-1_p4-2_b4_a5 ?dd - dummy)
(dummy-right-e1e_observe-box_a4_p4-2_b4 ?dd - dummy)
(dummy-right-qhq_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(immediate-dummy-dy0_observe-box_a2_p4-2_b4 ?dd - dummy)
(dummy-left-dy0_observe-box_a2_p4-2_b4 ?dd - dummy)
(pre-e3w_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(pre-4wa_one-push_p4-1_p4-2_b4_a5 ?dd - dummy)
(dummy-right-dy0_observe-box_a2_p4-2_b4 ?dd - dummy)
(pre-s9i_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(dummy-right-4dw_observe-box_a2_p3-1_b2 ?dd - dummy)
(immediate-dummy-kut_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-left-kut_observe-box_a5_p5-2_b5 ?dd - dummy)
(immediate-dummy-e2v_observe-box_a2_p4-2_b4 ?dd - dummy)
(dummy-left-e2v_observe-box_a2_p4-2_b4 ?dd - dummy)
(pre-xtp_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(pre-ia0_one-push_p4-1_p4-2_b4_a5 ?dd - dummy)
(dummy-right-e2v_observe-box_a2_p4-2_b4 ?dd - dummy)
(pre-sdf_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(dummy-right-kut_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-right-n96_observe-box_a1_p1-1_b0 ?dd - dummy)
(immediate-dummy-vr4_observe-box_a3_p2-1_b1 ?dd - dummy)
(dummy-left-vr4_observe-box_a3_p2-1_b1 ?dd - dummy)
(immediate-dummy-zdd_observe-box_a4_p4-2_b4 ?dd - dummy)
(dummy-left-zdd_observe-box_a4_p4-2_b4 ?dd - dummy)
(immediate-dummy-ztx_observe-box_a2_p3-1_b2 ?dd - dummy)
(dummy-left-ztx_observe-box_a2_p3-1_b2 ?dd - dummy)
(immediate-dummy-bn7_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-left-bn7_observe-box_a5_p5-2_b5 ?dd - dummy)
(pre-k12_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(dummy-right-bn7_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-right-ztx_observe-box_a2_p3-1_b2 ?dd - dummy)
(immediate-dummy-5le_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(dummy-left-5le_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(dummy-right-5le_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(pre-nfx_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(dummy-right-zdd_observe-box_a4_p4-2_b4 ?dd - dummy)
(immediate-dummy-699_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-left-699_observe-box_a5_p5-2_b5 ?dd - dummy)
(pre-s1f_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(dummy-right-699_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-right-vr4_observe-box_a3_p2-1_b1 ?dd - dummy)
(immediate-dummy-74x_observe-box_a2_p3-2_b2 ?dd - dummy)
(dummy-left-74x_observe-box_a2_p3-2_b2 ?dd - dummy)
(immediate-dummy-av0_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(dummy-left-av0_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(immediate-dummy-qjf_observe-box_a2_p4-2_b4 ?dd - dummy)
(dummy-left-qjf_observe-box_a2_p4-2_b4 ?dd - dummy)
(pre-g26_one-push_p4-1_p4-2_b4_a5 ?dd - dummy)
(dummy-right-qjf_observe-box_a2_p4-2_b4 ?dd - dummy)
(dummy-right-av0_observe-box-gp1_a5_p5-1_b5 ?dd - dummy)
(pre-eva_joint-push_p3-1_p3-2_b2_a2_a5 ?dd - dummy)
(pre-6co_joint-push_p5-1_p5-2_b5_a2_a5 ?dd - dummy)
(dummy-right-74x_observe-box_a2_p3-2_b2 ?dd - dummy)
(immediate-dummy-xn1_observe-box_a5_p5-2_b5 ?dd - dummy)
(dummy-left-xn1_observe-box_a5_p5-2_b5 ?dd - dummy)
(pre-xnz_joint-push_p5-1_p5-2_b5_a4_a5 ?dd - dummy)
(dummy-right-xn1_observe-box_a5_p5-2_b5 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-n96_observe-box_a1_p1-1_b0-T
:parameters ( ?a - agent)
:precondition 
(and (init-n96_observe-box_a1_p1-1_b0 dd) (immediate-dummy-n96_observe-box_a1_p1-1_b0 dd) (agent-at a5 p1-1) (box-at b0 p1-1) (not (Kbox-at b0 p1-1 V_TRUE)) (not (Kbox-at b0 p1-1 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-1 V_TRUE))
)
(:action act-n96_observe-box_a1_p1-1_b0-F
:parameters ( ?a - agent)
:precondition 
(and (init-n96_observe-box_a1_p1-1_b0 dd) (immediate-dummy-n96_observe-box_a1_p1-1_b0 dd) (agent-at a5 p1-1) (not (box-at b0 p1-1)) (not (Kbox-at b0 p1-1 V_TRUE)) (not (Kbox-at b0 p1-1 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-1 V_FALSE))
)
(:action act-dummy-n96_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (init-n96_observe-box_a1_p1-1_b0 dd) (not (dummy-left-n96_observe-box_a1_p1-1_b0 dd)) (not (dummy-right-n96_observe-box_a1_p1-1_b0 dd)))
:effect 
(and (immediate-dummy-n96_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-left-n96_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (init-n96_observe-box_a1_p1-1_b0 dd) (agent-at a5 p1-1) (not (box-at b0 p1-1)) (immediate-dummy-n96_observe-box_a1_p1-1_b0 dd) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (not (init-n96_observe-box_a1_p1-1_b0 dd)) (not (immediate-dummy-n96_observe-box_a1_p1-1_b0 dd)) (dummy-left-n96_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-right-n96_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (init-n96_observe-box_a1_p1-1_b0 dd) (agent-at a5 p1-1) (box-at b0 p1-1) (immediate-dummy-n96_observe-box_a1_p1-1_b0 dd) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (not (init-n96_observe-box_a1_p1-1_b0 dd)) (not (immediate-dummy-n96_observe-box_a1_p1-1_b0 dd)) (dummy-right-n96_observe-box_a1_p1-1_b0 dd))
)
(:action act-iwm_observe-box_a2_p2-2_b1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n96_observe-box_a1_p1-1_b0 dd) (immediate-dummy-iwm_observe-box_a2_p2-2_b1 dd) (not (box-at b0 p1-1)) (agent-at a5 p2-2) (Kbox-at b0 p1-1 V_FALSE) (box-at b1 p2-2) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_TRUE))
)
(:action act-iwm_observe-box_a2_p2-2_b1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n96_observe-box_a1_p1-1_b0 dd) (immediate-dummy-iwm_observe-box_a2_p2-2_b1 dd) (not (box-at b0 p1-1)) (agent-at a5 p2-2) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b1 p2-2)) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_FALSE))
)
(:action act-dummy-iwm_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n96_observe-box_a1_p1-1_b0 dd) (not (box-at b0 p1-1)) (agent-at a5 p2-2) (not (dummy-left-iwm_observe-box_a2_p2-2_b1 dd)) (not (dummy-right-iwm_observe-box_a2_p2-2_b1 dd)) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-iwm_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-left-iwm_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n96_observe-box_a1_p1-1_b0 dd) (not (box-at b0 p1-1)) (agent-at a5 p2-2) (not (box-at b1 p2-2)) (immediate-dummy-iwm_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE))
:effect 
(and (not (immediate-dummy-iwm_observe-box_a2_p2-2_b1 dd)) (dummy-left-iwm_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-iwm_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n96_observe-box_a1_p1-1_b0 dd) (not (box-at b0 p1-1)) (agent-at a5 p2-2) (box-at b1 p2-2) (immediate-dummy-iwm_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE))
:effect 
(and (not (immediate-dummy-iwm_observe-box_a2_p2-2_b1 dd)) (dummy-right-iwm_observe-box_a2_p2-2_b1 dd))
)
(:action act-ram_observe-box_a2_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iwm_observe-box_a2_p2-2_b1 dd) (immediate-dummy-ram_observe-box_a2_p3-1_b2 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p3-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-ram_observe-box_a2_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iwm_observe-box_a2_p2-2_b1 dd) (immediate-dummy-ram_observe-box_a2_p3-1_b2 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p3-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-ram_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iwm_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p3-1) (not (dummy-left-ram_observe-box_a2_p3-1_b2 dd)) (not (dummy-right-ram_observe-box_a2_p3-1_b2 dd)) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-ram_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-left-ram_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iwm_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-ram_observe-box_a2_p3-1_b2 dd) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-ram_observe-box_a2_p3-1_b2 dd)) (dummy-left-ram_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-ram_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iwm_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p3-1) (box-at b2 p3-1) (immediate-dummy-ram_observe-box_a2_p3-1_b2 dd) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-ram_observe-box_a2_p3-1_b2 dd)) (dummy-right-ram_observe-box_a2_p3-1_b2 dd))
)
(:action act-h56_observe-box-gp1_a5_p5-1_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ram_observe-box_a2_p3-1_b2 dd) (immediate-dummy-h56_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (box-at b5 p5-1) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_TRUE))
)
(:action act-h56_observe-box-gp1_a5_p5-1_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ram_observe-box_a2_p3-1_b2 dd) (immediate-dummy-h56_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b5 p5-1)) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_FALSE))
)
(:action act-dummy-h56_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ram_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (not (dummy-left-h56_observe-box-gp1_a5_p5-1_b5 dd)) (not (dummy-right-h56_observe-box-gp1_a5_p5-1_b5 dd)) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-h56_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-left-h56_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ram_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (not (box-at b5 p5-1)) (immediate-dummy-h56_observe-box-gp1_a5_p5-1_b5 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b5 p5-1 V_FALSE))
:effect 
(and (not (immediate-dummy-h56_observe-box-gp1_a5_p5-1_b5 dd)) (dummy-left-h56_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-right-h56_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ram_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (box-at b5 p5-1) (immediate-dummy-h56_observe-box-gp1_a5_p5-1_b5 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b5 p5-1 V_TRUE))
:effect 
(and (not (immediate-dummy-h56_observe-box-gp1_a5_p5-1_b5 dd)) (dummy-right-h56_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action goal-achieve-left-h56_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-h56_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-h56_observe-box-gp1_a5_p5-1_b5 dd)))
)
(:action act-knt_observe-box_a2_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h56_observe-box-gp1_a5_p5-1_b5 dd) (immediate-dummy-knt_observe-box_a2_p4-2_b4 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-knt_observe-box_a2_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h56_observe-box-gp1_a5_p5-1_b5 dd) (immediate-dummy-knt_observe-box_a2_p4-2_b4 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-knt_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h56_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (not (dummy-left-knt_observe-box_a2_p4-2_b4 dd)) (not (dummy-right-knt_observe-box_a2_p4-2_b4 dd)) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-knt_observe-box_a2_p4-2_b4 dd))
)
(:action dummy-left-knt_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h56_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-knt_observe-box_a2_p4-2_b4 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-knt_observe-box_a2_p4-2_b4 dd)) (dummy-left-knt_observe-box_a2_p4-2_b4 dd))
)
(:action dummy-right-knt_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-h56_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (box-at b4 p4-2) (immediate-dummy-knt_observe-box_a2_p4-2_b4 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-knt_observe-box_a2_p4-2_b4 dd)) (dummy-right-knt_observe-box_a2_p4-2_b4 dd))
)
(:action act-f5e_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-knt_observe-box_a2_p4-2_b4 dd) (not (box-at b4 p4-2)) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (pre-f5e_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action act-44e_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-f5e_joint-push_p5-1_p5-2_b5_a4_a5 dd) (agent-at a5 p4-1))
:effect 
(and (pre-44e_one-push_p4-1_p4-2_b4_a5 dd) (not (pre-f5e_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-44e_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-44e_one-push_p4-1_p4-2_b4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-44e_one-push_p4-1_p4-2_b4_a5 dd)))
)
(:action act-tnb_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-knt_observe-box_a2_p4-2_b4 dd) (box-at b4 p4-2) (not (box-at b2 p3-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (pre-tnb_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action goal-achieve-tnb_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-tnb_joint-push_p5-1_p5-2_b5_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-tnb_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action act-vv4_observe-box-gp1_a5_p5-1_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ram_observe-box_a2_p3-1_b2 dd) (immediate-dummy-vv4_observe-box-gp1_a5_p5-1_b5 dd) (box-at b2 p3-1) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (box-at b5 p5-1) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_TRUE))
)
(:action act-vv4_observe-box-gp1_a5_p5-1_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ram_observe-box_a2_p3-1_b2 dd) (immediate-dummy-vv4_observe-box-gp1_a5_p5-1_b5 dd) (box-at b2 p3-1) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b5 p5-1)) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_FALSE))
)
(:action act-dummy-vv4_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ram_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (not (dummy-left-vv4_observe-box-gp1_a5_p5-1_b5 dd)) (not (dummy-right-vv4_observe-box-gp1_a5_p5-1_b5 dd)) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-vv4_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-left-vv4_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ram_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (not (box-at b5 p5-1)) (immediate-dummy-vv4_observe-box-gp1_a5_p5-1_b5 dd) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b5 p5-1 V_FALSE))
:effect 
(and (not (immediate-dummy-vv4_observe-box-gp1_a5_p5-1_b5 dd)) (dummy-left-vv4_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-right-vv4_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ram_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (box-at b5 p5-1) (immediate-dummy-vv4_observe-box-gp1_a5_p5-1_b5 dd) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b5 p5-1 V_TRUE))
:effect 
(and (not (immediate-dummy-vv4_observe-box-gp1_a5_p5-1_b5 dd)) (dummy-right-vv4_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action goal-achieve-left-vv4_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vv4_observe-box-gp1_a5_p5-1_b5 dd) (box-at b2 p3-1) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-vv4_observe-box-gp1_a5_p5-1_b5 dd)))
)
(:action act-s2c_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vv4_observe-box-gp1_a5_p5-1_b5 dd) (box-at b2 p3-1) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (pre-s2c_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action act-xl2_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-s2c_joint-push_p5-1_p5-2_b5_a4_a5 dd) (agent-at a5 p3-1))
:effect 
(and (pre-xl2_joint-push_p3-1_p3-2_b2_a2_a5 dd) (not (pre-s2c_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action act-s16_observe-box_a5_p4-1_b4-T
:parameters ( ?a - agent)
:precondition 
(and (pre-xl2_joint-push_p3-1_p3-2_b2_a2_a5 dd) (immediate-dummy-s16_observe-box_a5_p4-1_b4 dd) (agent-at a5 p4-1) (box-at b4 p4-1) (not (Kbox-at b4 p4-1 V_TRUE)) (not (Kbox-at b4 p4-1 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-1 V_TRUE))
)
(:action act-s16_observe-box_a5_p4-1_b4-F
:parameters ( ?a - agent)
:precondition 
(and (pre-xl2_joint-push_p3-1_p3-2_b2_a2_a5 dd) (immediate-dummy-s16_observe-box_a5_p4-1_b4 dd) (agent-at a5 p4-1) (not (box-at b4 p4-1)) (not (Kbox-at b4 p4-1 V_TRUE)) (not (Kbox-at b4 p4-1 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-1 V_FALSE))
)
(:action act-dummy-s16_observe-box_a5_p4-1_b4
:parameters ( ?a - agent)
:precondition 
(and (pre-xl2_joint-push_p3-1_p3-2_b2_a2_a5 dd) (agent-at a5 p4-1) (not (dummy-left-s16_observe-box_a5_p4-1_b4 dd)) (not (dummy-right-s16_observe-box_a5_p4-1_b4 dd)))
:effect 
(and (immediate-dummy-s16_observe-box_a5_p4-1_b4 dd))
)
(:action dummy-left-s16_observe-box_a5_p4-1_b4
:parameters ( ?a - agent)
:precondition 
(and (agent-at a5 p4-1) (not (box-at b4 p4-1)) (immediate-dummy-s16_observe-box_a5_p4-1_b4 dd) (Kbox-at b4 p4-1 V_FALSE))
:effect 
(and (not (immediate-dummy-s16_observe-box_a5_p4-1_b4 dd)) (dummy-left-s16_observe-box_a5_p4-1_b4 dd))
)
(:action dummy-right-s16_observe-box_a5_p4-1_b4
:parameters ( ?a - agent)
:precondition 
(and (agent-at a5 p4-1) (box-at b4 p4-1) (immediate-dummy-s16_observe-box_a5_p4-1_b4 dd) (Kbox-at b4 p4-1 V_TRUE))
:effect 
(and (not (immediate-dummy-s16_observe-box_a5_p4-1_b4 dd)) (dummy-right-s16_observe-box_a5_p4-1_b4 dd))
)
(:action goal-achieve-left-s16_observe-box_a5_p4-1_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-s16_observe-box_a5_p4-1_b4 dd) (not (box-at b4 p4-1)) (Kbox-at b4 p4-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-s16_observe-box_a5_p4-1_b4 dd)))
)
(:action act-wp5_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-s16_observe-box_a5_p4-1_b4 dd) (box-at b4 p4-1) (agent-at a5 p4-1) (Kbox-at b4 p4-1 V_TRUE))
:effect 
(and (pre-wp5_one-push_p4-1_p4-2_b4_a5 dd))
)
(:action goal-achieve-wp5_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-wp5_one-push_p4-1_p4-2_b4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-wp5_one-push_p4-1_p4-2_b4_a5 dd)))
)
(:action act-4dw_observe-box_a2_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iwm_observe-box_a2_p2-2_b1 dd) (immediate-dummy-4dw_observe-box_a2_p3-1_b2 dd) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p3-1) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-4dw_observe-box_a2_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iwm_observe-box_a2_p2-2_b1 dd) (immediate-dummy-4dw_observe-box_a2_p3-1_b2 dd) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p3-1) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-4dw_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iwm_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p3-1) (not (dummy-left-4dw_observe-box_a2_p3-1_b2 dd)) (not (dummy-right-4dw_observe-box_a2_p3-1_b2 dd)) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-4dw_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-left-4dw_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iwm_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-4dw_observe-box_a2_p3-1_b2 dd) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-4dw_observe-box_a2_p3-1_b2 dd)) (dummy-left-4dw_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-4dw_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iwm_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p3-1) (box-at b2 p3-1) (immediate-dummy-4dw_observe-box_a2_p3-1_b2 dd) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-4dw_observe-box_a2_p3-1_b2 dd)) (dummy-right-4dw_observe-box_a2_p3-1_b2 dd))
)
(:action act-qhq_observe-box-gp1_a5_p5-1_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4dw_observe-box_a2_p3-1_b2 dd) (immediate-dummy-qhq_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (box-at b5 p5-1) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_TRUE))
)
(:action act-qhq_observe-box-gp1_a5_p5-1_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4dw_observe-box_a2_p3-1_b2 dd) (immediate-dummy-qhq_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b5 p5-1)) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_FALSE))
)
(:action act-dummy-qhq_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4dw_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (not (dummy-left-qhq_observe-box-gp1_a5_p5-1_b5 dd)) (not (dummy-right-qhq_observe-box-gp1_a5_p5-1_b5 dd)) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-qhq_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-left-qhq_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4dw_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (not (box-at b5 p5-1)) (immediate-dummy-qhq_observe-box-gp1_a5_p5-1_b5 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b5 p5-1 V_FALSE))
:effect 
(and (not (immediate-dummy-qhq_observe-box-gp1_a5_p5-1_b5 dd)) (dummy-left-qhq_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-right-qhq_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4dw_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (box-at b5 p5-1) (immediate-dummy-qhq_observe-box-gp1_a5_p5-1_b5 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b5 p5-1 V_TRUE))
:effect 
(and (not (immediate-dummy-qhq_observe-box-gp1_a5_p5-1_b5 dd)) (dummy-right-qhq_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action act-e1e_observe-box_a4_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qhq_observe-box-gp1_a5_p5-1_b5 dd) (immediate-dummy-e1e_observe-box_a4_p4-2_b4 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-e1e_observe-box_a4_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qhq_observe-box-gp1_a5_p5-1_b5 dd) (immediate-dummy-e1e_observe-box_a4_p4-2_b4 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-e1e_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qhq_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (not (dummy-left-e1e_observe-box_a4_p4-2_b4 dd)) (not (dummy-right-e1e_observe-box_a4_p4-2_b4 dd)) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-e1e_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-left-e1e_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qhq_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-e1e_observe-box_a4_p4-2_b4 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-e1e_observe-box_a4_p4-2_b4 dd)) (dummy-left-e1e_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-e1e_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qhq_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (box-at b4 p4-2) (immediate-dummy-e1e_observe-box_a4_p4-2_b4 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-e1e_observe-box_a4_p4-2_b4 dd)) (dummy-right-e1e_observe-box_a4_p4-2_b4 dd))
)
(:action act-oym_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-e1e_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (pre-oym_one-push_p4-1_p4-2_b4_a5 dd))
)
(:action goal-achieve-oym_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-oym_one-push_p4-1_p4-2_b4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-oym_one-push_p4-1_p4-2_b4_a5 dd)))
)
(:action goal-achieve-right-e1e_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-e1e_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-e1e_observe-box_a4_p4-2_b4 dd)))
)
(:action act-dy0_observe-box_a2_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qhq_observe-box-gp1_a5_p5-1_b5 dd) (immediate-dummy-dy0_observe-box_a2_p4-2_b4 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-dy0_observe-box_a2_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qhq_observe-box-gp1_a5_p5-1_b5 dd) (immediate-dummy-dy0_observe-box_a2_p4-2_b4 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-dy0_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qhq_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (not (dummy-left-dy0_observe-box_a2_p4-2_b4 dd)) (not (dummy-right-dy0_observe-box_a2_p4-2_b4 dd)) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-dy0_observe-box_a2_p4-2_b4 dd))
)
(:action dummy-left-dy0_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qhq_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-dy0_observe-box_a2_p4-2_b4 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-dy0_observe-box_a2_p4-2_b4 dd)) (dummy-left-dy0_observe-box_a2_p4-2_b4 dd))
)
(:action dummy-right-dy0_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qhq_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (box-at b4 p4-2) (immediate-dummy-dy0_observe-box_a2_p4-2_b4 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-dy0_observe-box_a2_p4-2_b4 dd)) (dummy-right-dy0_observe-box_a2_p4-2_b4 dd))
)
(:action act-e3w_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dy0_observe-box_a2_p4-2_b4 dd) (not (box-at b4 p4-2)) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (pre-e3w_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action act-4wa_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-e3w_joint-push_p5-1_p5-2_b5_a4_a5 dd) (agent-at a5 p4-1))
:effect 
(and (pre-4wa_one-push_p4-1_p4-2_b4_a5 dd) (not (pre-e3w_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-4wa_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-4wa_one-push_p4-1_p4-2_b4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-4wa_one-push_p4-1_p4-2_b4_a5 dd)))
)
(:action act-s9i_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dy0_observe-box_a2_p4-2_b4 dd) (box-at b4 p4-2) (not (box-at b2 p3-1)) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (pre-s9i_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action goal-achieve-s9i_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-s9i_joint-push_p5-1_p5-2_b5_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-s9i_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action act-kut_observe-box_a5_p5-2_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4dw_observe-box_a2_p3-1_b2 dd) (immediate-dummy-kut_observe-box_a5_p5-2_b5 dd) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-2) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (box-at b5 p5-2) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_TRUE))
)
(:action act-kut_observe-box_a5_p5-2_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4dw_observe-box_a2_p3-1_b2 dd) (immediate-dummy-kut_observe-box_a5_p5-2_b5 dd) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-2) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b5 p5-2)) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_FALSE))
)
(:action act-dummy-kut_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4dw_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-2) (not (dummy-left-kut_observe-box_a5_p5-2_b5 dd)) (not (dummy-right-kut_observe-box_a5_p5-2_b5 dd)) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-kut_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-left-kut_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4dw_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-2) (not (box-at b5 p5-2)) (immediate-dummy-kut_observe-box_a5_p5-2_b5 dd) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b5 p5-2 V_FALSE))
:effect 
(and (not (immediate-dummy-kut_observe-box_a5_p5-2_b5 dd)) (dummy-left-kut_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-right-kut_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4dw_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-2) (box-at b5 p5-2) (immediate-dummy-kut_observe-box_a5_p5-2_b5 dd) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b5 p5-2 V_TRUE))
:effect 
(and (not (immediate-dummy-kut_observe-box_a5_p5-2_b5 dd)) (dummy-right-kut_observe-box_a5_p5-2_b5 dd))
)
(:action act-e2v_observe-box_a2_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kut_observe-box_a5_p5-2_b5 dd) (immediate-dummy-e2v_observe-box_a2_p4-2_b4 dd) (not (box-at b5 p5-2)) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-e2v_observe-box_a2_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kut_observe-box_a5_p5-2_b5 dd) (immediate-dummy-e2v_observe-box_a2_p4-2_b4 dd) (not (box-at b5 p5-2)) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-e2v_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kut_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (not (dummy-left-e2v_observe-box_a2_p4-2_b4 dd)) (not (dummy-right-e2v_observe-box_a2_p4-2_b4 dd)) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-e2v_observe-box_a2_p4-2_b4 dd))
)
(:action dummy-left-e2v_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kut_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-e2v_observe-box_a2_p4-2_b4 dd) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-e2v_observe-box_a2_p4-2_b4 dd)) (dummy-left-e2v_observe-box_a2_p4-2_b4 dd))
)
(:action dummy-right-e2v_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kut_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p4-2) (box-at b4 p4-2) (immediate-dummy-e2v_observe-box_a2_p4-2_b4 dd) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-e2v_observe-box_a2_p4-2_b4 dd)) (dummy-right-e2v_observe-box_a2_p4-2_b4 dd))
)
(:action act-xtp_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-e2v_observe-box_a2_p4-2_b4 dd) (not (box-at b4 p4-2)) (not (box-at b5 p5-2)) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (pre-xtp_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action act-ia0_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-xtp_joint-push_p5-1_p5-2_b5_a4_a5 dd) (agent-at a5 p4-1))
:effect 
(and (pre-ia0_one-push_p4-1_p4-2_b4_a5 dd) (not (pre-xtp_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-ia0_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-ia0_one-push_p4-1_p4-2_b4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-ia0_one-push_p4-1_p4-2_b4_a5 dd)))
)
(:action act-sdf_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-e2v_observe-box_a2_p4-2_b4 dd) (box-at b4 p4-2) (not (box-at b5 p5-2)) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (agent-at a5 p5-1) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (pre-sdf_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action goal-achieve-sdf_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-sdf_joint-push_p5-1_p5-2_b5_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-sdf_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-right-kut_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kut_observe-box_a5_p5-2_b5 dd) (box-at b5 p5-2) (box-at b2 p3-1) (box-at b1 p2-2) (not (box-at b0 p1-1)) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-kut_observe-box_a5_p5-2_b5 dd)))
)
(:action act-vr4_observe-box_a3_p2-1_b1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n96_observe-box_a1_p1-1_b0 dd) (immediate-dummy-vr4_observe-box_a3_p2-1_b1 dd) (box-at b0 p1-1) (agent-at a5 p2-1) (Kbox-at b0 p1-1 V_TRUE) (box-at b1 p2-1) (not (Kbox-at b1 p2-1 V_TRUE)) (not (Kbox-at b1 p2-1 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-1 V_TRUE))
)
(:action act-vr4_observe-box_a3_p2-1_b1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n96_observe-box_a1_p1-1_b0 dd) (immediate-dummy-vr4_observe-box_a3_p2-1_b1 dd) (box-at b0 p1-1) (agent-at a5 p2-1) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b1 p2-1)) (not (Kbox-at b1 p2-1 V_TRUE)) (not (Kbox-at b1 p2-1 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-1 V_FALSE))
)
(:action act-dummy-vr4_observe-box_a3_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n96_observe-box_a1_p1-1_b0 dd) (box-at b0 p1-1) (agent-at a5 p2-1) (not (dummy-left-vr4_observe-box_a3_p2-1_b1 dd)) (not (dummy-right-vr4_observe-box_a3_p2-1_b1 dd)) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-vr4_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-left-vr4_observe-box_a3_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n96_observe-box_a1_p1-1_b0 dd) (box-at b0 p1-1) (agent-at a5 p2-1) (not (box-at b1 p2-1)) (immediate-dummy-vr4_observe-box_a3_p2-1_b1 dd) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (not (immediate-dummy-vr4_observe-box_a3_p2-1_b1 dd)) (dummy-left-vr4_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-right-vr4_observe-box_a3_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n96_observe-box_a1_p1-1_b0 dd) (box-at b0 p1-1) (agent-at a5 p2-1) (box-at b1 p2-1) (immediate-dummy-vr4_observe-box_a3_p2-1_b1 dd) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (not (immediate-dummy-vr4_observe-box_a3_p2-1_b1 dd)) (dummy-right-vr4_observe-box_a3_p2-1_b1 dd))
)
(:action act-zdd_observe-box_a4_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vr4_observe-box_a3_p2-1_b1 dd) (immediate-dummy-zdd_observe-box_a4_p4-2_b4 dd) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p4-2) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-zdd_observe-box_a4_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vr4_observe-box_a3_p2-1_b1 dd) (immediate-dummy-zdd_observe-box_a4_p4-2_b4 dd) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p4-2) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-zdd_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vr4_observe-box_a3_p2-1_b1 dd) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p4-2) (not (dummy-left-zdd_observe-box_a4_p4-2_b4 dd)) (not (dummy-right-zdd_observe-box_a4_p4-2_b4 dd)) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-zdd_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-left-zdd_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vr4_observe-box_a3_p2-1_b1 dd) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-zdd_observe-box_a4_p4-2_b4 dd) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-zdd_observe-box_a4_p4-2_b4 dd)) (dummy-left-zdd_observe-box_a4_p4-2_b4 dd))
)
(:action dummy-right-zdd_observe-box_a4_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vr4_observe-box_a3_p2-1_b1 dd) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p4-2) (box-at b4 p4-2) (immediate-dummy-zdd_observe-box_a4_p4-2_b4 dd) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-zdd_observe-box_a4_p4-2_b4 dd)) (dummy-right-zdd_observe-box_a4_p4-2_b4 dd))
)
(:action act-ztx_observe-box_a2_p3-1_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-zdd_observe-box_a4_p4-2_b4 dd) (immediate-dummy-ztx_observe-box_a2_p3-1_b2 dd) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p3-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (box-at b2 p3-1) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_TRUE))
)
(:action act-ztx_observe-box_a2_p3-1_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-zdd_observe-box_a4_p4-2_b4 dd) (immediate-dummy-ztx_observe-box_a2_p3-1_b2 dd) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p3-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b2 p3-1)) (not (Kbox-at b2 p3-1 V_TRUE)) (not (Kbox-at b2 p3-1 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-1 V_FALSE))
)
(:action act-dummy-ztx_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-zdd_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p3-1) (not (dummy-left-ztx_observe-box_a2_p3-1_b2 dd)) (not (dummy-right-ztx_observe-box_a2_p3-1_b2 dd)) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-ztx_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-left-ztx_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-zdd_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p3-1) (not (box-at b2 p3-1)) (immediate-dummy-ztx_observe-box_a2_p3-1_b2 dd) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b2 p3-1 V_FALSE))
:effect 
(and (not (immediate-dummy-ztx_observe-box_a2_p3-1_b2 dd)) (dummy-left-ztx_observe-box_a2_p3-1_b2 dd))
)
(:action dummy-right-ztx_observe-box_a2_p3-1_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-zdd_observe-box_a4_p4-2_b4 dd) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p3-1) (box-at b2 p3-1) (immediate-dummy-ztx_observe-box_a2_p3-1_b2 dd) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b2 p3-1 V_TRUE))
:effect 
(and (not (immediate-dummy-ztx_observe-box_a2_p3-1_b2 dd)) (dummy-right-ztx_observe-box_a2_p3-1_b2 dd))
)
(:action act-bn7_observe-box_a5_p5-2_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ztx_observe-box_a2_p3-1_b2 dd) (immediate-dummy-bn7_observe-box_a5_p5-2_b5 dd) (not (box-at b2 p3-1)) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-2) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (box-at b5 p5-2) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_TRUE))
)
(:action act-bn7_observe-box_a5_p5-2_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ztx_observe-box_a2_p3-1_b2 dd) (immediate-dummy-bn7_observe-box_a5_p5-2_b5 dd) (not (box-at b2 p3-1)) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-2) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b5 p5-2)) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_FALSE))
)
(:action act-dummy-bn7_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ztx_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-2) (not (dummy-left-bn7_observe-box_a5_p5-2_b5 dd)) (not (dummy-right-bn7_observe-box_a5_p5-2_b5 dd)) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-bn7_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-left-bn7_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ztx_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-2) (not (box-at b5 p5-2)) (immediate-dummy-bn7_observe-box_a5_p5-2_b5 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b5 p5-2 V_FALSE))
:effect 
(and (not (immediate-dummy-bn7_observe-box_a5_p5-2_b5 dd)) (dummy-left-bn7_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-right-bn7_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ztx_observe-box_a2_p3-1_b2 dd) (not (box-at b2 p3-1)) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-2) (box-at b5 p5-2) (immediate-dummy-bn7_observe-box_a5_p5-2_b5 dd) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b5 p5-2 V_TRUE))
:effect 
(and (not (immediate-dummy-bn7_observe-box_a5_p5-2_b5 dd)) (dummy-right-bn7_observe-box_a5_p5-2_b5 dd))
)
(:action act-k12_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bn7_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (not (box-at b2 p3-1)) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-1) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (pre-k12_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action goal-achieve-k12_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-k12_joint-push_p5-1_p5-2_b5_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-k12_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-right-bn7_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bn7_observe-box_a5_p5-2_b5 dd) (box-at b5 p5-2) (not (box-at b2 p3-1)) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b2 p3-1 V_FALSE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-bn7_observe-box_a5_p5-2_b5 dd)))
)
(:action act-5le_observe-box-gp1_a5_p5-1_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ztx_observe-box_a2_p3-1_b2 dd) (immediate-dummy-5le_observe-box-gp1_a5_p5-1_b5 dd) (box-at b2 p3-1) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-1) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (box-at b5 p5-1) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_TRUE))
)
(:action act-5le_observe-box-gp1_a5_p5-1_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ztx_observe-box_a2_p3-1_b2 dd) (immediate-dummy-5le_observe-box-gp1_a5_p5-1_b5 dd) (box-at b2 p3-1) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-1) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b5 p5-1)) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_FALSE))
)
(:action act-dummy-5le_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ztx_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-1) (not (dummy-left-5le_observe-box-gp1_a5_p5-1_b5 dd)) (not (dummy-right-5le_observe-box-gp1_a5_p5-1_b5 dd)) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-5le_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-left-5le_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ztx_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-1) (not (box-at b5 p5-1)) (immediate-dummy-5le_observe-box-gp1_a5_p5-1_b5 dd) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b5 p5-1 V_FALSE))
:effect 
(and (not (immediate-dummy-5le_observe-box-gp1_a5_p5-1_b5 dd)) (dummy-left-5le_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-right-5le_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ztx_observe-box_a2_p3-1_b2 dd) (box-at b2 p3-1) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-1) (box-at b5 p5-1) (immediate-dummy-5le_observe-box-gp1_a5_p5-1_b5 dd) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b5 p5-1 V_TRUE))
:effect 
(and (not (immediate-dummy-5le_observe-box-gp1_a5_p5-1_b5 dd)) (dummy-right-5le_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action goal-achieve-left-5le_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5le_observe-box-gp1_a5_p5-1_b5 dd) (box-at b2 p3-1) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-5le_observe-box-gp1_a5_p5-1_b5 dd)))
)
(:action act-nfx_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5le_observe-box-gp1_a5_p5-1_b5 dd) (box-at b2 p3-1) (not (box-at b4 p4-2)) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-1) (Kbox-at b2 p3-1 V_TRUE) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (pre-nfx_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action goal-achieve-nfx_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-nfx_joint-push_p5-1_p5-2_b5_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-nfx_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action act-699_observe-box_a5_p5-2_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zdd_observe-box_a4_p4-2_b4 dd) (immediate-dummy-699_observe-box_a5_p5-2_b5 dd) (box-at b4 p4-2) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-2) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (box-at b5 p5-2) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_TRUE))
)
(:action act-699_observe-box_a5_p5-2_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zdd_observe-box_a4_p4-2_b4 dd) (immediate-dummy-699_observe-box_a5_p5-2_b5 dd) (box-at b4 p4-2) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-2) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b5 p5-2)) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_FALSE))
)
(:action act-dummy-699_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zdd_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-2) (not (dummy-left-699_observe-box_a5_p5-2_b5 dd)) (not (dummy-right-699_observe-box_a5_p5-2_b5 dd)) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-699_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-left-699_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zdd_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-2) (not (box-at b5 p5-2)) (immediate-dummy-699_observe-box_a5_p5-2_b5 dd) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b5 p5-2 V_FALSE))
:effect 
(and (not (immediate-dummy-699_observe-box_a5_p5-2_b5 dd)) (dummy-left-699_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-right-699_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zdd_observe-box_a4_p4-2_b4 dd) (box-at b4 p4-2) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-2) (box-at b5 p5-2) (immediate-dummy-699_observe-box_a5_p5-2_b5 dd) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b5 p5-2 V_TRUE))
:effect 
(and (not (immediate-dummy-699_observe-box_a5_p5-2_b5 dd)) (dummy-right-699_observe-box_a5_p5-2_b5 dd))
)
(:action act-s1f_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-699_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b4 p4-2) (not (box-at b1 p2-1)) (box-at b0 p1-1) (agent-at a5 p5-1) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (pre-s1f_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action goal-achieve-s1f_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-s1f_joint-push_p5-1_p5-2_b5_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-s1f_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-right-699_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-699_observe-box_a5_p5-2_b5 dd) (box-at b5 p5-2) (box-at b4 p4-2) (not (box-at b1 p2-1)) (box-at b0 p1-1) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-699_observe-box_a5_p5-2_b5 dd)))
)
(:action act-74x_observe-box_a2_p3-2_b2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vr4_observe-box_a3_p2-1_b1 dd) (immediate-dummy-74x_observe-box_a2_p3-2_b2 dd) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p3-2) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (box-at b2 p3-2) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_TRUE))
)
(:action act-74x_observe-box_a2_p3-2_b2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vr4_observe-box_a3_p2-1_b1 dd) (immediate-dummy-74x_observe-box_a2_p3-2_b2 dd) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p3-2) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b2 p3-2)) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_FALSE))
)
(:action act-dummy-74x_observe-box_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vr4_observe-box_a3_p2-1_b1 dd) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p3-2) (not (dummy-left-74x_observe-box_a2_p3-2_b2 dd)) (not (dummy-right-74x_observe-box_a2_p3-2_b2 dd)) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-74x_observe-box_a2_p3-2_b2 dd))
)
(:action dummy-left-74x_observe-box_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vr4_observe-box_a3_p2-1_b1 dd) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p3-2) (not (box-at b2 p3-2)) (immediate-dummy-74x_observe-box_a2_p3-2_b2 dd) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b2 p3-2 V_FALSE))
:effect 
(and (not (immediate-dummy-74x_observe-box_a2_p3-2_b2 dd)) (dummy-left-74x_observe-box_a2_p3-2_b2 dd))
)
(:action dummy-right-74x_observe-box_a2_p3-2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vr4_observe-box_a3_p2-1_b1 dd) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p3-2) (box-at b2 p3-2) (immediate-dummy-74x_observe-box_a2_p3-2_b2 dd) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b2 p3-2 V_TRUE))
:effect 
(and (not (immediate-dummy-74x_observe-box_a2_p3-2_b2 dd)) (dummy-right-74x_observe-box_a2_p3-2_b2 dd))
)
(:action act-av0_observe-box-gp1_a5_p5-1_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-74x_observe-box_a2_p3-2_b2 dd) (immediate-dummy-av0_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-1) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (box-at b5 p5-1) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_TRUE))
)
(:action act-av0_observe-box-gp1_a5_p5-1_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-74x_observe-box_a2_p3-2_b2 dd) (immediate-dummy-av0_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-1) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b5 p5-1)) (not (Kbox-at b5 p5-1 V_TRUE)) (not (Kbox-at b5 p5-1 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-1 V_FALSE))
)
(:action act-dummy-av0_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-74x_observe-box_a2_p3-2_b2 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-1) (not (dummy-left-av0_observe-box-gp1_a5_p5-1_b5 dd)) (not (dummy-right-av0_observe-box-gp1_a5_p5-1_b5 dd)) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-av0_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-left-av0_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-74x_observe-box_a2_p3-2_b2 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-1) (not (box-at b5 p5-1)) (immediate-dummy-av0_observe-box-gp1_a5_p5-1_b5 dd) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b5 p5-1 V_FALSE))
:effect 
(and (not (immediate-dummy-av0_observe-box-gp1_a5_p5-1_b5 dd)) (dummy-left-av0_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action dummy-right-av0_observe-box-gp1_a5_p5-1_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-74x_observe-box_a2_p3-2_b2 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-1) (box-at b5 p5-1) (immediate-dummy-av0_observe-box-gp1_a5_p5-1_b5 dd) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b5 p5-1 V_TRUE))
:effect 
(and (not (immediate-dummy-av0_observe-box-gp1_a5_p5-1_b5 dd)) (dummy-right-av0_observe-box-gp1_a5_p5-1_b5 dd))
)
(:action act-qjf_observe-box_a2_p4-2_b4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-av0_observe-box-gp1_a5_p5-1_b5 dd) (immediate-dummy-qjf_observe-box_a2_p4-2_b4 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p4-2) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (box-at b4 p4-2) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_TRUE))
)
(:action act-qjf_observe-box_a2_p4-2_b4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-av0_observe-box-gp1_a5_p5-1_b5 dd) (immediate-dummy-qjf_observe-box_a2_p4-2_b4 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p4-2) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b4 p4-2)) (not (Kbox-at b4 p4-2 V_TRUE)) (not (Kbox-at b4 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b4 p4-2 V_FALSE))
)
(:action act-dummy-qjf_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-av0_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p4-2) (not (dummy-left-qjf_observe-box_a2_p4-2_b4 dd)) (not (dummy-right-qjf_observe-box_a2_p4-2_b4 dd)) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-qjf_observe-box_a2_p4-2_b4 dd))
)
(:action dummy-left-qjf_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-av0_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p4-2) (not (box-at b4 p4-2)) (immediate-dummy-qjf_observe-box_a2_p4-2_b4 dd) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b4 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-qjf_observe-box_a2_p4-2_b4 dd)) (dummy-left-qjf_observe-box_a2_p4-2_b4 dd))
)
(:action dummy-right-qjf_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-av0_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p4-2) (box-at b4 p4-2) (immediate-dummy-qjf_observe-box_a2_p4-2_b4 dd) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b4 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-qjf_observe-box_a2_p4-2_b4 dd)) (dummy-right-qjf_observe-box_a2_p4-2_b4 dd))
)
(:action act-g26_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qjf_observe-box_a2_p4-2_b4 dd) (not (box-at b4 p4-2)) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p4-1) (Kbox-at b4 p4-2 V_FALSE) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (pre-g26_one-push_p4-1_p4-2_b4_a5 dd))
)
(:action goal-achieve-g26_one-push_p4-1_p4-2_b4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-g26_one-push_p4-1_p4-2_b4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-g26_one-push_p4-1_p4-2_b4_a5 dd)))
)
(:action goal-achieve-right-qjf_observe-box_a2_p4-2_b4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qjf_observe-box_a2_p4-2_b4 dd) (box-at b4 p4-2) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (Kbox-at b4 p4-2 V_TRUE) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-qjf_observe-box_a2_p4-2_b4 dd)))
)
(:action act-eva_joint-push_p3-1_p3-2_b2_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-av0_observe-box-gp1_a5_p5-1_b5 dd) (not (box-at b2 p3-2)) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p3-1) (Kbox-at b2 p3-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (pre-eva_joint-push_p3-1_p3-2_b2_a2_a5 dd))
)
(:action act-6co_joint-push_p5-1_p5-2_b5_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-eva_joint-push_p3-1_p3-2_b2_a2_a5 dd) (agent-at a5 p5-1))
:effect 
(and (pre-6co_joint-push_p5-1_p5-2_b5_a2_a5 dd) (not (pre-eva_joint-push_p3-1_p3-2_b2_a2_a5 dd)))
)
(:action goal-achieve-6co_joint-push_p5-1_p5-2_b5_a2_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-6co_joint-push_p5-1_p5-2_b5_a2_a5 dd))
:effect 
(and (done-goal dd) (not (pre-6co_joint-push_p5-1_p5-2_b5_a2_a5 dd)))
)
(:action act-xn1_observe-box_a5_p5-2_b5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-74x_observe-box_a2_p3-2_b2 dd) (immediate-dummy-xn1_observe-box_a5_p5-2_b5 dd) (box-at b2 p3-2) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-2) (Kbox-at b2 p3-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (box-at b5 p5-2) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_TRUE))
)
(:action act-xn1_observe-box_a5_p5-2_b5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-74x_observe-box_a2_p3-2_b2 dd) (immediate-dummy-xn1_observe-box_a5_p5-2_b5 dd) (box-at b2 p3-2) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-2) (Kbox-at b2 p3-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b5 p5-2)) (not (Kbox-at b5 p5-2 V_TRUE)) (not (Kbox-at b5 p5-2 V_FALSE)))
:effect 
(and (Kbox-at b5 p5-2 V_FALSE))
)
(:action act-dummy-xn1_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-74x_observe-box_a2_p3-2_b2 dd) (box-at b2 p3-2) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-2) (not (dummy-left-xn1_observe-box_a5_p5-2_b5 dd)) (not (dummy-right-xn1_observe-box_a5_p5-2_b5 dd)) (Kbox-at b2 p3-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-xn1_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-left-xn1_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-74x_observe-box_a2_p3-2_b2 dd) (box-at b2 p3-2) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-2) (not (box-at b5 p5-2)) (immediate-dummy-xn1_observe-box_a5_p5-2_b5 dd) (Kbox-at b2 p3-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b5 p5-2 V_FALSE))
:effect 
(and (not (immediate-dummy-xn1_observe-box_a5_p5-2_b5 dd)) (dummy-left-xn1_observe-box_a5_p5-2_b5 dd))
)
(:action dummy-right-xn1_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-74x_observe-box_a2_p3-2_b2 dd) (box-at b2 p3-2) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-2) (box-at b5 p5-2) (immediate-dummy-xn1_observe-box_a5_p5-2_b5 dd) (Kbox-at b2 p3-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b5 p5-2 V_TRUE))
:effect 
(and (not (immediate-dummy-xn1_observe-box_a5_p5-2_b5 dd)) (dummy-right-xn1_observe-box_a5_p5-2_b5 dd))
)
(:action act-xnz_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xn1_observe-box_a5_p5-2_b5 dd) (not (box-at b5 p5-2)) (box-at b2 p3-2) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a5 p5-1) (Kbox-at b5 p5-2 V_FALSE) (Kbox-at b2 p3-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (pre-xnz_joint-push_p5-1_p5-2_b5_a4_a5 dd))
)
(:action goal-achieve-xnz_joint-push_p5-1_p5-2_b5_a4_a5
:parameters ( ?a - agent)
:precondition 
(and (pre-xnz_joint-push_p5-1_p5-2_b5_a4_a5 dd))
:effect 
(and (done-goal dd) (not (pre-xnz_joint-push_p5-1_p5-2_b5_a4_a5 dd)))
)
(:action goal-achieve-right-xn1_observe-box_a5_p5-2_b5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xn1_observe-box_a5_p5-2_b5 dd) (box-at b5 p5-2) (box-at b2 p3-2) (box-at b1 p2-1) (box-at b0 p1-1) (Kbox-at b5 p5-2 V_TRUE) (Kbox-at b2 p3-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-xn1_observe-box_a5_p5-2_b5 dd)))
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
