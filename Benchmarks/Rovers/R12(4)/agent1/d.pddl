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
	(p-dummy-agnt)
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
	(init-04s_observe-rock_agent1_waypoint4 ?dd - dummy)
	(immediate-dummy-04s_observe-rock_agent1_waypoint4 ?dd - dummy)
	(dummy-left-04s_observe-rock_agent1_waypoint4 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-04s_observe-rock_agent1_waypoint4 ?dd - dummy)
	(immediate-dummy-2c4_observe-soil_agent2_waypoint4 ?dd - dummy)
	(dummy-left-2c4_observe-soil_agent2_waypoint4 ?dd - dummy)
	(pre-kug_sample-rock_agent0_agent1_a0store_waypoint4 ?dd - dummy)
	(dummy-right-2c4_observe-soil_agent2_waypoint4 ?dd - dummy)
	(pre-2vh_sample-rock_agent3_agent1_a1store_waypoint4 ?dd - dummy)
)

(:action dummyPrivateAction 
	:effect (and (p-dummy-agnt))
)
(:action navigate
	:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
	:precondition (and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z) )
	:effect (and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)) )
)
(:action act-04s_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-04s_observe-rock_agent1_waypoint4 dd)(immediate-dummy-04s_observe-rock_agent1_waypoint4 dd)(at agent1 waypoint4)(can-sample-rock agent1))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-04s_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-04s_observe-rock_agent1_waypoint4 dd)(not (dummy-left-04s_observe-rock_agent1_waypoint4 dd))(not (dummy-right-04s_observe-rock_agent1_waypoint4 dd)))
	:effect (and (immediate-dummy-04s_observe-rock_agent1_waypoint4 dd) )
)
(:action dummy-left-04s_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-04s_observe-rock_agent1_waypoint4 dd)(at agent1 waypoint4)(can-sample-rock agent1)(not (at-rock-sample waypoint4))(immediate-dummy-04s_observe-rock_agent1_waypoint4 dd))
	:effect (and (not (init-04s_observe-rock_agent1_waypoint4 dd))(not (immediate-dummy-04s_observe-rock_agent1_waypoint4 dd))(dummy-left-04s_observe-rock_agent1_waypoint4 dd))
)
(:action dummy-right-04s_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-04s_observe-rock_agent1_waypoint4 dd)(at agent1 waypoint4)(can-sample-rock agent1)(at-rock-sample waypoint4)(immediate-dummy-04s_observe-rock_agent1_waypoint4 dd))
	:effect (and (not (init-04s_observe-rock_agent1_waypoint4 dd))(not (immediate-dummy-04s_observe-rock_agent1_waypoint4 dd))(dummy-right-04s_observe-rock_agent1_waypoint4 dd))
)
(:action goal-achieve-left-04s_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-04s_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4)))
	:effect (and (done-goal dd)(not (dummy-left-04s_observe-rock_agent1_waypoint4 dd)))
)
(:action act-2c4_observe-soil_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-04s_observe-rock_agent1_waypoint4 dd)(immediate-dummy-2c4_observe-soil_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent1 waypoint4)(can-sample-soil agent1))
	:observe (at-soil-sample waypoint4)
)
(:action act-dummy-2c4_observe-soil_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-04s_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent1 waypoint4)(can-sample-soil agent1)(not (dummy-left-2c4_observe-soil_agent2_waypoint4 dd))(not (dummy-right-2c4_observe-soil_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-2c4_observe-soil_agent2_waypoint4 dd) )
)
(:action dummy-left-2c4_observe-soil_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-04s_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent1 waypoint4)(can-sample-soil agent1)(not (at-soil-sample waypoint4))(immediate-dummy-2c4_observe-soil_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-2c4_observe-soil_agent2_waypoint4 dd))(dummy-left-2c4_observe-soil_agent2_waypoint4 dd))
)
(:action dummy-right-2c4_observe-soil_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-04s_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent1 waypoint4)(can-sample-soil agent1)(at-soil-sample waypoint4)(immediate-dummy-2c4_observe-soil_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-2c4_observe-soil_agent2_waypoint4 dd))(dummy-right-2c4_observe-soil_agent2_waypoint4 dd))
)
(:action act-kug_sample-rock_agent0_agent1_a0store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2c4_observe-soil_agent2_waypoint4 dd)(not (at-soil-sample waypoint4))(at-rock-sample waypoint4)(at agent1 waypoint4))
	:effect (and (pre-kug_sample-rock_agent0_agent1_a0store_waypoint4 dd))
)
(:action goal-achieve-kug_sample-rock_agent0_agent1_a0store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-kug_sample-rock_agent0_agent1_a0store_waypoint4 dd))
	:effect (and (done-goal dd)(not (pre-kug_sample-rock_agent0_agent1_a0store_waypoint4 dd)))
)
(:action act-2vh_sample-rock_agent3_agent1_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2c4_observe-soil_agent2_waypoint4 dd)(at-soil-sample waypoint4)(at-rock-sample waypoint4)(at agent1 waypoint4))
	:effect (and (pre-2vh_sample-rock_agent3_agent1_a1store_waypoint4 dd))
)
(:action goal-achieve-2vh_sample-rock_agent3_agent1_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-2vh_sample-rock_agent3_agent1_a1store_waypoint4 dd))
	:effect (and (done-goal dd)(not (pre-2vh_sample-rock_agent3_agent1_a1store_waypoint4 dd)))
)
)