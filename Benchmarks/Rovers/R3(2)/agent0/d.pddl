(define (domain rover-agent0)
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
	dd - dummy)
(:predicates 
	(at ?x - agent ?y - waypoint )
	(at_lander ?x - lander ?y - waypoint )
	(can_traverse ?r - agent ?x - waypoint ?y - waypoint )
	(equipped_for_imaging ?r - agent )
	(equipped_for_soil_analysis ?r - agent )
	(equipped_for_rock_analysis ?r - agent )
	(empty ?s - store )
	(have_rock_analysis ?r - agent )
	(have_soil_analysis ?r - agent )
	(full ?s - store )
	(calibrated ?c - camera ?r - agent ?w - waypoint ?o - objective )
	(supports ?c - camera ?m - mode )
	(available ?r - agent )
	(visible ?w - waypoint ?p - waypoint )
	(have_image ?r - agent ?o - objective ?m - mode )
	(communicated_image_data ?o - objective ?m - mode )
	(communicated_soil_data )
	(communicated_rock_data )
	(at_soil_sample ?w - waypoint )
	(at_rock_sample ?w - waypoint )
	(visible_from ?o - objective ?w - waypoint )
	(store_of ?s - store ?r - agent )
	(calibration_target ?i - camera ?o - objective )
	(on_board ?i - camera ?r - agent )
	(channel_free ?l - lander )
	(init-8ye_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
	(pre-8ye_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
	(immediate-dummy-kdi_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(dummy-left-kdi_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(pre-urd_calibrate_agent0_camera0_objective1_waypoint1 ?dd - dummy)
	(immediate-dummy-6qw_observe-vis_agent0_objective1_waypoint1 ?dd - dummy)
	(dummy-left-6qw_observe-vis_agent0_objective1_waypoint1 ?dd - dummy)
	(pre-mm2_calibrate_agent0_camera0_objective1_waypoint2 ?dd - dummy)
	(immediate-dummy-hjb_observe-vis_agent0_objective1_waypoint2 ?dd - dummy)
	(dummy-left-hjb_observe-vis_agent0_objective1_waypoint2 ?dd - dummy)
	(pre-fpu_calibrate_agent0_camera0_objective1_waypoint3 ?dd - dummy)
	(pre-c65_take-image_agent0_waypoint3_objective1_camera0_high-res ?dd - dummy)
	(pre-wys_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-hjb_observe-vis_agent0_objective1_waypoint2 ?dd - dummy)
	(pre-3i4_take-image_agent0_waypoint2_objective1_camera0_high-res ?dd - dummy)
	(pre-35j_communicate-image-data_agent0_general_objective1_high-res_waypoint2_waypoint0 ?dd - dummy)
	(dummy-right-6qw_observe-vis_agent0_objective1_waypoint1 ?dd - dummy)
	(pre-yy4_take-image_agent0_waypoint1_objective1_camera0_high-res ?dd - dummy)
	(pre-w9h_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
	(dummy-right-kdi_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(pre-6ac_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
	(pre-24u_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
)

(:action navigate
	:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
	:precondition (and (can_traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z) )
	:effect (and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)) )
)
(:action act-8ye_calibrate_agent0_camera0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (init-8ye_calibrate_agent0_camera0_objective1_waypoint0 dd)(at agent0 waypoint0))
	:effect (and (not (init-8ye_calibrate_agent0_camera0_objective1_waypoint0 dd))(pre-8ye_calibrate_agent0_camera0_objective1_waypoint0 dd))
)
(:action act-kdi_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-8ye_calibrate_agent0_camera0_objective1_waypoint0 dd)(immediate-dummy-kdi_observe-vis_agent0_objective1_waypoint0 dd)(at agent0 waypoint0))
	:observe (visible_from objective1 waypoint0)
)
(:action act-dummy-kdi_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-8ye_calibrate_agent0_camera0_objective1_waypoint0 dd)(at agent0 waypoint0)(not (dummy-left-kdi_observe-vis_agent0_objective1_waypoint0 dd))(not (dummy-right-kdi_observe-vis_agent0_objective1_waypoint0 dd)))
	:effect (and (immediate-dummy-kdi_observe-vis_agent0_objective1_waypoint0 dd) )
)
(:action dummy-left-kdi_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint0)(not (visible_from objective1 waypoint0))(immediate-dummy-kdi_observe-vis_agent0_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-kdi_observe-vis_agent0_objective1_waypoint0 dd))(dummy-left-kdi_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-right-kdi_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint0)(visible_from objective1 waypoint0)(immediate-dummy-kdi_observe-vis_agent0_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-kdi_observe-vis_agent0_objective1_waypoint0 dd))(dummy-right-kdi_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action act-urd_calibrate_agent0_camera0_objective1_waypoint1
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-kdi_observe-vis_agent0_objective1_waypoint0 dd)(not (visible_from objective1 waypoint0))(at agent0 waypoint1))
	:effect (and (pre-urd_calibrate_agent0_camera0_objective1_waypoint1 dd))
)
(:action act-6qw_observe-vis_agent0_objective1_waypoint1
	:parameters ( ?a - agent )
	:precondition (and (pre-urd_calibrate_agent0_camera0_objective1_waypoint1 dd)(immediate-dummy-6qw_observe-vis_agent0_objective1_waypoint1 dd)(at agent0 waypoint1))
	:observe (visible_from objective1 waypoint1)
)
(:action act-dummy-6qw_observe-vis_agent0_objective1_waypoint1
	:parameters ( ?a - agent )
	:precondition (and (pre-urd_calibrate_agent0_camera0_objective1_waypoint1 dd)(at agent0 waypoint1)(not (dummy-left-6qw_observe-vis_agent0_objective1_waypoint1 dd))(not (dummy-right-6qw_observe-vis_agent0_objective1_waypoint1 dd)))
	:effect (and (immediate-dummy-6qw_observe-vis_agent0_objective1_waypoint1 dd) )
)
(:action dummy-left-6qw_observe-vis_agent0_objective1_waypoint1
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint1)(not (visible_from objective1 waypoint1))(immediate-dummy-6qw_observe-vis_agent0_objective1_waypoint1 dd))
	:effect (and (not (immediate-dummy-6qw_observe-vis_agent0_objective1_waypoint1 dd))(dummy-left-6qw_observe-vis_agent0_objective1_waypoint1 dd))
)
(:action dummy-right-6qw_observe-vis_agent0_objective1_waypoint1
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint1)(visible_from objective1 waypoint1)(immediate-dummy-6qw_observe-vis_agent0_objective1_waypoint1 dd))
	:effect (and (not (immediate-dummy-6qw_observe-vis_agent0_objective1_waypoint1 dd))(dummy-right-6qw_observe-vis_agent0_objective1_waypoint1 dd))
)
(:action act-mm2_calibrate_agent0_camera0_objective1_waypoint2
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6qw_observe-vis_agent0_objective1_waypoint1 dd)(not (visible_from objective1 waypoint1))(at agent0 waypoint2))
	:effect (and (pre-mm2_calibrate_agent0_camera0_objective1_waypoint2 dd))
)
(:action act-hjb_observe-vis_agent0_objective1_waypoint2
	:parameters ( ?a - agent )
	:precondition (and (pre-mm2_calibrate_agent0_camera0_objective1_waypoint2 dd)(immediate-dummy-hjb_observe-vis_agent0_objective1_waypoint2 dd)(at agent0 waypoint2))
	:observe (visible_from objective1 waypoint2)
)
(:action act-dummy-hjb_observe-vis_agent0_objective1_waypoint2
	:parameters ( ?a - agent )
	:precondition (and (pre-mm2_calibrate_agent0_camera0_objective1_waypoint2 dd)(at agent0 waypoint2)(not (dummy-left-hjb_observe-vis_agent0_objective1_waypoint2 dd))(not (dummy-right-hjb_observe-vis_agent0_objective1_waypoint2 dd)))
	:effect (and (immediate-dummy-hjb_observe-vis_agent0_objective1_waypoint2 dd) )
)
(:action dummy-left-hjb_observe-vis_agent0_objective1_waypoint2
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint2)(not (visible_from objective1 waypoint2))(immediate-dummy-hjb_observe-vis_agent0_objective1_waypoint2 dd))
	:effect (and (not (immediate-dummy-hjb_observe-vis_agent0_objective1_waypoint2 dd))(dummy-left-hjb_observe-vis_agent0_objective1_waypoint2 dd))
)
(:action dummy-right-hjb_observe-vis_agent0_objective1_waypoint2
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint2)(visible_from objective1 waypoint2)(immediate-dummy-hjb_observe-vis_agent0_objective1_waypoint2 dd))
	:effect (and (not (immediate-dummy-hjb_observe-vis_agent0_objective1_waypoint2 dd))(dummy-right-hjb_observe-vis_agent0_objective1_waypoint2 dd))
)
(:action act-fpu_calibrate_agent0_camera0_objective1_waypoint3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hjb_observe-vis_agent0_objective1_waypoint2 dd)(not (visible_from objective1 waypoint2))(at agent0 waypoint3))
	:effect (and (pre-fpu_calibrate_agent0_camera0_objective1_waypoint3 dd))
)
(:action act-c65_take-image_agent0_waypoint3_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (pre-fpu_calibrate_agent0_camera0_objective1_waypoint3 dd)(at agent0 waypoint3))
	:effect (and (pre-c65_take-image_agent0_waypoint3_objective1_camera0_high-res dd)(not (pre-fpu_calibrate_agent0_camera0_objective1_waypoint3 dd)))
)
(:action act-wys_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-c65_take-image_agent0_waypoint3_objective1_camera0_high-res dd)(at agent0 waypoint3))
	:effect (and (pre-wys_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)(not (pre-c65_take-image_agent0_waypoint3_objective1_camera0_high-res dd)))
)
(:action goal-achieve-wys_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-wys_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd))
	:effect (and (done-goal dd)(not (pre-wys_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)
(:action act-3i4_take-image_agent0_waypoint2_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hjb_observe-vis_agent0_objective1_waypoint2 dd)(visible_from objective1 waypoint2)(at agent0 waypoint2))
	:effect (and (pre-3i4_take-image_agent0_waypoint2_objective1_camera0_high-res dd))
)
(:action act-35j_communicate-image-data_agent0_general_objective1_high-res_waypoint2_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-3i4_take-image_agent0_waypoint2_objective1_camera0_high-res dd)(at agent0 waypoint2))
	:effect (and (pre-35j_communicate-image-data_agent0_general_objective1_high-res_waypoint2_waypoint0 dd)(not (pre-3i4_take-image_agent0_waypoint2_objective1_camera0_high-res dd)))
)
(:action goal-achieve-35j_communicate-image-data_agent0_general_objective1_high-res_waypoint2_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-35j_communicate-image-data_agent0_general_objective1_high-res_waypoint2_waypoint0 dd))
	:effect (and (done-goal dd)(not (pre-35j_communicate-image-data_agent0_general_objective1_high-res_waypoint2_waypoint0 dd)))
)
(:action act-yy4_take-image_agent0_waypoint1_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6qw_observe-vis_agent0_objective1_waypoint1 dd)(visible_from objective1 waypoint1)(at agent0 waypoint1))
	:effect (and (pre-yy4_take-image_agent0_waypoint1_objective1_camera0_high-res dd))
)
(:action act-w9h_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-yy4_take-image_agent0_waypoint1_objective1_camera0_high-res dd)(at agent0 waypoint1))
	:effect (and (pre-w9h_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)(not (pre-yy4_take-image_agent0_waypoint1_objective1_camera0_high-res dd)))
)
(:action goal-achieve-w9h_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-w9h_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd))
	:effect (and (done-goal dd)(not (pre-w9h_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)
(:action act-6ac_take-image_agent0_waypoint0_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-kdi_observe-vis_agent0_objective1_waypoint0 dd)(visible_from objective1 waypoint0)(at agent0 waypoint0))
	:effect (and (pre-6ac_take-image_agent0_waypoint0_objective1_camera0_high-res dd))
)
(:action act-24u_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-6ac_take-image_agent0_waypoint0_objective1_camera0_high-res dd)(at agent0 waypoint3))
	:effect (and (pre-24u_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)(not (pre-6ac_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)
(:action goal-achieve-24u_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-24u_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd))
	:effect (and (done-goal dd)(not (pre-24u_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)
)