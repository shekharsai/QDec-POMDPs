(define (domain rover-agent0)
(:types agent waypoint store camera mode lander objective dummy dummy)
(:constants 
	agent0 - agent
	general - lander
	colour - mode
	high-res - mode
	low-res - mode
	agent0 - agent
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
	(init-g5e_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-g5e_observe-rock_agent2_waypoint4 ?dd - dummy)
	(dummy-left-g5e_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-mmd_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-mmd_observe-soil_agent0_waypoint5 ?dd - dummy)
	(pre-ap6_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
	(pre-nvk_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-mmd_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-6gw_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(dummy-left-6gw_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(pre-cvs_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
	(pre-g8z_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-ehp_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-6gw_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(pre-oez_take-image_agent0_waypoint4_objective1_camera0_high-res ?dd - dummy)
	(pre-7z6_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
	(pre-t4i_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
	(pre-j3c_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-vof_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-g5e_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-gko_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-gko_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-right-gko_observe-soil_agent0_waypoint5 ?dd - dummy)
	(pre-5hw_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-0tf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
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
(:action act-g5e_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-g5e_observe-rock_agent2_waypoint4 dd)(immediate-dummy-g5e_observe-rock_agent2_waypoint4 dd)(at agent0 waypoint4)(can-sample-rock agent0))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-g5e_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-g5e_observe-rock_agent2_waypoint4 dd)(not (dummy-left-g5e_observe-rock_agent2_waypoint4 dd))(not (dummy-right-g5e_observe-rock_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-g5e_observe-rock_agent2_waypoint4 dd) )
)
(:action dummy-left-g5e_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-g5e_observe-rock_agent2_waypoint4 dd)(at agent0 waypoint4)(can-sample-rock agent0)(not (at-rock-sample waypoint4))(immediate-dummy-g5e_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (init-g5e_observe-rock_agent2_waypoint4 dd))(not (immediate-dummy-g5e_observe-rock_agent2_waypoint4 dd))(dummy-left-g5e_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-g5e_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-g5e_observe-rock_agent2_waypoint4 dd)(at agent0 waypoint4)(can-sample-rock agent0)(at-rock-sample waypoint4)(immediate-dummy-g5e_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (init-g5e_observe-rock_agent2_waypoint4 dd))(not (immediate-dummy-g5e_observe-rock_agent2_waypoint4 dd))(dummy-right-g5e_observe-rock_agent2_waypoint4 dd))
)
(:action act-mmd_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g5e_observe-rock_agent2_waypoint4 dd)(immediate-dummy-mmd_observe-soil_agent0_waypoint5 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-mmd_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g5e_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0)(not (dummy-left-mmd_observe-soil_agent0_waypoint5 dd))(not (dummy-right-mmd_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-mmd_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-mmd_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g5e_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0)(not (at-soil-sample waypoint5))(immediate-dummy-mmd_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-mmd_observe-soil_agent0_waypoint5 dd))(dummy-left-mmd_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-mmd_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g5e_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0)(at-soil-sample waypoint5)(immediate-dummy-mmd_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-mmd_observe-soil_agent0_waypoint5 dd))(dummy-right-mmd_observe-soil_agent0_waypoint5 dd))
)
(:action act-ap6_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mmd_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(not (at-rock-sample waypoint4))(at agent0 waypoint5)(equipped-for-rock-analysis agent0)(store-of a0store agent0)(empty a0store agent0))
	:effect (and (pre-ap6_sample-rock_agent0_agent2_a0store_waypoint5 dd)(not (empty a0store agent0))(full a0store agent0)(have-rock-analysis agent0))
)
(:action act-nvk_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-ap6_sample-rock_agent0_agent2_a0store_waypoint5 dd)(at agent0 waypoint1)(have-rock-analysis agent0)(available agent0))
	:effect (and (pre-nvk_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-ap6_sample-rock_agent0_agent2_a0store_waypoint5 dd))(communicated-rock-data ))
)
(:action goal-achieve-nvk_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-nvk_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-nvk_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-6gw_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mmd_observe-soil_agent0_waypoint5 dd)(immediate-dummy-6gw_observe-vis_agent0_objective1_waypoint4 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-6gw_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mmd_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint4)(not (dummy-left-6gw_observe-vis_agent0_objective1_waypoint4 dd))(not (dummy-right-6gw_observe-vis_agent0_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-6gw_observe-vis_agent0_objective1_waypoint4 dd) )
)
(:action dummy-left-6gw_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mmd_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-6gw_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-6gw_observe-vis_agent0_objective1_waypoint4 dd))(dummy-left-6gw_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-6gw_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mmd_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-6gw_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-6gw_observe-vis_agent0_objective1_waypoint4 dd))(dummy-right-6gw_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-cvs_sample-rock_agent2_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6gw_observe-vis_agent0_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(equipped-for-rock-analysis agent0))
	:effect (and (pre-cvs_sample-rock_agent2_agent0_a1store_waypoint5 dd))
)
(:action act-g8z_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-cvs_sample-rock_agent2_agent0_a1store_waypoint5 dd)(at agent0 waypoint5)(equipped-for-soil-analysis agent0)(store-of a0store agent0)(empty a0store agent0)(not (full a0store agent0)))
	:effect (and (pre-g8z_sample-soil_agent0_a0store_waypoint5 dd)(not (pre-cvs_sample-rock_agent2_agent0_a1store_waypoint5 dd))(not (empty a0store agent0))(full a0store agent0)(have-soil-analysis agent0))
)
(:action act-ehp_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-g8z_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(have-soil-analysis agent0)(available agent0))
	:effect (and (pre-ehp_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-g8z_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-ehp_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-ehp_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-ehp_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-oez_take-image_agent0_waypoint4_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6gw_observe-vis_agent0_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(calibrated camera0 agent0 waypoint4 objective1)(on-board camera0 agent0)(equipped-for-imaging agent0)(at agent0 waypoint4))
	:effect (and (pre-oez_take-image_agent0_waypoint4_objective1_camera0_high-res dd)(have-image agent0 objective1 high-res)(not (calibrated camera0 agent0 waypoint4 objective1)))
)
(:action act-7z6_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-oez_take-image_agent0_waypoint4_objective1_camera0_high-res dd)(at agent0 waypoint1)(have-image agent0 objective1 high-res))
	:effect (and (pre-7z6_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)(not (pre-oez_take-image_agent0_waypoint4_objective1_camera0_high-res dd)))
)
(:action act-t4i_sample-rock_agent2_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-7z6_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)(at agent0 waypoint5)(equipped-for-rock-analysis agent0))
	:effect (and (pre-t4i_sample-rock_agent2_agent0_a1store_waypoint5 dd)(not (pre-7z6_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action act-j3c_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-t4i_sample-rock_agent2_agent0_a1store_waypoint5 dd)(at agent0 waypoint5)(equipped-for-soil-analysis agent0)(store-of a0store agent0)(empty a0store agent0)(not (full a0store agent0)))
	:effect (and (pre-j3c_sample-soil_agent0_a0store_waypoint5 dd)(not (pre-t4i_sample-rock_agent2_agent0_a1store_waypoint5 dd))(not (empty a0store agent0))(full a0store agent0)(have-soil-analysis agent0))
)
(:action act-vof_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-j3c_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(have-soil-analysis agent0)(available agent0))
	:effect (and (pre-vof_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-j3c_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-vof_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-vof_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-vof_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-gko_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g5e_observe-rock_agent2_waypoint4 dd)(immediate-dummy-gko_observe-soil_agent0_waypoint5 dd)(at-rock-sample waypoint4)(at agent0 waypoint5)(can-sample-soil agent0))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-gko_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g5e_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint5)(can-sample-soil agent0)(not (dummy-left-gko_observe-soil_agent0_waypoint5 dd))(not (dummy-right-gko_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-gko_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-gko_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g5e_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint5)(can-sample-soil agent0)(not (at-soil-sample waypoint5))(immediate-dummy-gko_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-gko_observe-soil_agent0_waypoint5 dd))(dummy-left-gko_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-gko_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g5e_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint5)(can-sample-soil agent0)(at-soil-sample waypoint5)(immediate-dummy-gko_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-gko_observe-soil_agent0_waypoint5 dd))(dummy-right-gko_observe-soil_agent0_waypoint5 dd))
)
(:action goal-achieve-left-gko_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-gko_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4))
	:effect (and (done-goal dd)(not (dummy-left-gko_observe-soil_agent0_waypoint5 dd)))
)
(:action act-5hw_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-gko_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at-rock-sample waypoint4)(at agent0 waypoint5)(equipped-for-soil-analysis agent0)(store-of a0store agent0)(empty a0store agent0)(not (full a0store agent0)))
	:effect (and (pre-5hw_sample-soil_agent0_a0store_waypoint5 dd)(not (empty a0store agent0))(full a0store agent0)(have-soil-analysis agent0))
)
(:action act-0tf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-5hw_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(have-soil-analysis agent0)(available agent0))
	:effect (and (pre-0tf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-5hw_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-0tf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-0tf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-0tf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
)