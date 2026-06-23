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
(init-udh_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-udh_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(dummy-left-udh_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-43v_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-43v_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-pnd_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-pnd_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-855_observe-soil_agent2_waypoint5 ?dd - dummy)
(dummy-left-855_observe-soil_agent2_waypoint5 ?dd - dummy)
(immediate-dummy-hf3_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-hf3_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-bg9_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-left-bg9_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-s86_calibrate_agent0_camera0_objective1_waypoint5 ?dd - dummy)
(pre-wur_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-m5c_joint-sample-rock_agent2_agent0_a2store_waypoint5 ?dd - dummy)
(pre-r2k_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-bg9_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-ydp_joint-sample-rock_agent2_agent0_a2store_waypoint5 ?dd - dummy)
(dummy-right-hf3_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-ztk_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-left-ztk_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-sx4_calibrate_agent0_camera0_objective1_waypoint5 ?dd - dummy)
(pre-7j8_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-5nw_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-5r8_drop_agent0_a0store ?dd - dummy)
(pre-zh7_sample-soil_agent0_a0store_waypoint4 ?dd - dummy)
(pre-t2f_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-c8t_communicate-soil-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-0r7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-ztk_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-right-855_observe-soil_agent2_waypoint5 ?dd - dummy)
(pre-s7v_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
(immediate-dummy-2j2_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-2j2_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-right-2j2_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-prv_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-stt_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-pnd_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-evy_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-evy_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-71h_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-left-71h_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-4ro_calibrate_agent0_camera0_objective1_waypoint5 ?dd - dummy)
(pre-e1u_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-mfk_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-jxu_joint-sample-rock_agent2_agent0_a2store_waypoint5 ?dd - dummy)
(pre-12f_communicate-soil-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-7pm_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-71h_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-ncd_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-4p9_joint-sample-rock_agent2_agent0_a2store_waypoint5 ?dd - dummy)
(pre-nhy_communicate-soil-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-evy_observe-soil_agent2_waypoint4 ?dd - dummy)
(pre-ooh_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
(immediate-dummy-rfh_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-rfh_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-right-rfh_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-l5a_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-tog_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
(pre-aqd_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-rf4_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-a11_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-43v_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-nhf_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-nhf_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-muy_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(dummy-left-muy_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-eab_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-eab_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-o1u_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-o1u_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-681_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
(pre-c2r_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-np6_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-o1u_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-eob_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-fmw_calibrate_agent0_camera0_objective1_waypoint5 ?dd - dummy)
(pre-9mj_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-fmp_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-7ah_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-eab_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-cfv_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
(immediate-dummy-sh4_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-sh4_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-right-sh4_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-9ex_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-wes_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-muy_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-mon_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-left-mon_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-mxl_calibrate_agent0_camera0_objective1_waypoint5 ?dd - dummy)
(pre-4i3_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-dgh_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-cex_joint-sample-rock_agent2_agent0_a2store_waypoint4 ?dd - dummy)
(pre-1jo_communicate-soil-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-e97_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-mon_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-uaw_joint-sample-rock_agent2_agent0_a2store_waypoint4 ?dd - dummy)
(dummy-right-nhf_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-64h_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-64h_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-cfk_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(immediate-dummy-oti_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-oti_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-ex7_calibrate_agent0_camera0_objective1_waypoint5 ?dd - dummy)
(immediate-dummy-62y_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-left-62y_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-ed2_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-62y_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-n88_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-nqd_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-hh4_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-oti_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-ire_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-u2o_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-left-u2o_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-0q3_calibrate_agent0_camera0_objective1_waypoint5 ?dd - dummy)
(pre-e1c_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-tzx_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-98r_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-u2o_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-right-64h_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-z5q_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-z5q_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-0a6_calibrate_agent0_camera0_objective1_waypoint0 ?dd - dummy)
(pre-egc_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-xso_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-z5q_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-e58_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-pgb_calibrate_agent0_camera0_objective1_waypoint5 ?dd - dummy)
(pre-dt5_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-tfl_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-59l_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-udh_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-z4i_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-z4i_observe-rock_agent2_waypoint4 ?dd - dummy)
(pre-lnr_calibrate_agent0_camera0_objective1_waypoint4 ?dd - dummy)
(pre-wrl_take-image_agent0_waypoint4_objective1_camera0_high-res ?dd - dummy)
(pre-nrr_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-iqv_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-lc8_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-z4i_observe-rock_agent2_waypoint4 ?dd - dummy)
(pre-p96_calibrate_agent0_camera0_objective1_waypoint4 ?dd - dummy)
(pre-eds_take-image_agent0_waypoint4_objective1_camera0_high-res ?dd - dummy)
(pre-v6p_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-wf0_communicate-rock-data_agent0_general_waypoint1_waypoint0 ?dd - dummy)
(pre-f5a_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 ?dd - dummy)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action act-dummy-udh_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-udh_observe-vis_agent2_objective1_waypoint4 dd) (not (dummy-left-udh_observe-vis_agent2_objective1_waypoint4 dd)) (not (dummy-right-udh_observe-vis_agent2_objective1_waypoint4 dd)))
:effect (immediate-dummy-udh_observe-vis_agent2_objective1_waypoint4 dd)
)

(:action dummy-left-udh_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-udh_observe-vis_agent2_objective1_waypoint4 dd) (at agent0 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-udh_observe-vis_agent2_objective1_waypoint4 dd))
:effect 
(and (not (init-udh_observe-vis_agent2_objective1_waypoint4 dd)) (not (immediate-dummy-udh_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-left-udh_observe-vis_agent2_objective1_waypoint4 dd))
)

(:action dummy-right-udh_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-udh_observe-vis_agent2_objective1_waypoint4 dd) (at agent0 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-udh_observe-vis_agent2_objective1_waypoint4 dd))
:effect 
(and (not (init-udh_observe-vis_agent2_objective1_waypoint4 dd)) (not (immediate-dummy-udh_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-right-udh_observe-vis_agent2_objective1_waypoint4 dd))
)

(:action act-dummy-43v_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-udh_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4) (not (dummy-left-43v_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-43v_observe-rock_agent2_waypoint4 dd)))
:effect (immediate-dummy-43v_observe-rock_agent2_waypoint4 dd)
)

(:action dummy-left-43v_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-udh_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-43v_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-43v_observe-rock_agent2_waypoint4 dd)) (dummy-left-43v_observe-rock_agent2_waypoint4 dd))
)

