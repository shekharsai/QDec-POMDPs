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
(init-9dx_calibrate_agent0_camera0_objective1_waypoint1 ?dd - dummy)
(pre-9dx_calibrate_agent0_camera0_objective1_waypoint1 ?dd - dummy)
(immediate-dummy-gwq_observe-vis_agent0_objective1_waypoint1 ?dd - dummy)
(dummy-left-gwq_observe-vis_agent0_objective1_waypoint1 ?dd - dummy)
(pre-xnc_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
(pre-yy1_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-3nw_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-gwq_observe-vis_agent0_objective1_waypoint1 ?dd - dummy)
(pre-0fn_take-image_agent0_waypoint1_objective1_camera0_high-res ?dd - dummy)
(pre-25x_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can_traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action act-9dx_calibrate_agent0_camera0_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (init-9dx_calibrate_agent0_camera0_objective1_waypoint1 dd) (at agent0 waypoint1))
:effect 
(and (not (init-9dx_calibrate_agent0_camera0_objective1_waypoint1 dd)) (pre-9dx_calibrate_agent0_camera0_objective1_waypoint1 dd))
)

(:action act-dummy-gwq_observe-vis_agent0_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-9dx_calibrate_agent0_camera0_objective1_waypoint1 dd) (at agent0 waypoint1) (not (dummy-left-gwq_observe-vis_agent0_objective1_waypoint1 dd)) (not (dummy-right-gwq_observe-vis_agent0_objective1_waypoint1 dd)))
:effect (immediate-dummy-gwq_observe-vis_agent0_objective1_waypoint1 dd)
)

(:action dummy-left-gwq_observe-vis_agent0_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint1) (not (visible_from objective1 waypoint1)) (immediate-dummy-gwq_observe-vis_agent0_objective1_waypoint1 dd))
:effect 
(and (not (immediate-dummy-gwq_observe-vis_agent0_objective1_waypoint1 dd)) (dummy-left-gwq_observe-vis_agent0_objective1_waypoint1 dd))
)

(:action dummy-right-gwq_observe-vis_agent0_objective1_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint1) (visible_from objective1 waypoint1) (immediate-dummy-gwq_observe-vis_agent0_objective1_waypoint1 dd))
:effect 
(and (not (immediate-dummy-gwq_observe-vis_agent0_objective1_waypoint1 dd)) (dummy-right-gwq_observe-vis_agent0_objective1_waypoint1 dd))
)

(:action act-xnc_calibrate_agent0_camera0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gwq_observe-vis_agent0_objective1_waypoint1 dd) (not (visible_from objective1 waypoint1)) (at agent0 waypoint0))
:effect (pre-xnc_calibrate_agent0_camera0_objective1_waypoint0 dd)
)

(:action act-yy1_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-xnc_calibrate_agent0_camera0_objective1_waypoint0 dd) (at agent0 waypoint0))
:effect 
(and (pre-yy1_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (not (pre-xnc_calibrate_agent0_camera0_objective1_waypoint0 dd)))
)

(:action act-3nw_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-yy1_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3))
:effect 
(and (pre-3nw_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd) (not (pre-yy1_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)

(:action goal-achieve-3nw_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-3nw_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-3nw_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)

(:action act-0fn_take-image_agent0_waypoint1_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gwq_observe-vis_agent0_objective1_waypoint1 dd) (visible_from objective1 waypoint1) (at agent0 waypoint1))
:effect (pre-0fn_take-image_agent0_waypoint1_objective1_camera0_high-res dd)
)

(:action act-25x_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-0fn_take-image_agent0_waypoint1_objective1_camera0_high-res dd) (at agent0 waypoint1))
:effect 
(and (pre-25x_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-0fn_take-image_agent0_waypoint1_objective1_camera0_high-res dd)))
)

(:action goal-achieve-25x_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-25x_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-25x_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

)
