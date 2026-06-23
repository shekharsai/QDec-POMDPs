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
	(init-xue_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-xue_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-xue_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-63e_observe-rock_agent2_waypoint4 ?dd - dummy)
	(dummy-left-63e_observe-rock_agent2_waypoint4 ?dd - dummy)
	(pre-dz2_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-9xw_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(immediate-dummy-ywo_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(dummy-left-ywo_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-ywo_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(pre-uaz_take-image_agent3_waypoint0_objective1_camera1_high-res ?dd - dummy)
	(pre-iaw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
	(dummy-right-63e_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-ldm_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(dummy-left-ldm_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(pre-m00_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-ee1_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-ocf_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(immediate-dummy-pj4_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(dummy-left-pj4_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(dummy-right-pj4_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
	(pre-m0y_take-image_agent3_waypoint0_objective1_camera1_high-res ?dd - dummy)
	(pre-j4f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
	(dummy-right-ldm_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(pre-uh0_take-image_agent3_waypoint4_objective1_camera1_high-res ?dd - dummy)
	(pre-y4l_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
	(pre-dh2_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-k8l_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-emq_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-xue_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-2uc_observe-rock_agent0_waypoint5 ?dd - dummy)
	(dummy-left-2uc_observe-rock_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-o8u_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(dummy-left-o8u_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(immediate-dummy-buu_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(dummy-left-buu_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(pre-rin_sample-soil_agent3_a1store_waypoint5 ?dd - dummy)
	(pre-tij_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-buu_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(dummy-right-o8u_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(pre-a9g_sample-rock_agent3_agent0_a1store_waypoint4 ?dd - dummy)
	(pre-q06_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-2uc_observe-rock_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-wx6_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(dummy-left-wx6_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(pre-pa7_sample-rock_agent3_agent0_a1store_waypoint5 ?dd - dummy)
	(pre-8ee_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-wx6_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(pre-4l6_take-image_agent3_waypoint4_objective1_camera1_high-res ?dd - dummy)
	(pre-oug_sample-rock_agent3_agent0_a1store_waypoint5 ?dd - dummy)
	(pre-v55_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
	(pre-vtw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
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
(:action act-xue_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-xue_observe-soil_agent0_waypoint5 dd)(immediate-dummy-xue_observe-soil_agent0_waypoint5 dd)(at agent3 waypoint5)(can-sample-soil agent3))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-xue_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-xue_observe-soil_agent0_waypoint5 dd)(not (dummy-left-xue_observe-soil_agent0_waypoint5 dd))(not (dummy-right-xue_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-xue_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-xue_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-xue_observe-soil_agent0_waypoint5 dd)(at agent3 waypoint5)(can-sample-soil agent3)(not (at-soil-sample waypoint5))(immediate-dummy-xue_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (init-xue_observe-soil_agent0_waypoint5 dd))(not (immediate-dummy-xue_observe-soil_agent0_waypoint5 dd))(dummy-left-xue_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-xue_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-xue_observe-soil_agent0_waypoint5 dd)(at agent3 waypoint5)(can-sample-soil agent3)(at-soil-sample waypoint5)(immediate-dummy-xue_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (init-xue_observe-soil_agent0_waypoint5 dd))(not (immediate-dummy-xue_observe-soil_agent0_waypoint5 dd))(dummy-right-xue_observe-soil_agent0_waypoint5 dd))
)
(:action act-63e_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-xue_observe-soil_agent0_waypoint5 dd)(immediate-dummy-63e_observe-rock_agent2_waypoint4 dd)(not (at-soil-sample waypoint5))(at agent3 waypoint4)(can-sample-rock agent3))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-63e_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-xue_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at agent3 waypoint4)(can-sample-rock agent3)(not (dummy-left-63e_observe-rock_agent2_waypoint4 dd))(not (dummy-right-63e_observe-rock_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-63e_observe-rock_agent2_waypoint4 dd) )
)
(:action dummy-left-63e_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-xue_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at agent3 waypoint4)(can-sample-rock agent3)(not (at-rock-sample waypoint4))(immediate-dummy-63e_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-63e_observe-rock_agent2_waypoint4 dd))(dummy-left-63e_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-63e_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-xue_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at agent3 waypoint4)(can-sample-rock agent3)(at-rock-sample waypoint4)(immediate-dummy-63e_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-63e_observe-rock_agent2_waypoint4 dd))(dummy-right-63e_observe-rock_agent2_waypoint4 dd))
)
(:action act-dz2_sample-soil_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-63e_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(not (at-soil-sample waypoint5))(at agent3 waypoint4)(equipped-for-soil-analysis agent3)(store-of a1store agent3)(empty a1store agent3)(not (full a1store agent3)))
	:effect (and (pre-dz2_sample-soil_agent3_a1store_waypoint4 dd)(not (empty a1store agent3))(full a1store agent3)(have-soil-analysis agent3))
)
(:action act-9xw_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-dz2_sample-soil_agent3_a1store_waypoint4 dd)(at agent3 waypoint1)(have-soil-analysis agent3)(available agent3))
	:effect (and (pre-9xw_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-dz2_sample-soil_agent3_a1store_waypoint4 dd))(communicated-soil-data ))
)
(:action act-ywo_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-9xw_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(immediate-dummy-ywo_observe-vis_agent3_objective1_waypoint0 dd)(at agent3 waypoint0))
	:observe (visible-from objective1 waypoint0)
)
(:action act-dummy-ywo_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-9xw_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(at agent3 waypoint0)(not (dummy-left-ywo_observe-vis_agent3_objective1_waypoint0 dd))(not (dummy-right-ywo_observe-vis_agent3_objective1_waypoint0 dd)))
	:effect (and (immediate-dummy-ywo_observe-vis_agent3_objective1_waypoint0 dd) )
)
(:action dummy-left-ywo_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent3 waypoint0)(not (visible-from objective1 waypoint0))(immediate-dummy-ywo_observe-vis_agent3_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-ywo_observe-vis_agent3_objective1_waypoint0 dd))(dummy-left-ywo_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-ywo_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent3 waypoint0)(visible-from objective1 waypoint0)(immediate-dummy-ywo_observe-vis_agent3_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-ywo_observe-vis_agent3_objective1_waypoint0 dd))(dummy-right-ywo_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action goal-achieve-left-ywo_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ywo_observe-vis_agent3_objective1_waypoint0 dd)(not (visible-from objective1 waypoint0)))
	:effect (and (done-goal dd)(not (dummy-left-ywo_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-uaz_take-image_agent3_waypoint0_objective1_camera1_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ywo_observe-vis_agent3_objective1_waypoint0 dd)(visible-from objective1 waypoint0)(calibrated camera1 agent3 waypoint0 objective1)(on-board camera1 agent3)(equipped-for-imaging agent3)(at agent3 waypoint0))
	:effect (and (pre-uaz_take-image_agent3_waypoint0_objective1_camera1_high-res dd)(have-image agent3 objective1 high-res)(not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-iaw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-uaz_take-image_agent3_waypoint0_objective1_camera1_high-res dd)(at agent3 waypoint3)(have-image agent3 objective1 high-res))
	:effect (and (pre-iaw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)(not (pre-uaz_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-iaw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-iaw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-iaw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-ldm_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-63e_observe-rock_agent2_waypoint4 dd)(immediate-dummy-ldm_observe-vis_agent3_objective1_waypoint4 dd)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent3 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-ldm_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-63e_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent3 waypoint4)(not (dummy-left-ldm_observe-vis_agent3_objective1_waypoint4 dd))(not (dummy-right-ldm_observe-vis_agent3_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-ldm_observe-vis_agent3_objective1_waypoint4 dd) )
)
(:action dummy-left-ldm_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-63e_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent3 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-ldm_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-ldm_observe-vis_agent3_objective1_waypoint4 dd))(dummy-left-ldm_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-ldm_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-63e_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent3 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-ldm_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-ldm_observe-vis_agent3_objective1_waypoint4 dd))(dummy-right-ldm_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-m00_sample-soil_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ldm_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent3 waypoint4)(equipped-for-soil-analysis agent3)(store-of a1store agent3)(empty a1store agent3)(not (full a1store agent3)))
	:effect (and (pre-m00_sample-soil_agent3_a1store_waypoint4 dd)(not (empty a1store agent3))(full a1store agent3)(have-soil-analysis agent3))
)
(:action act-ee1_sample-rock_agent2_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-m00_sample-soil_agent3_a1store_waypoint4 dd)(at agent3 waypoint4)(equipped-for-rock-analysis agent3))
	:effect (and (pre-ee1_sample-rock_agent2_agent3_a1store_waypoint4 dd)(not (pre-m00_sample-soil_agent3_a1store_waypoint4 dd)))
)
(:action act-ocf_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-ee1_sample-rock_agent2_agent3_a1store_waypoint4 dd)(at agent3 waypoint1)(have-soil-analysis agent3)(available agent3))
	:effect (and (pre-ocf_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-ee1_sample-rock_agent2_agent3_a1store_waypoint4 dd))(communicated-soil-data ))
)
(:action act-pj4_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-ocf_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(immediate-dummy-pj4_observe-vis_agent3_objective1_waypoint0 dd)(at agent3 waypoint0))
	:observe (visible-from objective1 waypoint0)
)
(:action act-dummy-pj4_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (pre-ocf_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(at agent3 waypoint0)(not (dummy-left-pj4_observe-vis_agent3_objective1_waypoint0 dd))(not (dummy-right-pj4_observe-vis_agent3_objective1_waypoint0 dd)))
	:effect (and (immediate-dummy-pj4_observe-vis_agent3_objective1_waypoint0 dd) )
)
(:action dummy-left-pj4_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent3 waypoint0)(not (visible-from objective1 waypoint0))(immediate-dummy-pj4_observe-vis_agent3_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-pj4_observe-vis_agent3_objective1_waypoint0 dd))(dummy-left-pj4_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-pj4_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (at agent3 waypoint0)(visible-from objective1 waypoint0)(immediate-dummy-pj4_observe-vis_agent3_objective1_waypoint0 dd))
	:effect (and (not (immediate-dummy-pj4_observe-vis_agent3_objective1_waypoint0 dd))(dummy-right-pj4_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action goal-achieve-left-pj4_observe-vis_agent3_objective1_waypoint0
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-pj4_observe-vis_agent3_objective1_waypoint0 dd)(not (visible-from objective1 waypoint0)))
	:effect (and (done-goal dd)(not (dummy-left-pj4_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-m0y_take-image_agent3_waypoint0_objective1_camera1_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-pj4_observe-vis_agent3_objective1_waypoint0 dd)(visible-from objective1 waypoint0)(calibrated camera1 agent3 waypoint0 objective1)(on-board camera1 agent3)(equipped-for-imaging agent3)(at agent3 waypoint0))
	:effect (and (pre-m0y_take-image_agent3_waypoint0_objective1_camera1_high-res dd)(have-image agent3 objective1 high-res)(not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-j4f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-m0y_take-image_agent3_waypoint0_objective1_camera1_high-res dd)(at agent3 waypoint3)(have-image agent3 objective1 high-res))
	:effect (and (pre-j4f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)(not (pre-m0y_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-j4f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-j4f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-j4f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-uh0_take-image_agent3_waypoint4_objective1_camera1_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ldm_observe-vis_agent3_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(calibrated camera1 agent3 waypoint4 objective1)(on-board camera1 agent3)(equipped-for-imaging agent3)(at agent3 waypoint4))
	:effect (and (pre-uh0_take-image_agent3_waypoint4_objective1_camera1_high-res dd)(have-image agent3 objective1 high-res)(not (calibrated camera1 agent3 waypoint4 objective1)))
)
(:action act-y4l_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-uh0_take-image_agent3_waypoint4_objective1_camera1_high-res dd)(at agent3 waypoint1)(have-image agent3 objective1 high-res))
	:effect (and (pre-y4l_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)(not (pre-uh0_take-image_agent3_waypoint4_objective1_camera1_high-res dd)))
)
(:action act-dh2_sample-soil_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-y4l_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)(at agent3 waypoint4)(equipped-for-soil-analysis agent3)(store-of a1store agent3)(empty a1store agent3)(not (full a1store agent3)))
	:effect (and (pre-dh2_sample-soil_agent3_a1store_waypoint4 dd)(not (pre-y4l_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd))(not (empty a1store agent3))(full a1store agent3)(have-soil-analysis agent3))
)
(:action act-k8l_sample-rock_agent2_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-dh2_sample-soil_agent3_a1store_waypoint4 dd)(at agent3 waypoint4)(equipped-for-rock-analysis agent3))
	:effect (and (pre-k8l_sample-rock_agent2_agent3_a1store_waypoint4 dd)(not (pre-dh2_sample-soil_agent3_a1store_waypoint4 dd)))
)
(:action act-emq_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-k8l_sample-rock_agent2_agent3_a1store_waypoint4 dd)(at agent3 waypoint1)(have-soil-analysis agent3)(available agent3))
	:effect (and (pre-emq_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-k8l_sample-rock_agent2_agent3_a1store_waypoint4 dd))(communicated-soil-data ))
)
(:action goal-achieve-emq_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-emq_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-emq_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-2uc_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-xue_observe-soil_agent0_waypoint5 dd)(immediate-dummy-2uc_observe-rock_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent3 waypoint5)(can-sample-rock agent3))
	:observe (at-rock-sample waypoint5)
)
(:action act-dummy-2uc_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-xue_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent3 waypoint5)(can-sample-rock agent3)(not (dummy-left-2uc_observe-rock_agent0_waypoint5 dd))(not (dummy-right-2uc_observe-rock_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-2uc_observe-rock_agent0_waypoint5 dd) )
)
(:action dummy-left-2uc_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-xue_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent3 waypoint5)(can-sample-rock agent3)(not (at-rock-sample waypoint5))(immediate-dummy-2uc_observe-rock_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-2uc_observe-rock_agent0_waypoint5 dd))(dummy-left-2uc_observe-rock_agent0_waypoint5 dd))
)
(:action dummy-right-2uc_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-xue_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent3 waypoint5)(can-sample-rock agent3)(at-rock-sample waypoint5)(immediate-dummy-2uc_observe-rock_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-2uc_observe-rock_agent0_waypoint5 dd))(dummy-right-2uc_observe-rock_agent0_waypoint5 dd))
)
(:action act-o8u_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2uc_observe-rock_agent0_waypoint5 dd)(immediate-dummy-o8u_observe-vis_agent0_objective1_waypoint4 dd)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent3 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-o8u_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2uc_observe-rock_agent0_waypoint5 dd)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent3 waypoint4)(not (dummy-left-o8u_observe-vis_agent0_objective1_waypoint4 dd))(not (dummy-right-o8u_observe-vis_agent0_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-o8u_observe-vis_agent0_objective1_waypoint4 dd) )
)
(:action dummy-left-o8u_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2uc_observe-rock_agent0_waypoint5 dd)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent3 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-o8u_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-o8u_observe-vis_agent0_objective1_waypoint4 dd))(dummy-left-o8u_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-o8u_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2uc_observe-rock_agent0_waypoint5 dd)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent3 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-o8u_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-o8u_observe-vis_agent0_objective1_waypoint4 dd))(dummy-right-o8u_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-buu_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-o8u_observe-vis_agent0_objective1_waypoint4 dd)(immediate-dummy-buu_observe-vis_agent0_objective1_waypoint5 dd)(not (visible-from objective1 waypoint4))(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent3 waypoint5))
	:observe (visible-from objective1 waypoint5)
)
(:action act-dummy-buu_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-o8u_observe-vis_agent0_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent3 waypoint5)(not (dummy-left-buu_observe-vis_agent0_objective1_waypoint5 dd))(not (dummy-right-buu_observe-vis_agent0_objective1_waypoint5 dd)))
	:effect (and (immediate-dummy-buu_observe-vis_agent0_objective1_waypoint5 dd) )
)
(:action dummy-left-buu_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-o8u_observe-vis_agent0_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent3 waypoint5)(not (visible-from objective1 waypoint5))(immediate-dummy-buu_observe-vis_agent0_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-buu_observe-vis_agent0_objective1_waypoint5 dd))(dummy-left-buu_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-right-buu_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-o8u_observe-vis_agent0_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent3 waypoint5)(visible-from objective1 waypoint5)(immediate-dummy-buu_observe-vis_agent0_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-buu_observe-vis_agent0_objective1_waypoint5 dd))(dummy-right-buu_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action act-rin_sample-soil_agent3_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-buu_observe-vis_agent0_objective1_waypoint5 dd)(not (visible-from objective1 waypoint5))(not (visible-from objective1 waypoint4))(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent3 waypoint5)(equipped-for-soil-analysis agent3)(store-of a1store agent3)(empty a1store agent3)(not (full a1store agent3)))
	:effect (and (pre-rin_sample-soil_agent3_a1store_waypoint5 dd)(not (empty a1store agent3))(full a1store agent3)(have-soil-analysis agent3))
)
(:action act-tij_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-rin_sample-soil_agent3_a1store_waypoint5 dd)(at agent3 waypoint1)(have-soil-analysis agent3)(available agent3))
	:effect (and (pre-tij_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-rin_sample-soil_agent3_a1store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-tij_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-tij_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-tij_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-buu_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-buu_observe-vis_agent0_objective1_waypoint5 dd)(visible-from objective1 waypoint5)(not (visible-from objective1 waypoint4))(not (at-rock-sample waypoint5))(at-soil-sample waypoint5))
	:effect (and (done-goal dd)(not (dummy-right-buu_observe-vis_agent0_objective1_waypoint5 dd)))
)
(:action act-a9g_sample-rock_agent3_agent0_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-o8u_observe-vis_agent0_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent3 waypoint4)(equipped-for-rock-analysis agent3)(store-of a1store agent3)(empty a1store agent3))
	:effect (and (pre-a9g_sample-rock_agent3_agent0_a1store_waypoint4 dd)(not (empty a1store agent3))(full a1store agent3)(have-rock-analysis agent3))
)
(:action act-q06_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-a9g_sample-rock_agent3_agent0_a1store_waypoint4 dd)(at agent3 waypoint1)(have-rock-analysis agent3)(available agent3))
	:effect (and (pre-q06_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-a9g_sample-rock_agent3_agent0_a1store_waypoint4 dd))(communicated-rock-data ))
)
(:action goal-achieve-q06_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-q06_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-q06_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-wx6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2uc_observe-rock_agent0_waypoint5 dd)(immediate-dummy-wx6_observe-vis_agent3_objective1_waypoint4 dd)(at-rock-sample waypoint5)(at-soil-sample waypoint5)(at agent3 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-wx6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2uc_observe-rock_agent0_waypoint5 dd)(at-rock-sample waypoint5)(at-soil-sample waypoint5)(at agent3 waypoint4)(not (dummy-left-wx6_observe-vis_agent3_objective1_waypoint4 dd))(not (dummy-right-wx6_observe-vis_agent3_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-wx6_observe-vis_agent3_objective1_waypoint4 dd) )
)
(:action dummy-left-wx6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2uc_observe-rock_agent0_waypoint5 dd)(at-rock-sample waypoint5)(at-soil-sample waypoint5)(at agent3 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-wx6_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-wx6_observe-vis_agent3_objective1_waypoint4 dd))(dummy-left-wx6_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-wx6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2uc_observe-rock_agent0_waypoint5 dd)(at-rock-sample waypoint5)(at-soil-sample waypoint5)(at agent3 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-wx6_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-wx6_observe-vis_agent3_objective1_waypoint4 dd))(dummy-right-wx6_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-pa7_sample-rock_agent3_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wx6_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint5)(at-soil-sample waypoint5)(at agent3 waypoint5)(equipped-for-rock-analysis agent3)(store-of a1store agent3)(empty a1store agent3))
	:effect (and (pre-pa7_sample-rock_agent3_agent0_a1store_waypoint5 dd)(not (empty a1store agent3))(full a1store agent3)(have-rock-analysis agent3))
)
(:action act-8ee_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-pa7_sample-rock_agent3_agent0_a1store_waypoint5 dd)(at agent3 waypoint1)(have-rock-analysis agent3)(available agent3))
	:effect (and (pre-8ee_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-pa7_sample-rock_agent3_agent0_a1store_waypoint5 dd))(communicated-rock-data ))
)
(:action goal-achieve-8ee_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-8ee_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-8ee_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-4l6_take-image_agent3_waypoint4_objective1_camera1_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wx6_observe-vis_agent3_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-rock-sample waypoint5)(at-soil-sample waypoint5)(calibrated camera1 agent3 waypoint4 objective1)(on-board camera1 agent3)(equipped-for-imaging agent3)(at agent3 waypoint4))
	:effect (and (pre-4l6_take-image_agent3_waypoint4_objective1_camera1_high-res dd)(have-image agent3 objective1 high-res)(not (calibrated camera1 agent3 waypoint4 objective1)))
)
(:action act-oug_sample-rock_agent3_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-4l6_take-image_agent3_waypoint4_objective1_camera1_high-res dd)(at agent3 waypoint5)(equipped-for-rock-analysis agent3)(store-of a1store agent3)(empty a1store agent3))
	:effect (and (pre-oug_sample-rock_agent3_agent0_a1store_waypoint5 dd)(not (pre-4l6_take-image_agent3_waypoint4_objective1_camera1_high-res dd))(not (empty a1store agent3))(full a1store agent3)(have-rock-analysis agent3))
)
(:action act-v55_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-oug_sample-rock_agent3_agent0_a1store_waypoint5 dd)(at agent3 waypoint1)(have-rock-analysis agent3)(available agent3))
	:effect (and (pre-v55_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-oug_sample-rock_agent3_agent0_a1store_waypoint5 dd))(communicated-rock-data ))
)
(:action act-vtw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-v55_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(at agent3 waypoint1)(have-image agent3 objective1 high-res))
	:effect (and (pre-vtw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)(not (pre-v55_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-vtw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-vtw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-vtw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
)