(:action dummy-right-43v_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-udh_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-43v_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-43v_observe-rock_agent2_waypoint4 dd)) (dummy-right-43v_observe-rock_agent2_waypoint4 dd))
)

(:action act-dummy-pnd_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-43v_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint2) (not (dummy-left-pnd_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-pnd_observe-vis_agent1_objective2_waypoint2 dd)))
:effect (immediate-dummy-pnd_observe-vis_agent1_objective2_waypoint2 dd)
)

(:action dummy-left-pnd_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-43v_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-pnd_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-pnd_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-pnd_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action dummy-right-pnd_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-43v_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-pnd_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-pnd_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-pnd_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action act-dummy-855_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pnd_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (not (dummy-left-855_observe-soil_agent2_waypoint5 dd)) (not (dummy-right-855_observe-soil_agent2_waypoint5 dd)))
:effect (immediate-dummy-855_observe-soil_agent2_waypoint5 dd)
)

(:action dummy-left-855_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pnd_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-855_observe-soil_agent2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-855_observe-soil_agent2_waypoint5 dd)) (dummy-left-855_observe-soil_agent2_waypoint5 dd))
)

(:action dummy-right-855_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-pnd_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-855_observe-soil_agent2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-855_observe-soil_agent2_waypoint5 dd)) (dummy-right-855_observe-soil_agent2_waypoint5 dd))
)

(:action act-dummy-hf3_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-855_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (not (dummy-left-hf3_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-hf3_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-hf3_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-hf3_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-855_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-hf3_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-hf3_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-hf3_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-hf3_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-855_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-hf3_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-hf3_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-hf3_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-dummy-bg9_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hf3_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (not (dummy-left-bg9_observe-vis_agent1_objective1_waypoint0 dd)) (not (dummy-right-bg9_observe-vis_agent1_objective1_waypoint0 dd)))
:effect (immediate-dummy-bg9_observe-vis_agent1_objective1_waypoint0 dd)
)

(:action dummy-left-bg9_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hf3_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-bg9_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-bg9_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-left-bg9_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action dummy-right-bg9_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hf3_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-bg9_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-bg9_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-right-bg9_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action act-s86_calibrate_agent0_camera0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bg9_observe-vis_agent1_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (not (visible-from objective2 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5))
:effect (pre-s86_calibrate_agent0_camera0_objective1_waypoint5 dd)
)

(:action act-wur_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-s86_calibrate_agent0_camera0_objective1_waypoint5 dd) (at agent0 waypoint5))
:effect 
(and (pre-wur_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (not (pre-s86_calibrate_agent0_camera0_objective1_waypoint5 dd)))
)

