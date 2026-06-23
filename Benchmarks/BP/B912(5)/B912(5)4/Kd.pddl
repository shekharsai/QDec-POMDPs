(define (domain Kbox-3)
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
 a2 - agent
 a3 - agent
 a4 - agent
 a5 - agent
 dd - dummy
 tag0 - TAG_TYPE ; (box-at b4 p4-1) (box-at b2 p3-2) (box-at b5 p5-1) (box-at b1 p2-2) (box-at b0 p1-2)
 tag1 - TAG_TYPE ; (not (box-at b4 p4-1)) (not (box-at b2 p3-2)) (not (box-at b5 p5-1)) (not (box-at b1 p2-2)) (not (box-at b0 p1-2))
 V_TRUE - VALUE_TYPE
 V_FALSE - VALUE_TYPE
)

(:predicates
(adj ?i - pos ?j - pos)
(agent-at ?a - agent ?i - pos)
(Kagent-at ?a - agent ?i - pos ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenagent-at ?a - agent ?i - pos ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(box-at ?b - box ?i - pos)
(Kbox-at ?b - box ?i - pos ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenbox-at ?b - box ?i - pos ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(heavy ?b - box)
(same-agent ?a1 - agent ?a2 - agent)
(can-observe ?a - agent ?b - box)
(c-p-joint-push-enw ?dd - dummy)
(Kc-p-joint-push-enw ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-push-enw ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-push-enw ?dd - dummy)
(Kobserve-joint-push-enw ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-push-enw ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-push-doq ?dd - dummy)
(Kc-p-joint-push-doq ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-push-doq ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-push-doq ?dd - dummy)
(Kobserve-joint-push-doq ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-push-doq ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(c-p-joint-push-8wh ?dd - dummy)
(Kc-p-joint-push-8wh ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenc-p-joint-push-8wh ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(observe-joint-push-8wh ?dd - dummy)
(Kobserve-joint-push-8wh ?dd - dummy ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KGivenobserve-joint-push-8wh ?dd - dummy ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT ?V_PARAM - VALUE_TYPE)
(KNot ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT)
(Observed ?AGENT_PARAM - AGENT)
)

(:action move
:parameters ( ?start - pos ?end - pos ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start))
:effect (and 
	(not (agent-at ?a ?start)) 
	(agent-at ?a ?end) 
)
)
(:action one-push
:parameters ( ?start - pos ?end - pos ?b - box ?a - agent)
:precondition 
(and (adj ?start ?end) (agent-at ?a ?start) (box-at ?b ?start) (not (heavy ?b)) (Kbox-at ?b ?start ?a V_TRUE))
:effect (and 
	(not (box-at ?b ?start)) 
	(box-at ?b ?end) 
	(forall (?a - agent) (Kbox-at ?b ?start ?a V_FALSE))
	(forall (?a - agent) (not (Kbox-at ?b ?start ?a V_TRUE)))
	(forall (?a - agent) (Kbox-at ?b ?end ?a V_TRUE))
	(forall (?a - agent) (not (Kbox-at ?b ?end ?a V_FALSE)))
)
)
(:action joint-push
:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent)
:precondition 
(and 
	(or (not (= ?start p5-1)) (not (= ?end p5-2)) (not (= ?b b5)) (not (= ?a1 a3)) (not (= ?a2 a5)))
	(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a3)) (not (= ?a2 a1)))
	(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a3)))(adj ?start ?end) (agent-at ?a1 ?start) (agent-at ?a2 ?start) (box-at ?b ?start) (heavy ?b) (not (same-agent ?a1 ?a2)) (Kbox-at ?b ?start ?a1 V_TRUE) (Kbox-at ?b ?start ?a2 V_TRUE))
:effect (and 
	(not (box-at ?b ?start)) 
	(box-at ?b ?end) 
	(forall (?a1 - agent) (Kbox-at ?b ?start ?a1 V_FALSE))
	(forall (?a1 - agent) (not (Kbox-at ?b ?start ?a1 V_TRUE)))
	(forall (?a2 - agent) (Kbox-at ?b ?start ?a2 V_FALSE))
	(forall (?a2 - agent) (not (Kbox-at ?b ?start ?a2 V_TRUE)))
	(forall (?a1 - agent) (Kbox-at ?b ?end ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kbox-at ?b ?end ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kbox-at ?b ?end ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kbox-at ?b ?end ?a2 V_FALSE)))
)
)
(:action joint-push-8cpk
:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy)
:precondition 
(and (= ?start p5-1) (= ?end p5-2) (= ?b b5) (= ?a1 a3) (= ?a2 a5) (c-p-joint-push-8wh ?dd) 
	(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a3)) (not (= ?a2 a1)))
	(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a3)))(adj ?start ?end) (agent-at ?a1 ?start) (agent-at ?a2 ?start) (box-at ?b ?start) (heavy ?b) (not (same-agent ?a1 ?a2)) (Kbox-at ?b ?start ?a1 V_TRUE) (Kbox-at ?b ?start ?a2 V_TRUE))
