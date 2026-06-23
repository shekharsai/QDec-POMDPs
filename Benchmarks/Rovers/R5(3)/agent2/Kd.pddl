(define (domain Krover-agent2)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy)
(:constants
 agent2 - agent
 general - lander
 colour - mode
 high-res - mode
 low-res - mode
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
 dd - dummy
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
(init-js0_calibrate_agent2_camera1_objective1_waypoint4 ?dd - dummy)
(pre-js0_calibrate_agent2_camera1_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-qxt_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(dummy-left-qxt_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-j3a_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-j3a_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-pjd_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-left-pjd_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(immediate-dummy-105_observe-rock_agent0_waypoint5 ?dd - dummy)
(dummy-left-105_observe-rock_agent0_waypoint5 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-105_observe-rock_agent0_waypoint5 ?dd - dummy)
(pre-6ib_calibrate_agent2_camera1_objective1_waypoint0 ?dd - dummy)
(pre-l3z_take-image_agent2_waypoint0_objective1_camera1_high-res ?dd - dummy)
(pre-nad_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-pjd_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-right-j3a_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-in7_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-in7_observe-rock_agent2_waypoint4 ?dd - dummy)
(pre-kv7_calibrate_agent2_camera1_objective1_waypoint0 ?dd - dummy)
(dummy-right-in7_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-right-qxt_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action act-js0_calibrate_agent2_camera1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-js0_calibrate_agent2_camera1_objective1_waypoint4 dd) (at agent2 waypoint4))
:effect 
(and (not (init-js0_calibrate_agent2_camera1_objective1_waypoint4 dd)) (pre-js0_calibrate_agent2_camera1_objective1_waypoint4 dd))
)

(:action act-dummy-qxt_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-js0_calibrate_agent2_camera1_objective1_waypoint4 dd) (at agent2 waypoint4) (not (dummy-left-qxt_observe-vis_agent2_objective1_waypoint4 dd)) (not (dummy-right-qxt_observe-vis_agent2_objective1_waypoint4 dd)))
:effect (immediate-dummy-qxt_observe-vis_agent2_objective1_waypoint4 dd)
)

(:action dummy-left-qxt_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-qxt_observe-vis_agent2_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-qxt_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-left-qxt_observe-vis_agent2_objective1_waypoint4 dd))
)

(:action dummy-right-qxt_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-qxt_observe-vis_agent2_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-qxt_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-right-qxt_observe-vis_agent2_objective1_waypoint4 dd))
)

(:action act-dummy-j3a_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qxt_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5) (not (dummy-left-j3a_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-j3a_observe-soil_agent0_waypoint5 dd)))
:effect (immediate-dummy-j3a_observe-soil_agent0_waypoint5 dd)
)

(:action dummy-left-j3a_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qxt_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-j3a_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-j3a_observe-soil_agent0_waypoint5 dd)) (dummy-left-j3a_observe-soil_agent0_waypoint5 dd))
)

(:action dummy-right-j3a_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qxt_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-j3a_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-j3a_observe-soil_agent0_waypoint5 dd)) (dummy-right-j3a_observe-soil_agent0_waypoint5 dd))
)

(:action act-dummy-pjd_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j3a_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5) (not (dummy-left-pjd_observe-vis_agent0_objective1_waypoint5 dd)) (not (dummy-right-pjd_observe-vis_agent0_objective1_waypoint5 dd)))
:effect (immediate-dummy-pjd_observe-vis_agent0_objective1_waypoint5 dd)
)

(:action dummy-left-pjd_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j3a_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-pjd_observe-vis_agent0_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-pjd_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-left-pjd_observe-vis_agent0_objective1_waypoint5 dd))
)

(:action dummy-right-pjd_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j3a_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-pjd_observe-vis_agent0_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-pjd_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-right-pjd_observe-vis_agent0_objective1_waypoint5 dd))
)

(:action act-dummy-105_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pjd_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5) (not (dummy-left-105_observe-rock_agent0_waypoint5 dd)) (not (dummy-right-105_observe-rock_agent0_waypoint5 dd)))
:effect (immediate-dummy-105_observe-rock_agent0_waypoint5 dd)
)

(:action dummy-left-105_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pjd_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5) (not (at-rock-sample waypoint5)) (immediate-dummy-105_observe-rock_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-105_observe-rock_agent0_waypoint5 dd)) (dummy-left-105_observe-rock_agent0_waypoint5 dd))
)

(:action dummy-right-105_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pjd_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5) (at-rock-sample waypoint5) (immediate-dummy-105_observe-rock_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-105_observe-rock_agent0_waypoint5 dd)) (dummy-right-105_observe-rock_agent0_waypoint5 dd))
)

(:action goal-achieve-left-105_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-105_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (not (visible-from objective1 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)))
:effect 
(and (done-goal dd) (not (dummy-left-105_observe-rock_agent0_waypoint5 dd)))
)

(:action act-6ib_calibrate_agent2_camera1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-105_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (not (visible-from objective1 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint0))
:effect (pre-6ib_calibrate_agent2_camera1_objective1_waypoint0 dd)
)

(:action act-l3z_take-image_agent2_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-6ib_calibrate_agent2_camera1_objective1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-l3z_take-image_agent2_waypoint0_objective1_camera1_high-res dd) (not (pre-6ib_calibrate_agent2_camera1_objective1_waypoint0 dd)))
)

(:action act-nad_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-l3z_take-image_agent2_waypoint0_objective1_camera1_high-res dd) (at agent2 waypoint3))
:effect 
(and (pre-nad_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0 dd) (not (pre-l3z_take-image_agent2_waypoint0_objective1_camera1_high-res dd)))
)

(:action goal-achieve-nad_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-nad_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-nad_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0 dd)))
)

(:action goal-achieve-right-pjd_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pjd_observe-vis_agent0_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)))
:effect 
(and (done-goal dd) (not (dummy-right-pjd_observe-vis_agent0_objective1_waypoint5 dd)))
)

(:action act-dummy-in7_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j3a_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (not (dummy-left-in7_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-in7_observe-rock_agent2_waypoint4 dd)))
:effect (immediate-dummy-in7_observe-rock_agent2_waypoint4 dd)
)

(:action dummy-left-in7_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j3a_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-in7_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-in7_observe-rock_agent2_waypoint4 dd)) (dummy-left-in7_observe-rock_agent2_waypoint4 dd))
)

(:action dummy-right-in7_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j3a_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-in7_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-in7_observe-rock_agent2_waypoint4 dd)) (dummy-right-in7_observe-rock_agent2_waypoint4 dd))
)

(:action act-kv7_calibrate_agent2_camera1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-in7_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at agent2 waypoint0))
:effect (pre-kv7_calibrate_agent2_camera1_objective1_waypoint0 dd)
)

(:action goal-achieve-kv7_calibrate_agent2_camera1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-kv7_calibrate_agent2_camera1_objective1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-kv7_calibrate_agent2_camera1_objective1_waypoint0 dd)))
)

(:action goal-achieve-right-in7_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-in7_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)))
:effect 
(and (done-goal dd) (not (dummy-right-in7_observe-rock_agent2_waypoint4 dd)))
)

(:action goal-achieve-right-qxt_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qxt_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4))
:effect 
(and (done-goal dd) (not (dummy-right-qxt_observe-vis_agent2_objective1_waypoint4 dd)))
)

)