(:action act-m5c_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-wur_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint5))
:effect 
(and (pre-m5c_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd) (not (pre-wur_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)

(:action act-r2k_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-m5c_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd) (at agent0 waypoint1))
:effect 
(and (pre-r2k_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-m5c_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)))
)

(:action goal-achieve-r2k_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-r2k_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-r2k_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

(:action act-ydp_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bg9_observe-vis_agent1_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (not (visible-from objective2 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5))
:effect (pre-ydp_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)
)

(:action goal-achieve-ydp_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition (pre-ydp_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)
:effect 
(and (done-goal dd) (not (pre-ydp_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)))
)

(:action act-dummy-ztk_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hf3_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (not (dummy-left-ztk_observe-vis_agent1_objective1_waypoint0 dd)) (not (dummy-right-ztk_observe-vis_agent1_objective1_waypoint0 dd)))
:effect (immediate-dummy-ztk_observe-vis_agent1_objective1_waypoint0 dd)
)

(:action dummy-left-ztk_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hf3_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-ztk_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-ztk_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-left-ztk_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action dummy-right-ztk_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hf3_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-ztk_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-ztk_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-right-ztk_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action act-sx4_calibrate_agent0_camera0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ztk_observe-vis_agent1_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (visible-from objective2 waypoint5) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5))
:effect (pre-sx4_calibrate_agent0_camera0_objective1_waypoint5 dd)
)

(:action act-7j8_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-sx4_calibrate_agent0_camera0_objective1_waypoint5 dd) (at agent0 waypoint5))
:effect 
(and (pre-7j8_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (not (pre-sx4_calibrate_agent0_camera0_objective1_waypoint5 dd)))
)

(:action act-5nw_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-7j8_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint5))
:effect 
(and (pre-5nw_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-7j8_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)

(:action act-5r8_drop_agent0_a0store
:parameters ( ?a - agent)
:precondition (pre-5nw_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)
:effect 
(and (pre-5r8_drop_agent0_a0store dd) (not (pre-5nw_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)

(:action act-zh7_sample-soil_agent0_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-5r8_drop_agent0_a0store dd) (at agent0 waypoint4))
:effect 
(and (pre-zh7_sample-soil_agent0_a0store_waypoint4 dd) (not (pre-5r8_drop_agent0_a0store dd)))
)

(:action act-t2f_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-zh7_sample-soil_agent0_a0store_waypoint4 dd) (at agent0 waypoint1))
:effect 
(and (pre-t2f_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-zh7_sample-soil_agent0_a0store_waypoint4 dd)) (communicated-rock-data ))
)

(:action act-c8t_communicate-soil-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-t2f_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-c8t_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-t2f_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-0r7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-c8t_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-0r7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-c8t_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-0r7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-0r7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-0r7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-right-ztk_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ztk_observe-vis_agent1_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (visible-from objective2 waypoint5) (not (at-soil-sample waypoint5)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)))
:effect 
(and (done-goal dd) (not (dummy-right-ztk_observe-vis_agent1_objective1_waypoint0 dd)))
)

(:action act-s7v_calibrate_agent0_camera0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-855_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0))
:effect (pre-s7v_calibrate_agent0_camera0_objective1_waypoint0 dd)
)

(:action act-dummy-2j2_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-s7v_calibrate_agent0_camera0_objective1_waypoint0 dd) (at agent0 waypoint0) (not (dummy-left-2j2_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-2j2_observe-vis_agent0_objective1_waypoint0 dd)))
:effect (immediate-dummy-2j2_observe-vis_agent0_objective1_waypoint0 dd)
)

(:action dummy-left-2j2_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-2j2_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-2j2_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-2j2_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action dummy-right-2j2_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-2j2_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-2j2_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-2j2_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action goal-achieve-left-2j2_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2j2_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)))
:effect 
(and (done-goal dd) (not (dummy-left-2j2_observe-vis_agent0_objective1_waypoint0 dd)))
)

