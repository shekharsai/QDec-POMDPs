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
 p5-1 - pos
 p5-2 - pos
 b0 - box
 b1 - box
 b2 - box
 b4 - box
 b5 - box
 a1 - agent
 dd - dummy
 tag0 - TAG_TYPE ; (box-at b1 p2-2) (box-at b2 p3-2) (box-at b4 p4-2) (box-at b5 p5-2)
 tag1 - TAG_TYPE ; (box-at b1 p2-1) (box-at b2 p3-1) (box-at b4 p4-1) (box-at b5 p5-1)
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
(init-qsx_observe-box_a1_p1-1_b0 ?dd - dummy)
(immediate-dummy-qsx_observe-box_a1_p1-1_b0 ?dd - dummy)
(dummy-left-qsx_observe-box_a1_p1-1_b0 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-qsx_observe-box_a1_p1-1_b0 ?dd - dummy)
(pre-pbu_joint-push_p1-1_p1-2_b0_a1_a4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-qsx_observe-box_a1_p1-1_b0-T
:parameters ( ?a - agent)
:precondition 
(and (init-qsx_observe-box_a1_p1-1_b0 dd) (immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd) (agent-at a1 p1-1) (box-at b0 p1-1) (not (Kbox-at b0 p1-1 V_TRUE)) (not (Kbox-at b0 p1-1 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-1 V_TRUE))
)
(:action act-qsx_observe-box_a1_p1-1_b0-F
:parameters ( ?a - agent)
:precondition 
(and (init-qsx_observe-box_a1_p1-1_b0 dd) (immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd) (agent-at a1 p1-1) (not (box-at b0 p1-1)) (not (Kbox-at b0 p1-1 V_TRUE)) (not (Kbox-at b0 p1-1 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-1 V_FALSE))
)
(:action act-dummy-qsx_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (init-qsx_observe-box_a1_p1-1_b0 dd) (not (dummy-left-qsx_observe-box_a1_p1-1_b0 dd)) (not (dummy-right-qsx_observe-box_a1_p1-1_b0 dd)))
:effect 
(and (immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-left-qsx_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (init-qsx_observe-box_a1_p1-1_b0 dd) (agent-at a1 p1-1) (not (box-at b0 p1-1)) (immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (not (init-qsx_observe-box_a1_p1-1_b0 dd)) (not (immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd)) (dummy-left-qsx_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-right-qsx_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (init-qsx_observe-box_a1_p1-1_b0 dd) (agent-at a1 p1-1) (box-at b0 p1-1) (immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (not (init-qsx_observe-box_a1_p1-1_b0 dd)) (not (immediate-dummy-qsx_observe-box_a1_p1-1_b0 dd)) (dummy-right-qsx_observe-box_a1_p1-1_b0 dd))
)
(:action goal-achieve-left-qsx_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qsx_observe-box_a1_p1-1_b0 dd) (not (box-at b0 p1-1)) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-qsx_observe-box_a1_p1-1_b0 dd)))
)
(:action act-pbu_joint-push_p1-1_p1-2_b0_a1_a4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qsx_observe-box_a1_p1-1_b0 dd) (box-at b0 p1-1) (agent-at a1 p1-1) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (pre-pbu_joint-push_p1-1_p1-2_b0_a1_a4 dd))
)
(:action goal-achieve-pbu_joint-push_p1-1_p1-2_b0_a1_a4
:parameters ( ?a - agent)
:precondition 
(and (pre-pbu_joint-push_p1-1_p1-2_b0_a1_a4 dd))
:effect 
(and (done-goal dd) (not (pre-pbu_joint-push_p1-1_p1-2_b0_a1_a4 dd)))
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
