(define (domain rover-agent1)
(:types agent waypoint store camera mode lander objective dummy dummy)
(:constants 
	agent1 - agent
	general - lander
	colour - mode
	high-res - mode
	low-res - mode
	agent1 - agent
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
	dd - dummy)
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
	(can-sample-rock ?x - agent )
	(can-sample-soil ?x - agent )
	(dummy-pred-needed ?dd - dummy )
	(init-hsx_observe-rock_agent1_waypoint4 ?dd - dummy)
	(immediate-dummy-hsx_observe-rock_agent1_waypoint4 ?dd - dummy)
	(dummy-left-hsx_observe-rock_agent1_waypoint4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-hsx_observe-rock_agent1_waypoint4 ?dd - dummy)
	(pre-s2i_sample-rock_agent3_agent1_a1store_waypoint4 ?dd - dummy)
)

(:action navigate
	:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
	:precondition (and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z) )
	:effect (and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)) )
)
(:action act-hsx_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-hsx_observe-rock_agent1_waypoint4 dd)(immediate-dummy-hsx_observe-rock_agent1_waypoint4 dd)(at agent1 waypoint4)(can-sample-rock agent1))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-hsx_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-hsx_observe-rock_agent1_waypoint4 dd)(not (dummy-left-hsx_observe-rock_agent1_waypoint4 dd))(not (dummy-right-hsx_observe-rock_agent1_waypoint4 dd)))
	:effect (and (immediate-dummy-hsx_observe-rock_agent1_waypoint4 dd) )
)
(:action dummy-left-hsx_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-hsx_observe-rock_agent1_waypoint4 dd)(at agent1 waypoint4)(can-sample-rock agent1)(not (at-rock-sample waypoint4))(immediate-dummy-hsx_observe-rock_agent1_waypoint4 dd))
	:effect (and (not (init-hsx_observe-rock_agent1_waypoint4 dd))(not (immediate-dummy-hsx_observe-rock_agent1_waypoint4 dd))(dummy-left-hsx_observe-rock_agent1_waypoint4 dd))
)
(:action dummy-right-hsx_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-hsx_observe-rock_agent1_waypoint4 dd)(at agent1 waypoint4)(can-sample-rock agent1)(at-rock-sample waypoint4)(immediate-dummy-hsx_observe-rock_agent1_waypoint4 dd))
	:effect (and (not (init-hsx_observe-rock_agent1_waypoint4 dd))(not (immediate-dummy-hsx_observe-rock_agent1_waypoint4 dd))(dummy-right-hsx_observe-rock_agent1_waypoint4 dd))
)
(:action goal-achieve-left-hsx_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hsx_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4)))
	:effect (and (done-goal dd)(not (dummy-left-hsx_observe-rock_agent1_waypoint4 dd)))
)
(:action act-s2i_sample-rock_agent3_agent1_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hsx_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent1 waypoint4))
	:effect (and (pre-s2i_sample-rock_agent3_agent1_a1store_waypoint4 dd))
)
(:action goal-achieve-s2i_sample-rock_agent3_agent1_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-s2i_sample-rock_agent3_agent1_a1store_waypoint4 dd))
	:effect (and (done-goal dd)(not (pre-s2i_sample-rock_agent3_agent1_a1store_waypoint4 dd)))
)
)