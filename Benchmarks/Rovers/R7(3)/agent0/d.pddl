(define (domain rover-agent0)
(:types agent waypoint store camera mode lander objective dummy)
(:constants 
	agent0 - agent
	general - lander
	colour - mode
	high-res - mode
	low-res - mode
	agent0 - agent
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
	camera3 - camera
	objective1 - objective
	objective2 - objective
	objective3 - objective
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
	(init-0a1_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-0a1_observe-rock_agent2_waypoint4 ?dd - dummy)
	(dummy-left-0a1_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-yok_observe-vis_agent0_objective3_waypoint3 ?dd - dummy)
	(dummy-left-yok_observe-vis_agent0_objective3_waypoint3 ?dd - dummy)
	(immediate-dummy-q1q_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
	(dummy-left-q1q_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
	(pre-k91_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
	(immediate-dummy-eql_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(dummy-left-eql_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-eql_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(pre-33y_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
	(pre-8y5_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
	(dummy-right-q1q_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
	(dummy-right-yok_observe-vis_agent0_objective3_waypoint3 ?dd - dummy)
	(immediate-dummy-7t3_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
	(dummy-left-7t3_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
	(immediate-dummy-em6_observe-soil_agent1_waypoint5 ?dd - dummy)
	(dummy-left-em6_observe-soil_agent1_waypoint5 ?dd - dummy)
	(immediate-dummy-yl1_observe-vis_agent1_objective1_waypoint5 ?dd - dummy)
	(dummy-left-yl1_observe-vis_agent1_objective1_waypoint5 ?dd - dummy)
	(pre-jtt_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
	(pre-1as_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
	(pre-1ux_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
	(dummy-right-yl1_observe-vis_agent1_objective1_waypoint5 ?dd - dummy)
	(dummy-right-em6_observe-soil_agent1_waypoint5 ?dd - dummy)
	(pre-2t8_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
	(immediate-dummy-hra_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(dummy-left-hra_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(dummy-right-hra_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(pre-xn6_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
	(pre-oro_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
	(dummy-right-7t3_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
	(dummy-right-0a1_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-0xg_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
	(dummy-left-0xg_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
	(immediate-dummy-d2q_observe-soil_agent2_waypoint5 ?dd - dummy)
	(dummy-left-d2q_observe-soil_agent2_waypoint5 ?dd - dummy)
	(pre-8tc_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
	(immediate-dummy-n2p_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(dummy-left-n2p_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(dummy-right-n2p_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
	(pre-yap_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
	(pre-inp_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
	(dummy-right-d2q_observe-soil_agent2_waypoint5 ?dd - dummy)
	(pre-2ci_calibrate_agent0_camera0_objective1_waypoint5 ?dd - dummy)
	(immediate-dummy-agf_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(dummy-left-agf_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(pre-6zc_sample-rock_agent2_agent0_a2store_waypoint4 ?dd - dummy)
	(dummy-right-agf_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(pre-2r8_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
	(pre-ak4_sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
	(pre-nt5_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
	(pre-myh_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
	(dummy-right-0xg_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
	(pre-b2b_calibrate_agent0_camera0_objective1_waypoint4 ?dd - dummy)
	(pre-vo1_take-image_agent0_waypoint4_objective1_camera0_high-res ?dd - dummy)
	(pre-stq_sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
	(pre-voa_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
	(pre-qvp_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
)

(:action navigate
	:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
	:precondition (and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z) )
	:effect (and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)) )
)
(:action act-0a1_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-0a1_observe-rock_agent2_waypoint4 dd)(immediate-dummy-0a1_observe-rock_agent2_waypoint4 dd)(at agent0 waypoint4))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-0a1_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-0a1_observe-rock_agent2_waypoint4 dd)(not (dummy-left-0a1_observe-rock_agent2_waypoint4 dd))(not (dummy-right-0a1_observe-rock_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-0a1_observe-rock_agent2_waypoint4 dd) )
)
(:action dummy-left-0a1_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-0a1_observe-rock_agent2_waypoint4 dd)(at agent0 waypoint4)(not (at-rock-sample waypoint4))(immediate-dummy-0a1_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (init-0a1_observe-rock_agent2_waypoint4 dd))(not (immediate-dummy-0a1_observe-rock_agent2_waypoint4 dd))(dummy-left-0a1_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-0a1_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-0a1_observe-rock_agent2_waypoint4 dd)(at agent0 waypoint4)(at-rock-sample waypoint4)(immediate-dummy-0a1_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (init-0a1_observe-rock_agent2_waypoint4 dd))(not (immediate-dummy-0a1_observe-rock_agent2_waypoint4 dd))(dummy-right-0a1_observe-rock_agent2_waypoint4 dd))
)
(:action act-yok_observe-vis_agent0_objective3_waypoint3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0a1_observe-rock_agent2_waypoint4 dd)(immediate-dummy-yok_observe-vis_agent0_objective3_waypoint3 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint3))
	:observe (visible-from objective3 waypoint3)
)
(:action act-dummy-yok_observe-vis_agent0_objective3_waypoint3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0a1_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint3)(not (dummy-left-yok_observe-vis_agent0_objective3_waypoint3 dd))(not (dummy-right-yok_observe-vis_agent0_objective3_waypoint3 dd)))
	:effect (and (immediate-dummy-yok_observe-vis_agent0_objective3_waypoint3 dd) )
)
(:action dummy-left-yok_observe-vis_agent0_objective3_waypoint3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0a1_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint3)(not (visible-from objective3 waypoint3))(immediate-dummy-yok_observe-vis_agent0_objective3_waypoint3 dd))
	:effect (and (not (immediate-dummy-yok_observe-vis_agent0_objective3_waypoint3 dd))(dummy-left-yok_observe-vis_agent0_objective3_waypoint3 dd))
)
(:action dummy-right-yok_observe-vis_agent0_objective3_waypoint3
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0a1_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint3)(visible-from objective3 waypoint3)(immediate-dummy-yok_observe-vis_agent0_objective3_waypoint3 dd))
	:effect (and (not (immediate-dummy-yok_observe-vis_agent0_objective3_waypoint3 dd))(dummy-right-yok_observe-vis_agent0_objective3_waypoint3 dd))
)
(:action act-q1q_observe-vis_agent2_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-yok_observe-vis_agent0_objective3_waypoint3 dd)(immediate-dummy-q1q_observe-vis_agent2_objective1_waypoint4 dd)(not (visible-from objective3 waypoint3))(not (at-rock-sample waypoint4))(at agent0 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-q1q_observe-vis_agent2_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-yok_observe-vis_agent0_objective3_waypoint3 dd)(not (visible-from objective3 waypoint3))(not (at-rock-sample waypoint4))(at agent0 waypoint4)(not (dummy-left-q1q_observe-vis_agent2_objective1_waypoint4 dd))(not (dummy-right-q1q_observe-vis_agent2_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-q1q_observe-vis_agent2_objective1_waypoint4 dd) )
)
(:action dummy-left-q1q_observe-vis_agent2_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-yok_observe-vis_agent0_objective3_waypoint3 dd)(not (visible-from objective3 waypoint3))(not (at-rock-sample waypoint4))(at agent0 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-q1q_observe-vis_agent2_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-q1q_observe-vis_agent2_objective1_waypoint4 dd))(dummy-left-q1q_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action dummy-right-q1q_observe-vis_agent2_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-yok_observe-vis_agent0_objective3_waypoint3 dd)(not (visible-from objective3 waypoint3))(not (at-rock-sample waypoint4))(at agent0 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-q1q_observe-vis_agent2_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-q1q_observe-vis_agent2_objective1_waypoint4 dd))(dummy-right-q1q_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action act-k91_calibrate_agent0_camera0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-q1q_observe-vis_agent2_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (visible-from objective3 waypoint3))(not (at-rock-sample waypoint4))(at agent0 waypoint0))
	:effect (and (pre-k91_calibrate_agent0_camera0_objective1_waypoint0 dd))
)
(:action act-eql_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-k91_calibrate_agent0_camera0_objective1_waypoint0 dd)(immediate-dummy-eql_observe-vis_agent0_objective1_waypoint0 dd)(at agent0 waypoint0))
	:observe (visible-from objective1 waypoint0)
)
(:action act-dummy-eql_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-k91_calibrate_agent0_camera0_objective1_waypoint0 dd)(at agent0 waypoint0)(not (dummy-left-eql_observe-vis_agent0_objective1_waypoint0 dd))(not (dummy-right-eql_observe-vis_agent0_objective1_waypoint0 dd)))
	:effect (and (immediate-dummy-eql_observe-vis_agent0_objective1_waypoint0 dd) )
)
(:action dummy-left-eql_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint0)(not (visible-from objective1 waypoint0))(immediate-dummy-eql_observe-vis_agent0_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-eql_observe-vis_agent0_objective1_waypoint0 dd))(dummy-left-eql_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-right-eql_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint0)(visible-from objective1 waypoint0)(immediate-dummy-eql_observe-vis_agent0_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-eql_observe-vis_agent0_objective1_waypoint0 dd))(dummy-right-eql_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action goal-achieve-left-eql_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-eql_observe-vis_agent0_objective1_waypoint0 dd)(not (visible-from objective1 waypoint0)))
	:effect (and (done-goal dd)(not (dummy-left-eql_observe-vis_agent0_objective1_waypoint0 dd)))
)
(:action act-33y_take-image_agent0_waypoint0_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-eql_observe-vis_agent0_objective1_waypoint0 dd)(visible-from objective1 waypoint0)(at agent0 waypoint0))
	:effect (and (pre-33y_take-image_agent0_waypoint0_objective1_camera0_high-res dd))
)
(:action act-8y5_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-33y_take-image_agent0_waypoint0_objective1_camera0_high-res dd)(at agent0 waypoint3))
	:effect (and (pre-8y5_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)(not (pre-33y_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)
(:action goal-achieve-8y5_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-8y5_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd))
	:effect (and (done-goal dd)(not (pre-8y5_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)
(:action goal-achieve-right-q1q_observe-vis_agent2_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-q1q_observe-vis_agent2_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(not (visible-from objective3 waypoint3))(not (at-rock-sample waypoint4)))
	:effect (and (done-goal dd)(not (dummy-right-q1q_observe-vis_agent2_objective1_waypoint4 dd)))
)
(:action act-7t3_observe-vis_agent1_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-yok_observe-vis_agent0_objective3_waypoint3 dd)(immediate-dummy-7t3_observe-vis_agent1_objective1_waypoint4 dd)(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-7t3_observe-vis_agent1_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-yok_observe-vis_agent0_objective3_waypoint3 dd)(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint4)(not (dummy-left-7t3_observe-vis_agent1_objective1_waypoint4 dd))(not (dummy-right-7t3_observe-vis_agent1_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-7t3_observe-vis_agent1_objective1_waypoint4 dd) )
)
(:action dummy-left-7t3_observe-vis_agent1_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-yok_observe-vis_agent0_objective3_waypoint3 dd)(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-7t3_observe-vis_agent1_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-7t3_observe-vis_agent1_objective1_waypoint4 dd))(dummy-left-7t3_observe-vis_agent1_objective1_waypoint4 dd))
)
(:action dummy-right-7t3_observe-vis_agent1_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-yok_observe-vis_agent0_objective3_waypoint3 dd)(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-7t3_observe-vis_agent1_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-7t3_observe-vis_agent1_objective1_waypoint4 dd))(dummy-right-7t3_observe-vis_agent1_objective1_waypoint4 dd))
)
(:action act-em6_observe-soil_agent1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7t3_observe-vis_agent1_objective1_waypoint4 dd)(immediate-dummy-em6_observe-soil_agent1_waypoint5 dd)(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint5))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-em6_observe-soil_agent1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7t3_observe-vis_agent1_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(not (dummy-left-em6_observe-soil_agent1_waypoint5 dd))(not (dummy-right-em6_observe-soil_agent1_waypoint5 dd)))
	:effect (and (immediate-dummy-em6_observe-soil_agent1_waypoint5 dd) )
)
(:action dummy-left-em6_observe-soil_agent1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7t3_observe-vis_agent1_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(not (at-soil-sample waypoint5))(immediate-dummy-em6_observe-soil_agent1_waypoint5 dd))
	:effect (and (not (immediate-dummy-em6_observe-soil_agent1_waypoint5 dd))(dummy-left-em6_observe-soil_agent1_waypoint5 dd))
)
(:action dummy-right-em6_observe-soil_agent1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-7t3_observe-vis_agent1_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(at-soil-sample waypoint5)(immediate-dummy-em6_observe-soil_agent1_waypoint5 dd))
	:effect (and (not (immediate-dummy-em6_observe-soil_agent1_waypoint5 dd))(dummy-right-em6_observe-soil_agent1_waypoint5 dd))
)
(:action act-yl1_observe-vis_agent1_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-em6_observe-soil_agent1_waypoint5 dd)(immediate-dummy-yl1_observe-vis_agent1_objective1_waypoint5 dd)(not (at-soil-sample waypoint5))(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint5))
	:observe (visible-from objective1 waypoint5)
)
(:action act-dummy-yl1_observe-vis_agent1_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-em6_observe-soil_agent1_waypoint5 dd)(not (at-soil-sample waypoint5))(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(not (dummy-left-yl1_observe-vis_agent1_objective1_waypoint5 dd))(not (dummy-right-yl1_observe-vis_agent1_objective1_waypoint5 dd)))
	:effect (and (immediate-dummy-yl1_observe-vis_agent1_objective1_waypoint5 dd) )
)
(:action dummy-left-yl1_observe-vis_agent1_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-em6_observe-soil_agent1_waypoint5 dd)(not (at-soil-sample waypoint5))(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(not (visible-from objective1 waypoint5))(immediate-dummy-yl1_observe-vis_agent1_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-yl1_observe-vis_agent1_objective1_waypoint5 dd))(dummy-left-yl1_observe-vis_agent1_objective1_waypoint5 dd))
)
(:action dummy-right-yl1_observe-vis_agent1_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-em6_observe-soil_agent1_waypoint5 dd)(not (at-soil-sample waypoint5))(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(visible-from objective1 waypoint5)(immediate-dummy-yl1_observe-vis_agent1_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-yl1_observe-vis_agent1_objective1_waypoint5 dd))(dummy-right-yl1_observe-vis_agent1_objective1_waypoint5 dd))
)
(:action act-jtt_calibrate_agent0_camera0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-yl1_observe-vis_agent1_objective1_waypoint5 dd)(not (visible-from objective1 waypoint5))(not (at-soil-sample waypoint5))(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint0))
	:effect (and (pre-jtt_calibrate_agent0_camera0_objective1_waypoint0 dd))
)
(:action act-1as_take-image_agent0_waypoint0_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (pre-jtt_calibrate_agent0_camera0_objective1_waypoint0 dd)(at agent0 waypoint0))
	:effect (and (pre-1as_take-image_agent0_waypoint0_objective1_camera0_high-res dd)(not (pre-jtt_calibrate_agent0_camera0_objective1_waypoint0 dd)))
)
(:action act-1ux_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-1as_take-image_agent0_waypoint0_objective1_camera0_high-res dd)(at agent0 waypoint3))
	:effect (and (pre-1ux_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)(not (pre-1as_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)
(:action goal-achieve-1ux_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-1ux_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd))
	:effect (and (done-goal dd)(not (pre-1ux_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)
(:action goal-achieve-right-yl1_observe-vis_agent1_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-yl1_observe-vis_agent1_objective1_waypoint5 dd)(visible-from objective1 waypoint5)(not (at-soil-sample waypoint5))(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4)))
	:effect (and (done-goal dd)(not (dummy-right-yl1_observe-vis_agent1_objective1_waypoint5 dd)))
)
(:action act-2t8_calibrate_agent0_camera0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-em6_observe-soil_agent1_waypoint5 dd)(at-soil-sample waypoint5)(not (visible-from objective1 waypoint4))(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4))(at agent0 waypoint0))
	:effect (and (pre-2t8_calibrate_agent0_camera0_objective1_waypoint0 dd))
)
(:action act-hra_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-2t8_calibrate_agent0_camera0_objective1_waypoint0 dd)(immediate-dummy-hra_observe-vis_agent0_objective1_waypoint0 dd)(at agent0 waypoint0))
	:observe (visible-from objective1 waypoint0)
)
(:action act-dummy-hra_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-2t8_calibrate_agent0_camera0_objective1_waypoint0 dd)(at agent0 waypoint0)(not (dummy-left-hra_observe-vis_agent0_objective1_waypoint0 dd))(not (dummy-right-hra_observe-vis_agent0_objective1_waypoint0 dd)))
	:effect (and (immediate-dummy-hra_observe-vis_agent0_objective1_waypoint0 dd) )
)
(:action dummy-left-hra_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint0)(not (visible-from objective1 waypoint0))(immediate-dummy-hra_observe-vis_agent0_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-hra_observe-vis_agent0_objective1_waypoint0 dd))(dummy-left-hra_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-right-hra_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint0)(visible-from objective1 waypoint0)(immediate-dummy-hra_observe-vis_agent0_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-hra_observe-vis_agent0_objective1_waypoint0 dd))(dummy-right-hra_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action goal-achieve-left-hra_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hra_observe-vis_agent0_objective1_waypoint0 dd)(not (visible-from objective1 waypoint0)))
	:effect (and (done-goal dd)(not (dummy-left-hra_observe-vis_agent0_objective1_waypoint0 dd)))
)
(:action act-xn6_take-image_agent0_waypoint0_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hra_observe-vis_agent0_objective1_waypoint0 dd)(visible-from objective1 waypoint0)(at agent0 waypoint0))
	:effect (and (pre-xn6_take-image_agent0_waypoint0_objective1_camera0_high-res dd))
)
(:action act-oro_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-xn6_take-image_agent0_waypoint0_objective1_camera0_high-res dd)(at agent0 waypoint3))
	:effect (and (pre-oro_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)(not (pre-xn6_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)
(:action goal-achieve-oro_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-oro_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd))
	:effect (and (done-goal dd)(not (pre-oro_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)
(:action goal-achieve-right-7t3_observe-vis_agent1_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-7t3_observe-vis_agent1_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(visible-from objective3 waypoint3)(not (at-rock-sample waypoint4)))
	:effect (and (done-goal dd)(not (dummy-right-7t3_observe-vis_agent1_objective1_waypoint4 dd)))
)
(:action act-0xg_observe-vis_agent2_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0a1_observe-rock_agent2_waypoint4 dd)(immediate-dummy-0xg_observe-vis_agent2_objective1_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-0xg_observe-vis_agent2_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0a1_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint4)(not (dummy-left-0xg_observe-vis_agent2_objective1_waypoint4 dd))(not (dummy-right-0xg_observe-vis_agent2_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-0xg_observe-vis_agent2_objective1_waypoint4 dd) )
)
(:action dummy-left-0xg_observe-vis_agent2_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0a1_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-0xg_observe-vis_agent2_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-0xg_observe-vis_agent2_objective1_waypoint4 dd))(dummy-left-0xg_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action dummy-right-0xg_observe-vis_agent2_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0a1_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-0xg_observe-vis_agent2_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-0xg_observe-vis_agent2_objective1_waypoint4 dd))(dummy-right-0xg_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action act-d2q_observe-soil_agent2_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0xg_observe-vis_agent2_objective1_waypoint4 dd)(immediate-dummy-d2q_observe-soil_agent2_waypoint5 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent0 waypoint5))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-d2q_observe-soil_agent2_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0xg_observe-vis_agent2_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent0 waypoint5)(not (dummy-left-d2q_observe-soil_agent2_waypoint5 dd))(not (dummy-right-d2q_observe-soil_agent2_waypoint5 dd)))
	:effect (and (immediate-dummy-d2q_observe-soil_agent2_waypoint5 dd) )
)
(:action dummy-left-d2q_observe-soil_agent2_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0xg_observe-vis_agent2_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent0 waypoint5)(not (at-soil-sample waypoint5))(immediate-dummy-d2q_observe-soil_agent2_waypoint5 dd))
	:effect (and (not (immediate-dummy-d2q_observe-soil_agent2_waypoint5 dd))(dummy-left-d2q_observe-soil_agent2_waypoint5 dd))
)
(:action dummy-right-d2q_observe-soil_agent2_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-0xg_observe-vis_agent2_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent0 waypoint5)(at-soil-sample waypoint5)(immediate-dummy-d2q_observe-soil_agent2_waypoint5 dd))
	:effect (and (not (immediate-dummy-d2q_observe-soil_agent2_waypoint5 dd))(dummy-right-d2q_observe-soil_agent2_waypoint5 dd))
)
(:action act-8tc_calibrate_agent0_camera0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-d2q_observe-soil_agent2_waypoint5 dd)(not (at-soil-sample waypoint5))(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent0 waypoint0))
	:effect (and (pre-8tc_calibrate_agent0_camera0_objective1_waypoint0 dd))
)
(:action act-n2p_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-8tc_calibrate_agent0_camera0_objective1_waypoint0 dd)(immediate-dummy-n2p_observe-vis_agent0_objective1_waypoint0 dd)(at agent0 waypoint0))
	:observe (visible-from objective1 waypoint0)
)
(:action act-dummy-n2p_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-8tc_calibrate_agent0_camera0_objective1_waypoint0 dd)(at agent0 waypoint0)(not (dummy-left-n2p_observe-vis_agent0_objective1_waypoint0 dd))(not (dummy-right-n2p_observe-vis_agent0_objective1_waypoint0 dd)))
	:effect (and (immediate-dummy-n2p_observe-vis_agent0_objective1_waypoint0 dd) )
)
(:action dummy-left-n2p_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint0)(not (visible-from objective1 waypoint0))(immediate-dummy-n2p_observe-vis_agent0_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-n2p_observe-vis_agent0_objective1_waypoint0 dd))(dummy-left-n2p_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-right-n2p_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint0)(visible-from objective1 waypoint0)(immediate-dummy-n2p_observe-vis_agent0_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-n2p_observe-vis_agent0_objective1_waypoint0 dd))(dummy-right-n2p_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action goal-achieve-left-n2p_observe-vis_agent0_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-n2p_observe-vis_agent0_objective1_waypoint0 dd)(not (visible-from objective1 waypoint0)))
	:effect (and (done-goal dd)(not (dummy-left-n2p_observe-vis_agent0_objective1_waypoint0 dd)))
)
(:action act-yap_take-image_agent0_waypoint0_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-n2p_observe-vis_agent0_objective1_waypoint0 dd)(visible-from objective1 waypoint0)(at agent0 waypoint0))
	:effect (and (pre-yap_take-image_agent0_waypoint0_objective1_camera0_high-res dd))
)
(:action act-inp_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-yap_take-image_agent0_waypoint0_objective1_camera0_high-res dd)(at agent0 waypoint3))
	:effect (and (pre-inp_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)(not (pre-yap_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)
(:action goal-achieve-inp_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-inp_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd))
	:effect (and (done-goal dd)(not (pre-inp_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)
(:action act-2ci_calibrate_agent0_camera0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-d2q_observe-soil_agent2_waypoint5 dd)(at-soil-sample waypoint5)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent0 waypoint5))
	:effect (and (pre-2ci_calibrate_agent0_camera0_objective1_waypoint5 dd))
)
(:action act-agf_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-2ci_calibrate_agent0_camera0_objective1_waypoint5 dd)(immediate-dummy-agf_observe-vis_agent0_objective1_waypoint5 dd)(at agent0 waypoint5))
	:observe (visible-from objective1 waypoint5)
)
(:action act-dummy-agf_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-2ci_calibrate_agent0_camera0_objective1_waypoint5 dd)(at agent0 waypoint5)(not (dummy-left-agf_observe-vis_agent0_objective1_waypoint5 dd))(not (dummy-right-agf_observe-vis_agent0_objective1_waypoint5 dd)))
	:effect (and (immediate-dummy-agf_observe-vis_agent0_objective1_waypoint5 dd) )
)
(:action dummy-left-agf_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint5)(not (visible-from objective1 waypoint5))(immediate-dummy-agf_observe-vis_agent0_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-agf_observe-vis_agent0_objective1_waypoint5 dd))(dummy-left-agf_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-right-agf_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (at agent0 waypoint5)(visible-from objective1 waypoint5)(immediate-dummy-agf_observe-vis_agent0_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-agf_observe-vis_agent0_objective1_waypoint5 dd))(dummy-right-agf_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action act-6zc_sample-rock_agent2_agent0_a2store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-agf_observe-vis_agent0_objective1_waypoint5 dd)(not (visible-from objective1 waypoint5))(at agent0 waypoint4))
	:effect (and (pre-6zc_sample-rock_agent2_agent0_a2store_waypoint4 dd))
)
(:action goal-achieve-6zc_sample-rock_agent2_agent0_a2store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-6zc_sample-rock_agent2_agent0_a2store_waypoint4 dd))
	:effect (and (done-goal dd)(not (pre-6zc_sample-rock_agent2_agent0_a2store_waypoint4 dd)))
)
(:action act-2r8_take-image_agent0_waypoint5_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-agf_observe-vis_agent0_objective1_waypoint5 dd)(visible-from objective1 waypoint5)(at agent0 waypoint5))
	:effect (and (pre-2r8_take-image_agent0_waypoint5_objective1_camera0_high-res dd))
)
(:action act-ak4_sample-rock_agent0_agent2_a0store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-2r8_take-image_agent0_waypoint5_objective1_camera0_high-res dd)(at agent0 waypoint4))
	:effect (and (pre-ak4_sample-rock_agent0_agent2_a0store_waypoint4 dd)(not (pre-2r8_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)
(:action act-nt5_communicate-rock-data_agent0_general_waypoint1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-ak4_sample-rock_agent0_agent2_a0store_waypoint4 dd)(at agent0 waypoint1)(available agent0))
	:effect (and (pre-nt5_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)(not (pre-ak4_sample-rock_agent0_agent2_a0store_waypoint4 dd))(communicated-rock-data ))
)
(:action act-myh_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-nt5_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)(at agent0 waypoint1))
	:effect (and (pre-myh_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)(not (pre-nt5_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-myh_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-myh_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd))
	:effect (and (done-goal dd)(not (pre-myh_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)
(:action act-b2b_calibrate_agent0_camera0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-0xg_observe-vis_agent2_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-rock-sample waypoint4)(at agent0 waypoint4))
	:effect (and (pre-b2b_calibrate_agent0_camera0_objective1_waypoint4 dd))
)
(:action act-vo1_take-image_agent0_waypoint4_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (pre-b2b_calibrate_agent0_camera0_objective1_waypoint4 dd)(at agent0 waypoint4))
	:effect (and (pre-vo1_take-image_agent0_waypoint4_objective1_camera0_high-res dd)(not (pre-b2b_calibrate_agent0_camera0_objective1_waypoint4 dd)))
)
(:action act-stq_sample-rock_agent0_agent2_a0store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-vo1_take-image_agent0_waypoint4_objective1_camera0_high-res dd)(at agent0 waypoint4))
	:effect (and (pre-stq_sample-rock_agent0_agent2_a0store_waypoint4 dd)(not (pre-vo1_take-image_agent0_waypoint4_objective1_camera0_high-res dd)))
)
(:action act-voa_communicate-rock-data_agent0_general_waypoint1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-stq_sample-rock_agent0_agent2_a0store_waypoint4 dd)(at agent0 waypoint1)(available agent0))
	:effect (and (pre-voa_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)(not (pre-stq_sample-rock_agent0_agent2_a0store_waypoint4 dd))(communicated-rock-data ))
)
(:action act-qvp_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-voa_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)(at agent0 waypoint1))
	:effect (and (pre-qvp_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)(not (pre-voa_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-qvp_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-qvp_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd))
	:effect (and (done-goal dd)(not (pre-qvp_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)
)