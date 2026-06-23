(define (domain Kbox-3-a3)
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
 a3 - agent
 dd - dummy
 tag0 - TAG_TYPE ; (box-at b2 p3-2) (box-at b4 p4-2) (box-at b5 p5-2)
 tag1 - TAG_TYPE ; (box-at b2 p3-1) (box-at b4 p4-1) (box-at b5 p5-1)
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
(init-hmh_observe-box_a1_p1-1_b0 ?dd - dummy)
(immediate-dummy-hmh_observe-box_a1_p1-1_b0 ?dd - dummy)
(dummy-left-hmh_observe-box_a1_p1-1_b0 ?dd - dummy)
(immediate-dummy-jrw_observe-box_a2_p2-2_b1 ?dd - dummy)
(dummy-left-jrw_observe-box_a2_p2-2_b1 ?dd - dummy)
(pre-c5k_joint-push_p2-1_p2-2_b1_a2_a3 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-jrw_observe-box_a2_p2-2_b1 ?dd - dummy)
(dummy-right-hmh_observe-box_a1_p1-1_b0 ?dd - dummy)
(immediate-dummy-rd7_observe-box_a3_p2-1_b1 ?dd - dummy)
(dummy-left-rd7_observe-box_a3_p2-1_b1 ?dd - dummy)
(dummy-right-rd7_observe-box_a3_p2-1_b1 ?dd - dummy)
(pre-532_joint-push_p2-1_p2-2_b1_a3_a4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect 
(and (not (agent-at ?a ?start)) (agent-at ?a ?end))
)
(:action act-hmh_observe-box_a1_p1-1_b0-T
:parameters ( ?a - agent)
:precondition 
(and (init-hmh_observe-box_a1_p1-1_b0 dd) (immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd) (agent-at a3 p1-1) (box-at b0 p1-1) (not (Kbox-at b0 p1-1 V_TRUE)) (not (Kbox-at b0 p1-1 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-1 V_TRUE))
)
(:action act-hmh_observe-box_a1_p1-1_b0-F
:parameters ( ?a - agent)
:precondition 
(and (init-hmh_observe-box_a1_p1-1_b0 dd) (immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd) (agent-at a3 p1-1) (not (box-at b0 p1-1)) (not (Kbox-at b0 p1-1 V_TRUE)) (not (Kbox-at b0 p1-1 V_FALSE)))
:effect 
(and (Kbox-at b0 p1-1 V_FALSE))
)
(:action act-dummy-hmh_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (init-hmh_observe-box_a1_p1-1_b0 dd) (not (dummy-left-hmh_observe-box_a1_p1-1_b0 dd)) (not (dummy-right-hmh_observe-box_a1_p1-1_b0 dd)))
:effect 
(and (immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-left-hmh_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (init-hmh_observe-box_a1_p1-1_b0 dd) (agent-at a3 p1-1) (not (box-at b0 p1-1)) (immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (not (init-hmh_observe-box_a1_p1-1_b0 dd)) (not (immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd)) (dummy-left-hmh_observe-box_a1_p1-1_b0 dd))
)
(:action dummy-right-hmh_observe-box_a1_p1-1_b0
:parameters ( ?a - agent)
:precondition 
(and (init-hmh_observe-box_a1_p1-1_b0 dd) (agent-at a3 p1-1) (box-at b0 p1-1) (immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (not (init-hmh_observe-box_a1_p1-1_b0 dd)) (not (immediate-dummy-hmh_observe-box_a1_p1-1_b0 dd)) (dummy-right-hmh_observe-box_a1_p1-1_b0 dd))
)
(:action act-jrw_observe-box_a2_p2-2_b1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hmh_observe-box_a1_p1-1_b0 dd) (immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd) (not (box-at b0 p1-1)) (agent-at a3 p2-2) (Kbox-at b0 p1-1 V_FALSE) (box-at b1 p2-2) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_TRUE))
)
(:action act-jrw_observe-box_a2_p2-2_b1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hmh_observe-box_a1_p1-1_b0 dd) (immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd) (not (box-at b0 p1-1)) (agent-at a3 p2-2) (Kbox-at b0 p1-1 V_FALSE) (not (box-at b1 p2-2)) (not (Kbox-at b1 p2-2 V_TRUE)) (not (Kbox-at b1 p2-2 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-2 V_FALSE))
)
(:action act-dummy-jrw_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hmh_observe-box_a1_p1-1_b0 dd) (not (box-at b0 p1-1)) (agent-at a3 p2-2) (not (dummy-left-jrw_observe-box_a2_p2-2_b1 dd)) (not (dummy-right-jrw_observe-box_a2_p2-2_b1 dd)) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-left-jrw_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hmh_observe-box_a1_p1-1_b0 dd) (not (box-at b0 p1-1)) (agent-at a3 p2-2) (not (box-at b1 p2-2)) (immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b1 p2-2 V_FALSE))
:effect 
(and (not (immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd)) (dummy-left-jrw_observe-box_a2_p2-2_b1 dd))
)
(:action dummy-right-jrw_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hmh_observe-box_a1_p1-1_b0 dd) (not (box-at b0 p1-1)) (agent-at a3 p2-2) (box-at b1 p2-2) (immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd) (Kbox-at b0 p1-1 V_FALSE) (Kbox-at b1 p2-2 V_TRUE))
:effect 
(and (not (immediate-dummy-jrw_observe-box_a2_p2-2_b1 dd)) (dummy-right-jrw_observe-box_a2_p2-2_b1 dd))
)
(:action act-c5k_joint-push_p2-1_p2-2_b1_a2_a3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jrw_observe-box_a2_p2-2_b1 dd) (not (box-at b1 p2-2)) (not (box-at b0 p1-1)) (agent-at a3 p2-1) (Kbox-at b1 p2-2 V_FALSE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (pre-c5k_joint-push_p2-1_p2-2_b1_a2_a3 dd))
)
(:action goal-achieve-c5k_joint-push_p2-1_p2-2_b1_a2_a3
:parameters ( ?a - agent)
:precondition 
(and (pre-c5k_joint-push_p2-1_p2-2_b1_a2_a3 dd))
:effect 
(and (done-goal dd) (not (pre-c5k_joint-push_p2-1_p2-2_b1_a2_a3 dd)))
)
(:action goal-achieve-right-jrw_observe-box_a2_p2-2_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jrw_observe-box_a2_p2-2_b1 dd) (box-at b1 p2-2) (not (box-at b0 p1-1)) (Kbox-at b1 p2-2 V_TRUE) (Kbox-at b0 p1-1 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-jrw_observe-box_a2_p2-2_b1 dd)))
)
(:action act-rd7_observe-box_a3_p2-1_b1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hmh_observe-box_a1_p1-1_b0 dd) (immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd) (box-at b0 p1-1) (agent-at a3 p2-1) (Kbox-at b0 p1-1 V_TRUE) (box-at b1 p2-1) (not (Kbox-at b1 p2-1 V_TRUE)) (not (Kbox-at b1 p2-1 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-1 V_TRUE))
)
(:action act-rd7_observe-box_a3_p2-1_b1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hmh_observe-box_a1_p1-1_b0 dd) (immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd) (box-at b0 p1-1) (agent-at a3 p2-1) (Kbox-at b0 p1-1 V_TRUE) (not (box-at b1 p2-1)) (not (Kbox-at b1 p2-1 V_TRUE)) (not (Kbox-at b1 p2-1 V_FALSE)))
:effect 
(and (Kbox-at b1 p2-1 V_FALSE))
)
(:action act-dummy-rd7_observe-box_a3_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hmh_observe-box_a1_p1-1_b0 dd) (box-at b0 p1-1) (agent-at a3 p2-1) (not (dummy-left-rd7_observe-box_a3_p2-1_b1 dd)) (not (dummy-right-rd7_observe-box_a3_p2-1_b1 dd)) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-left-rd7_observe-box_a3_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hmh_observe-box_a1_p1-1_b0 dd) (box-at b0 p1-1) (agent-at a3 p2-1) (not (box-at b1 p2-1)) (immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b1 p2-1 V_FALSE))
:effect 
(and (not (immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd)) (dummy-left-rd7_observe-box_a3_p2-1_b1 dd))
)
(:action dummy-right-rd7_observe-box_a3_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hmh_observe-box_a1_p1-1_b0 dd) (box-at b0 p1-1) (agent-at a3 p2-1) (box-at b1 p2-1) (immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd) (Kbox-at b0 p1-1 V_TRUE) (Kbox-at b1 p2-1 V_TRUE))
:effect 
(and (not (immediate-dummy-rd7_observe-box_a3_p2-1_b1 dd)) (dummy-right-rd7_observe-box_a3_p2-1_b1 dd))
)
(:action goal-achieve-left-rd7_observe-box_a3_p2-1_b1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rd7_observe-box_a3_p2-1_b1 dd) (not (box-at b1 p2-1)) (box-at b0 p1-1) (Kbox-at b1 p2-1 V_FALSE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-rd7_observe-box_a3_p2-1_b1 dd)))
)
(:action act-532_joint-push_p2-1_p2-2_b1_a3_a4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-rd7_observe-box_a3_p2-1_b1 dd) (box-at b1 p2-1) (box-at b0 p1-1) (agent-at a3 p2-1) (Kbox-at b1 p2-1 V_TRUE) (Kbox-at b0 p1-1 V_TRUE))
:effect 
(and (pre-532_joint-push_p2-1_p2-2_b1_a3_a4 dd))
)
(:action goal-achieve-532_joint-push_p2-1_p2-2_b1_a3_a4
:parameters ( ?a - agent)
:precondition 
(and (pre-532_joint-push_p2-1_p2-2_b1_a3_a4 dd))
:effect 
(and (done-goal dd) (not (pre-532_joint-push_p2-1_p2-2_b1_a3_a4 dd)))
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