:effect (and 
	(not (box-at ?b ?start)) 
	(box-at ?b ?end) 
	(forall (?a1 - agent) (Kbox-at ?b ?start ?a1 V_FALSE))
	(forall (?a1 - agent) (not (Kbox-at ?b ?start ?a1 V_TRUE)))
	(forall (?a2 - agent) (Kbox-at ?b ?start ?a2 V_FALSE))
	(forall (?a2 - agent) (not (Kbox-at ?b ?start ?a2 V_TRUE)))
	(forall (?a1 - agent) (Kbox-at ?b ?end ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kbox-at ?b ?end ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kbox-at ?b ?end ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kbox-at ?b ?end ?a2 V_FALSE)))
	(when (c-p-joint-push-8wh ?dd) (not (c-p-joint-push-8wh ?dd))) 
	(when (c-p-joint-push-8wh ?dd) 	(and (Kc-p-joint-push-8wh ?dd ?a1 V_FALSE) (not (Kc-p-joint-push-8wh ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-push-8wh ?dd) 	(and (Kc-p-joint-push-8wh ?dd ?a2 V_FALSE) (not (Kc-p-joint-push-8wh ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-1ui8v-a1-a2-a3-a4-a5
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-push-8wh dd)))
:effect (and 
	(c-p-joint-push-8wh dd) 
)
)
(:action obs-h2mm9-a1-a2-a3-a4-a5
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-push-8wh dd)))
:effect (and 
	(observe-joint-push-8wh dd) 
)
)
(:action joint-push-3a1i
:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy)
:precondition 
(and (= ?start p1-1) (= ?end p1-2) (= ?b b0) (= ?a1 a3) (= ?a2 a1) (c-p-joint-push-doq ?dd) 
	(or (not (= ?start p1-1)) (not (= ?end p1-2)) (not (= ?b b0)) (not (= ?a1 a1)) (not (= ?a2 a3)))(adj ?start ?end) (agent-at ?a1 ?start) (agent-at ?a2 ?start) (box-at ?b ?start) (heavy ?b) (not (same-agent ?a1 ?a2)) (Kbox-at ?b ?start ?a1 V_TRUE) (Kbox-at ?b ?start ?a2 V_TRUE))
