(define (domain Krover-agent1)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy)
(:constants
 agent1 - agent
 general - lander
 colour - mode
 high-res - mode
 low-res - mode
 agent1 - agent
 agent0store - store
 waypoint0 - waypoint
 waypoint1 - waypoint
 waypoint2 - waypoint
 waypoint3 - waypoint
 camera0 - camera
 camera1 - camera
 objective1 - objective
 dd - dummy
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
(init-unf_calibrate_agent1_camera1_objective1_waypoint1 ?dd - dummy)
(pre-unf_calibrate_agent1_camera1_objective1_waypoint1 ?dd - dummy)
(immediate-dummy-2tl_observe-vis_agent1_objective1_waypoint1 ?dd - dummy)
(dummy-left-2tl_observe-vis_agent1_objective1_waypoint1 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-2tl_observe-vis_agent1_objective1_waypoint1 ?dd - dummy)
(pre-jdu_take-image_agent1_waypoint1_objective1_camera1_high-res ?dd - dummy)
(pre-vjl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can_traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action act-unf_calibrate_agent1_camera1_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (init-unf_calibrate_agent1_camera1_objective1_waypoint1 dd) (at agent1 waypoint1))
:effect 
(and (not (init-unf_calibrate_agent1_camera1_objective1_waypoint1 dd)) (pre-unf_calibrate_agent1_camera1_objective1_waypoint1 dd))
)

(:action act-dummy-2tl_observe-vis_agent1_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-unf_calibrate_agent1_camera1_objective1_waypoint1 dd) (at agent1 waypoint1) (not (dummy-left-2tl_observe-vis_agent1_objective1_waypoint1 dd)) (not (dummy-right-2tl_observe-vis_agent1_objective1_waypoint1 dd)))
:effect (immediate-dummy-2tl_observe-vis_agent1_objective1_waypoint1 dd)
)

(:action dummy-left-2tl_observe-vis_agent1_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent1 waypoint1) (not (visible_from objective1 waypoint1)) (immediate-dummy-2tl_observe-vis_agent1_objective1_waypoint1 dd))
:effect 
(and (not (immediate-dummy-2tl_observe-vis_agent1_objective1_waypoint1 dd)) (dummy-left-2tl_observe-vis_agent1_objective1_waypoint1 dd))
)

(:action dummy-right-2tl_observe-vis_agent1_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent1 waypoint1) (visible_from objective1 waypoint1) (immediate-dummy-2tl_observe-vis_agent1_objective1_waypoint1 dd))
:effect 
(and (not (immediate-dummy-2tl_observe-vis_agent1_objective1_waypoint1 dd)) (dummy-right-2tl_observe-vis_agent1_objective1_waypoint1 dd))
)

(:action goal-achieve-left-2tl_observe-vis_agent1_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2tl_observe-vis_agent1_objective1_waypoint1 dd) (not (visible_from objective1 waypoint1)))
:effect 
(and (done-goal dd) (not (dummy-left-2tl_observe-vis_agent1_objective1_waypoint1 dd)))
)

(:action act-jdu_take-image_agent1_waypoint1_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2tl_observe-vis_agent1_objective1_waypoint1 dd) (visible_from objective1 waypoint1) (at agent1 waypoint1))
:effect (pre-jdu_take-image_agent1_waypoint1_objective1_camera1_high-res dd)
)

(:action act-vjl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-jdu_take-image_agent1_waypoint1_objective1_camera1_high-res dd) (at agent1 waypoint1))
:effect 
(and (pre-vjl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-jdu_take-image_agent1_waypoint1_objective1_camera1_high-res dd)))
)

(:action goal-achieve-vjl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-vjl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-vjl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

)
