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
 b0 - box
 b1 - box
 b2 - box
 a2 - agent
 dd - dummy
 tag0 - TAG_TYPE ; (box-at b0 p1-1) (box-at b1 p2-1)
 tag1 - TAG_TYPE ; (box-at b0 p1-2) (box-at b1 p2-2)
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
(can-observe ?a1 - agent ?b1 - box)
(init-q3t_observe-box_p3-2_a2_b2 ?dd - dummy)
(immediate-dummy-q3t_observe-box_p3-2_a2_b2 ?dd - dummy)
(dummy-left-q3t_observe-box_p3-2_a2_b2 ?dd - dummy)
(pre-0z3_one-push_p3-1_p3-2_b2_a2 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-q3t_observe-box_p3-2_a2_b2 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-q3t_observe-box_p3-2_a2_b2-T
:parameters ( ?a - agent)
:precondition 
(and (init-q3t_observe-box_p3-2_a2_b2 dd) (immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd) (agent-at a2 p3-2) (box-at b2 p3-2) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_TRUE))
)
(:action act-q3t_observe-box_p3-2_a2_b2-F
:parameters ( ?a - agent)
:precondition 
(and (init-q3t_observe-box_p3-2_a2_b2 dd) (immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd) (agent-at a2 p3-2) (not (box-at b2 p3-2)) (not (Kbox-at b2 p3-2 V_TRUE)) (not (Kbox-at b2 p3-2 V_FALSE)))
:effect 
(and (Kbox-at b2 p3-2 V_FALSE))
)
(:action act-dummy-q3t_observe-box_p3-2_a2_b2
:parameters ( ?a - agent)
:precondition 
(and (init-q3t_observe-box_p3-2_a2_b2 dd) (not (dummy-left-q3t_observe-box_p3-2_a2_b2 dd)) (not (dummy-right-q3t_observe-box_p3-2_a2_b2 dd)))
:effect 
(and (immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd))
)
(:action dummy-left-q3t_observe-box_p3-2_a2_b2
:parameters ( ?a - agent)
:precondition 
(and (init-q3t_observe-box_p3-2_a2_b2 dd) (agent-at a2 p3-2) (not (box-at b2 p3-2)) (immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd) (Kbox-at b2 p3-2 V_FALSE))
:effect 
(and (not (init-q3t_observe-box_p3-2_a2_b2 dd)) (not (immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd)) (dummy-left-q3t_observe-box_p3-2_a2_b2 dd))
)
(:action dummy-right-q3t_observe-box_p3-2_a2_b2
:parameters ( ?a - agent)
:precondition 
(and (init-q3t_observe-box_p3-2_a2_b2 dd) (agent-at a2 p3-2) (box-at b2 p3-2) (immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd) (Kbox-at b2 p3-2 V_TRUE))
:effect 
(and (not (init-q3t_observe-box_p3-2_a2_b2 dd)) (not (immediate-dummy-q3t_observe-box_p3-2_a2_b2 dd)) (dummy-right-q3t_observe-box_p3-2_a2_b2 dd))
)
(:action act-0z3_one-push_p3-1_p3-2_b2_a2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-q3t_observe-box_p3-2_a2_b2 dd) (not (box-at b2 p3-2)) (agent-at a2 p3-1) (Kbox-at b2 p3-2 V_FALSE))
:effect 
(and (pre-0z3_one-push_p3-1_p3-2_b2_a2 dd))
)
(:action goal-achieve-0z3_one-push_p3-1_p3-2_b2_a2
:parameters ( ?a - agent)
:precondition 
(and (pre-0z3_one-push_p3-1_p3-2_b2_a2 dd))
:effect 
(and (done-goal dd) (not (pre-0z3_one-push_p3-1_p3-2_b2_a2 dd)))
)
(:action goal-achieve-right-q3t_observe-box_p3-2_a2_b2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-q3t_observe-box_p3-2_a2_b2 dd) (box-at b2 p3-2) (Kbox-at b2 p3-2 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-q3t_observe-box_p3-2_a2_b2 dd)))
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