(:action act-prv_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2j2_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent0 waypoint0))
:effect (pre-prv_take-image_agent0_waypoint0_objective1_camera0_high-res dd)
)

(:action act-stt_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-prv_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3))
:effect 
(and (pre-stt_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd) (not (pre-prv_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)

(:action goal-achieve-stt_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-stt_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-stt_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)

(:action act-dummy-evy_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pnd_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4) (not (dummy-left-evy_observe-soil_agent2_waypoint4 dd)) (not (dummy-right-evy_observe-soil_agent2_waypoint4 dd)))
:effect (immediate-dummy-evy_observe-soil_agent2_waypoint4 dd)
)

(:action dummy-left-evy_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pnd_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-evy_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-evy_observe-soil_agent2_waypoint4 dd)) (dummy-left-evy_observe-soil_agent2_waypoint4 dd))
)

(:action dummy-right-evy_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-pnd_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-evy_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-evy_observe-soil_agent2_waypoint4 dd)) (dummy-right-evy_observe-soil_agent2_waypoint4 dd))
)

(:action act-dummy-71h_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-evy_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (not (dummy-left-71h_observe-vis_agent1_objective1_waypoint0 dd)) (not (dummy-right-71h_observe-vis_agent1_objective1_waypoint0 dd)))
:effect (immediate-dummy-71h_observe-vis_agent1_objective1_waypoint0 dd)
)

(:action dummy-left-71h_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-evy_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-71h_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-71h_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-left-71h_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action dummy-right-71h_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-evy_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-71h_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-71h_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-right-71h_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action act-4ro_calibrate_agent0_camera0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-71h_observe-vis_agent1_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (not (at-soil-sample waypoint4)) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5))
:effect (pre-4ro_calibrate_agent0_camera0_objective1_waypoint5 dd)
)

(:action act-e1u_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-4ro_calibrate_agent0_camera0_objective1_waypoint5 dd) (at agent0 waypoint5))
:effect 
(and (pre-e1u_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (not (pre-4ro_calibrate_agent0_camera0_objective1_waypoint5 dd)))
)

(:action act-mfk_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-e1u_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint5))
:effect 
(and (pre-mfk_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-e1u_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)

(:action act-jxu_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-mfk_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint5))
:effect 
(and (pre-jxu_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd) (not (pre-mfk_sample-soil_agent0_a0store_waypoint5 dd)))
)

(:action act-12f_communicate-soil-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-jxu_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd) (at agent0 waypoint1))
:effect 
(and (pre-12f_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-jxu_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-7pm_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-12f_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-7pm_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-12f_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-7pm_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-7pm_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-7pm_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

(:action act-ncd_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-71h_observe-vis_agent1_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (not (at-soil-sample waypoint4)) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5))
:effect (pre-ncd_sample-soil_agent0_a0store_waypoint5 dd)
)

(:action act-4p9_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-ncd_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint5))
:effect 
(and (pre-4p9_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd) (not (pre-ncd_sample-soil_agent0_a0store_waypoint5 dd)))
)

(:action act-nhy_communicate-soil-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-4p9_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd) (at agent0 waypoint1))
:effect 
(and (pre-nhy_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-4p9_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)) (communicated-soil-data ))
)

(:action goal-achieve-nhy_communicate-soil-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-nhy_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-nhy_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action act-ooh_calibrate_agent0_camera0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-evy_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0))
:effect (pre-ooh_calibrate_agent0_camera0_objective1_waypoint0 dd)
)

(:action act-dummy-rfh_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ooh_calibrate_agent0_camera0_objective1_waypoint0 dd) (at agent0 waypoint0) (not (dummy-left-rfh_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-rfh_observe-vis_agent0_objective1_waypoint0 dd)))
:effect (immediate-dummy-rfh_observe-vis_agent0_objective1_waypoint0 dd)
)

(:action dummy-left-rfh_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-rfh_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-rfh_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-rfh_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action dummy-right-rfh_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-rfh_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-rfh_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-rfh_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action goal-achieve-left-rfh_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rfh_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)))
:effect 
(and (done-goal dd) (not (dummy-left-rfh_observe-vis_agent0_objective1_waypoint0 dd)))
)