:effect (and 
	(not (box-at ?b ?start)) 
	(box-at ?b ?end) 
	(forall (?a1 - agent) (Kbox-at ?b ?start ?a1 V_FALSE))
	(forall (?a1 - agent) (not (Kbox-at ?b ?start ?a1 V_TRUE)))
	(forall (?a2 - agent) (Kbox-at ?b ?start ?a2 V_FALSE))
	(forall (?a2 - agent) (not (Kbox-at ?b ?start ?a2 V_TRUE)))
	(forall (?a1 - agent) (Kbox-at ?b ?end ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kbox-at ?b ?end ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kbox-at ?b ?end ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kbox-at ?b ?end ?a2 V_FALSE)))
	(when (c-p-joint-push-doq ?dd) (not (c-p-joint-push-doq ?dd))) 
	(when (c-p-joint-push-doq ?dd) 	(and (Kc-p-joint-push-doq ?dd ?a1 V_FALSE) (not (Kc-p-joint-push-doq ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-push-doq ?dd) 	(and (Kc-p-joint-push-doq ?dd ?a2 V_FALSE) (not (Kc-p-joint-push-doq ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-1mf1o-a1-a2-a3-a4-a5
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-push-doq dd)))
:effect (and 
	(c-p-joint-push-doq dd) 
)
)
(:action obs-x98h4-a1-a2-a3-a4-a5
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-push-doq dd)))
:effect (and 
	(observe-joint-push-doq dd) 
)
)
(:action joint-push-5ofc
:parameters ( ?start - pos ?end - pos ?b - box ?a1 - agent ?a2 - agent ?dd - dummy)
:precondition 
(and (= ?start p1-1) (= ?end p1-2) (= ?b b0) (= ?a1 a1) (= ?a2 a3) (c-p-joint-push-enw ?dd) (adj ?start ?end) (agent-at ?a1 ?start) (agent-at ?a2 ?start) (box-at ?b ?start) (heavy ?b) (not (same-agent ?a1 ?a2)) (Kbox-at ?b ?start ?a1 V_TRUE) (Kbox-at ?b ?start ?a2 V_TRUE))
:effect (and 
	(not (box-at ?b ?start)) 
	(box-at ?b ?end) 
	(forall (?a1 - agent) (Kbox-at ?b ?start ?a1 V_FALSE))
	(forall (?a1 - agent) (not (Kbox-at ?b ?start ?a1 V_TRUE)))
	(forall (?a2 - agent) (Kbox-at ?b ?start ?a2 V_FALSE))
	(forall (?a2 - agent) (not (Kbox-at ?b ?start ?a2 V_TRUE)))
	(forall (?a1 - agent) (Kbox-at ?b ?end ?a1 V_TRUE))
	(forall (?a1 - agent) (not (Kbox-at ?b ?end ?a1 V_FALSE)))
	(forall (?a2 - agent) (Kbox-at ?b ?end ?a2 V_TRUE))
	(forall (?a2 - agent) (not (Kbox-at ?b ?end ?a2 V_FALSE)))
	(when (c-p-joint-push-enw ?dd) (not (c-p-joint-push-enw ?dd))) 
	(when (c-p-joint-push-enw ?dd) 	(and (Kc-p-joint-push-enw ?dd ?a1 V_FALSE) (not (Kc-p-joint-push-enw ?dd ?a1 V_TRUE)))) 
	(when (c-p-joint-push-enw ?dd) 	(and (Kc-p-joint-push-enw ?dd ?a2 V_FALSE) (not (Kc-p-joint-push-enw ?dd ?a2 V_TRUE)))) 
)
)
(:action commit-uqcoq-a1-a2-a3-a4-a5
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-push-enw dd)))
:effect (and 
	(c-p-joint-push-enw dd) 
)
)
(:action obs-gbv86-a1-a2-a3-a4-a5
:parameters ( ?a - agent)
:precondition 
(and (not (observe-joint-push-enw dd)))
:effect (and 
	(observe-joint-push-enw dd) 
)
)
(:action observe-box-un8-T
:parameters ( ?a - agent ?i - pos ?b - box)
:precondition 
(and (= ?a a5) (= ?i p5-1) (= ?b b5) (observe-joint-push-enw dd) (agent-at ?a ?i) (can-observe ?a ?b) (box-at ?b ?i) (not (Kbox-at ?b ?i ?a V_TRUE)) (not (Kbox-at ?b ?i ?a V_FALSE)))
:effect 
(and (Kbox-at ?b ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-box-un8-F
:parameters ( ?a - agent ?i - pos ?b - box)
:precondition 
(and (= ?a a5) (= ?i p5-1) (= ?b b5) (observe-joint-push-enw dd) (agent-at ?a ?i) (can-observe ?a ?b) (not (box-at ?b ?i)) (not (Kbox-at ?b ?i ?a V_TRUE)) (not (Kbox-at ?b ?i ?a V_FALSE)))
:effect 
(and (Kbox-at ?b ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-box-qyt-T
:parameters ( ?a - agent ?i - pos ?b - box)
:precondition 
(and (= ?a a4) (= ?i p3-1) (= ?b b2) (observe-joint-push-doq dd) 
	(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))(agent-at ?a ?i) (can-observe ?a ?b) (box-at ?b ?i) (not (Kbox-at ?b ?i ?a V_TRUE)) (not (Kbox-at ?b ?i ?a V_FALSE)))
:effect 
(and (Kbox-at ?b ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-box-qyt-F
:parameters ( ?a - agent ?i - pos ?b - box)
:precondition 
(and (= ?a a4) (= ?i p3-1) (= ?b b2) (observe-joint-push-doq dd) 
	(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))(agent-at ?a ?i) (can-observe ?a ?b) (not (box-at ?b ?i)) (not (Kbox-at ?b ?i ?a V_TRUE)) (not (Kbox-at ?b ?i ?a V_FALSE)))
:effect 
(and (Kbox-at ?b ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-box-5gx-T
:parameters ( ?a - agent ?i - pos ?b - box)
:precondition 
(and (= ?a a2) (= ?i p3-2) (= ?b b2) (observe-joint-push-8wh dd) 
	(or (not (= ?a a4)) (not (= ?i p3-1)) (not (= ?b b2)))
	(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))(agent-at ?a ?i) (can-observe ?a ?b) (box-at ?b ?i) (not (Kbox-at ?b ?i ?a V_TRUE)) (not (Kbox-at ?b ?i ?a V_FALSE)))
:effect 
(and (Kbox-at ?b ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-box-5gx-F
:parameters ( ?a - agent ?i - pos ?b - box)
:precondition 
(and (= ?a a2) (= ?i p3-2) (= ?b b2) (observe-joint-push-8wh dd) 
	(or (not (= ?a a4)) (not (= ?i p3-1)) (not (= ?b b2)))
	(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))(agent-at ?a ?i) (can-observe ?a ?b) (not (box-at ?b ?i)) (not (Kbox-at ?b ?i ?a V_TRUE)) (not (Kbox-at ?b ?i ?a V_FALSE)))
:effect 
(and (Kbox-at ?b ?i ?a V_FALSE) (Observed ?a))
)
(:action observe-box-T
:parameters ( ?a - agent ?i - pos ?b - box)
:precondition 
(and 
	(or (not (= ?a a2)) (not (= ?i p3-2)) (not (= ?b b2)))
	(or (not (= ?a a4)) (not (= ?i p3-1)) (not (= ?b b2)))
	(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))(agent-at ?a ?i) (can-observe ?a ?b) (box-at ?b ?i) (not (Kbox-at ?b ?i ?a V_TRUE)) (not (Kbox-at ?b ?i ?a V_FALSE)))
:effect 
(and (Kbox-at ?b ?i ?a V_TRUE) (Observed ?a))
)
(:action observe-box-F
:parameters ( ?a - agent ?i - pos ?b - box)
:precondition 
(and 
	(or (not (= ?a a2)) (not (= ?i p3-2)) (not (= ?b b2)))
	(or (not (= ?a a4)) (not (= ?i p3-1)) (not (= ?b b2)))
	(or (not (= ?a a5)) (not (= ?i p5-1)) (not (= ?b b5)))(agent-at ?a ?i) (can-observe ?a ?b) (not (box-at ?b ?i)) (not (Kbox-at ?b ?i ?a V_TRUE)) (not (Kbox-at ?b ?i ?a V_FALSE)))
:effect 
(and (Kbox-at ?b ?i ?a V_FALSE) (Observed ?a))
)
(:action Merge-box-at
:parameters ( ?b - box ?i - pos ?V_PARAM - VALUE_TYPE ?AGENT_PARAM - AGENT)
:precondition 
(and (not (Kbox-at ?b ?i ?AGENT_PARAM ?V_PARAM)) (Observed ?AGENT_PARAM) 
	(or (KGivenbox-at ?b ?i tag0 ?AGENT_PARAM ?V_PARAM) (KNot tag0 ?AGENT_PARAM))
	(or (KGivenbox-at ?b ?i tag1 ?AGENT_PARAM ?V_PARAM) (KNot tag1 ?AGENT_PARAM)))
:effect 
(and (Kbox-at ?b ?i ?AGENT_PARAM ?V_PARAM))
)

(:action RefuteT-box-at
:parameters ( ?b - box ?i - pos ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT)
:precondition 
(and (Observed ?AGENT_PARAM) (not (KNot ?TAG_PARAM ?AGENT_PARAM)) (KGivenbox-at ?b ?i ?TAG_PARAM ?AGENT_PARAM V_TRUE) (Kbox-at ?b ?i ?AGENT_PARAM V_FALSE) (not (box-at ?b ?i)))
:effect 
(and (KNot ?TAG_PARAM ?AGENT_PARAM))
)

(:action RefuteF-box-at
:parameters ( ?b - box ?i - pos ?TAG_PARAM - TAG_TYPE ?AGENT_PARAM - AGENT)
:precondition 
(and (Observed ?AGENT_PARAM) (not (KNot ?TAG_PARAM ?AGENT_PARAM)) (KGivenbox-at ?b ?i ?TAG_PARAM ?AGENT_PARAM V_FALSE) (Kbox-at ?b ?i ?AGENT_PARAM V_TRUE) (box-at ?b ?i))
:effect 
(and (KNot ?TAG_PARAM ?AGENT_PARAM))
)

)
