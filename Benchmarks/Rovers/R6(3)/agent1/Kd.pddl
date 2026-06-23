(define (domain Krover-agent1)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy TAG_TYPE VALUE_TYPE)
(:constants
 agent1 - agent
 general - lander
 colour - mode
 high-res - mode
 low-res - mode
 agent1 - agent
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
 objective1 - objective
 objective2 - objective
 dd - dummy
 tag0 - TAG_TYPE ; (visible-from objective2 waypoint2)
 tag1 - TAG_TYPE ; (visible-from objective2 waypoint1)
 V_TRUE - VALUE_TYPE
 V_FALSE - VALUE_TYPE
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
(Kat-soil-sample ?w - waypoint ?V_PARAM - VALUE_TYPE)
(KGivenat-soil-sample ?w - waypoint ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(at-rock-sample ?w - waypoint)
(Kat-rock-sample ?w - waypoint ?V_PARAM - VALUE_TYPE)
(KGivenat-rock-sample ?w - waypoint ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(visible-from ?o - objective ?w - waypoint)
(Kvisible-from ?o - objective ?w - waypoint ?V_PARAM - VALUE_TYPE)
(KGivenvisible-from ?o - objective ?w - waypoint ?TAG_PARAM - TAG_TYPE ?V_PARAM - VALUE_TYPE)
(store-of ?s - store ?r - agent)
(calibration-target ?i - camera ?o - objective)
(on-board ?i - camera ?r - agent)
(channel-free ?l - lander)
(init-f1o_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-f1o_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-f1o_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-wnr_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(dummy-left-wnr_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-ydj_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-ydj_observe-rock_agent2_waypoint4 ?dd - dummy)
(pre-k2b_calibrate_agent1_camera1_objective1_waypoint0 ?dd - dummy)
(immediate-dummy-hjs_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-left-hjs_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-hjs_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-gho_take-image_agent1_waypoint0_objective1_camera1_high-res ?dd - dummy)
(pre-t38_communicate-image-data_agent1_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-ydj_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-exo_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-exo_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-swh_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-swh_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-3lh_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-3lh_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-n16_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-kip_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-3lh_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-right-swh_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-d6i_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-lnr_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-oqc_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-oqc_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-phc_calibrate_agent1_camera1_objective1_waypoint5 ?dd - dummy)
(pre-lh9_take-image_agent1_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-g0d_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(pre-sae_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-oqc_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-right-exo_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-9e1_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-9e1_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-k41_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-c7b_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-9e1_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-right-wnr_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(dummy-right-f1o_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-f6a_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-f6a_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-ddk_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-ddk_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(immediate-dummy-gip_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-gip_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-r0g_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(dummy-left-r0g_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-ldo_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-ldo_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-ese_calibrate_agent1_camera1_objective1_waypoint4 ?dd - dummy)
(pre-hga_take-image_agent1_waypoint4_objective1_camera1_high-res ?dd - dummy)
(pre-21i_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-kd2_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(pre-rat_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-ldo_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-0ms_calibrate_agent1_camera1_objective1_waypoint5 ?dd - dummy)
(pre-bkl_take-image_agent1_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-che_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-yas_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(pre-xbk_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-r0g_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-7xa_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(dummy-left-7xa_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(pre-mfl_calibrate_agent1_camera1_objective1_waypoint5 ?dd - dummy)
(pre-x40_take-image_agent1_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-bme_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-22a_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(pre-ryh_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-7xa_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(pre-61o_calibrate_agent1_camera1_objective1_waypoint4 ?dd - dummy)
(pre-xk2_take-image_agent1_waypoint4_objective1_camera1_high-res ?dd - dummy)
(pre-dcl_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-9tg_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(pre-re0_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-gip_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-8np_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-8np_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-1f4_calibrate_agent1_camera1_objective1_waypoint4 ?dd - dummy)
(pre-hcs_take-image_agent1_waypoint4_objective1_camera1_high-res ?dd - dummy)
(pre-298_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-gjo_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(pre-dhl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-8np_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-k1k_calibrate_agent1_camera1_objective1_waypoint5 ?dd - dummy)
(pre-5jm_take-image_agent1_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-iid_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-axk_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(pre-uth_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-ddk_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(immediate-dummy-n4p_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(dummy-left-n4p_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-u0t_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(dummy-left-u0t_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-mzy_joint-sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(dummy-right-u0t_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-65l_joint-sample-rock_agent1_agent0_a1store_waypoint5 ?dd - dummy)
(pre-462_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-n4p_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(pre-66m_joint-sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(dummy-right-f6a_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-4hn_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-4hn_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-qcd_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-ct6_calibrate_agent1_camera1_objective1_waypoint5 ?dd - dummy)
(immediate-dummy-1gp_observe-vis_agent1_objective1_waypoint5 ?dd - dummy)
(dummy-left-1gp_observe-vis_agent1_objective1_waypoint5 ?dd - dummy)
(pre-hhp_calibrate_agent1_camera1_objective1_waypoint4 ?dd - dummy)
(pre-13p_take-image_agent1_waypoint4_objective1_camera1_high-res ?dd - dummy)
(pre-9sq_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(pre-17b_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(pre-v9o_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-1gp_observe-vis_agent1_objective1_waypoint5 ?dd - dummy)
(pre-bnm_take-image_agent1_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-le0_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(pre-8zm_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(pre-371_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-4hn_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-lsg_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-xvs_communicate-rock-data_agent1_general_waypoint1_waypoint0 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)
(:action act-f1o_observe-soil_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (init-f1o_observe-soil_agent2_waypoint4 dd) (immediate-dummy-f1o_observe-soil_agent2_waypoint4 dd) (at agent1 waypoint4) (at-soil-sample waypoint4) (not (Kat-soil-sample waypoint4 V_TRUE)) (not (Kat-soil-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint4 V_TRUE))
)
(:action act-f1o_observe-soil_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (init-f1o_observe-soil_agent2_waypoint4 dd) (immediate-dummy-f1o_observe-soil_agent2_waypoint4 dd) (at agent1 waypoint4) (not (at-soil-sample waypoint4)) (not (Kat-soil-sample waypoint4 V_TRUE)) (not (Kat-soil-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint4 V_FALSE))
)
(:action act-dummy-f1o_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-f1o_observe-soil_agent2_waypoint4 dd) (not (dummy-left-f1o_observe-soil_agent2_waypoint4 dd)) (not (dummy-right-f1o_observe-soil_agent2_waypoint4 dd)))
:effect 
(and (immediate-dummy-f1o_observe-soil_agent2_waypoint4 dd))
)
(:action dummy-left-f1o_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-f1o_observe-soil_agent2_waypoint4 dd) (at agent1 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-f1o_observe-soil_agent2_waypoint4 dd) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (not (init-f1o_observe-soil_agent2_waypoint4 dd)) (not (immediate-dummy-f1o_observe-soil_agent2_waypoint4 dd)) (dummy-left-f1o_observe-soil_agent2_waypoint4 dd))
)
(:action dummy-right-f1o_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-f1o_observe-soil_agent2_waypoint4 dd) (at agent1 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-f1o_observe-soil_agent2_waypoint4 dd) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (not (init-f1o_observe-soil_agent2_waypoint4 dd)) (not (immediate-dummy-f1o_observe-soil_agent2_waypoint4 dd)) (dummy-right-f1o_observe-soil_agent2_waypoint4 dd))
)
(:action act-wnr_observe-vis_agent2_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f1o_observe-soil_agent2_waypoint4 dd) (immediate-dummy-wnr_observe-vis_agent2_objective1_waypoint4 dd) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-wnr_observe-vis_agent2_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f1o_observe-soil_agent2_waypoint4 dd) (immediate-dummy-wnr_observe-vis_agent2_objective1_waypoint4 dd) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-wnr_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f1o_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (not (dummy-left-wnr_observe-vis_agent2_objective1_waypoint4 dd)) (not (dummy-right-wnr_observe-vis_agent2_objective1_waypoint4 dd)) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-wnr_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action dummy-left-wnr_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f1o_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-wnr_observe-vis_agent2_objective1_waypoint4 dd) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-wnr_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-left-wnr_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action dummy-right-wnr_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f1o_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-wnr_observe-vis_agent2_objective1_waypoint4 dd) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-wnr_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-right-wnr_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action act-ydj_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wnr_observe-vis_agent2_objective1_waypoint4 dd) (immediate-dummy-ydj_observe-rock_agent2_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-ydj_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wnr_observe-vis_agent2_objective1_waypoint4 dd) (immediate-dummy-ydj_observe-rock_agent2_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-ydj_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wnr_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (not (dummy-left-ydj_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-ydj_observe-rock_agent2_waypoint4 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-ydj_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-ydj_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wnr_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-ydj_observe-rock_agent2_waypoint4 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-ydj_observe-rock_agent2_waypoint4 dd)) (dummy-left-ydj_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-ydj_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wnr_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-ydj_observe-rock_agent2_waypoint4 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-ydj_observe-rock_agent2_waypoint4 dd)) (dummy-right-ydj_observe-rock_agent2_waypoint4 dd))
)
(:action act-k2b_calibrate_agent1_camera1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ydj_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint0) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-k2b_calibrate_agent1_camera1_objective1_waypoint0 dd))
)
(:action act-hjs_observe-vis_agent1_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-k2b_calibrate_agent1_camera1_objective1_waypoint0 dd) (immediate-dummy-hjs_observe-vis_agent1_objective1_waypoint0 dd) (at agent1 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-hjs_observe-vis_agent1_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-k2b_calibrate_agent1_camera1_objective1_waypoint0 dd) (immediate-dummy-hjs_observe-vis_agent1_objective1_waypoint0 dd) (at agent1 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-hjs_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k2b_calibrate_agent1_camera1_objective1_waypoint0 dd) (at agent1 waypoint0) (not (dummy-left-hjs_observe-vis_agent1_objective1_waypoint0 dd)) (not (dummy-right-hjs_observe-vis_agent1_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-hjs_observe-vis_agent1_objective1_waypoint0 dd))
)
(:action dummy-left-hjs_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent1 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-hjs_observe-vis_agent1_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-hjs_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-left-hjs_observe-vis_agent1_objective1_waypoint0 dd))
)
(:action dummy-right-hjs_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent1 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-hjs_observe-vis_agent1_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-hjs_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-right-hjs_observe-vis_agent1_objective1_waypoint0 dd))
)
(:action goal-achieve-left-hjs_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hjs_observe-vis_agent1_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-hjs_observe-vis_agent1_objective1_waypoint0 dd)))
)
(:action act-gho_take-image_agent1_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hjs_observe-vis_agent1_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent1 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (pre-gho_take-image_agent1_waypoint0_objective1_camera1_high-res dd))
)
(:action act-t38_communicate-image-data_agent1_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-gho_take-image_agent1_waypoint0_objective1_camera1_high-res dd) (at agent1 waypoint3))
:effect 
(and (pre-t38_communicate-image-data_agent1_general_objective1_high-res_waypoint3_waypoint0 dd) (not (pre-gho_take-image_agent1_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-t38_communicate-image-data_agent1_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-t38_communicate-image-data_agent1_general_objective1_high-res_waypoint3_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-t38_communicate-image-data_agent1_general_objective1_high-res_waypoint3_waypoint0 dd)))
)
(:action act-exo_observe-vis_agent1_objective2_waypoint2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ydj_observe-rock_agent2_waypoint4 dd) (immediate-dummy-exo_observe-vis_agent1_objective2_waypoint2 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint2) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective2 waypoint2) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_TRUE))
)
(:action act-exo_observe-vis_agent1_objective2_waypoint2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ydj_observe-rock_agent2_waypoint4 dd) (immediate-dummy-exo_observe-vis_agent1_objective2_waypoint2 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint2) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective2 waypoint2)) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_FALSE))
)
(:action act-dummy-exo_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ydj_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint2) (not (dummy-left-exo_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-exo_observe-vis_agent1_objective2_waypoint2 dd)) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-exo_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-left-exo_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ydj_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-exo_observe-vis_agent1_objective2_waypoint2 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (not (immediate-dummy-exo_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-exo_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-right-exo_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ydj_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-exo_observe-vis_agent1_objective2_waypoint2 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (not (immediate-dummy-exo_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-exo_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action act-swh_observe-vis_agent2_objective2_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-exo_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-swh_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective2 waypoint5) (not (Kvisible-from objective2 waypoint5 V_TRUE)) (not (Kvisible-from objective2 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint5 V_TRUE))
)
(:action act-swh_observe-vis_agent2_objective2_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-exo_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-swh_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective2 waypoint5)) (not (Kvisible-from objective2 waypoint5 V_TRUE)) (not (Kvisible-from objective2 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint5 V_FALSE))
)
(:action act-dummy-swh_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-exo_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (not (dummy-left-swh_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-swh_observe-vis_agent2_objective2_waypoint5 dd)) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-swh_observe-vis_agent2_objective2_waypoint5 dd))
)
(:action dummy-left-swh_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-exo_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-swh_observe-vis_agent2_objective2_waypoint5 dd) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-swh_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-swh_observe-vis_agent2_objective2_waypoint5 dd))
)
(:action dummy-right-swh_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-exo_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-swh_observe-vis_agent2_objective2_waypoint5 dd) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-swh_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-swh_observe-vis_agent2_objective2_waypoint5 dd))
)
(:action act-3lh_observe-vis_agent2_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-swh_observe-vis_agent2_objective2_waypoint5 dd) (immediate-dummy-3lh_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (Kvisible-from objective2 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-3lh_observe-vis_agent2_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-swh_observe-vis_agent2_objective2_waypoint5 dd) (immediate-dummy-3lh_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (Kvisible-from objective2 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-3lh_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-swh_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (not (dummy-left-3lh_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-3lh_observe-vis_agent2_objective1_waypoint5 dd)) (Kvisible-from objective2 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-3lh_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-left-3lh_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-swh_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-3lh_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-3lh_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-3lh_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-3lh_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-swh_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-3lh_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-3lh_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-3lh_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-n16_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3lh_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-n16_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd))
)
(:action act-kip_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-n16_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent1 waypoint1))
:effect 
(and (pre-kip_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-n16_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action goal-achieve-kip_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-kip_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-kip_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-right-3lh_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3lh_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective2 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-3lh_observe-vis_agent2_objective1_waypoint5 dd)))
)
(:action act-d6i_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-swh_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (Kvisible-from objective2 waypoint5 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-d6i_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd))
)
(:action act-lnr_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-d6i_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent1 waypoint1))
:effect 
(and (pre-lnr_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-d6i_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action act-oqc_observe-vis_agent0_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-lnr_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (immediate-dummy-oqc_observe-vis_agent0_objective1_waypoint0 dd) (at agent1 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-oqc_observe-vis_agent0_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-lnr_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (immediate-dummy-oqc_observe-vis_agent0_objective1_waypoint0 dd) (at agent1 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-oqc_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-lnr_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (at agent1 waypoint0) (not (dummy-left-oqc_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-oqc_observe-vis_agent0_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-oqc_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-left-oqc_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent1 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-oqc_observe-vis_agent0_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-oqc_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-oqc_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-right-oqc_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent1 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-oqc_observe-vis_agent0_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-oqc_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-oqc_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action act-phc_calibrate_agent1_camera1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oqc_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent1 waypoint5) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-phc_calibrate_agent1_camera1_objective1_waypoint5 dd))
)
(:action act-lh9_take-image_agent1_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-phc_calibrate_agent1_camera1_objective1_waypoint5 dd) (at agent1 waypoint5))
:effect 
(and (pre-lh9_take-image_agent1_waypoint5_objective1_camera1_high-res dd) (not (pre-phc_calibrate_agent1_camera1_objective1_waypoint5 dd)))
)
(:action act-g0d_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-lh9_take-image_agent1_waypoint5_objective1_camera1_high-res dd) (at agent1 waypoint1))
:effect 
(and (pre-g0d_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-lh9_take-image_agent1_waypoint5_objective1_camera1_high-res dd)) (communicated-rock-data ))
)
(:action act-sae_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-g0d_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-sae_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-g0d_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-sae_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-sae_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-sae_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-right-oqc_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oqc_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-oqc_observe-vis_agent0_objective1_waypoint0 dd)))
)
(:action act-9e1_observe-vis_agent2_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-exo_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-9e1_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-9e1_observe-vis_agent2_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-exo_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-9e1_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-9e1_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-exo_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (not (dummy-left-9e1_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-9e1_observe-vis_agent2_objective1_waypoint5 dd)) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-9e1_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-left-9e1_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-exo_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-9e1_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-9e1_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-9e1_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-9e1_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-exo_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-9e1_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-9e1_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-9e1_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-k41_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9e1_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent1 waypoint4) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-k41_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd))
)
(:action act-c7b_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k41_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent1 waypoint1))
:effect 
(and (pre-c7b_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-k41_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action goal-achieve-c7b_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-c7b_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-c7b_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-right-9e1_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9e1_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-9e1_observe-vis_agent2_objective1_waypoint5 dd)))
)
(:action goal-achieve-right-wnr_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wnr_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-wnr_observe-vis_agent2_objective1_waypoint4 dd)))
)
(:action act-f6a_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f1o_observe-soil_agent2_waypoint4 dd) (immediate-dummy-f6a_observe-rock_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at agent1 waypoint4) (Kat-soil-sample waypoint4 V_TRUE) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-f6a_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f1o_observe-soil_agent2_waypoint4 dd) (immediate-dummy-f6a_observe-rock_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at agent1 waypoint4) (Kat-soil-sample waypoint4 V_TRUE) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-f6a_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f1o_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at agent1 waypoint4) (not (dummy-left-f6a_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-f6a_observe-rock_agent2_waypoint4 dd)) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-f6a_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-f6a_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f1o_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at agent1 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-f6a_observe-rock_agent2_waypoint4 dd) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-f6a_observe-rock_agent2_waypoint4 dd)) (dummy-left-f6a_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-f6a_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f1o_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at agent1 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-f6a_observe-rock_agent2_waypoint4 dd) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-f6a_observe-rock_agent2_waypoint4 dd)) (dummy-right-f6a_observe-rock_agent2_waypoint4 dd))
)
(:action act-ddk_observe-vis_agent0_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f6a_observe-rock_agent2_waypoint4 dd) (immediate-dummy-ddk_observe-vis_agent0_objective1_waypoint0 dd) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint0) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-ddk_observe-vis_agent0_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f6a_observe-rock_agent2_waypoint4 dd) (immediate-dummy-ddk_observe-vis_agent0_objective1_waypoint0 dd) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint0) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-ddk_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f6a_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint0) (not (dummy-left-ddk_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-ddk_observe-vis_agent0_objective1_waypoint0 dd)) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-ddk_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-left-ddk_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f6a_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-ddk_observe-vis_agent0_objective1_waypoint0 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-ddk_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-ddk_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-right-ddk_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f6a_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-ddk_observe-vis_agent0_objective1_waypoint0 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-ddk_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-ddk_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action act-gip_observe-vis_agent1_objective2_waypoint2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ddk_observe-vis_agent0_objective1_waypoint0 dd) (immediate-dummy-gip_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint2) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (visible-from objective2 waypoint2) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_TRUE))
)
(:action act-gip_observe-vis_agent1_objective2_waypoint2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ddk_observe-vis_agent0_objective1_waypoint0 dd) (immediate-dummy-gip_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint2) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (not (visible-from objective2 waypoint2)) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_FALSE))
)
(:action act-dummy-gip_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ddk_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint2) (not (dummy-left-gip_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-gip_observe-vis_agent1_objective2_waypoint2 dd)) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-gip_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-left-gip_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ddk_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-gip_observe-vis_agent1_objective2_waypoint2 dd) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (not (immediate-dummy-gip_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-gip_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-right-gip_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ddk_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-gip_observe-vis_agent1_objective2_waypoint2 dd) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (not (immediate-dummy-gip_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-gip_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action act-r0g_observe-vis_agent1_objective2_waypoint1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gip_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-r0g_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint1) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (visible-from objective2 waypoint1) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_TRUE))
)
(:action act-r0g_observe-vis_agent1_objective2_waypoint1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gip_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-r0g_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint1) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (not (visible-from objective2 waypoint1)) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_FALSE))
)
(:action act-dummy-r0g_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gip_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint1) (not (dummy-left-r0g_observe-vis_agent1_objective2_waypoint1 dd)) (not (dummy-right-r0g_observe-vis_agent1_objective2_waypoint1 dd)) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-r0g_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action dummy-left-r0g_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gip_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-r0g_observe-vis_agent1_objective2_waypoint1 dd) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective2 waypoint1 V_FALSE))
:effect 
(and (not (immediate-dummy-r0g_observe-vis_agent1_objective2_waypoint1 dd)) (dummy-left-r0g_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action dummy-right-r0g_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gip_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-r0g_observe-vis_agent1_objective2_waypoint1 dd) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective2 waypoint1 V_TRUE))
:effect 
(and (not (immediate-dummy-r0g_observe-vis_agent1_objective2_waypoint1 dd)) (dummy-right-r0g_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action act-ldo_observe-vis_agent2_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r0g_observe-vis_agent1_objective2_waypoint1 dd) (immediate-dummy-ldo_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-ldo_observe-vis_agent2_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r0g_observe-vis_agent1_objective2_waypoint1 dd) (immediate-dummy-ldo_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-ldo_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r0g_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (not (dummy-left-ldo_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-ldo_observe-vis_agent2_objective1_waypoint5 dd)) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-ldo_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-left-ldo_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r0g_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-ldo_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-ldo_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-ldo_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-ldo_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r0g_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-ldo_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-ldo_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-ldo_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-ese_calibrate_agent1_camera1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ldo_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint4) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-ese_calibrate_agent1_camera1_objective1_waypoint4 dd))
)
(:action act-hga_take-image_agent1_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-ese_calibrate_agent1_camera1_objective1_waypoint4 dd) (at agent1 waypoint4))
:effect 
(and (pre-hga_take-image_agent1_waypoint4_objective1_camera1_high-res dd) (not (pre-ese_calibrate_agent1_camera1_objective1_waypoint4 dd)))
)
(:action act-21i_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-hga_take-image_agent1_waypoint4_objective1_camera1_high-res dd) (at agent1 waypoint5))
:effect 
(and (pre-21i_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (not (pre-hga_take-image_agent1_waypoint4_objective1_camera1_high-res dd)))
)
(:action act-kd2_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-21i_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent1 waypoint1))
:effect 
(and (pre-kd2_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-21i_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-rat_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-kd2_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-rat_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-kd2_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-rat_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-rat_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-rat_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)))
)
(:action act-0ms_calibrate_agent1_camera1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ldo_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-0ms_calibrate_agent1_camera1_objective1_waypoint5 dd))
)
(:action act-bkl_take-image_agent1_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-0ms_calibrate_agent1_camera1_objective1_waypoint5 dd) (at agent1 waypoint5))
:effect 
(and (pre-bkl_take-image_agent1_waypoint5_objective1_camera1_high-res dd) (not (pre-0ms_calibrate_agent1_camera1_objective1_waypoint5 dd)))
)
(:action act-che_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-bkl_take-image_agent1_waypoint5_objective1_camera1_high-res dd) (at agent1 waypoint5))
:effect 
(and (pre-che_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (not (pre-bkl_take-image_agent1_waypoint5_objective1_camera1_high-res dd)))
)
(:action act-yas_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-che_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent1 waypoint1))
:effect 
(and (pre-yas_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-che_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-xbk_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-yas_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-xbk_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-yas_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-xbk_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-xbk_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-xbk_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)))
)
(:action act-7xa_observe-vis_agent2_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r0g_observe-vis_agent1_objective2_waypoint1 dd) (immediate-dummy-7xa_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint4) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-7xa_observe-vis_agent2_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r0g_observe-vis_agent1_objective2_waypoint1 dd) (immediate-dummy-7xa_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint4) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-7xa_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r0g_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint4) (not (dummy-left-7xa_observe-vis_agent2_objective1_waypoint4 dd)) (not (dummy-right-7xa_observe-vis_agent2_objective1_waypoint4 dd)) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-7xa_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action dummy-left-7xa_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r0g_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-7xa_observe-vis_agent2_objective1_waypoint4 dd) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-7xa_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-left-7xa_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action dummy-right-7xa_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r0g_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-7xa_observe-vis_agent2_objective1_waypoint4 dd) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-7xa_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-right-7xa_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action act-mfl_calibrate_agent1_camera1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7xa_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-mfl_calibrate_agent1_camera1_objective1_waypoint5 dd))
)
(:action act-x40_take-image_agent1_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-mfl_calibrate_agent1_camera1_objective1_waypoint5 dd) (at agent1 waypoint5))
:effect 
(and (pre-x40_take-image_agent1_waypoint5_objective1_camera1_high-res dd) (not (pre-mfl_calibrate_agent1_camera1_objective1_waypoint5 dd)))
)
(:action act-bme_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-x40_take-image_agent1_waypoint5_objective1_camera1_high-res dd) (at agent1 waypoint5))
:effect 
(and (pre-bme_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (not (pre-x40_take-image_agent1_waypoint5_objective1_camera1_high-res dd)))
)
(:action act-22a_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-bme_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent1 waypoint1))
:effect 
(and (pre-22a_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-bme_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-ryh_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-22a_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-ryh_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-22a_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-ryh_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ryh_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-ryh_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)))
)
(:action act-61o_calibrate_agent1_camera1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7xa_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-61o_calibrate_agent1_camera1_objective1_waypoint4 dd))
)
(:action act-xk2_take-image_agent1_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-61o_calibrate_agent1_camera1_objective1_waypoint4 dd) (at agent1 waypoint4))
:effect 
(and (pre-xk2_take-image_agent1_waypoint4_objective1_camera1_high-res dd) (not (pre-61o_calibrate_agent1_camera1_objective1_waypoint4 dd)))
)
(:action act-dcl_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-xk2_take-image_agent1_waypoint4_objective1_camera1_high-res dd) (at agent1 waypoint5))
:effect 
(and (pre-dcl_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (not (pre-xk2_take-image_agent1_waypoint4_objective1_camera1_high-res dd)))
)
(:action act-9tg_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-dcl_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent1 waypoint1))
:effect 
(and (pre-9tg_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-dcl_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-re0_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9tg_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-re0_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-9tg_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-re0_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-re0_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-re0_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)))
)
(:action act-8np_observe-vis_agent2_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gip_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-8np_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective2 waypoint2) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-8np_observe-vis_agent2_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gip_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-8np_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective2 waypoint2) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-8np_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gip_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (not (dummy-left-8np_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-8np_observe-vis_agent2_objective1_waypoint5 dd)) (Kvisible-from objective2 waypoint2 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-8np_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-left-8np_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gip_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-8np_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint2 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-8np_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-8np_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-8np_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gip_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-8np_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint2 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-8np_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-8np_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-1f4_calibrate_agent1_camera1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-8np_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (visible-from objective2 waypoint2) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint4) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-1f4_calibrate_agent1_camera1_objective1_waypoint4 dd))
)
(:action act-hcs_take-image_agent1_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-1f4_calibrate_agent1_camera1_objective1_waypoint4 dd) (at agent1 waypoint4))
:effect 
(and (pre-hcs_take-image_agent1_waypoint4_objective1_camera1_high-res dd) (not (pre-1f4_calibrate_agent1_camera1_objective1_waypoint4 dd)))
)
(:action act-298_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-hcs_take-image_agent1_waypoint4_objective1_camera1_high-res dd) (at agent1 waypoint5))
:effect 
(and (pre-298_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (not (pre-hcs_take-image_agent1_waypoint4_objective1_camera1_high-res dd)))
)
(:action act-gjo_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-298_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent1 waypoint1))
:effect 
(and (pre-gjo_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-298_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-dhl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-gjo_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-dhl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-gjo_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-dhl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-dhl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-dhl_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)))
)
(:action act-k1k_calibrate_agent1_camera1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-8np_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (visible-from objective2 waypoint2) (not (visible-from objective1 waypoint0)) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective2 waypoint2 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-k1k_calibrate_agent1_camera1_objective1_waypoint5 dd))
)
(:action act-5jm_take-image_agent1_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-k1k_calibrate_agent1_camera1_objective1_waypoint5 dd) (at agent1 waypoint5))
:effect 
(and (pre-5jm_take-image_agent1_waypoint5_objective1_camera1_high-res dd) (not (pre-k1k_calibrate_agent1_camera1_objective1_waypoint5 dd)))
)
(:action act-iid_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-5jm_take-image_agent1_waypoint5_objective1_camera1_high-res dd) (at agent1 waypoint5))
:effect 
(and (pre-iid_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (not (pre-5jm_take-image_agent1_waypoint5_objective1_camera1_high-res dd)))
)
(:action act-axk_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-iid_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent1 waypoint1))
:effect 
(and (pre-axk_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-iid_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-uth_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-axk_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-uth_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-axk_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-uth_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-uth_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-uth_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)))
)
(:action act-n4p_observe-vis_agent1_objective2_waypoint1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ddk_observe-vis_agent0_objective1_waypoint0 dd) (immediate-dummy-n4p_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint1) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (visible-from objective2 waypoint1) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_TRUE))
)
(:action act-n4p_observe-vis_agent1_objective2_waypoint1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ddk_observe-vis_agent0_objective1_waypoint0 dd) (immediate-dummy-n4p_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint1) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (not (visible-from objective2 waypoint1)) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_FALSE))
)
(:action act-dummy-n4p_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ddk_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint1) (not (dummy-left-n4p_observe-vis_agent1_objective2_waypoint1 dd)) (not (dummy-right-n4p_observe-vis_agent1_objective2_waypoint1 dd)) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-n4p_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action dummy-left-n4p_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ddk_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-n4p_observe-vis_agent1_objective2_waypoint1 dd) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective2 waypoint1 V_FALSE))
:effect 
(and (not (immediate-dummy-n4p_observe-vis_agent1_objective2_waypoint1 dd)) (dummy-left-n4p_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action dummy-right-n4p_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ddk_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-n4p_observe-vis_agent1_objective2_waypoint1 dd) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective2 waypoint1 V_TRUE))
:effect 
(and (not (immediate-dummy-n4p_observe-vis_agent1_objective2_waypoint1 dd)) (dummy-right-n4p_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action act-u0t_observe-vis_agent2_objective2_waypoint2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n4p_observe-vis_agent1_objective2_waypoint1 dd) (immediate-dummy-u0t_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint1)) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint2) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (visible-from objective2 waypoint2) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_TRUE))
)
(:action act-u0t_observe-vis_agent2_objective2_waypoint2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n4p_observe-vis_agent1_objective2_waypoint1 dd) (immediate-dummy-u0t_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint1)) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint2) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (not (visible-from objective2 waypoint2)) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_FALSE))
)
(:action act-dummy-u0t_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n4p_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint2) (not (dummy-left-u0t_observe-vis_agent2_objective2_waypoint2 dd)) (not (dummy-right-u0t_observe-vis_agent2_objective2_waypoint2 dd)) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-u0t_observe-vis_agent2_objective2_waypoint2 dd))
)
(:action dummy-left-u0t_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n4p_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-u0t_observe-vis_agent2_objective2_waypoint2 dd) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (not (immediate-dummy-u0t_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-left-u0t_observe-vis_agent2_objective2_waypoint2 dd))
)
(:action dummy-right-u0t_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n4p_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-u0t_observe-vis_agent2_objective2_waypoint2 dd) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (not (immediate-dummy-u0t_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-right-u0t_observe-vis_agent2_objective2_waypoint2 dd))
)
(:action act-mzy_joint-sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-u0t_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective2 waypoint1)) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-mzy_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd))
)
(:action goal-achieve-mzy_joint-sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-mzy_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd))
:effect 
(and (done-goal dd) (not (pre-mzy_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd)))
)
(:action act-65l_joint-sample-rock_agent1_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-u0t_observe-vis_agent2_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective2 waypoint1)) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-65l_joint-sample-rock_agent1_agent0_a1store_waypoint5 dd))
)
(:action act-462_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-65l_joint-sample-rock_agent1_agent0_a1store_waypoint5 dd) (at agent1 waypoint1))
:effect 
(and (pre-462_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-65l_joint-sample-rock_agent1_agent0_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action goal-achieve-462_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-462_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-462_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action act-66m_joint-sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n4p_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (visible-from objective1 waypoint0) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent1 waypoint5) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-66m_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd))
)
(:action goal-achieve-66m_joint-sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-66m_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd))
:effect 
(and (done-goal dd) (not (pre-66m_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd)))
)
(:action act-4hn_observe-vis_agent0_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f6a_observe-rock_agent2_waypoint4 dd) (immediate-dummy-4hn_observe-vis_agent0_objective1_waypoint0 dd) (at-rock-sample waypoint4) (at-soil-sample waypoint4) (at agent1 waypoint0) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_TRUE) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-4hn_observe-vis_agent0_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f6a_observe-rock_agent2_waypoint4 dd) (immediate-dummy-4hn_observe-vis_agent0_objective1_waypoint0 dd) (at-rock-sample waypoint4) (at-soil-sample waypoint4) (at agent1 waypoint0) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-4hn_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f6a_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at-soil-sample waypoint4) (at agent1 waypoint0) (not (dummy-left-4hn_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-4hn_observe-vis_agent0_objective1_waypoint0 dd)) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-4hn_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-left-4hn_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f6a_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at-soil-sample waypoint4) (at agent1 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-4hn_observe-vis_agent0_objective1_waypoint0 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-4hn_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-4hn_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-right-4hn_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f6a_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at-soil-sample waypoint4) (at agent1 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-4hn_observe-vis_agent0_objective1_waypoint0 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-4hn_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-4hn_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action act-qcd_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4hn_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at-rock-sample waypoint4) (at-soil-sample waypoint4) (at agent1 waypoint4) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-qcd_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd))
)
(:action act-ct6_calibrate_agent1_camera1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-qcd_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent1 waypoint5))
:effect 
(and (pre-ct6_calibrate_agent1_camera1_objective1_waypoint5 dd) (not (pre-qcd_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)))
)
(:action act-1gp_observe-vis_agent1_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (pre-ct6_calibrate_agent1_camera1_objective1_waypoint5 dd) (immediate-dummy-1gp_observe-vis_agent1_objective1_waypoint5 dd) (at agent1 waypoint5) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-1gp_observe-vis_agent1_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (pre-ct6_calibrate_agent1_camera1_objective1_waypoint5 dd) (immediate-dummy-1gp_observe-vis_agent1_objective1_waypoint5 dd) (at agent1 waypoint5) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-1gp_observe-vis_agent1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-ct6_calibrate_agent1_camera1_objective1_waypoint5 dd) (at agent1 waypoint5) (not (dummy-left-1gp_observe-vis_agent1_objective1_waypoint5 dd)) (not (dummy-right-1gp_observe-vis_agent1_objective1_waypoint5 dd)))
:effect 
(and (immediate-dummy-1gp_observe-vis_agent1_objective1_waypoint5 dd))
)
(:action dummy-left-1gp_observe-vis_agent1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent1 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-1gp_observe-vis_agent1_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-1gp_observe-vis_agent1_objective1_waypoint5 dd)) (dummy-left-1gp_observe-vis_agent1_objective1_waypoint5 dd))
)
(:action dummy-right-1gp_observe-vis_agent1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent1 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-1gp_observe-vis_agent1_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-1gp_observe-vis_agent1_objective1_waypoint5 dd)) (dummy-right-1gp_observe-vis_agent1_objective1_waypoint5 dd))
)
(:action act-hhp_calibrate_agent1_camera1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1gp_observe-vis_agent1_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (at agent1 waypoint4) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (pre-hhp_calibrate_agent1_camera1_objective1_waypoint4 dd))
)
(:action act-13p_take-image_agent1_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-hhp_calibrate_agent1_camera1_objective1_waypoint4 dd) (at agent1 waypoint4))
:effect 
(and (pre-13p_take-image_agent1_waypoint4_objective1_camera1_high-res dd) (not (pre-hhp_calibrate_agent1_camera1_objective1_waypoint4 dd)))
)
(:action act-9sq_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-13p_take-image_agent1_waypoint4_objective1_camera1_high-res dd) (at agent1 waypoint1))
:effect 
(and (pre-9sq_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-13p_take-image_agent1_waypoint4_objective1_camera1_high-res dd)) (communicated-rock-data ))
)
(:action act-17b_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9sq_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-17b_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-9sq_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action act-v9o_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-17b_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-v9o_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-17b_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)) (communicated-rock-data ))
)
(:action goal-achieve-v9o_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-v9o_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-v9o_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action act-bnm_take-image_agent1_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1gp_observe-vis_agent1_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (at agent1 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (pre-bnm_take-image_agent1_waypoint5_objective1_camera1_high-res dd))
)
(:action act-le0_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-bnm_take-image_agent1_waypoint5_objective1_camera1_high-res dd) (at agent1 waypoint1))
:effect 
(and (pre-le0_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-bnm_take-image_agent1_waypoint5_objective1_camera1_high-res dd)) (communicated-rock-data ))
)
(:action act-8zm_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-le0_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-8zm_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-le0_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action act-371_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-8zm_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd) (at agent1 waypoint1))
:effect 
(and (pre-371_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-8zm_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0 dd)) (communicated-rock-data ))
)
(:action goal-achieve-371_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-371_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-371_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action act-lsg_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4hn_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at-rock-sample waypoint4) (at-soil-sample waypoint4) (at agent1 waypoint4) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-lsg_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd))
)
(:action act-xvs_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-lsg_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent1 waypoint1))
:effect 
(and (pre-xvs_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd) (not (pre-lsg_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action goal-achieve-xvs_communicate-rock-data_agent1_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-xvs_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-xvs_communicate-rock-data_agent1_general_waypoint1_waypoint0 dd)))
)
(:action Merge-at-soil-sample
:parameters ( ?w - waypoint ?V_PARAM - VALUE_TYPE)
:precondition 
(and (not (Kat-soil-sample ?w ?V_PARAM)) 
	(or (KGivenat-soil-sample ?w tag0 ?V_PARAM) (KNot tag0))
	(or (KGivenat-soil-sample ?w tag1 ?V_PARAM) (KNot tag1)))
:effect 
(and (Kat-soil-sample ?w ?V_PARAM))
)