(:action act-l5a_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-rfh_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent0 waypoint0))
:effect (pre-l5a_take-image_agent0_waypoint0_objective1_camera0_high-res dd)
)

(:action act-tog_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-l5a_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3))
:effect 
(and (pre-tog_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd) (not (pre-l5a_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)

(:action act-aqd_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-tog_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd) (at agent0 waypoint5))
:effect 
(and (pre-aqd_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-tog_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)

(:action act-rf4_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-aqd_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent0 waypoint1))
:effect 
(and (pre-rf4_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-aqd_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-a11_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-rf4_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-a11_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-rf4_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-a11_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-a11_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-a11_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-nhf_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-43v_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4) (not (dummy-left-nhf_observe-soil_agent2_waypoint4 dd)) (not (dummy-right-nhf_observe-soil_agent2_waypoint4 dd)))
:effect (immediate-dummy-nhf_observe-soil_agent2_waypoint4 dd)
)

(:action dummy-left-nhf_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-43v_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-nhf_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-nhf_observe-soil_agent2_waypoint4 dd)) (dummy-left-nhf_observe-soil_agent2_waypoint4 dd))
)

(:action dummy-right-nhf_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-43v_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-nhf_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-nhf_observe-soil_agent2_waypoint4 dd)) (dummy-right-nhf_observe-soil_agent2_waypoint4 dd))
)

(:action act-dummy-muy_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nhf_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint1) (not (dummy-left-muy_observe-vis_agent0_objective2_waypoint1 dd)) (not (dummy-right-muy_observe-vis_agent0_objective2_waypoint1 dd)))
:effect (immediate-dummy-muy_observe-vis_agent0_objective2_waypoint1 dd)
)

(:action dummy-left-muy_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nhf_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-muy_observe-vis_agent0_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-muy_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-left-muy_observe-vis_agent0_objective2_waypoint1 dd))
)

(:action dummy-right-muy_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nhf_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-muy_observe-vis_agent0_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-muy_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-right-muy_observe-vis_agent0_objective2_waypoint1 dd))
)

(:action act-dummy-eab_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-muy_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (not (dummy-left-eab_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-eab_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-eab_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-eab_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-muy_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-eab_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-eab_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-eab_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-eab_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-muy_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-eab_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-eab_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-eab_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-dummy-o1u_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-eab_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint1)) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (not (dummy-left-o1u_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-o1u_observe-vis_agent2_objective1_waypoint5 dd)))
:effect (immediate-dummy-o1u_observe-vis_agent2_objective1_waypoint5 dd)
)

(:action dummy-left-o1u_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-eab_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint1)) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-o1u_observe-vis_agent2_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-o1u_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-o1u_observe-vis_agent2_objective1_waypoint5 dd))
)

(:action dummy-right-o1u_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-eab_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint1)) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-o1u_observe-vis_agent2_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-o1u_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-o1u_observe-vis_agent2_objective1_waypoint5 dd))
)

(:action act-681_calibrate_agent0_camera0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-o1u_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint1)) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0))
:effect (pre-681_calibrate_agent0_camera0_objective1_waypoint0 dd)
)

(:action act-c2r_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-681_calibrate_agent0_camera0_objective1_waypoint0 dd) (at agent0 waypoint0))
:effect 
(and (pre-c2r_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (not (pre-681_calibrate_agent0_camera0_objective1_waypoint0 dd)))
)

(:action act-np6_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-c2r_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3))
:effect 
(and (pre-np6_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd) (not (pre-c2r_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)

(:action goal-achieve-np6_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-np6_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-np6_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)

(:action act-eob_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-o1u_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint1)) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4))
:effect (pre-eob_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)
)

(:action act-fmw_calibrate_agent0_camera0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-eob_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent0 waypoint5))
:effect 
(and (pre-fmw_calibrate_agent0_camera0_objective1_waypoint5 dd) (not (pre-eob_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)

(:action act-9mj_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-fmw_calibrate_agent0_camera0_objective1_waypoint5 dd) (at agent0 waypoint5))
:effect 
(and (pre-9mj_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (not (pre-fmw_calibrate_agent0_camera0_objective1_waypoint5 dd)))
)

(:action act-fmp_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9mj_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint1))
:effect 
(and (pre-fmp_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-9mj_take-image_agent0_waypoint5_objective1_camera0_high-res dd)) (communicated-rock-data ))
)

