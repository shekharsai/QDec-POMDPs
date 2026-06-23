(define (domain rover-agent3)
(:types agent waypoint store camera mode lander objective dummy dummy)
(:constants 
	agent3 - agent
	general - lander
	colour - mode
	high-res - mode
	low-res - mode
	agent3 - agent
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
	(init-4mn_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-4mn_observe-rock_agent2_waypoint4 ?dd - dummy)
	(dummy-left-4mn_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-89e_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-89e_observe-soil_agent0_waypoint5 ?dd - dummy)
	(pre-gbp_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-hv8_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(dummy-left-8oj_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-8oj_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(pre-5u3_take-image_agent3_waypoint0_objective1_camera1_high-res ?dd - dummy)
	(pre-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
	(dummy-right-89e_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(dummy-left-61c_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
	(dummy-left-96n_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
	(pre-gu5_take-image_agent3_waypoint0_objective1_camera1_high-res ?dd - dummy)
	(pre-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
	(dummy-right-96n_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
	(dummy-right-61c_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(dummy-right-4mn_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-1m2_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-1m2_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(dummy-left-r7j_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(pre-5yj_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-ij1_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-r7j_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(pre-ml9_take-image_agent3_waypoint4_objective1_camera1_high-res ?dd - dummy)
	(pre-4jw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
	(pre-s8v_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-k8d_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-1m2_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(dummy-left-u3a_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(pre-pgb_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
	(pre-qox_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(dummy-left-usc_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(dummy-right-usc_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(pre-6xr_take-image_agent3_waypoint0_objective1_camera1_high-res ?dd - dummy)
	(pre-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
	(dummy-right-u3a_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(pre-63i_take-image_agent3_waypoint4_objective1_camera1_high-res ?dd - dummy)
	(pre-5um_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
	(pre-5jo_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(pre-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
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
(:action act-4mn_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-4mn_observe-rock_agent2_waypoint4 dd)(immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd)(at agent3 waypoint4)(can-sample-rock agent3))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-4mn_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-4mn_observe-rock_agent2_waypoint4 dd)(not (dummy-left-4mn_observe-rock_agent2_waypoint4 dd))(not (dummy-right-4mn_observe-rock_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd) )
)
(:action dummy-left-4mn_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-4mn_observe-rock_agent2_waypoint4 dd)(at agent3 waypoint4)(can-sample-rock agent3)(not (at-rock-sample waypoint4))(immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (init-4mn_observe-rock_agent2_waypoint4 dd))(not (immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd))(dummy-left-4mn_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-4mn_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-4mn_observe-rock_agent2_waypoint4 dd)(at agent3 waypoint4)(can-sample-rock agent3)(at-rock-sample waypoint4)(immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (init-4mn_observe-rock_agent2_waypoint4 dd))(not (immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd))(dummy-right-4mn_observe-rock_agent2_waypoint4 dd))
)
(:action act-89e_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4mn_observe-rock_agent2_waypoint4 dd)(immediate-dummy-89e_observe-soil_agent0_waypoint5 dd)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(can-sample-soil agent3))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-89e_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4mn_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(can-sample-soil agent3)(not (dummy-left-89e_observe-soil_agent0_waypoint5 dd))(not (dummy-right-89e_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-89e_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-89e_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4mn_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(can-sample-soil agent3)(not (at-soil-sample waypoint5))(immediate-dummy-89e_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-89e_observe-soil_agent0_waypoint5 dd))(dummy-left-89e_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-89e_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4mn_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(can-sample-soil agent3)(at-soil-sample waypoint5)(immediate-dummy-89e_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-89e_observe-soil_agent0_waypoint5 dd))(dummy-right-89e_observe-soil_agent0_waypoint5 dd))
)
(:action act-gbp_sample-soil_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-89e_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(not (at-rock-sample waypoint4))(at agent3 waypoint4)(equipped-for-soil-analysis agent3)(store-of a1store agent3)(empty a1store agent3)(not (full a1store agent3)))
	:effect (and (pre-gbp_sample-soil_agent3_a1store_waypoint4 dd)(not (empty a1store agent3))(full a1store agent3)(have-soil-analysis agent3))
)
(:action act-hv8_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-gbp_sample-soil_agent3_a1store_waypoint4 dd)(at agent3 waypoint1)(have-soil-analysis agent3)(available agent3))
	:effect (and (pre-hv8_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-gbp_sample-soil_agent3_a1store_waypoint4 dd))(communicated-soil-data ))
)
(:action act-8oj_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-hv8_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd)(at agent3 waypoint0))
	:observe (visible-from objective1 waypoint0)
)
(:action act-dummy-8oj_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-hv8_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(at agent3 waypoint0)(not (dummy-left-8oj_observe-vis_agent3_objective1_waypoint0 dd))(not (dummy-right-8oj_observe-vis_agent3_objective1_waypoint0 dd)))
	:effect (and (immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd) )
)
(:action dummy-left-8oj_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent3 waypoint0)(not (visible-from objective1 waypoint0))(immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd))(dummy-left-8oj_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-8oj_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent3 waypoint0)(visible-from objective1 waypoint0)(immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd))(dummy-right-8oj_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action goal-achieve-left-8oj_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8oj_observe-vis_agent3_objective1_waypoint0 dd)(not (visible-from objective1 waypoint0)))
	:effect (and (done-goal dd)(not (dummy-left-8oj_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-5u3_take-image_agent3_waypoint0_objective1_camera1_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8oj_observe-vis_agent3_objective1_waypoint0 dd)(visible-from objective1 waypoint0)(calibrated camera1 agent3 waypoint0 objective1)(on-board camera1 agent3)(equipped-for-imaging agent3)(at agent3 waypoint0))
	:effect (and (pre-5u3_take-image_agent3_waypoint0_objective1_camera1_high-res dd)(have-image agent3 objective1 high-res)(not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-5u3_take-image_agent3_waypoint0_objective1_camera1_high-res dd)(at agent3 waypoint3)(have-image agent3 objective1 high-res))
	:effect (and (pre-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)(not (pre-5u3_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-61c_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-89e_observe-soil_agent0_waypoint5 dd)(immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent3 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-61c_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-89e_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent3 waypoint4)(not (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd))(not (dummy-right-61c_observe-vis_agent0_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd) )
)
(:action dummy-left-61c_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-89e_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent3 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd))(dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-61c_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-89e_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent3 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd))(dummy-right-61c_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-96n_observe-vis_agent2_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd)(immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd)(not (visible-from objective1 waypoint4))(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent3 waypoint5))
	:observe (visible-from objective1 waypoint5)
)
(:action act-dummy-96n_observe-vis_agent2_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(not (dummy-left-96n_observe-vis_agent2_objective1_waypoint5 dd))(not (dummy-right-96n_observe-vis_agent2_objective1_waypoint5 dd)))
	:effect (and (immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd) )
)
(:action dummy-left-96n_observe-vis_agent2_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(not (visible-from objective1 waypoint5))(immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd))(dummy-left-96n_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-96n_observe-vis_agent2_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(visible-from objective1 waypoint5)(immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd))(dummy-right-96n_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-gu5_take-image_agent3_waypoint0_objective1_camera1_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-96n_observe-vis_agent2_objective1_waypoint5 dd)(not (visible-from objective1 waypoint5))(not (visible-from objective1 waypoint4))(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(calibrated camera1 agent3 waypoint0 objective1)(on-board camera1 agent3)(equipped-for-imaging agent3)(at agent3 waypoint0))
	:effect (and (pre-gu5_take-image_agent3_waypoint0_objective1_camera1_high-res dd)(have-image agent3 objective1 high-res)(not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-gu5_take-image_agent3_waypoint0_objective1_camera1_high-res dd)(at agent3 waypoint3)(have-image agent3 objective1 high-res))
	:effect (and (pre-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)(not (pre-gu5_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action goal-achieve-right-96n_observe-vis_agent2_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-96n_observe-vis_agent2_objective1_waypoint5 dd)(visible-from objective1 waypoint5)(not (visible-from objective1 waypoint4))(at-soil-sample waypoint5)(not (at-rock-sample waypoint4)))
	:effect (and (done-goal dd)(not (dummy-right-96n_observe-vis_agent2_objective1_waypoint5 dd)))
)
(:action goal-achieve-right-61c_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-61c_observe-vis_agent0_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4)))
	:effect (and (done-goal dd)(not (dummy-right-61c_observe-vis_agent0_objective1_waypoint4 dd)))
)
(:action act-1m2_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4mn_observe-rock_agent2_waypoint4 dd)(immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd)(at-rock-sample waypoint4)(at agent3 waypoint5)(can-sample-soil agent3))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-1m2_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4mn_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent3 waypoint5)(can-sample-soil agent3)(not (dummy-left-1m2_observe-soil_agent0_waypoint5 dd))(not (dummy-right-1m2_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-1m2_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4mn_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent3 waypoint5)(can-sample-soil agent3)(not (at-soil-sample waypoint5))(immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd))(dummy-left-1m2_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-1m2_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4mn_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent3 waypoint5)(can-sample-soil agent3)(at-soil-sample waypoint5)(immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd))(dummy-right-1m2_observe-soil_agent0_waypoint5 dd))
)
(:action act-r7j_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1m2_observe-soil_agent0_waypoint5 dd)(immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent3 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-r7j_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1m2_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent3 waypoint4)(not (dummy-left-r7j_observe-vis_agent3_objective1_waypoint4 dd))(not (dummy-right-r7j_observe-vis_agent3_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd) )
)
(:action dummy-left-r7j_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1m2_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent3 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd))(dummy-left-r7j_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-r7j_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-1m2_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent3 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd))(dummy-right-r7j_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-5yj_sample-soil_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-r7j_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent3 waypoint4)(equipped-for-soil-analysis agent3)(store-of a1store agent3)(empty a1store agent3)(not (full a1store agent3)))
	:effect (and (pre-5yj_sample-soil_agent3_a1store_waypoint4 dd)(not (empty a1store agent3))(full a1store agent3)(have-soil-analysis agent3))
)
(:action act-ij1_sample-rock_agent2_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-5yj_sample-soil_agent3_a1store_waypoint4 dd)(at agent3 waypoint4)(equipped-for-rock-analysis agent3))
	:effect (and (pre-ij1_sample-rock_agent2_agent3_a1store_waypoint4 dd)(not (pre-5yj_sample-soil_agent3_a1store_waypoint4 dd)))
)
(:action act-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-ij1_sample-rock_agent2_agent3_a1store_waypoint4 dd)(at agent3 waypoint1)(have-soil-analysis agent3)(available agent3))
	:effect (and (pre-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-ij1_sample-rock_agent2_agent3_a1store_waypoint4 dd))(communicated-soil-data ))
)
(:action goal-achieve-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-ml9_take-image_agent3_waypoint4_objective1_camera1_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-r7j_observe-vis_agent3_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(calibrated camera1 agent3 waypoint4 objective1)(on-board camera1 agent3)(equipped-for-imaging agent3)(at agent3 waypoint4))
	:effect (and (pre-ml9_take-image_agent3_waypoint4_objective1_camera1_high-res dd)(have-image agent3 objective1 high-res)(not (calibrated camera1 agent3 waypoint4 objective1)))
)
(:action act-4jw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-ml9_take-image_agent3_waypoint4_objective1_camera1_high-res dd)(at agent3 waypoint1)(have-image agent3 objective1 high-res))
	:effect (and (pre-4jw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)(not (pre-ml9_take-image_agent3_waypoint4_objective1_camera1_high-res dd)))
)
(:action act-s8v_sample-soil_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-4jw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)(at agent3 waypoint4)(equipped-for-soil-analysis agent3)(store-of a1store agent3)(empty a1store agent3)(not (full a1store agent3)))
	:effect (and (pre-s8v_sample-soil_agent3_a1store_waypoint4 dd)(not (pre-4jw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd))(not (empty a1store agent3))(full a1store agent3)(have-soil-analysis agent3))
)
(:action act-k8d_sample-rock_agent2_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-s8v_sample-soil_agent3_a1store_waypoint4 dd)(at agent3 waypoint4)(equipped-for-rock-analysis agent3))
	:effect (and (pre-k8d_sample-rock_agent2_agent3_a1store_waypoint4 dd)(not (pre-s8v_sample-soil_agent3_a1store_waypoint4 dd)))
)
(:action act-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-k8d_sample-rock_agent2_agent3_a1store_waypoint4 dd)(at agent3 waypoint1)(have-soil-analysis agent3)(available agent3))
	:effect (and (pre-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-k8d_sample-rock_agent2_agent3_a1store_waypoint4 dd))(communicated-soil-data ))
)
(:action goal-achieve-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-u3a_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1m2_observe-soil_agent0_waypoint5 dd)(immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd)(at-soil-sample waypoint5)(at-rock-sample waypoint4)(at agent3 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-u3a_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1m2_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at-rock-sample waypoint4)(at agent3 waypoint4)(not (dummy-left-u3a_observe-vis_agent3_objective1_waypoint4 dd))(not (dummy-right-u3a_observe-vis_agent3_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd) )
)
(:action dummy-left-u3a_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1m2_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at-rock-sample waypoint4)(at agent3 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd))(dummy-left-u3a_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-u3a_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-1m2_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at-rock-sample waypoint4)(at agent3 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd))(dummy-right-u3a_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-pgb_sample-rock_agent3_agent2_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u3a_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-soil-sample waypoint5)(at-rock-sample waypoint4)(at agent3 waypoint4)(equipped-for-rock-analysis agent3)(store-of a1store agent3)(empty a1store agent3))
	:effect (and (pre-pgb_sample-rock_agent3_agent2_a1store_waypoint4 dd)(not (empty a1store agent3))(full a1store agent3)(have-rock-analysis agent3))
)
(:action act-qox_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-pgb_sample-rock_agent3_agent2_a1store_waypoint4 dd)(at agent3 waypoint1)(have-rock-analysis agent3)(available agent3))
	:effect (and (pre-qox_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-pgb_sample-rock_agent3_agent2_a1store_waypoint4 dd))(communicated-rock-data ))
)
(:action act-usc_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-qox_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd)(at agent3 waypoint0))
	:observe (visible-from objective1 waypoint0)
)
(:action act-dummy-usc_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-qox_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(at agent3 waypoint0)(not (dummy-left-usc_observe-vis_agent3_objective1_waypoint0 dd))(not (dummy-right-usc_observe-vis_agent3_objective1_waypoint0 dd)))
	:effect (and (immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd) )
)
(:action dummy-left-usc_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent3 waypoint0)(not (visible-from objective1 waypoint0))(immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd))(dummy-left-usc_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-usc_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent3 waypoint0)(visible-from objective1 waypoint0)(immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd))(dummy-right-usc_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action goal-achieve-left-usc_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-usc_observe-vis_agent3_objective1_waypoint0 dd)(not (visible-from objective1 waypoint0)))
	:effect (and (done-goal dd)(not (dummy-left-usc_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-6xr_take-image_agent3_waypoint0_objective1_camera1_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-usc_observe-vis_agent3_objective1_waypoint0 dd)(visible-from objective1 waypoint0)(calibrated camera1 agent3 waypoint0 objective1)(on-board camera1 agent3)(equipped-for-imaging agent3)(at agent3 waypoint0))
	:effect (and (pre-6xr_take-image_agent3_waypoint0_objective1_camera1_high-res dd)(have-image agent3 objective1 high-res)(not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-6xr_take-image_agent3_waypoint0_objective1_camera1_high-res dd)(at agent3 waypoint3)(have-image agent3 objective1 high-res))
	:effect (and (pre-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)(not (pre-6xr_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-63i_take-image_agent3_waypoint4_objective1_camera1_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u3a_observe-vis_agent3_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-soil-sample waypoint5)(at-rock-sample waypoint4)(calibrated camera1 agent3 waypoint4 objective1)(on-board camera1 agent3)(equipped-for-imaging agent3)(at agent3 waypoint4))
	:effect (and (pre-63i_take-image_agent3_waypoint4_objective1_camera1_high-res dd)(have-image agent3 objective1 high-res)(not (calibrated camera1 agent3 waypoint4 objective1)))
)
(:action act-5um_sample-rock_agent3_agent2_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-63i_take-image_agent3_waypoint4_objective1_camera1_high-res dd)(at agent3 waypoint4)(equipped-for-rock-analysis agent3)(store-of a1store agent3)(empty a1store agent3))
	:effect (and (pre-5um_sample-rock_agent3_agent2_a1store_waypoint4 dd)(not (pre-63i_take-image_agent3_waypoint4_objective1_camera1_high-res dd))(not (empty a1store agent3))(full a1store agent3)(have-rock-analysis agent3))
)
(:action act-5jo_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-5um_sample-rock_agent3_agent2_a1store_waypoint4 dd)(at agent3 waypoint1)(have-rock-analysis agent3)(available agent3))
	:effect (and (pre-5jo_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-5um_sample-rock_agent3_agent2_a1store_waypoint4 dd))(communicated-rock-data ))
)
(:action act-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-5jo_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(at agent3 waypoint1)(have-image agent3 objective1 high-res))
	:effect (and (pre-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)(not (pre-5jo_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
)