(define
(domain rover)
(:types agent waypoint store camera mode lander objective dummy)
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
	camera2 - camera
	objective1 - objective
	objective2 - objective
	dd - dummy
)
(:predicates
	(at ?x - agent ?y - waypoint )
	(at-lander ?x - lander ?y - waypoint )
	(can-traverse ?r - agent ?x - waypoint ?y - waypoint )
	(equipped-for-imaging ?r - agent )
	(equipped-for-soil-analysis ?r - agent )
	(equipped-for-rock-analysis ?r - agent )
	(empty ?s - store ?a - agent )
	(have-rock-analysis ?r - agent )
	(have-soil-analysis ?r - agent )
	(full ?s - store ?a - agent )
	(calibrated ?c - camera ?r - agent ?w - waypoint ?o - objective )
	(supports ?c - camera ?m - mode )
	(available ?r - agent )
	(visible ?w - waypoint ?p - waypoint )
	(have-image ?r - agent ?o - objective ?m - mode )
	(communicated-image-data ?o - objective ?m - mode )
	(communicated-soil-data )
	(communicated-rock-data )
	(at-soil-sample ?w - waypoint )
	(at-rock-sample ?w - waypoint )
	(visible-from ?o - objective ?w - waypoint )
	(store-of ?s - store ?r - agent )
	(calibration-target ?i - camera ?o - objective )
	(on-board ?i - camera ?r - agent )
	(channel-free ?l - lander )
	(same ?a1 - agent ?a2 - agent )
	(c-p-communicate-soil-data-eox ?dd - dummy)
	(observe-communicate-soil-data-eox ?dd - dummy)
)
(:action observe-vis-273
	:parameters ( ?x - agent ?t - objective ?z - waypoint )
	:precondition (and 
		(= ?x agent1)(= ?t objective1)(= ?z waypoint0)(observe-communicate-soil-data-eox dd)
		(at ?x ?z)
	)
	:observe (visible-from ?t ?z) 
)
(:action observe-vis
	:parameters ( ?x - agent ?t - objective ?z - waypoint )
	:precondition (and 
		(or (not (= ?x agent1))(not (= ?t objective1))(not (= ?z waypoint0)))
		(at ?x ?z)
	)
	:observe (visible-from ?t ?z) 
)
(:action observe-rock
	:parameters ( ?x - agent ?z - waypoint )
	:precondition (and 
		(at ?x ?z)
	)
	:observe (at-rock-sample ?z) 
)
(:action observe-soil
	:parameters ( ?x - agent ?z - waypoint )
	:precondition (and 
		(at ?x ?z)
	)
	:observe (at-soil-sample ?z) 
)
(:action navigate
	:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective )
	:precondition (and 
		(can-traverse ?x ?y ?z)
		(available ?x)
		(at ?x ?y)
		(visible ?y ?z)
	)
	:effect (and 
		
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p))) )
)
(:action calibrate
	:parameters ( ?r - agent ?i - camera ?t - objective ?w - waypoint )
	:precondition (and 
		(equipped-for-imaging ?r)
		(calibration-target ?i ?t)
		(at ?r ?w)
		(on-board ?i ?r)
	)
	:effect (and 
		(calibrated ?i ?r ?w ?t) )
)
(:action take-image
	:parameters ( ?r - agent ?p - waypoint ?o - objective ?i - camera ?m - mode )
	:precondition (and 
		(calibrated ?i ?r ?p ?o)
		(on-board ?i ?r)
		(equipped-for-imaging ?r)
		(supports ?i ?m)
		(visible-from ?o ?p)
		(at ?r ?p)
	)
	:effect (and 
		
(and (have-image ?r ?o ?m) (not (calibrated ?i ?r ?p ?o))) )
)
(:action communicate-image-data
	:parameters ( ?r - agent ?l - lander ?o - objective ?m - mode ?x - waypoint ?y - waypoint )
	:precondition (and 
		(at ?r ?x)
		(at-lander ?l ?y)
		(have-image ?r ?o ?m)
		(visible ?x ?y)
	)
	:effect (and 
		(communicated-image-data ?o ?m) )
)
(:action sample-soil
	:parameters ( ?x - agent ?s - store ?p - waypoint )
	:precondition (and 
		(at ?x ?p)
		(at-soil-sample ?p)
		(equipped-for-soil-analysis ?x)
		(store-of ?s ?x)
		(empty ?s ?x)
		(not (full ?s ?x))
	)
	:effect (and 
		
(and (not (empty ?s ?x)) (full ?s ?x) (have-soil-analysis ?x) (not (at-soil-sample ?p))) )
)
(:action joint-sample-rock
	:parameters ( ?a1 - agent ?a2 - agent ?s - store ?p - waypoint )
	:precondition (and 
		(at ?a1 ?p)
		(at ?a2 ?p)
		(not (same ?a1 ?a2))
		(at-rock-sample ?p)
		(equipped-for-rock-analysis ?a1)
		(equipped-for-rock-analysis ?a2)
		(store-of ?s ?a1)
		(empty ?s ?a1)
	)
	:effect (and 
		
(and (not (empty ?s ?a1)) (full ?s ?a1) (have-rock-analysis ?a1) (not (at-rock-sample ?p))) )
)
(:action drop
	:parameters ( ?x - agent ?y - store )
	:precondition (and 
		(store-of ?y ?x)
	)
	:effect (and 
		
(and (not (full ?y ?x)) (empty ?y ?x)) )
)
(:action communicate-soil-data
	:parameters ( ?r - agent ?l - lander ?x - waypoint ?y - waypoint )
	:precondition (and 
		(or (not (= ?r agent2))(not (= ?l general))(not (= ?x waypoint1))(not (= ?y waypoint0)))
		(at ?r ?x)
		(at-lander ?l ?y)
		(have-soil-analysis ?r)
		(visible ?x ?y)
		(available ?r)
		(channel-free ?l)
	)
	:effect (and )
)
(:action communicate-soil-data-0kki
	:parameters ( ?r - agent ?l - lander ?x - waypoint ?y - waypoint ?dd - dummy )
	:precondition (and 
		(= ?r agent2)(= ?l general)(= ?x waypoint1)(= ?y waypoint0)(c-p-communicate-soil-data-eox ?dd)
		(at ?r ?x)
		(at-lander ?l ?y)
		(have-soil-analysis ?r)
		(visible ?x ?y)
		(available ?r)
		(channel-free ?l)
	)
	:effect (and (when (c-p-communicate-soil-data-eox ?dd) (not (c-p-communicate-soil-data-eox ?dd)) ))
)
(:action commit-jzs4u-agent0-agent1-agent2-agent0-agent1-agent2
	:parameters (?a - agent)
	:precondition (and (not (observe-communicate-soil-data-eox dd)) )
	:effect (and (c-p-communicate-soil-data-eox dd))
)
(:action obs-1frpe-agent0-agent1-agent2-agent0-agent1-agent2
	:parameters (?a - agent)
	:precondition (and (not (observe-communicate-soil-data-eox dd)))
	:effect (and (observe-communicate-soil-data-eox dd))
)
(:action communicate-rock-data
	:parameters ( ?r - agent ?l - lander ?x - waypoint ?y - waypoint )
	:precondition (and 
		(at ?r ?x)
		(at-lander ?l ?y)
		(have-rock-analysis ?r)
		(visible ?x ?y)
		(available ?r)
		(channel-free ?l)
	)
	:effect (and 
		(communicated-rock-data ) )
)
)