(:action act-7ah_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-fmp_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-7ah_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-fmp_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-7ah_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-7ah_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-7ah_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

(:action act-cfv_calibrate_agent0_camera0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-eab_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (visible-from objective2 waypoint1)) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0))
:effect (pre-cfv_calibrate_agent0_camera0_objective1_waypoint0 dd)
)

(:action act-dummy-sh4_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-cfv_calibrate_agent0_camera0_objective1_waypoint0 dd) (at agent0 waypoint0) (not (dummy-left-sh4_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-sh4_observe-vis_agent0_objective1_waypoint0 dd)))
:effect (immediate-dummy-sh4_observe-vis_agent0_objective1_waypoint0 dd)
)

(:action dummy-left-sh4_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-sh4_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-sh4_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-sh4_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action dummy-right-sh4_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-sh4_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-sh4_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-sh4_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action goal-achieve-left-sh4_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sh4_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)))
:effect 
(and (done-goal dd) (not (dummy-left-sh4_observe-vis_agent0_objective1_waypoint0 dd)))
)

(:action act-9ex_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sh4_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent0 waypoint0))
:effect (pre-9ex_take-image_agent0_waypoint0_objective1_camera0_high-res dd)
)

(:action act-wes_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9ex_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3))
:effect 
(and (pre-wes_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd) (not (pre-9ex_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)

(:action goal-achieve-wes_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-wes_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-wes_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)

(:action act-dummy-mon_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-muy_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (not (dummy-left-mon_observe-vis_agent1_objective1_waypoint0 dd)) (not (dummy-right-mon_observe-vis_agent1_objective1_waypoint0 dd)))
:effect (immediate-dummy-mon_observe-vis_agent1_objective1_waypoint0 dd)
)

(:action dummy-left-mon_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-muy_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-mon_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-mon_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-left-mon_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action dummy-right-mon_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-muy_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-mon_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-mon_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-right-mon_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action act-mxl_calibrate_agent0_camera0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mon_observe-vis_agent1_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (visible-from objective2 waypoint1) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5))
:effect (pre-mxl_calibrate_agent0_camera0_objective1_waypoint5 dd)
)

(:action act-4i3_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-mxl_calibrate_agent0_camera0_objective1_waypoint5 dd) (at agent0 waypoint5))
:effect 
(and (pre-4i3_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (not (pre-mxl_calibrate_agent0_camera0_objective1_waypoint5 dd)))
)

(:action act-dgh_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-4i3_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint5))
:effect 
(and (pre-dgh_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-4i3_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)

(:action act-cex_joint-sample-rock_agent2_agent0_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-dgh_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint4))
:effect 
(and (pre-cex_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd) (not (pre-dgh_sample-soil_agent0_a0store_waypoint5 dd)))
)

(:action act-1jo_communicate-soil-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-cex_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd) (at agent0 waypoint1))
:effect 
(and (pre-1jo_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-cex_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-e97_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-1jo_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-e97_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-1jo_communicate-soil-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-e97_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-e97_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-e97_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

(:action act-uaw_joint-sample-rock_agent2_agent0_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mon_observe-vis_agent1_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (visible-from objective2 waypoint1) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4))
:effect (pre-uaw_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd)
)

(:action goal-achieve-uaw_joint-sample-rock_agent2_agent0_a2store_waypoint4
:parameters ( ?a - agent)
:precondition (pre-uaw_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd)
:effect 
(and (done-goal dd) (not (pre-uaw_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd)))
)

(:action act-dummy-64h_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nhf_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint2) (not (dummy-left-64h_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-64h_observe-vis_agent1_objective2_waypoint2 dd)))
:effect (immediate-dummy-64h_observe-vis_agent1_objective2_waypoint2 dd)
)

(:action dummy-left-64h_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nhf_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-64h_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-64h_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-64h_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action dummy-right-64h_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nhf_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-64h_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-64h_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-64h_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action act-cfk_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-64h_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4))
:effect (pre-cfk_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)
)

(:action act-dummy-oti_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-cfk_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent0 waypoint5) (not (dummy-left-oti_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-oti_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-oti_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-oti_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-oti_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-oti_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-oti_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-oti_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-oti_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-oti_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-oti_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-ex7_calibrate_agent0_camera0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oti_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent0 waypoint5))
:effect (pre-ex7_calibrate_agent0_camera0_objective1_waypoint5 dd)
)

