(define (domain Kbox-3-a4)
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
 a4 - agent
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
(init-428_observe-box_a2_p2-1_b1 ?dd - dummy)
(immediate-dummy-428_observe-box_a2_p2-1_b1 ?dd - dummy)
(dummy-left-428_observe-box_a2_p2-1_b1 ?dd - dummy)
(immediate-dummy-ofq_observe-box_a4_p4-2_b3 ?dd - dummy)
(dummy-left-ofq_observe-box_a4_p4-2_b3 ?dd - dummy)
(pre-55z_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-ofq_observe-box_a4_p4-2_b3 ?dd - dummy)
(dummy-right-428_observe-box_a2_p2-1_b1 ?dd - dummy)
(immediate-dummy-qei_observe-box_a1_p1-2_b0 ?dd - dummy)
(dummy-left-qei_observe-box_a1_p1-2_b0 ?dd - dummy)
(immediate-dummy-a7k_observe-box_a4_p4-2_b3 ?dd - dummy)
(dummy-left-a7k_observe-box_a4_p4-2_b3 ?dd - dummy)
(pre-49u_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
(dummy-right-a7k_observe-box_a4_p4-2_b3 ?dd - dummy)
(dummy-right-qei_observe-box_a1_p1-2_b0 ?dd - dummy)
(immediate-dummy-ws2_observe-box_a4_p4-1_b3 ?dd - dummy)
(dummy-left-ws2_observe-box_a4_p4-1_b3 ?dd - dummy)
(dummy-right-ws2_observe-box_a4_p4-1_b3 ?dd - dummy)
(pre-7z5_joint-push_p4-1_p4-2_b3_a3_a4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-428_observe-box_a2_p2-1_b1-T
:parameters ( ?a - agent)
:precondition 
(and (init-428_observe-box_a2_p2-1_b1 dd) (immediate-dummy-428_observe-box_a2_p2-1_b1 dd) (agent-at a4 p2-1) (box-at b1 p2-1) (not (Kbox-at b1 p2-1 V_TRUE)) (not (Kbox-at b1 p2-1 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-1 V_TRUE))
)
(:action act-428_observe-box_a2_p2-1_b1-F
:parameters ( ?a - agent)
:precondition 
(and (init-428_observe-box_a2_p2-1_b1 dd) (immediate-dummy-428_observe-box_a2_p2-1_b1 dd) (agent-at a4 p2-1) (not (box-at b1 p2-1)) (not (Kbox-at b1 p2-1 V_TRUE)) (not (Kbox-at b1 p2-1 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-1 V_FALSE))
)
(:action act-dummy-428_observe-box_a2_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (init-428_observe-box_a2_p2-1_b1 dd) (not (dummy-left-428_observe-box_a2_p2-1_b1 dd)) (not (dummy-right-428_observe-box_a2_p2-1_b1 dd)))
:effect 
(and (immediate-dummy-428_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-left-428_observe-box_a2_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (init-428_observe-box_a2_p2-1_b1 dd) (agent-at a4 p2-1) (not (box-at b1 p2-1)) (immediate-dummy-428_observe-box_a2_p2-1_b1 dd) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (not (init-428_observe-box_a2_p2-1_b1 dd)) (not (immediate-dummy-428_observe-box_a2_p2-1_b1 dd)) (dummy-left-428_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-right-428_observe-box_a2_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (init-428_observe-box_a2_p2-1_b1 dd) (agent-at a4 p2-1) (box-at b1 p2-1) (immediate-dummy-428_observe-box_a2_p2-1_b1 dd) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (not (init-428_observe-box_a2_p2-1_b1 dd)) (not (immediate-dummy-428_observe-box_a2_p2-1_b1 dd)) (dummy-right-428_observe-box_a2_p2-1_b1 dd))
)
(:action act-ofq_observe-box_a4_p4-2_b3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-428_observe-box_a2_p2-1_b1 dd) (immediate-dummy-ofq_observe-box_a4_p4-2_b3 dd) (not (box-at b1 p2-1)) (agent-at a4 p4-2) (Kbox-at b1 p2-1 V_FALSE) (box-at b3 p4-2) (not (Kbox-at b3 p4-2 V_TRUE)) (not (Kbox-at b3 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b3 p4-2 V_TRUE))
)
(:action act-ofq_observe-box_a4_p4-2_b3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-428_observe-box_a2_p2-1_b1 dd) (immediate-dummy-ofq_observe-box_a4_p4-2_b3 dd) (not (box-at b1 p2-1)) (agent-at a4 p4-2) (Kbox-at b1 p2-1 V_FALSE) (not (box-at b3 p4-2)) (not (Kbox-at b3 p4-2 V_TRUE)) (not (Kbox-at b3 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b3 p4-2 V_FALSE))
)
(:action act-dummy-ofq_observe-box_a4_p4-2_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-428_observe-box_a2_p2-1_b1 dd) (not (box-at b1 p2-1)) (agent-at a4 p4-2) (not (dummy-left-ofq_observe-box_a4_p4-2_b3 dd)) (not (dummy-right-ofq_observe-box_a4_p4-2_b3 dd)) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (immediate-dummy-ofq_observe-box_a4_p4-2_b3 dd))
)
(:action dummy-left-ofq_observe-box_a4_p4-2_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-428_observe-box_a2_p2-1_b1 dd) (not (box-at b1 p2-1)) (agent-at a4 p4-2) (not (box-at b3 p4-2)) (immediate-dummy-ofq_observe-box_a4_p4-2_b3 dd) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b3 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-ofq_observe-box_a4_p4-2_b3 dd)) (dummy-left-ofq_observe-box_a4_p4-2_b3 dd))
)
(:action dummy-right-ofq_observe-box_a4_p4-2_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-428_observe-box_a2_p2-1_b1 dd) (not (box-at b1 p2-1)) (agent-at a4 p4-2) (box-at b3 p4-2) (immediate-dummy-ofq_observe-box_a4_p4-2_b3 dd) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b3 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-ofq_observe-box_a4_p4-2_b3 dd)) (dummy-right-ofq_observe-box_a4_p4-2_b3 dd))
)
(:action act-55z_joint-push_p4-1_p4-2_b3_a3_a4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ofq_observe-box_a4_p4-2_b3 dd) (not (box-at b3 p4-2)) (not (box-at b1 p2-1)) (agent-at a4 p4-1) (Kbox-at b3 p4-2 V_FALSE) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (pre-55z_joint-push_p4-1_p4-2_b3_a3_a4 dd))
)
(:action goal-achieve-55z_joint-push_p4-1_p4-2_b3_a3_a4
:parameters ( ?a - agent)
:precondition 
(and (pre-55z_joint-push_p4-1_p4-2_b3_a3_a4 dd))
:effect 
(and (done-goal dd) (not (pre-55z_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
(:action goal-achieve-right-ofq_observe-box_a4_p4-2_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ofq_observe-box_a4_p4-2_b3 dd) (box-at b3 p4-2) (not (box-at b1 p2-1)) (Kbox-at b3 p4-2 V_TRUE) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-ofq_observe-box_a4_p4-2_b3 dd)))
)
(:action act-qei_observe-box_a1_p1-2_b0-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-428_observe-box_a2_p2-1_b1 dd) (immediate-dummy-qei_observe-box_a1_p1-2_b0 dd) (box-at b1 p2-1) (agent-at a4 p1-2) (Kbox-at b1 p2-1 V_TRUE) (box-at b0 p1-2) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_TRUE))
)
(:action act-qei_observe-box_a1_p1-2_b0-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-428_observe-box_a2_p2-1_b1 dd) (immediate-dummy-qei_observe-box_a1_p1-2_b0 dd) (box-at b1 p2-1) (agent-at a4 p1-2) (Kbox-at b1 p2-1 V_TRUE) (not (box-at b0 p1-2)) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_FALSE))
)
(:action act-dummy-qei_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-428_observe-box_a2_p2-1_b1 dd) (box-at b1 p2-1) (agent-at a4 p1-2) (not (dummy-left-qei_observe-box_a1_p1-2_b0 dd)) (not (dummy-right-qei_observe-box_a1_p1-2_b0 dd)) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (immediate-dummy-qei_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-left-qei_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-428_observe-box_a2_p2-1_b1 dd) (box-at b1 p2-1) (agent-at a4 p1-2) (not (box-at b0 p1-2)) (immediate-dummy-qei_observe-box_a1_p1-2_b0 dd) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (not (immediate-dummy-qei_observe-box_a1_p1-2_b0 dd)) (dummy-left-qei_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-qei_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-428_observe-box_a2_p2-1_b1 dd) (box-at b1 p2-1) (agent-at a4 p1-2) (box-at b0 p1-2) (immediate-dummy-qei_observe-box_a1_p1-2_b0 dd) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (not (immediate-dummy-qei_observe-box_a1_p1-2_b0 dd)) (dummy-right-qei_observe-box_a1_p1-2_b0 dd))
)
(:action act-a7k_observe-box_a4_p4-2_b3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qei_observe-box_a1_p1-2_b0 dd) (immediate-dummy-a7k_observe-box_a4_p4-2_b3 dd) (not (box-at b0 p1-2)) (box-at b1 p2-1) (agent-at a4 p4-2) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (box-at b3 p4-2) (not (Kbox-at b3 p4-2 V_TRUE)) (not (Kbox-at b3 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b3 p4-2 V_TRUE))
)
(:action act-a7k_observe-box_a4_p4-2_b3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qei_observe-box_a1_p1-2_b0 dd) (immediate-dummy-a7k_observe-box_a4_p4-2_b3 dd) (not (box-at b0 p1-2)) (box-at b1 p2-1) (agent-at a4 p4-2) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (not (box-at b3 p4-2)) (not (Kbox-at b3 p4-2 V_TRUE)) (not (Kbox-at b3 p4-2 V_FALSE)))
:effect 
(and (Kbox-at b3 p4-2 V_FALSE))
)
(:action act-dummy-a7k_observe-box_a4_p4-2_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qei_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (box-at b1 p2-1) (agent-at a4 p4-2) (not (dummy-left-a7k_observe-box_a4_p4-2_b3 dd)) (not (dummy-right-a7k_observe-box_a4_p4-2_b3 dd)) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (immediate-dummy-a7k_observe-box_a4_p4-2_b3 dd))
)
(:action dummy-left-a7k_observe-box_a4_p4-2_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qei_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (box-at b1 p2-1) (agent-at a4 p4-2) (not (box-at b3 p4-2)) (immediate-dummy-a7k_observe-box_a4_p4-2_b3 dd) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b3 p4-2 V_FALSE))
:effect 
(and (not (immediate-dummy-a7k_observe-box_a4_p4-2_b3 dd)) (dummy-left-a7k_observe-box_a4_p4-2_b3 dd))
)
(:action dummy-right-a7k_observe-box_a4_p4-2_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qei_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (box-at b1 p2-1) (agent-at a4 p4-2) (box-at b3 p4-2) (immediate-dummy-a7k_observe-box_a4_p4-2_b3 dd) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b3 p4-2 V_TRUE))
:effect 
(and (not (immediate-dummy-a7k_observe-box_a4_p4-2_b3 dd)) (dummy-right-a7k_observe-box_a4_p4-2_b3 dd))
)
(:action act-49u_joint-push_p4-1_p4-2_b3_a3_a4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a7k_observe-box_a4_p4-2_b3 dd) (not (box-at b3 p4-2)) (not (box-at b0 p1-2)) (box-at b1 p2-1) (agent-at a4 p4-1) (Kbox-at b3 p4-2 V_FALSE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (pre-49u_joint-push_p4-1_p4-2_b3_a3_a4 dd))
)
(:action goal-achieve-49u_joint-push_p4-1_p4-2_b3_a3_a4
:parameters ( ?a - agent)
:precondition 
(and (pre-49u_joint-push_p4-1_p4-2_b3_a3_a4 dd))
:effect 
(and (done-goal dd) (not (pre-49u_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
)
(:action goal-achieve-right-a7k_observe-box_a4_p4-2_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a7k_observe-box_a4_p4-2_b3 dd) (box-at b3 p4-2) (not (box-at b0 p1-2)) (box-at b1 p2-1) (Kbox-at b3 p4-2 V_TRUE) (Kbox-at b0 p1-2 V_FALSE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-a7k_observe-box_a4_p4-2_b3 dd)))
)
(:action act-ws2_observe-box_a4_p4-1_b3-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qei_observe-box_a1_p1-2_b0 dd) (immediate-dummy-ws2_observe-box_a4_p4-1_b3 dd) (box-at b0 p1-2) (box-at b1 p2-1) (agent-at a4 p4-1) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (box-at b3 p4-1) (not (Kbox-at b3 p4-1 V_TRUE)) (not (Kbox-at b3 p4-1 V_FALSE)))
:effect 
(and (Kbox-at b3 p4-1 V_TRUE))
)
(:action act-ws2_observe-box_a4_p4-1_b3-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qei_observe-box_a1_p1-2_b0 dd) (immediate-dummy-ws2_observe-box_a4_p4-1_b3 dd) (box-at b0 p1-2) (box-at b1 p2-1) (agent-at a4 p4-1) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (not (box-at b3 p4-1)) (not (Kbox-at b3 p4-1 V_TRUE)) (not (Kbox-at b3 p4-1 V_FALSE)))
:effect 
(and (Kbox-at b3 p4-1 V_FALSE))
)
(:action act-dummy-ws2_observe-box_a4_p4-1_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qei_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (box-at b1 p2-1) (agent-at a4 p4-1) (not (dummy-left-ws2_observe-box_a4_p4-1_b3 dd)) (not (dummy-right-ws2_observe-box_a4_p4-1_b3 dd)) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (immediate-dummy-ws2_observe-box_a4_p4-1_b3 dd))
)
(:action dummy-left-ws2_observe-box_a4_p4-1_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qei_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (box-at b1 p2-1) (agent-at a4 p4-1) (not (box-at b3 p4-1)) (immediate-dummy-ws2_observe-box_a4_p4-1_b3 dd) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b3 p4-1 V_FALSE))
:effect 
(and (not (immediate-dummy-ws2_observe-box_a4_p4-1_b3 dd)) (dummy-left-ws2_observe-box_a4_p4-1_b3 dd))
)
(:action dummy-right-ws2_observe-box_a4_p4-1_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qei_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (box-at b1 p2-1) (agent-at a4 p4-1) (box-at b3 p4-1) (immediate-dummy-ws2_observe-box_a4_p4-1_b3 dd) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b3 p4-1 V_TRUE))
:effect 
(and (not (immediate-dummy-ws2_observe-box_a4_p4-1_b3 dd)) (dummy-right-ws2_observe-box_a4_p4-1_b3 dd))
)
(:action goal-achieve-left-ws2_observe-box_a4_p4-1_b3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ws2_observe-box_a4_p4-1_b3 dd) (not (box-at b3 p4-1)) (box-at b0 p1-2) (box-at b1 p2-1) (Kbox-at b3 p4-1 V_FALSE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-ws2_observe-box_a4_p4-1_b3 dd)))
)
(:action act-7z5_joint-push_p4-1_p4-2_b3_a3_a4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ws2_observe-box_a4_p4-1_b3 dd) (box-at b3 p4-1) (box-at b0 p1-2) (box-at b1 p2-1) (agent-at a4 p4-1) (Kbox-at b3 p4-1 V_TRUE) (Kbox-at b0 p1-2 V_TRUE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (pre-7z5_joint-push_p4-1_p4-2_b3_a3_a4 dd))
)
(:action goal-achieve-7z5_joint-push_p4-1_p4-2_b3_a3_a4
:parameters ( ?a - agent)
:precondition 
(and (pre-7z5_joint-push_p4-1_p4-2_b3_a3_a4 dd))
:effect 
(and (done-goal dd) (not (pre-7z5_joint-push_p4-1_p4-2_b3_a3_a4 dd)))
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