(:action RefuteT-at-soil-sample
:parameters ( ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenat-soil-sample ?w ?TAG_PARAM V_TRUE) (Kat-soil-sample ?w V_TRUE) (not (at-soil-sample ?w)))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action RefuteF-at-soil-sample
:parameters ( ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenat-soil-sample ?w ?TAG_PARAM V_FALSE) (Kat-soil-sample ?w V_TRUE) (at-soil-sample ?w))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action Merge-at-rock-sample
:parameters ( ?w - waypoint ?V_PARAM - VALUE_TYPE)
:precondition 
(and (not (Kat-rock-sample ?w ?V_PARAM)) 
	(or (KGivenat-rock-sample ?w tag0 ?V_PARAM) (KNot tag0))
	(or (KGivenat-rock-sample ?w tag1 ?V_PARAM) (KNot tag1)))
:effect 
(and (Kat-rock-sample ?w ?V_PARAM))
)

(:action RefuteT-at-rock-sample
:parameters ( ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenat-rock-sample ?w ?TAG_PARAM V_TRUE) (Kat-rock-sample ?w V_TRUE) (not (at-rock-sample ?w)))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action RefuteF-at-rock-sample
:parameters ( ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenat-rock-sample ?w ?TAG_PARAM V_FALSE) (Kat-rock-sample ?w V_TRUE) (at-rock-sample ?w))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action Merge-visible-from
:parameters ( ?o - objective ?w - waypoint ?V_PARAM - VALUE_TYPE)
:precondition 
(and (not (Kvisible-from ?o ?w ?V_PARAM)) 
	(or (KGivenvisible-from ?o ?w tag0 ?V_PARAM) (KNot tag0))
	(or (KGivenvisible-from ?o ?w tag1 ?V_PARAM) (KNot tag1)))
:effect 
(and (Kvisible-from ?o ?w ?V_PARAM))
)

(:action RefuteT-visible-from
:parameters ( ?o - objective ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenvisible-from ?o ?w ?TAG_PARAM V_TRUE) (Kvisible-from ?o ?w V_TRUE) (not (visible-from ?o ?w)))
:effect 
(and (KNot ?TAG_PARAM))
)

(:action RefuteF-visible-from
:parameters ( ?o - objective ?w - waypoint ?TAG_PARAM - TAG_TYPE)
:precondition 
(and (not (KNot ?TAG_PARAM)) (KGivenvisible-from ?o ?w ?TAG_PARAM V_FALSE) (Kvisible-from ?o ?w V_TRUE) (visible-from ?o ?w))
:effect 
(and (KNot ?TAG_PARAM))
)

)