(:action act-dummy-62y_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-ex7_calibrate_agent0_camera0_objective1_waypoint5 dd) (at agent0 waypoint5) (not (dummy-left-62y_observe-vis_agent0_objective1_waypoint5 dd)) (not (dummy-right-62y_observe-vis_agent0_objective1_waypoint5 dd)))
:effect (immediate-dummy-62y_observe-vis_agent0_objective1_waypoint5 dd)
)

(:action dummy-left-62y_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-62y_observe-vis_agent0_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-62y_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-left-62y_observe-vis_agent0_objective1_waypoint5 dd))
)

(:action dummy-right-62y_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-62y_observe-vis_agent0_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-62y_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-right-62y_observe-vis_agent0_objective1_waypoint5 dd))
)

(:action act-ed2_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-62y_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (at agent0 waypoint1))
:effect 
(and (pre-ed2_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (communicated-rock-data ))
)

(:action goal-achieve-ed2_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-ed2_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-ed2_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action act-n88_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-62y_observe-vis_agent0_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (at agent0 waypoint5))
:effect (pre-n88_take-image_agent0_waypoint5_objective1_camera0_high-res dd)
)

(:action act-nqd_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-n88_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint1))
:effect 
(and (pre-nqd_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-n88_take-image_agent0_waypoint5_objective1_camera0_high-res dd)) (communicated-rock-data ))
)

(:action act-hh4_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-nqd_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-hh4_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-nqd_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-hh4_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-hh4_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-hh4_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

(:action act-ire_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oti_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (at agent0 waypoint1))
:effect 
(and (pre-ire_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (communicated-rock-data ))
)

(:action act-dummy-u2o_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ire_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint0) (not (dummy-left-u2o_observe-vis_agent1_objective1_waypoint0 dd)) (not (dummy-right-u2o_observe-vis_agent1_objective1_waypoint0 dd)))
:effect (immediate-dummy-u2o_observe-vis_agent1_objective1_waypoint0 dd)
)

(:action dummy-left-u2o_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-u2o_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-u2o_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-left-u2o_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action dummy-right-u2o_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-u2o_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-u2o_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-right-u2o_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action act-0q3_calibrate_agent0_camera0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-u2o_observe-vis_agent1_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent0 waypoint5))
:effect (pre-0q3_calibrate_agent0_camera0_objective1_waypoint5 dd)
)

(:action act-e1c_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-0q3_calibrate_agent0_camera0_objective1_waypoint5 dd) (at agent0 waypoint5))
:effect 
(and (pre-e1c_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (not (pre-0q3_calibrate_agent0_camera0_objective1_waypoint5 dd)))
)

(:action act-tzx_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-e1c_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint1))
:effect 
(and (pre-tzx_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-e1c_take-image_agent0_waypoint5_objective1_camera0_high-res dd)) (communicated-rock-data ))
)

(:action act-98r_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-tzx_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-98r_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-tzx_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-98r_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-98r_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-98r_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-right-u2o_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-u2o_observe-vis_agent1_objective1_waypoint0 dd) (visible-from objective1 waypoint0))
:effect 
(and (done-goal dd) (not (dummy-right-u2o_observe-vis_agent1_objective1_waypoint0 dd)))
)

(:action act-dummy-z5q_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-64h_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (not (dummy-left-z5q_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-z5q_observe-vis_agent2_objective1_waypoint5 dd)))
:effect (immediate-dummy-z5q_observe-vis_agent2_objective1_waypoint5 dd)
)

(:action dummy-left-z5q_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-64h_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-z5q_observe-vis_agent2_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-z5q_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-z5q_observe-vis_agent2_objective1_waypoint5 dd))
)

(:action dummy-right-z5q_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-64h_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-z5q_observe-vis_agent2_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-z5q_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-z5q_observe-vis_agent2_objective1_waypoint5 dd))
)

(:action act-0a6_calibrate_agent0_camera0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-z5q_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (visible-from objective2 waypoint2) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint0))
:effect (pre-0a6_calibrate_agent0_camera0_objective1_waypoint0 dd)
)

(:action act-egc_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-0a6_calibrate_agent0_camera0_objective1_waypoint0 dd) (at agent0 waypoint0))
:effect 
(and (pre-egc_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (not (pre-0a6_calibrate_agent0_camera0_objective1_waypoint0 dd)))
)

