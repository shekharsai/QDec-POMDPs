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
	(init-f5h_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-f5h_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-f5h_observe-soil_agent0_waypoint5 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-f5h_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-qal_observe-rock_agent0_waypoint5 ?dd - dummy)
	(dummy-left-qal_observe-rock_agent0_waypoint5 ?dd - dummy)
	(dummy-right-qal_observe-rock_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
	(dummy-left-evx_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
	(dummy-right-evx_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
	(pre-4q1_take-image_agent1_waypoint4_objective1_camera1_high-res ?dd - dummy)
	(pre-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
)

(:action navigate
	:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
	:precondition (and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z) )
	:effect (and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)) )
)
(:action calibrate
	:parameters ( ?r - agent ?i - camera ?t - objective ?w - waypoint)
	:precondition (and (equipped-for-imaging ?r) (calibration-target ?i ?t) (at ?r ?w) (visible-from ?t ?w) (on-board ?i ?r) )
	:effect (and (calibrated ?i ?r ?w ?t) )
)
(:action drop
	:parameters ( ?x - agent ?y - store)
	:precondition (and (store-of ?y ?x) )
	:effect (and (not (full ?y ?x)) (empty ?y ?x) )
)
(:action act-f5h_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-f5h_observe-soil_agent0_waypoint5 dd)(immediate-dummy-f5h_observe-soil_agent0_waypoint5 dd)(at agent1 waypoint5)(can-sample-soil agent1))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-f5h_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-f5h_observe-soil_agent0_waypoint5 dd)(not (dummy-left-f5h_observe-soil_agent0_waypoint5 dd))(not (dummy-right-f5h_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-f5h_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-f5h_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-f5h_observe-soil_agent0_waypoint5 dd)(at agent1 waypoint5)(can-sample-soil agent1)(not (at-soil-sample waypoint5))(immediate-dummy-f5h_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (init-f5h_observe-soil_agent0_waypoint5 dd))(not (immediate-dummy-f5h_observe-soil_agent0_waypoint5 dd))(dummy-left-f5h_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-f5h_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-f5h_observe-soil_agent0_waypoint5 dd)(at agent1 waypoint5)(can-sample-soil agent1)(at-soil-sample waypoint5)(immediate-dummy-f5h_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (init-f5h_observe-soil_agent0_waypoint5 dd))(not (immediate-dummy-f5h_observe-soil_agent0_waypoint5 dd))(dummy-right-f5h_observe-soil_agent0_waypoint5 dd))
)
(:action goal-achieve-left-f5h_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-f5h_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5)))
	:effect (and (done-goal dd)(not (dummy-left-f5h_observe-soil_agent0_waypoint5 dd)))
)
(:action act-qal_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-f5h_observe-soil_agent0_waypoint5 dd)(immediate-dummy-qal_observe-rock_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent1 waypoint5)(can-sample-rock agent1))
	:observe (at-rock-sample waypoint5)
)
(:action act-dummy-qal_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-f5h_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent1 waypoint5)(can-sample-rock agent1)(not (dummy-left-qal_observe-rock_agent0_waypoint5 dd))(not (dummy-right-qal_observe-rock_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-qal_observe-rock_agent0_waypoint5 dd) )
)
(:action dummy-left-qal_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-f5h_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent1 waypoint5)(can-sample-rock agent1)(not (at-rock-sample waypoint5))(immediate-dummy-qal_observe-rock_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-qal_observe-rock_agent0_waypoint5 dd))(dummy-left-qal_observe-rock_agent0_waypoint5 dd))
)
(:action dummy-right-qal_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-f5h_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent1 waypoint5)(can-sample-rock agent1)(at-rock-sample waypoint5)(immediate-dummy-qal_observe-rock_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-qal_observe-rock_agent0_waypoint5 dd))(dummy-right-qal_observe-rock_agent0_waypoint5 dd))
)
(:action goal-achieve-left-qal_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-qal_observe-rock_agent0_waypoint5 dd)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5))
	:effect (and (done-goal dd)(not (dummy-left-qal_observe-rock_agent0_waypoint5 dd)))
)
(:action act-evx_observe-vis_agent1_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qal_observe-rock_agent0_waypoint5 dd)(immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd)(at-rock-sample waypoint5)(at-soil-sample waypoint5)(at agent1 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-evx_observe-vis_agent1_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qal_observe-rock_agent0_waypoint5 dd)(at-rock-sample waypoint5)(at-soil-sample waypoint5)(at agent1 waypoint4)(not (dummy-left-evx_observe-vis_agent1_objective1_waypoint4 dd))(not (dummy-right-evx_observe-vis_agent1_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd) )
)
(:action dummy-left-evx_observe-vis_agent1_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qal_observe-rock_agent0_waypoint5 dd)(at-rock-sample waypoint5)(at-soil-sample waypoint5)(at agent1 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd))(dummy-left-evx_observe-vis_agent1_objective1_waypoint4 dd))
)
(:action dummy-right-evx_observe-vis_agent1_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qal_observe-rock_agent0_waypoint5 dd)(at-rock-sample waypoint5)(at-soil-sample waypoint5)(at agent1 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd))(dummy-right-evx_observe-vis_agent1_objective1_waypoint4 dd))
)
(:action goal-achieve-left-evx_observe-vis_agent1_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-evx_observe-vis_agent1_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint5)(at-soil-sample waypoint5))
	:effect (and (done-goal dd)(not (dummy-left-evx_observe-vis_agent1_objective1_waypoint4 dd)))
)
(:action act-4q1_take-image_agent1_waypoint4_objective1_camera1_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-evx_observe-vis_agent1_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-rock-sample waypoint5)(at-soil-sample waypoint5)(calibrated camera1 agent1 waypoint4 objective1)(on-board camera1 agent1)(equipped-for-imaging agent1)(at agent1 waypoint4))
	:effect (and (pre-4q1_take-image_agent1_waypoint4_objective1_camera1_high-res dd)(have-image agent1 objective1 high-res)(not (calibrated camera1 agent1 waypoint4 objective1)))
)
(:action act-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-4q1_take-image_agent1_waypoint4_objective1_camera1_high-res dd)(at agent1 waypoint1)(have-image agent1 objective1 high-res))
	:effect (and (pre-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd dd)(not (pre-4q1_take-image_agent1_waypoint4_objective1_camera1_high-res dd)))
)
(:action goal-achieve-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
)