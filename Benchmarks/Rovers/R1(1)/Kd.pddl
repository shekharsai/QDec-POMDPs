(define (domain Krover)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective)
(:constants
 agent0 - agent
 general - lander
 colour - mode
 high-res - mode
 low-res - mode
 agent0 - agent
 agent0store - store
 waypoint0 - waypoint
 waypoint1 - waypoint
 waypoint2 - waypoint
 waypoint3 - waypoint
 camera0 - camera
 objective1 - objective
)

(:predicates
(at ?x - agent ?y - waypoint)
(at_lander ?x - lander ?y - waypoint)
(can_traverse ?r - agent ?x - waypoint ?y - waypoint)
(equipped_for_imaging ?r - agent)
(equipped_for_soil_analysis ?r - agent)
(equipped_for_rock_analysis ?r - agent)
(empty ?s - store)
(have_rock_analysis ?r - agent)
(have_soil_analysis ?r - agent)
(full ?s - store)
(calibrated ?c - camera ?r - agent ?w - waypoint ?o - objective)
(supports ?c - camera ?m - mode)
(available ?r - agent)
(visible ?w - waypoint ?p - waypoint)
(have_image ?r - agent ?o - objective ?m - mode)
(communicated_image_data ?o - objective ?m - mode)
(communicated_soil_data)
(communicated_rock_data)
(at_soil_sample ?w - waypoint)
(at_rock_sample ?w - waypoint)
(visible_from ?o - objective ?w - waypoint)
(store_of ?s - store ?r - agent)
(calibration_target ?i - camera ?o - objective)
(on_board ?i - camera ?r - agent)
(channel_free ?l - lander)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can_traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action calibrate
:parameters ( ?r - agent ?i - camera ?t - objective ?w - waypoint)
:precondition 
(and (equipped_for_imaging ?r) (calibration_target ?i ?t) (at ?r ?w) (on_board ?i ?r))
:effect (calibrated ?i ?r ?w ?t)
)

(:action take-image
:parameters ( ?r - agent ?p - waypoint ?o - objective ?i - camera ?m - mode)
:precondition 
(and (calibrated ?i ?r ?p ?o) (on_board ?i ?r) (equipped_for_imaging ?r) (supports ?i ?m) (visible_from ?o ?p) (at ?r ?p))
:effect 
(and (have_image ?r ?o ?m) (not (calibrated ?i ?r ?p ?o)))
)

(:action communicate-image-data
:parameters ( ?r - agent ?l - lander ?o - objective ?m - mode ?x - waypoint ?y - waypoint)
:precondition 
(and (at ?r ?x) (at_lander ?l ?y) (have_image ?r ?o ?m) (visible ?x ?y))
:effect (communicated_image_data ?o ?m)
)

(:action sample-soil
:parameters ( ?x - agent ?s - store ?p - waypoint)
:precondition 
(and (at ?x ?p) (at_soil_sample ?p) (equipped_for_soil_analysis ?x) (store_of ?s ?x) (empty ?s) (not (full ?s)))
:effect 
(and (not (empty ?s)) (full ?s) (have_soil_analysis ?x) (not (at_soil_sample ?p)))
)

(:action drop
:parameters ( ?x - agent ?y - store)
:precondition (store_of ?y ?x)
:effect 
(and (not (full ?y)) (empty ?y))
)

(:action communicate-soil-data
:parameters ( ?r - agent ?l - lander ?x - waypoint ?y - waypoint)
:precondition 
(and (at ?r ?x) (at_lander ?l ?y) (have_soil_analysis ?r) (visible ?x ?y) (available ?r) (channel_free ?l))
:effect (communicated_soil_data )
)

(:action communicate-rock-data
:parameters ( ?r - agent ?l - lander ?x - waypoint ?y - waypoint)
:precondition 
(and (at ?r ?x) (at_lander ?l ?y) (have_rock_analysis ?r) (visible ?x ?y) (available ?r) (channel_free ?l))
:effect (communicated_rock_data )
)

)
