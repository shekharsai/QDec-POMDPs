(define (domain Krover-agent0)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy)
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
(init-5j2_observe-vis_agent1_objective1_waypoint1 ?dd - dummy)
(immediate-dummy-5j2_observe-vis_agent1_objective1_waypoint1 ?dd - dummy)
(dummy-left-5j2_observe-vis_agent1_objective1_waypoint1 ?dd - dummy)
(pre-7mo_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
(pre-v6r_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-bda_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-5j2_observe-vis_agent1_objective1_waypoint1 ?dd - dummy)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can_traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action act-dummy-5j2_observe-vis_agent1_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (init-5j2_observe-vis_agent1_objective1_waypoint1 dd) (not (dummy-left-5j2_observe-vis_agent1_objective1_waypoint1 dd)) (not (dummy-right-5j2_observe-vis_agent1_objective1_waypoint1 dd)))
:effect (immediate-dummy-5j2_observe-vis_agent1_objective1_waypoint1 dd)
)

(:action dummy-left-5j2_observe-vis_agent1_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (init-5j2_observe-vis_agent1_objective1_waypoint1 dd) (at agent0 waypoint1) (not (visible_from objective1 waypoint1)) (immediate-dummy-5j2_observe-vis_agent1_objective1_waypoint1 dd))
:effect 
(and (not (init-5j2_observe-vis_agent1_objective1_waypoint1 dd)) (not (immediate-dummy-5j2_observe-vis_agent1_objective1_waypoint1 dd)) (dummy-left-5j2_observe-vis_agent1_objective1_waypoint1 dd))
)

(:action dummy-right-5j2_observe-vis_agent1_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (init-5j2_observe-vis_agent1_objective1_waypoint1 dd) (at agent0 waypoint1) (visible_from objective1 waypoint1) (immediate-dummy-5j2_observe-vis_agent1_objective1_waypoint1 dd))
:effect 
(and (not (init-5j2_observe-vis_agent1_objective1_waypoint1 dd)) (not (immediate-dummy-5j2_observe-vis_agent1_objective1_waypoint1 dd)) (dummy-right-5j2_observe-vis_agent1_objective1_waypoint1 dd))
)

(:action act-7mo_calibrate_agent0_camera0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5j2_observe-vis_agent1_objective1_waypoint1 dd) (not (visible_from objective1 waypoint1)) (at agent0 waypoint0))
:effect (pre-7mo_calibrate_agent0_camera0_objective1_waypoint0 dd)
)

(:action act-v6r_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-7mo_calibrate_agent0_camera0_objective1_waypoint0 dd) (at agent0 waypoint0))
:effect 
(and (pre-v6r_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (not (pre-7mo_calibrate_agent0_camera0_objective1_waypoint0 dd)))
)

(:action act-bda_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-v6r_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3))
:effect 
(and (pre-bda_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd) (not (pre-v6r_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)

(:action goal-achieve-bda_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-bda_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-bda_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)

(:action goal-achieve-right-5j2_observe-vis_agent1_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5j2_observe-vis_agent1_objective1_waypoint1 dd) (visible_from objective1 waypoint1))
:effect 
(and (done-goal dd) (not (dummy-right-5j2_observe-vis_agent1_objective1_waypoint1 dd)))
)

)
