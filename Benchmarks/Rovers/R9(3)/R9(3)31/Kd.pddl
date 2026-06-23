(define (domain Krover)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy TAG_TYPE VALUE_TYPE)
(:constants
 agent0 - agent
 agent1 - agent
 agent2 - agent
 general - lander
 colour - mode
 high-res - mode
 low-res - mode
 agent0 - agent
 agent1 - agent
 agent2 - agent
 a0store - store
 a1store - store
 a2store - store
 waypoint0 - waypoint
 waypoint1 - waypoint
 waypoint2 - waypoint
 waypoint3 - waypoint
 waypoint4 - waypoint
 waypoint5 - waypoint
 camera0 - camera
 camera1 - camera
 objective1 - objective
 dd - dummy
 tag0 - TAG_TYPE ; (not (at-soil-sample waypoint4)) (at-soil-sample waypoint5)
 tag1 - TAG_TYPE ; (at-soil-sample waypoint4) (not (at-soil-sample waypoint5))
 V_TRUE - VALUE_TYPE
 V_FALSE - VALUE_TYPE
)

(:predicates
(at ?x - agent ?y - waypoint)
(at-lander ?x - lander ?y - waypoint)
(can-traverse ?r - agent ?x - waypoint ?y - waypoint)
(equipped-for-imaging ?r - agent)
(equipped-for-soil-analysis ?r - agent)
(equipped-for-rock-analysis ?r - agent)
(empty ?s - store ?a - agent)
(have-rock-analysis ?r - agent)
(have-soil-analysis ?r - agent)
(full ?s - store ?a - agent)
(calibrated ?c - camera ?r - agent ?w - waypoint ?o - objective)
(supports ?c - camera ?m - mode)
(available ?r - agent)
(visible ?w - waypoint ?p - waypoint)
(have-image ?r - agent ?o - objective ?m - mode)
(communicated-image-data ?o - objective ?m - mode)
(communicated-soil-data)
(communicated-rock-data)
(at-soil-sample ?w - waypoint)
(Kat-soil-sample ?w - waypoint ?V_PARAM - VALUE_TYPE)
(KGivenat-soil-sample ?w - waypoint ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(at-rock-sample ?w - waypoint)
(Kat-rock-sample ?w - waypoint ?V_PARAM - VALUE_TYPE)
(KGivenat-rock-sample ?w - waypoint ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(visible-from ?o - objective ?w - waypoint)
(Kvisible-from ?o - objective ?w - waypoint ?V_PARAM - VALUE_TYPE)
(KGivenvisible-from ?o - objective ?w - waypoint ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(store-of ?s - store ?r - agent)
(calibration-target ?i - camera ?o - objective)
(on-board ?i - camera ?r - agent)
(channel-free ?l - lander)
(same ?a1 - agent ?a2 - agent)
(can-sample-rock ?x - agent)
(dummy-pred-needed ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action observe-vis-T
:parameters ( ?x - agent ?t - objective ?z - waypoint)
:precondition 
(and (at ?x ?z) (visible-from ?t ?z) (not (Kvisible-from ?t ?z V_TRUE)) (not (Kvisible-from ?t ?z V_FALSE)))
:effect 
(and (Kvisible-from ?t ?z V_TRUE))
)
(:action observe-vis-F
:parameters ( ?x - agent ?t - objective ?z - waypoint)
:precondition 
(and (at ?x ?z) (not (visible-from ?t ?z)) (not (Kvisible-from ?t ?z V_TRUE)) (not (Kvisible-from ?t ?z V_FALSE)))
:effect 
(and (Kvisible-from ?t ?z V_FALSE))
)
(:action observe-rock-T
:parameters ( ?x - agent ?z - waypoint)
:precondition 
(and (at ?x ?z) (can-sample-rock ?x) (at-rock-sample ?z) (not (Kat-rock-sample ?z V_TRUE)) (not (Kat-rock-sample ?z V_FALSE)))
:effect 
(and (Kat-rock-sample ?z V_TRUE))
)
(:action observe-rock-F
:parameters ( ?x - agent ?z - waypoint)
:precondition 
(and (at ?x ?z) (can-sample-rock ?x) (not (at-rock-sample ?z)) (not (Kat-rock-sample ?z V_TRUE)) (not (Kat-rock-sample ?z V_FALSE)))
:effect 
(and (Kat-rock-sample ?z V_FALSE))
)
(:action observe-soil-T
:parameters ( ?x - agent ?z - waypoint)
:precondition 
(and (at ?x ?z) (at-soil-sample ?z) (not (Kat-soil-sample ?z V_TRUE)) (not (Kat-soil-sample ?z V_FALSE)))
:effect 
(and (Kat-soil-sample ?z V_TRUE))
)
(:action observe-soil-F
:parameters ( ?x - agent ?z - waypoint)
:precondition 
(and (at ?x ?z) (not (at-soil-sample ?z)) (not (Kat-soil-sample ?z V_TRUE)) (not (Kat-soil-sample ?z V_FALSE)))
:effect 
(and (Kat-soil-sample ?z V_FALSE))
)
(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)
(:action calibrate
:parameters ( ?r - agent ?i - camera ?t - objective ?w - waypoint)
:precondition 
(and (equipped-for-imaging ?r) (calibration-target ?i ?t) (at ?r ?w) (visible-from ?t ?w) (on-board ?i ?r) (Kvisible-from ?t ?w V_TRUE))
:effect 
(and (calibrated ?i ?r ?w ?t))
)
(:action take-image
:parameters ( ?r - agent ?p - waypoint ?o - objective ?i - camera ?m - mode)
:precondition 
(and (calibrated ?i ?r ?p ?o) (on-board ?i ?r) (equipped-for-imaging ?r) (supports ?i ?m) (visible-from ?o ?p) (at ?r ?p) (Kvisible-from ?o ?p V_TRUE))
:effect 
(and (have-image ?r ?o ?m) (not (calibrated ?i ?r ?p ?o)))
)
(:action communicate-image-data
:parameters ( ?r - agent ?l - lander ?o - objective ?m - mode ?x - waypoint ?y - waypoint ?dd - dummy)
:precondition 
(and (at ?r ?x) (at-lander ?l ?y) (have-image ?r ?o ?m) (visible ?x ?y))
:effect 
(and (communicated-image-data ?o ?m) (dummy-pred-needed ?dd))
)
(:action sample-soil
:parameters ( ?x - agent ?s - store ?p - waypoint)
:precondition 
(and (at ?x ?p) (at-soil-sample ?p) (equipped-for-soil-analysis ?x) (store-of ?s ?x) (empty ?s ?x) (not (full ?s ?x)) (Kat-soil-sample ?p V_TRUE))
:effect 
(and (not (empty ?s ?x)) (full ?s ?x) (have-soil-analysis ?x) (not (at-soil-sample ?p)) (Kat-soil-sample ?p V_FALSE) (not (Kat-soil-sample ?p V_TRUE)))
)
(:action sample-rock
:parameters ( ?a1 - agent ?a2 - agent ?s - store ?p - waypoint)
:precondition 
(and (at ?a1 ?p) (at ?a2 ?p) (not (same ?a1 ?a2)) (at-rock-sample ?p) (equipped-for-rock-analysis ?a1) (equipped-for-rock-analysis ?a2) (store-of ?s ?a1) (empty ?s ?a1) (Kat-rock-sample ?p V_TRUE))
:effect 
(and (not (empty ?s ?a1)) (full ?s ?a1) (have-rock-analysis ?a1) (not (at-rock-sample ?p)) (Kat-rock-sample ?p V_FALSE) (not (Kat-rock-sample ?p V_TRUE)))
)
(:action drop
:parameters ( ?x - agent ?y - store)
:precondition 
(and (store-of ?y ?x))
:effect 
(and (not (full ?y ?x)) (empty ?y ?x))
)
(:action communicate-soil-data
:parameters ( ?r - agent ?l - lander ?x - waypoint ?y - waypoint ?dd - dummy)
:precondition 
(and (at ?r ?x) (at-lander ?l ?y) (have-soil-analysis ?r) (visible ?x ?y) (available ?r) (channel-free ?l))
:effect 
(and (communicated-soil-data ) (dummy-pred-needed ?dd))
)
(:action communicate-rock-data
:parameters ( ?r - agent ?l - lander ?x - waypoint ?y - waypoint ?dd - dummy)
:precondition 
(and (at ?r ?x) (at-lander ?l ?y) (have-rock-analysis ?r) (visible ?x ?y) (available ?r) (channel-free ?l))
:effect 
(and (communicated-rock-data ) (dummy-pred-needed ?dd))
)
(:action Merge-at-soil-sample
:parameters ( ?w - waypoint ?V_PARAM - VALUE_TYPE)
:precondition 
(and (not (Kat-soil-sample ?w ?V_PARAM)) 
	(or (KGivenat-soil-sample ?w tag0 ?V_PARAM) (KNot tag0))
	(or (KGivenat-soil-sample ?w tag1 ?V_PARAM) (KNot tag1)))
:effect 
(and (Kat-soil-sample ?w ?V_PARAM))
)

(:action RefuteT-at-soil-sample
:parameters ( ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenat-soil-sample ?w ?TAG_PARAM V_TRUE) (Kat-soil-sample ?w V_TRUE) (not (at-soil-sample ?w)))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action RefuteF-at-soil-sample
:parameters ( ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenat-soil-sample ?w ?TAG_PARAM V_FALSE) (Kat-soil-sample ?w V_TRUE) (at-soil-sample ?w))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action Merge-at-rock-sample
:parameters ( ?w - waypoint ?V_PARAM - VALUE_TYPE)
:precondition 
(and (not (Kat-rock-sample ?w ?V_PARAM)) 
	(or (KGivenat-rock-sample ?w tag0 ?V_PARAM) (KNot tag0))
	(or (KGivenat-rock-sample ?w tag1 ?V_PARAM) (KNot tag1)))
:effect 
(and (Kat-rock-sample ?w ?V_PARAM))
)

(:action RefuteT-at-rock-sample
:parameters ( ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenat-rock-sample ?w ?TAG_PARAM V_TRUE) (Kat-rock-sample ?w V_TRUE) (not (at-rock-sample ?w)))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action RefuteF-at-rock-sample
:parameters ( ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenat-rock-sample ?w ?TAG_PARAM V_FALSE) (Kat-rock-sample ?w V_TRUE) (at-rock-sample ?w))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action Merge-visible-from
:parameters ( ?o - objective ?w - waypoint ?V_PARAM - VALUE_TYPE)
:precondition 
(and (not (Kvisible-from ?o ?w ?V_PARAM)) 
	(or (KGivenvisible-from ?o ?w tag0 ?V_PARAM) (KNot tag0))
	(or (KGivenvisible-from ?o ?w tag1 ?V_PARAM) (KNot tag1)))
:effect 
(and (Kvisible-from ?o ?w ?V_PARAM))
)

(:action RefuteT-visible-from
:parameters ( ?o - objective ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenvisible-from ?o ?w ?TAG_PARAM V_TRUE) (Kvisible-from ?o ?w V_TRUE) (not (visible-from ?o ?w)))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action RefuteF-visible-from
:parameters ( ?o - objective ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenvisible-from ?o ?w ?TAG_PARAM V_FALSE) (Kvisible-from ?o ?w V_TRUE) (visible-from ?o ?w))
:effect 
(and (KNot ?TAG_PARAM))
)

)
