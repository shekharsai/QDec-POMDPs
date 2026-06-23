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
 tag0 - TAG_TYPE ; (box-at b1 p2-2) (box-at b2 p3-2) (box-at b3 p4-2)
 tag1 - TAG_TYPE ; (box-at b1 p2-1) (box-at b2 p3-1) (box-at b3 p4-1)
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
(init-w9t_observe-box_a1_p1-2_b0 ?dd - dummy)
(immediate-dummy-w9t_observe-box_a1_p1-2_b0 ?dd - dummy)
(dummy-left-w9t_observe-box_a1_p1-2_b0 ?dd - dummy)
(pre-4cp_one-push_p1-1_p1-2_b0_a1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-w9t_observe-box_a1_p1-2_b0 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-w9t_observe-box_a1_p1-2_b0-T
:parameters ( ?a - agent)
:precondition 
(and (init-w9t_observe-box_a1_p1-2_b0 dd) (immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd) (agent-at a1 p1-2) (box-at b0 p1-2) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_TRUE))
)
(:action act-w9t_observe-box_a1_p1-2_b0-F
:parameters ( ?a - agent)
:precondition 
(and (init-w9t_observe-box_a1_p1-2_b0 dd) (immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd) (agent-at a1 p1-2) (not (box-at b0 p1-2)) (not (Kbox-at b0 p1-2 V_TRUE)) (not (Kbox-at b0 p1-2 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-2 V_FALSE))
)
(:action act-dummy-w9t_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (init-w9t_observe-box_a1_p1-2_b0 dd) (not (dummy-left-w9t_observe-box_a1_p1-2_b0 dd)) (not (dummy-right-w9t_observe-box_a1_p1-2_b0 dd)))
:effect 
(and (immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-left-w9t_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (init-w9t_observe-box_a1_p1-2_b0 dd) (agent-at a1 p1-2) (not (box-at b0 p1-2)) (immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (not (init-w9t_observe-box_a1_p1-2_b0 dd)) (not (immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd)) (dummy-left-w9t_observe-box_a1_p1-2_b0 dd))
)
(:action dummy-right-w9t_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (init-w9t_observe-box_a1_p1-2_b0 dd) (agent-at a1 p1-2) (box-at b0 p1-2) (immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (not (init-w9t_observe-box_a1_p1-2_b0 dd)) (not (immediate-dummy-w9t_observe-box_a1_p1-2_b0 dd)) (dummy-right-w9t_observe-box_a1_p1-2_b0 dd))
)
(:action act-4cp_one-push_p1-1_p1-2_b0_a1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w9t_observe-box_a1_p1-2_b0 dd) (not (box-at b0 p1-2)) (agent-at a1 p1-1) (Kbox-at b0 p1-2 V_FALSE))
:effect 
(and (pre-4cp_one-push_p1-1_p1-2_b0_a1 dd))
)
(:action goal-achieve-4cp_one-push_p1-1_p1-2_b0_a1
:parameters ( ?a - agent)
:precondition 
(and (pre-4cp_one-push_p1-1_p1-2_b0_a1 dd))
:effect 
(and (done-goal dd) (not (pre-4cp_one-push_p1-1_p1-2_b0_a1 dd)))
)
(:action goal-achieve-right-w9t_observe-box_a1_p1-2_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w9t_observe-box_a1_p1-2_b0 dd) (box-at b0 p1-2) (Kbox-at b0 p1-2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-w9t_observe-box_a1_p1-2_b0 dd)))
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
