(define (domain Krover)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective)
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
 waypoint0 - waypoint
 waypoint1 - waypoint
 waypoint2 - waypoint
 waypoint3 - waypoint
 waypoint4 - waypoint
 waypoint5 - waypoint
 camera0 - camera
 camera1 - camera
 objective1 - objective
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
(at-rock-sample ?w - waypoint)
(visible-from ?o - objective ?w - waypoint)
(store-of ?s - store ?r - agent)
(calibration-target ?i - camera ?o - objective)
(on-board ?i - camera ?r - agent)
(channel-free ?l - lander)
(same ?a1 - agent ?a2 - agent)
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
(and (equipped-for-imaging ?r) (calibration-target ?i ?t) (at ?r ?w) (on-board ?i ?r))
:effect (calibrated ?i ?r ?w ?t)
)

(:action take-image
:parameters ( ?r - agent ?p - waypoint ?o - objective ?i - camera ?m - mode)
:precondition 
(and (calibrated ?i ?r ?p ?o) (on-board ?i ?r) (equipped-for-imaging ?r) (supports ?i ?m) (visible-from ?o ?p) (at ?r ?p))
:effect 
(and (have-image ?r ?o ?m) (not (calibrated ?i ?r ?p ?o)))
)

(:action communicate-image-data
:parameters ( ?r - agent ?l - lander ?o - objective ?m - mode ?x - waypoint ?y - waypoint)
:precondition 
(and (at ?r ?x) (at-lander ?l ?y) (have-image ?r ?o ?m) (visible ?x ?y))
:effect (communicated-image-data ?o ?m)
)

(:action sample-soil
:parameters ( ?x - agent ?s - store ?p - waypoint)
:precondition 
(and (at ?x ?p) (at-soil-sample ?p) (equipped-for-soil-analysis ?x) (store-of ?s ?x) (empty ?s ?x) (not (full ?s ?x)))
:effect 
(and (not (empty ?s ?x)) (full ?s ?x) (have-soil-analysis ?x) (not (at-soil-sample ?p)))
)

(:action sample-rock
:parameters ( ?a1 - agent ?a2 - agent ?s - store ?p - waypoint)
:precondition 
(and (at ?a1 ?p) (at ?a2 ?p) (not (same ?a1 ?a2)) (at-rock-sample ?p) (equipped-for-rock-analysis ?a1) (equipped-for-rock-analysis ?a2) (store-of ?s ?a1) (empty ?s ?a1))
:effect 
(and (not (empty ?s ?a1)) (full ?s ?a1) (have-rock-analysis ?a1) (not (at-rock-sample ?p)))
)

(:action drop
:parameters ( ?x - agent ?y - store)
:precondition (store-of ?y ?x)
:effect 
(and (not (full ?y ?x)) (empty ?y ?x))
)

(:action communicate-soil-data
:parameters ( ?r - agent ?l - lander ?x - waypoint ?y - waypoint)
:precondition 
(and (at ?r ?x) (at-lander ?l ?y) (have-soil-analysis ?r) (visible ?x ?y) (available ?r) (channel-free ?l))
:effect (communicated-soil-data )
)

(:action communicate-rock-data
:parameters ( ?r - agent ?l - lander ?x - waypoint ?y - waypoint)
:precondition 
(and (at ?r ?x) (at-lander ?l ?y) (have-rock-analysis ?r) (visible ?x ?y) (available ?r) (channel-free ?l))
:effect (communicated-rock-data )
)

)