(:action act-xso_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-egc_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3))
:effect 
(and (pre-xso_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd) (not (pre-egc_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)

(:action goal-achieve-xso_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-xso_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-xso_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0 dd)))
)

(:action act-e58_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-z5q_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (visible-from objective2 waypoint2) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent0 waypoint4))
:effect (pre-e58_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)
)

(:action act-pgb_calibrate_agent0_camera0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-e58_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent0 waypoint5))
:effect 
(and (pre-pgb_calibrate_agent0_camera0_objective1_waypoint5 dd) (not (pre-e58_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)

(:action act-dt5_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-pgb_calibrate_agent0_camera0_objective1_waypoint5 dd) (at agent0 waypoint5))
:effect 
(and (pre-dt5_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (not (pre-pgb_calibrate_agent0_camera0_objective1_waypoint5 dd)))
)

(:action act-tfl_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-dt5_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint1))
:effect 
(and (pre-tfl_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-dt5_take-image_agent0_waypoint5_objective1_camera0_high-res dd)) (communicated-rock-data ))
)

(:action act-59l_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-tfl_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-59l_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-tfl_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-59l_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-59l_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-59l_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-z4i_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-udh_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at agent0 waypoint4) (not (dummy-left-z4i_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-z4i_observe-rock_agent2_waypoint4 dd)))
:effect (immediate-dummy-z4i_observe-rock_agent2_waypoint4 dd)
)

(:action dummy-left-z4i_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-udh_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at agent0 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-z4i_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-z4i_observe-rock_agent2_waypoint4 dd)) (dummy-left-z4i_observe-rock_agent2_waypoint4 dd))
)

(:action dummy-right-z4i_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-udh_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at agent0 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-z4i_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-z4i_observe-rock_agent2_waypoint4 dd)) (dummy-right-z4i_observe-rock_agent2_waypoint4 dd))
)

(:action act-lnr_calibrate_agent0_camera0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-z4i_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent0 waypoint4))
:effect (pre-lnr_calibrate_agent0_camera0_objective1_waypoint4 dd)
)

(:action act-wrl_take-image_agent0_waypoint4_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-lnr_calibrate_agent0_camera0_objective1_waypoint4 dd) (at agent0 waypoint4))
:effect 
(and (pre-wrl_take-image_agent0_waypoint4_objective1_camera0_high-res dd) (not (pre-lnr_calibrate_agent0_camera0_objective1_waypoint4 dd)))
)

(:action act-nrr_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-wrl_take-image_agent0_waypoint4_objective1_camera0_high-res dd) (at agent0 waypoint5))
:effect 
(and (pre-nrr_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-wrl_take-image_agent0_waypoint4_objective1_camera0_high-res dd)))
)

(:action act-iqv_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-nrr_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent0 waypoint1))
:effect 
(and (pre-iqv_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-nrr_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-lc8_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-iqv_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-lc8_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-iqv_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-lc8_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-lc8_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-lc8_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

(:action act-p96_calibrate_agent0_camera0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-z4i_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent0 waypoint4))
:effect (pre-p96_calibrate_agent0_camera0_objective1_waypoint4 dd)
)

(:action act-eds_take-image_agent0_waypoint4_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-p96_calibrate_agent0_camera0_objective1_waypoint4 dd) (at agent0 waypoint4))
:effect 
(and (pre-eds_take-image_agent0_waypoint4_objective1_camera0_high-res dd) (not (pre-p96_calibrate_agent0_camera0_objective1_waypoint4 dd)))
)

(:action act-v6p_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-eds_take-image_agent0_waypoint4_objective1_camera0_high-res dd) (at agent0 waypoint4))
:effect 
(and (pre-v6p_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-eds_take-image_agent0_waypoint4_objective1_camera0_high-res dd)))
)

(:action act-wf0_communicate-rock-data_agent0_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-v6p_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent0 waypoint1))
:effect 
(and (pre-wf0_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (not (pre-v6p_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-rock-data ))
)

(:action act-f5a_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-wf0_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd) (at agent0 waypoint1))
:effect 
(and (pre-f5a_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd) (not (pre-wf0_communicate-rock-data_agent0_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-f5a_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-f5a_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-f5a_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0 dd)))
)

)
