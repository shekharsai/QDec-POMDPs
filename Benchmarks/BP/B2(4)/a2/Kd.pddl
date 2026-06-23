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
 b0 - box
 b1 - box
 b2 - box
 b3 - box
 a2 - agent
 dd - dummy
 tag0 - TAG_TYPE ; (box-at b0 p1-2) (box-at b2 p3-2) (box-at b3 p4-2)
 tag1 - TAG_TYPE ; (box-at b0 p1-1) (box-at b2 p3-1) (box-at b3 p4-1)
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
(init-r0t_observe-box_a2_p2-1_b1 ?dd - dummy)
(immediate-dummy-r0t_observe-box_a2_p2-1_b1 ?dd - dummy)
(dummy-left-r0t_observe-box_a2_p2-1_b1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-r0t_observe-box_a2_p2-1_b1 ?dd - dummy)
(pre-cj0_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-r0t_observe-box_a2_p2-1_b1-T
:parameters ( ?a - agent)
:precondition 
(and (init-r0t_observe-box_a2_p2-1_b1 dd) (immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd) (agent-at a2 p2-1) (box-at b1 p2-1) (not (Kbox-at b1 p2-1 V_TRUE)) (not (Kbox-at b1 p2-1 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-1 V_TRUE))
)
(:action act-r0t_observe-box_a2_p2-1_b1-F
:parameters ( ?a - agent)
:precondition 
(and (init-r0t_observe-box_a2_p2-1_b1 dd) (immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd) (agent-at a2 p2-1) (not (box-at b1 p2-1)) (not (Kbox-at b1 p2-1 V_TRUE)) (not (Kbox-at b1 p2-1 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-1 V_FALSE))
)
(:action act-dummy-r0t_observe-box_a2_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (init-r0t_observe-box_a2_p2-1_b1 dd) (not (dummy-left-r0t_observe-box_a2_p2-1_b1 dd)) (not (dummy-right-r0t_observe-box_a2_p2-1_b1 dd)))
:effect 
(and (immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-left-r0t_observe-box_a2_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (init-r0t_observe-box_a2_p2-1_b1 dd) (agent-at a2 p2-1) (not (box-at b1 p2-1)) (immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (not (init-r0t_observe-box_a2_p2-1_b1 dd)) (not (immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd)) (dummy-left-r0t_observe-box_a2_p2-1_b1 dd))
)
(:action dummy-right-r0t_observe-box_a2_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (init-r0t_observe-box_a2_p2-1_b1 dd) (agent-at a2 p2-1) (box-at b1 p2-1) (immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (not (init-r0t_observe-box_a2_p2-1_b1 dd)) (not (immediate-dummy-r0t_observe-box_a2_p2-1_b1 dd)) (dummy-right-r0t_observe-box_a2_p2-1_b1 dd))
)
(:action goal-achieve-left-r0t_observe-box_a2_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r0t_observe-box_a2_p2-1_b1 dd) (not (box-at b1 p2-1)) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-r0t_observe-box_a2_p2-1_b1 dd)))
)
(:action act-cj0_joint-push_p2-1_p2-2_b1_a2_a3
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r0t_observe-box_a2_p2-1_b1 dd) (box-at b1 p2-1) (agent-at a2 p2-1) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (pre-cj0_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action goal-achieve-cj0_joint-push_p2-1_p2-2_b1_a2_a3
:parameters ( ?a - agent)
:precondition 
(and (pre-cj0_joint-push_p2-1_p2-2_b1_a2_a3 dd))
:effect 
(and (done-goal dd) (not (pre-cj0_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
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
