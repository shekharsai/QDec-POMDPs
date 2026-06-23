(define (domain Krover-agent2)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy TAG_TYPE VALUE_TYPE)
(:constants
 agent2 - agent
 general - lander
 colour - mode
 high-res - mode
 low-res - mode
 agent2 - agent
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
 tag0 - TAG_TYPE ; (visible-from objective1 waypoint0)
 tag1 - TAG_TYPE ; (visible-from objective1 waypoint4)
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
(init-iyy_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-iyy_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-iyy_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-5dd_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(dummy-left-5dd_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-m7n_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-m7n_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-5dj_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-5dj_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-l4c_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(dummy-left-l4c_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(pre-zbf_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-tqc_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(immediate-dummy-yir_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-left-yir_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-c75_joint-sample-rock_agent2_agent0_a2store_waypoint5 ?dd - dummy)
(pre-xxa_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-kel_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-yir_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-snk_joint-sample-rock_agent2_agent0_a2store_waypoint5 ?dd - dummy)
(pre-0fk_drop_agent2_a2store ?dd - dummy)
(pre-i8g_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-ndw_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-drd_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-zwr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-l4c_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(pre-adf_joint-sample-rock_agent2_agent0_a2store_waypoint5 ?dd - dummy)
(pre-qtq_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-g3f_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-iyk_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-nu9_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-5dj_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-72r_joint-sample-rock_agent2_agent0_a2store_waypoint5 ?dd - dummy)
(pre-195_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-5ls_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-5le_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-59q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-m7n_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-18b_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-18b_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-ska_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-gc3_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-gc3_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-4tm_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-4tm_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-eaj_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-6at_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-xfy_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-w7w_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-we2_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-xui_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-4tm_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-lk3_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-zqz_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-i4k_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-800_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-x7p_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-s1k_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-i9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-gc3_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-vi3_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-1fb_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-o6f_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-itr_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-vsj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-tot_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-tot_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-txf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-tot_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-right-18b_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-iyo_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-iyo_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-889_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-hdn_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-rov_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-60c_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-98l_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-y47_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-iyo_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-e0h_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-jco_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-f9m_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-1zl_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-fmt_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-p3g_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-ch3_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-10e_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-5y2_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-htq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-5dd_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-i53_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-i53_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-ie8_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-ie8_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-gy6_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-ubd_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-ubd_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-b0z_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-j1n_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-suf_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-evw_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-dm9_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-dnn_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-ubd_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-w8q_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-5s3_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-s6i_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-vie_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-jrg_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-ie8_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-009_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-ow7_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-oy8_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-ldj_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-gf1_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-8dl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-i53_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-s8c_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(dummy-left-s8c_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-wfi_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-wfi_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-604_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-f6m_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-a4e_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-qnw_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-ay1_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-qhj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-wfi_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-ruo_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-tm1_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-rxe_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-31s_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-ddv_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-1s5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-s8c_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(pre-cj2_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-wki_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-fz1_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-f8p_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-ub0_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-3fv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-iyy_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-3mo_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-3mo_observe-rock_agent2_waypoint4 ?dd - dummy)
(pre-cyj_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(immediate-dummy-ihd_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-ihd_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(immediate-dummy-vnj_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-vnj_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-aif_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(dummy-left-aif_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(pre-5o8_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-r5j_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-gox_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-9ly_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-ziz_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-aif_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-1k8_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(dummy-left-1k8_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(pre-98g_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-r9u_drop_agent2_a2store ?dd - dummy)
(pre-soc_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-ftl_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-re0_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-jyx_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-2lk_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-lx7_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-0dm_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-ut8_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-1k8_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(pre-n3d_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-laj_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-8oo_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-n9r_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-ga4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-vnj_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-lrh_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-8pu_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-b98_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-yyl_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-i06_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-ihd_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(immediate-dummy-i75_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(dummy-left-i75_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(pre-d1z_drop_agent2_a2store ?dd - dummy)
(pre-igd_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-qkk_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-iom_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(dummy-left-iom_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-2ew_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-cpv_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-evd_joint-sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-om4_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-exm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-iom_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-8zx_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-sfb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-i75_observe-vis_agent1_objective2_waypoint1 ?dd - dummy)
(pre-wcj_drop_agent2_a2store ?dd - dummy)
(pre-fdl_joint-sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-ese_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-k3v_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-w5t_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-ygl_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-kdl_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-3mo_observe-rock_agent2_waypoint4 ?dd - dummy)
(pre-1zp_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-5es_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-0sv_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-w0i_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-kgb_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(dummy-left-kgb_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-n7m_observe-vis_agent1_objective2_waypoint5 ?dd - dummy)
(dummy-left-n7m_observe-vis_agent1_objective2_waypoint5 ?dd - dummy)
(pre-jad_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-9et_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-jr2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-n7m_observe-vis_agent1_objective2_waypoint5 ?dd - dummy)
(pre-2jt_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-mhc_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-z4n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-kgb_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-4j8_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-3n9_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)
(:action act-iyy_observe-soil_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (init-iyy_observe-soil_agent2_waypoint4 dd) (immediate-dummy-iyy_observe-soil_agent2_waypoint4 dd) (at agent2 waypoint4) (at-soil-sample waypoint4) (not (Kat-soil-sample waypoint4 V_TRUE)) (not (Kat-soil-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint4 V_TRUE))
)
(:action act-iyy_observe-soil_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (init-iyy_observe-soil_agent2_waypoint4 dd) (immediate-dummy-iyy_observe-soil_agent2_waypoint4 dd) (at agent2 waypoint4) (not (at-soil-sample waypoint4)) (not (Kat-soil-sample waypoint4 V_TRUE)) (not (Kat-soil-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint4 V_FALSE))
)
(:action act-dummy-iyy_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-iyy_observe-soil_agent2_waypoint4 dd) (not (dummy-left-iyy_observe-soil_agent2_waypoint4 dd)) (not (dummy-right-iyy_observe-soil_agent2_waypoint4 dd)))
:effect 
(and (immediate-dummy-iyy_observe-soil_agent2_waypoint4 dd))
)
(:action dummy-left-iyy_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-iyy_observe-soil_agent2_waypoint4 dd) (at agent2 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-iyy_observe-soil_agent2_waypoint4 dd) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (not (init-iyy_observe-soil_agent2_waypoint4 dd)) (not (immediate-dummy-iyy_observe-soil_agent2_waypoint4 dd)) (dummy-left-iyy_observe-soil_agent2_waypoint4 dd))
)
(:action dummy-right-iyy_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-iyy_observe-soil_agent2_waypoint4 dd) (at agent2 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-iyy_observe-soil_agent2_waypoint4 dd) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (not (init-iyy_observe-soil_agent2_waypoint4 dd)) (not (immediate-dummy-iyy_observe-soil_agent2_waypoint4 dd)) (dummy-right-iyy_observe-soil_agent2_waypoint4 dd))
)
(:action act-5dd_observe-vis_agent2_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iyy_observe-soil_agent2_waypoint4 dd) (immediate-dummy-5dd_observe-vis_agent2_objective1_waypoint4 dd) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-5dd_observe-vis_agent2_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iyy_observe-soil_agent2_waypoint4 dd) (immediate-dummy-5dd_observe-vis_agent2_objective1_waypoint4 dd) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-5dd_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iyy_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (not (dummy-left-5dd_observe-vis_agent2_objective1_waypoint4 dd)) (not (dummy-right-5dd_observe-vis_agent2_objective1_waypoint4 dd)) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-5dd_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action dummy-left-5dd_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iyy_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-5dd_observe-vis_agent2_objective1_waypoint4 dd) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-5dd_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-left-5dd_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action dummy-right-5dd_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iyy_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-5dd_observe-vis_agent2_objective1_waypoint4 dd) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-5dd_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-right-5dd_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action act-m7n_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5dd_observe-vis_agent2_objective1_waypoint4 dd) (immediate-dummy-m7n_observe-rock_agent2_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-m7n_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5dd_observe-vis_agent2_objective1_waypoint4 dd) (immediate-dummy-m7n_observe-rock_agent2_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-m7n_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5dd_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (not (dummy-left-m7n_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-m7n_observe-rock_agent2_waypoint4 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-m7n_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-m7n_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5dd_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-m7n_observe-rock_agent2_waypoint4 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-m7n_observe-rock_agent2_waypoint4 dd)) (dummy-left-m7n_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-m7n_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5dd_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-m7n_observe-rock_agent2_waypoint4 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-m7n_observe-rock_agent2_waypoint4 dd)) (dummy-right-m7n_observe-rock_agent2_waypoint4 dd))
)
(:action act-5dj_observe-vis_agent1_objective2_waypoint2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7n_observe-rock_agent2_waypoint4 dd) (immediate-dummy-5dj_observe-vis_agent1_objective2_waypoint2 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective2 waypoint2) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_TRUE))
)
(:action act-5dj_observe-vis_agent1_objective2_waypoint2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7n_observe-rock_agent2_waypoint4 dd) (immediate-dummy-5dj_observe-vis_agent1_objective2_waypoint2 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective2 waypoint2)) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_FALSE))
)
(:action act-dummy-5dj_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7n_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (not (dummy-left-5dj_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-5dj_observe-vis_agent1_objective2_waypoint2 dd)) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-5dj_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-left-5dj_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7n_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-5dj_observe-vis_agent1_objective2_waypoint2 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (not (immediate-dummy-5dj_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-5dj_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-right-5dj_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m7n_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-5dj_observe-vis_agent1_objective2_waypoint2 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (not (immediate-dummy-5dj_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-5dj_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action act-l4c_observe-vis_agent0_objective2_waypoint1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5dj_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-l4c_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint1) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective2 waypoint1) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_TRUE))
)
(:action act-l4c_observe-vis_agent0_objective2_waypoint1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5dj_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-l4c_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint1) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective2 waypoint1)) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_FALSE))
)
(:action act-dummy-l4c_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5dj_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint1) (not (dummy-left-l4c_observe-vis_agent0_objective2_waypoint1 dd)) (not (dummy-right-l4c_observe-vis_agent0_objective2_waypoint1 dd)) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-l4c_observe-vis_agent0_objective2_waypoint1 dd))
)
(:action dummy-left-l4c_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5dj_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-l4c_observe-vis_agent0_objective2_waypoint1 dd) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint1 V_FALSE))
:effect 
(and (not (immediate-dummy-l4c_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-left-l4c_observe-vis_agent0_objective2_waypoint1 dd))
)
(:action dummy-right-l4c_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5dj_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-l4c_observe-vis_agent0_objective2_waypoint1 dd) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint1 V_TRUE))
:effect 
(and (not (immediate-dummy-l4c_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-right-l4c_observe-vis_agent0_objective2_waypoint1 dd))
)
(:action act-zbf_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l4c_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-zbf_calibrate_agent2_camera2_objective2_waypoint5 dd))
)
(:action act-tqc_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-zbf_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-tqc_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-zbf_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)
(:action act-yir_observe-vis_agent1_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-tqc_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (immediate-dummy-yir_observe-vis_agent1_objective1_waypoint0 dd) (at agent2 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-yir_observe-vis_agent1_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-tqc_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (immediate-dummy-yir_observe-vis_agent1_objective1_waypoint0 dd) (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-yir_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-tqc_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint0) (not (dummy-left-yir_observe-vis_agent1_objective1_waypoint0 dd)) (not (dummy-right-yir_observe-vis_agent1_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-yir_observe-vis_agent1_objective1_waypoint0 dd))
)
(:action dummy-left-yir_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-yir_observe-vis_agent1_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-yir_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-left-yir_observe-vis_agent1_objective1_waypoint0 dd))
)
(:action dummy-right-yir_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-yir_observe-vis_agent1_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-yir_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-right-yir_observe-vis_agent1_objective1_waypoint0 dd))
)
(:action act-c75_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yir_observe-vis_agent1_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint5) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-c75_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd))
)
(:action act-xxa_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-c75_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-xxa_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-c75_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-kel_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-xxa_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-kel_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-xxa_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-kel_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-kel_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-kel_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-snk_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yir_observe-vis_agent1_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent2 waypoint5) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (pre-snk_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd))
)
(:action act-0fk_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition 
(and (pre-snk_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd))
:effect 
(and (pre-0fk_drop_agent2_a2store dd) (not (pre-snk_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)))
)
(:action act-i8g_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-0fk_drop_agent2_a2store dd) (at agent2 waypoint5))
:effect 
(and (pre-i8g_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-0fk_drop_agent2_a2store dd)))
)
(:action act-ndw_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-i8g_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-ndw_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-i8g_sample-soil_agent2_a2store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-drd_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ndw_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-drd_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-ndw_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)
(:action act-zwr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-drd_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-zwr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-drd_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-zwr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-zwr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-zwr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-adf_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l4c_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-adf_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd))
)
(:action act-qtq_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-adf_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-qtq_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-adf_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)))
)
(:action act-g3f_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-qtq_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-g3f_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-qtq_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-rock-data ))
)
(:action act-iyk_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-g3f_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-iyk_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-g3f_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-nu9_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-iyk_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-nu9_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-iyk_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)
(:action goal-achieve-nu9_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-nu9_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-nu9_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-72r_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5dj_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-72r_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd))
)
(:action act-195_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-72r_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-195_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-72r_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-5ls_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-195_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-5ls_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-195_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-5le_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-5ls_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-5le_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-5ls_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)
(:action act-59q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5le_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-59q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-5le_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)
(:action goal-achieve-59q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-59q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-59q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)
(:action act-18b_observe-vis_agent1_objective2_waypoint2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m7n_observe-rock_agent2_waypoint4 dd) (immediate-dummy-18b_observe-vis_agent1_objective2_waypoint2 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective2 waypoint2) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_TRUE))
)
(:action act-18b_observe-vis_agent1_objective2_waypoint2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m7n_observe-rock_agent2_waypoint4 dd) (immediate-dummy-18b_observe-vis_agent1_objective2_waypoint2 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective2 waypoint2)) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_FALSE))
)
(:action act-dummy-18b_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m7n_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (not (dummy-left-18b_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-18b_observe-vis_agent1_objective2_waypoint2 dd)) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-18b_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-left-18b_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m7n_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-18b_observe-vis_agent1_objective2_waypoint2 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (not (immediate-dummy-18b_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-18b_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-right-18b_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m7n_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-18b_observe-vis_agent1_objective2_waypoint2 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (not (immediate-dummy-18b_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-18b_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action act-ska_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-18b_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-ska_calibrate_agent2_camera2_objective2_waypoint5 dd))
)
(:action act-gc3_observe-vis_agent2_objective2_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (pre-ska_calibrate_agent2_camera2_objective2_waypoint5 dd) (immediate-dummy-gc3_observe-vis_agent2_objective2_waypoint5 dd) (at agent2 waypoint5) (visible-from objective2 waypoint5) (not (Kvisible-from objective2 waypoint5 V_TRUE)) (not (Kvisible-from objective2 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint5 V_TRUE))
)
(:action act-gc3_observe-vis_agent2_objective2_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (pre-ska_calibrate_agent2_camera2_objective2_waypoint5 dd) (immediate-dummy-gc3_observe-vis_agent2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (not (Kvisible-from objective2 waypoint5 V_TRUE)) (not (Kvisible-from objective2 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint5 V_FALSE))
)
(:action act-dummy-gc3_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-ska_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-gc3_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-gc3_observe-vis_agent2_objective2_waypoint5 dd)))
:effect 
(and (immediate-dummy-gc3_observe-vis_agent2_objective2_waypoint5 dd))
)
(:action dummy-left-gc3_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-gc3_observe-vis_agent2_objective2_waypoint5 dd) (Kvisible-from objective2 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-gc3_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-gc3_observe-vis_agent2_objective2_waypoint5 dd))
)
(:action dummy-right-gc3_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-gc3_observe-vis_agent2_objective2_waypoint5 dd) (Kvisible-from objective2 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-gc3_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-gc3_observe-vis_agent2_objective2_waypoint5 dd))
)
(:action act-4tm_observe-vis_agent2_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gc3_observe-vis_agent2_objective2_waypoint5 dd) (immediate-dummy-4tm_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint5 V_FALSE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-4tm_observe-vis_agent2_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gc3_observe-vis_agent2_objective2_waypoint5 dd) (immediate-dummy-4tm_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint5 V_FALSE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-4tm_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gc3_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (not (dummy-left-4tm_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-4tm_observe-vis_agent2_objective1_waypoint5 dd)) (Kvisible-from objective2 waypoint5 V_FALSE))
:effect 
(and (immediate-dummy-4tm_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-left-4tm_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gc3_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-4tm_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-4tm_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-4tm_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-4tm_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gc3_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-4tm_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-4tm_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-4tm_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-eaj_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4tm_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint5 V_FALSE))
:effect 
(and (pre-eaj_sample-soil_agent2_a2store_waypoint5 dd))
)
(:action act-6at_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-eaj_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-6at_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (not (pre-eaj_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-xfy_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-6at_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-xfy_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-6at_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)))
)
(:action act-w7w_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-xfy_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-w7w_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-xfy_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)
(:action act-we2_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-w7w_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-we2_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-w7w_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-xui_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-we2_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-xui_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-we2_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)
(:action goal-achieve-xui_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-xui_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-xui_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-lk3_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4tm_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective2 waypoint5 V_FALSE))
:effect 
(and (pre-lk3_sample-soil_agent2_a2store_waypoint5 dd))
)
(:action act-zqz_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-lk3_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-zqz_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-lk3_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-i4k_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-zqz_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-i4k_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-zqz_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)
(:action act-800_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-i4k_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-800_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-i4k_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)
(:action act-x7p_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-800_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-x7p_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-800_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-s1k_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-x7p_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-s1k_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-x7p_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)
(:action act-i9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-s1k_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-i9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-s1k_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-i9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-i9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-i9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-vi3_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gc3_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (at agent2 waypoint5) (Kvisible-from objective2 waypoint5 V_TRUE))
:effect 
(and (pre-vi3_take-image_agent2_waypoint5_objective2_camera2_low-res dd))
)
(:action act-1fb_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-vi3_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-1fb_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-vi3_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)
(:action act-o6f_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-1fb_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-o6f_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (not (pre-1fb_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-itr_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-o6f_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-itr_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-o6f_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)) (communicated-soil-data ))
)
(:action act-vsj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-itr_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-vsj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-itr_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-tot_observe-vis_agent0_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-vsj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (immediate-dummy-tot_observe-vis_agent0_objective1_waypoint0 dd) (at agent2 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-tot_observe-vis_agent0_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-vsj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (immediate-dummy-tot_observe-vis_agent0_objective1_waypoint0 dd) (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-tot_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-vsj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-tot_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-tot_observe-vis_agent0_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-tot_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-left-tot_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-tot_observe-vis_agent0_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-tot_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-tot_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-right-tot_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-tot_observe-vis_agent0_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-tot_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-tot_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action act-txf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-tot_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint1) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-txf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
)
(:action goal-achieve-txf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-txf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-txf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-right-tot_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-tot_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-tot_observe-vis_agent0_objective1_waypoint0 dd)))
)
(:action act-iyo_observe-vis_agent2_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-18b_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-iyo_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-iyo_observe-vis_agent2_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-18b_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-iyo_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-iyo_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-18b_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (not (dummy-left-iyo_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-iyo_observe-vis_agent2_objective1_waypoint5 dd)) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-iyo_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-left-iyo_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-18b_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-iyo_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-iyo_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-iyo_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-iyo_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-18b_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-iyo_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-iyo_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-iyo_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-889_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iyo_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-889_sample-soil_agent2_a2store_waypoint5 dd))
)
(:action act-hdn_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-889_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-hdn_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (not (pre-889_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-rov_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-hdn_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-rov_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-hdn_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)) (communicated-soil-data ))
)
(:action act-60c_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-rov_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-60c_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-rov_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-98l_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-60c_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-98l_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-60c_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)
(:action act-y47_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-98l_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-y47_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-98l_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)
(:action goal-achieve-y47_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-y47_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-y47_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)
(:action act-e0h_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iyo_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (visible-from objective2 waypoint2) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-e0h_sample-soil_agent2_a2store_waypoint5 dd))
)
(:action act-jco_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-e0h_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-jco_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-e0h_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-f9m_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-jco_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-f9m_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-jco_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-soil-data ))
)
(:action act-1zl_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-f9m_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-1zl_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-f9m_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-fmt_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-1zl_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-fmt_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-1zl_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)
(:action act-p3g_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-fmt_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-p3g_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-fmt_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)
(:action act-ch3_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-p3g_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-ch3_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-p3g_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)) (communicated-soil-data ))
)
(:action act-10e_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-ch3_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-10e_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-ch3_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-5y2_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-10e_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-5y2_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-10e_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)
(:action act-htq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5y2_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-htq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-5y2_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)
(:action goal-achieve-htq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-htq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-htq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)
(:action act-i53_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5dd_observe-vis_agent2_objective1_waypoint4 dd) (immediate-dummy-i53_observe-rock_agent2_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-i53_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5dd_observe-vis_agent2_objective1_waypoint4 dd) (immediate-dummy-i53_observe-rock_agent2_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-i53_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5dd_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (not (dummy-left-i53_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-i53_observe-rock_agent2_waypoint4 dd)) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-i53_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-i53_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5dd_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-i53_observe-rock_agent2_waypoint4 dd) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-i53_observe-rock_agent2_waypoint4 dd)) (dummy-left-i53_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-i53_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5dd_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-i53_observe-rock_agent2_waypoint4 dd) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-i53_observe-rock_agent2_waypoint4 dd)) (dummy-right-i53_observe-rock_agent2_waypoint4 dd))
)
(:action act-ie8_observe-vis_agent1_objective2_waypoint2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-i53_observe-rock_agent2_waypoint4 dd) (immediate-dummy-ie8_observe-vis_agent1_objective2_waypoint2 dd) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective2 waypoint2) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_TRUE))
)
(:action act-ie8_observe-vis_agent1_objective2_waypoint2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-i53_observe-rock_agent2_waypoint4 dd) (immediate-dummy-ie8_observe-vis_agent1_objective2_waypoint2 dd) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective2 waypoint2)) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_FALSE))
)
(:action act-dummy-ie8_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-i53_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (not (dummy-left-ie8_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-ie8_observe-vis_agent1_objective2_waypoint2 dd)) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-ie8_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-left-ie8_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-i53_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-ie8_observe-vis_agent1_objective2_waypoint2 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (not (immediate-dummy-ie8_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-ie8_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-right-ie8_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-i53_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-ie8_observe-vis_agent1_objective2_waypoint2 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (not (immediate-dummy-ie8_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-ie8_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action act-gy6_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ie8_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-gy6_calibrate_agent2_camera2_objective2_waypoint5 dd))
)
(:action act-ubd_observe-vis_agent2_objective2_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (pre-gy6_calibrate_agent2_camera2_objective2_waypoint5 dd) (immediate-dummy-ubd_observe-vis_agent2_objective2_waypoint5 dd) (at agent2 waypoint5) (visible-from objective2 waypoint5) (not (Kvisible-from objective2 waypoint5 V_TRUE)) (not (Kvisible-from objective2 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint5 V_TRUE))
)
(:action act-ubd_observe-vis_agent2_objective2_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (pre-gy6_calibrate_agent2_camera2_objective2_waypoint5 dd) (immediate-dummy-ubd_observe-vis_agent2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (not (Kvisible-from objective2 waypoint5 V_TRUE)) (not (Kvisible-from objective2 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint5 V_FALSE))
)
(:action act-dummy-ubd_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-gy6_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-ubd_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-ubd_observe-vis_agent2_objective2_waypoint5 dd)))
:effect 
(and (immediate-dummy-ubd_observe-vis_agent2_objective2_waypoint5 dd))
)
(:action dummy-left-ubd_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-ubd_observe-vis_agent2_objective2_waypoint5 dd) (Kvisible-from objective2 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-ubd_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-ubd_observe-vis_agent2_objective2_waypoint5 dd))
)
(:action dummy-right-ubd_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-ubd_observe-vis_agent2_objective2_waypoint5 dd) (Kvisible-from objective2 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-ubd_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-ubd_observe-vis_agent2_objective2_waypoint5 dd))
)
(:action act-b0z_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ubd_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint5 V_FALSE))
:effect 
(and (pre-b0z_sample-soil_agent2_a2store_waypoint5 dd))
)
(:action act-j1n_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-b0z_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-j1n_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-b0z_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-suf_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-j1n_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-suf_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-j1n_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)
(:action act-evw_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-suf_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-evw_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-suf_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)
(:action act-dm9_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-evw_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-dm9_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-evw_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-dnn_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-dm9_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-dnn_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-dm9_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)
(:action goal-achieve-dnn_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-dnn_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-dnn_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-w8q_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ubd_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (at agent2 waypoint5) (Kvisible-from objective2 waypoint5 V_TRUE))
:effect 
(and (pre-w8q_take-image_agent2_waypoint5_objective2_camera2_low-res dd))
)
(:action act-5s3_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-w8q_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-5s3_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-w8q_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)
(:action act-s6i_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-5s3_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-s6i_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-5s3_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-vie_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-s6i_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-vie_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-s6i_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-soil-data ))
)
(:action act-jrg_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-vie_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-jrg_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-vie_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-jrg_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-jrg_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-jrg_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-009_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ie8_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-009_sample-soil_agent2_a2store_waypoint5 dd))
)
(:action act-ow7_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-009_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-ow7_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-009_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-oy8_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ow7_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-oy8_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-ow7_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-soil-data ))
)
(:action act-ldj_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-oy8_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-ldj_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-oy8_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-gf1_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-ldj_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-gf1_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-ldj_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)
(:action act-8dl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-gf1_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-8dl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-gf1_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)
(:action goal-achieve-8dl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-8dl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-8dl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)
(:action act-s8c_observe-vis_agent0_objective2_waypoint1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-i53_observe-rock_agent2_waypoint4 dd) (immediate-dummy-s8c_observe-vis_agent0_objective2_waypoint1 dd) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint1) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective2 waypoint1) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_TRUE))
)
(:action act-s8c_observe-vis_agent0_objective2_waypoint1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-i53_observe-rock_agent2_waypoint4 dd) (immediate-dummy-s8c_observe-vis_agent0_objective2_waypoint1 dd) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint1) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective2 waypoint1)) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_FALSE))
)
(:action act-dummy-s8c_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-i53_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint1) (not (dummy-left-s8c_observe-vis_agent0_objective2_waypoint1 dd)) (not (dummy-right-s8c_observe-vis_agent0_objective2_waypoint1 dd)) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-s8c_observe-vis_agent0_objective2_waypoint1 dd))
)
(:action dummy-left-s8c_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-i53_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-s8c_observe-vis_agent0_objective2_waypoint1 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint1 V_FALSE))
:effect 
(and (not (immediate-dummy-s8c_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-left-s8c_observe-vis_agent0_objective2_waypoint1 dd))
)
(:action dummy-right-s8c_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-i53_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-s8c_observe-vis_agent0_objective2_waypoint1 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint1 V_TRUE))
:effect 
(and (not (immediate-dummy-s8c_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-right-s8c_observe-vis_agent0_objective2_waypoint1 dd))
)
(:action act-wfi_observe-vis_agent1_objective2_waypoint2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-s8c_observe-vis_agent0_objective2_waypoint1 dd) (immediate-dummy-wfi_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint1)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (Kvisible-from objective2 waypoint1 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (visible-from objective2 waypoint2) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_TRUE))
)
(:action act-wfi_observe-vis_agent1_objective2_waypoint2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-s8c_observe-vis_agent0_objective2_waypoint1 dd) (immediate-dummy-wfi_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint1)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (Kvisible-from objective2 waypoint1 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (not (visible-from objective2 waypoint2)) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_FALSE))
)
(:action act-dummy-wfi_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-s8c_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (not (dummy-left-wfi_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-wfi_observe-vis_agent1_objective2_waypoint2 dd)) (Kvisible-from objective2 waypoint1 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-wfi_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-left-wfi_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-s8c_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-wfi_observe-vis_agent1_objective2_waypoint2 dd) (Kvisible-from objective2 waypoint1 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (not (immediate-dummy-wfi_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-wfi_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-right-wfi_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-s8c_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-wfi_observe-vis_agent1_objective2_waypoint2 dd) (Kvisible-from objective2 waypoint1 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (not (immediate-dummy-wfi_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-wfi_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action act-604_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wfi_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective2 waypoint1)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective2 waypoint1 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-604_calibrate_agent2_camera2_objective2_waypoint5 dd))
)
(:action act-f6m_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-604_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-f6m_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-604_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)
(:action act-a4e_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-f6m_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-a4e_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-f6m_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)
(:action act-qnw_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-a4e_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-qnw_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-a4e_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-ay1_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-qnw_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-ay1_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-qnw_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-soil-data ))
)
(:action act-qhj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ay1_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-qhj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-ay1_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-qhj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-qhj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-qhj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-ruo_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wfi_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective2 waypoint1)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kvisible-from objective2 waypoint1 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-ruo_sample-soil_agent2_a2store_waypoint5 dd))
)
(:action act-tm1_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-ruo_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-tm1_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-ruo_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-rxe_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-tm1_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-rxe_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-tm1_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-soil-data ))
)
(:action act-31s_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-rxe_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-31s_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-rxe_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-ddv_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-31s_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-ddv_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-31s_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)
(:action act-1s5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ddv_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-1s5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-ddv_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)
(:action goal-achieve-1s5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-1s5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-1s5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)
(:action act-cj2_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-s8c_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint1 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (pre-cj2_sample-soil_agent2_a2store_waypoint5 dd))
)
(:action act-wki_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-cj2_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-wki_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-cj2_sample-soil_agent2_a2store_waypoint5 dd)))
)
(:action act-fz1_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-wki_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-fz1_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-wki_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)
(:action act-f8p_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-fz1_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-f8p_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-fz1_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)
(:action act-ub0_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-f8p_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-ub0_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-f8p_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-3fv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ub0_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-3fv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-ub0_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)
(:action goal-achieve-3fv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3fv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-3fv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-3mo_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iyy_observe-soil_agent2_waypoint4 dd) (immediate-dummy-3mo_observe-rock_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at agent2 waypoint4) (Kat-soil-sample waypoint4 V_TRUE) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-3mo_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iyy_observe-soil_agent2_waypoint4 dd) (immediate-dummy-3mo_observe-rock_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at agent2 waypoint4) (Kat-soil-sample waypoint4 V_TRUE) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-3mo_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iyy_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at agent2 waypoint4) (not (dummy-left-3mo_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-3mo_observe-rock_agent2_waypoint4 dd)) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-3mo_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-3mo_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iyy_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-3mo_observe-rock_agent2_waypoint4 dd) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-3mo_observe-rock_agent2_waypoint4 dd)) (dummy-left-3mo_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-3mo_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iyy_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-3mo_observe-rock_agent2_waypoint4 dd) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-3mo_observe-rock_agent2_waypoint4 dd)) (dummy-right-3mo_observe-rock_agent2_waypoint4 dd))
)
(:action act-cyj_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3mo_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at-soil-sample waypoint4) (at agent2 waypoint4) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-cyj_sample-soil_agent2_a2store_waypoint4 dd))
)
(:action act-ihd_observe-vis_agent0_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-cyj_sample-soil_agent2_a2store_waypoint4 dd) (immediate-dummy-ihd_observe-vis_agent0_objective1_waypoint0 dd) (at agent2 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-ihd_observe-vis_agent0_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-cyj_sample-soil_agent2_a2store_waypoint4 dd) (immediate-dummy-ihd_observe-vis_agent0_objective1_waypoint0 dd) (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-ihd_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-cyj_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint0) (not (dummy-left-ihd_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-ihd_observe-vis_agent0_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-ihd_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-left-ihd_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-ihd_observe-vis_agent0_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-ihd_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-ihd_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action dummy-right-ihd_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-ihd_observe-vis_agent0_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-ihd_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-ihd_observe-vis_agent0_objective1_waypoint0 dd))
)
(:action act-vnj_observe-vis_agent1_objective2_waypoint2-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ihd_observe-vis_agent0_objective1_waypoint0 dd) (immediate-dummy-vnj_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint2) (Kvisible-from objective1 waypoint0 V_FALSE) (visible-from objective2 waypoint2) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_TRUE))
)
(:action act-vnj_observe-vis_agent1_objective2_waypoint2-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ihd_observe-vis_agent0_objective1_waypoint0 dd) (immediate-dummy-vnj_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint2) (Kvisible-from objective1 waypoint0 V_FALSE) (not (visible-from objective2 waypoint2)) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_FALSE))
)
(:action act-dummy-vnj_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ihd_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint2) (not (dummy-left-vnj_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-vnj_observe-vis_agent1_objective2_waypoint2 dd)) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (immediate-dummy-vnj_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-left-vnj_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ihd_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-vnj_observe-vis_agent1_objective2_waypoint2 dd) (Kvisible-from objective1 waypoint0 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (not (immediate-dummy-vnj_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-vnj_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action dummy-right-vnj_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ihd_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-vnj_observe-vis_agent1_objective2_waypoint2 dd) (Kvisible-from objective1 waypoint0 V_FALSE) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (not (immediate-dummy-vnj_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-vnj_observe-vis_agent1_objective2_waypoint2 dd))
)
(:action act-aif_observe-vis_agent1_objective2_waypoint1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vnj_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-aif_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint1) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (visible-from objective2 waypoint1) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_TRUE))
)
(:action act-aif_observe-vis_agent1_objective2_waypoint1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vnj_observe-vis_agent1_objective2_waypoint2 dd) (immediate-dummy-aif_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint1) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (not (visible-from objective2 waypoint1)) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_FALSE))
)
(:action act-dummy-aif_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vnj_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint1) (not (dummy-left-aif_observe-vis_agent1_objective2_waypoint1 dd)) (not (dummy-right-aif_observe-vis_agent1_objective2_waypoint1 dd)) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (immediate-dummy-aif_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action dummy-left-aif_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vnj_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-aif_observe-vis_agent1_objective2_waypoint1 dd) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kvisible-from objective2 waypoint1 V_FALSE))
:effect 
(and (not (immediate-dummy-aif_observe-vis_agent1_objective2_waypoint1 dd)) (dummy-left-aif_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action dummy-right-aif_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vnj_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-aif_observe-vis_agent1_objective2_waypoint1 dd) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kvisible-from objective2 waypoint1 V_TRUE))
:effect 
(and (not (immediate-dummy-aif_observe-vis_agent1_objective2_waypoint1 dd)) (dummy-right-aif_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action act-5o8_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-aif_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-5o8_calibrate_agent2_camera2_objective2_waypoint5 dd))
)
(:action act-r5j_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-5o8_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-r5j_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-5o8_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)
(:action act-gox_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-r5j_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-gox_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (not (pre-r5j_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)
(:action act-9ly_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-gox_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-9ly_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-gox_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)) (communicated-soil-data ))
)
(:action act-ziz_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9ly_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-ziz_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-9ly_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-ziz_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ziz_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-ziz_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-1k8_observe-vis_agent2_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-aif_observe-vis_agent1_objective2_waypoint1 dd) (immediate-dummy-1k8_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint4) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-1k8_observe-vis_agent2_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-aif_observe-vis_agent1_objective2_waypoint1 dd) (immediate-dummy-1k8_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint4) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-1k8_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-aif_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint4) (not (dummy-left-1k8_observe-vis_agent2_objective1_waypoint4 dd)) (not (dummy-right-1k8_observe-vis_agent2_objective1_waypoint4 dd)) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (immediate-dummy-1k8_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action dummy-left-1k8_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-aif_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-1k8_observe-vis_agent2_objective1_waypoint4 dd) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-1k8_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-left-1k8_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action dummy-right-1k8_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-aif_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-1k8_observe-vis_agent2_objective1_waypoint4 dd) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-1k8_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-right-1k8_observe-vis_agent2_objective1_waypoint4 dd))
)
(:action act-98g_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1k8_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint1) (Kvisible-from objective1 waypoint4 V_FALSE) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-98g_calibrate_agent2_camera2_objective2_waypoint1 dd))
)
(:action act-r9u_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition 
(and (pre-98g_calibrate_agent2_camera2_objective2_waypoint1 dd))
:effect 
(and (pre-r9u_drop_agent2_a2store dd) (not (pre-98g_calibrate_agent2_camera2_objective2_waypoint1 dd)))
)
(:action act-soc_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-r9u_drop_agent2_a2store dd) (at agent2 waypoint1))
:effect 
(and (pre-soc_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-r9u_drop_agent2_a2store dd)) (communicated-soil-data ))
)
(:action act-ftl_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-soc_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-ftl_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-soc_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-re0_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ftl_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-re0_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-ftl_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)
(:action act-jyx_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-re0_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint5))
:effect 
(and (pre-jyx_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (not (pre-re0_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-2lk_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-jyx_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-2lk_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-jyx_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)))
)
(:action act-lx7_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-2lk_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-lx7_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-2lk_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)
(:action act-0dm_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-lx7_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-0dm_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-lx7_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-ut8_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-0dm_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-ut8_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-0dm_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)
(:action goal-achieve-ut8_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ut8_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-ut8_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-n3d_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1k8_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (visible-from objective1 waypoint0)) (at agent2 waypoint5) (Kvisible-from objective1 waypoint4 V_TRUE) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-n3d_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd))
)
(:action act-laj_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-n3d_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-laj_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-n3d_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)))
)
(:action act-8oo_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-laj_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-8oo_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-laj_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)
(:action act-n9r_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-8oo_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-n9r_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-8oo_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-ga4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-n9r_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-ga4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-n9r_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)
(:action goal-achieve-ga4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ga4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-ga4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-lrh_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vnj_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective1 waypoint0)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-lrh_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd))
)
(:action act-8pu_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-lrh_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-8pu_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-lrh_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)) (communicated-soil-data ))
)
(:action act-b98_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-8pu_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-b98_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-8pu_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-yyl_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-b98_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-yyl_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-b98_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)
(:action act-i06_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-yyl_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-i06_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-yyl_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)
(:action goal-achieve-i06_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-i06_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-i06_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)
(:action act-i75_observe-vis_agent1_objective2_waypoint1-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ihd_observe-vis_agent0_objective1_waypoint0 dd) (immediate-dummy-i75_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective1 waypoint0) (at agent2 waypoint1) (Kvisible-from objective1 waypoint0 V_TRUE) (visible-from objective2 waypoint1) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_TRUE))
)
(:action act-i75_observe-vis_agent1_objective2_waypoint1-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ihd_observe-vis_agent0_objective1_waypoint0 dd) (immediate-dummy-i75_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective1 waypoint0) (at agent2 waypoint1) (Kvisible-from objective1 waypoint0 V_TRUE) (not (visible-from objective2 waypoint1)) (not (Kvisible-from objective2 waypoint1 V_TRUE)) (not (Kvisible-from objective2 waypoint1 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint1 V_FALSE))
)
(:action act-dummy-i75_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ihd_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent2 waypoint1) (not (dummy-left-i75_observe-vis_agent1_objective2_waypoint1 dd)) (not (dummy-right-i75_observe-vis_agent1_objective2_waypoint1 dd)) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (immediate-dummy-i75_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action dummy-left-i75_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ihd_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-i75_observe-vis_agent1_objective2_waypoint1 dd) (Kvisible-from objective1 waypoint0 V_TRUE) (Kvisible-from objective2 waypoint1 V_FALSE))
:effect 
(and (not (immediate-dummy-i75_observe-vis_agent1_objective2_waypoint1 dd)) (dummy-left-i75_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action dummy-right-i75_observe-vis_agent1_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ihd_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-i75_observe-vis_agent1_objective2_waypoint1 dd) (Kvisible-from objective1 waypoint0 V_TRUE) (Kvisible-from objective2 waypoint1 V_TRUE))
:effect 
(and (not (immediate-dummy-i75_observe-vis_agent1_objective2_waypoint1 dd)) (dummy-right-i75_observe-vis_agent1_objective2_waypoint1 dd))
)
(:action act-d1z_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-i75_observe-vis_agent1_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (visible-from objective1 waypoint0) (Kvisible-from objective2 waypoint1 V_FALSE) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (pre-d1z_drop_agent2_a2store dd))
)
(:action act-igd_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-d1z_drop_agent2_a2store dd) (at agent2 waypoint1))
:effect 
(and (pre-igd_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-d1z_drop_agent2_a2store dd)) (communicated-soil-data ))
)
(:action act-qkk_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-igd_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-qkk_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-igd_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-iom_observe-vis_agent2_objective2_waypoint2-T
:parameters ( ?a - agent)
:precondition 
(and (pre-qkk_calibrate_agent2_camera2_objective2_waypoint2 dd) (immediate-dummy-iom_observe-vis_agent2_objective2_waypoint2 dd) (at agent2 waypoint2) (visible-from objective2 waypoint2) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_TRUE))
)
(:action act-iom_observe-vis_agent2_objective2_waypoint2-F
:parameters ( ?a - agent)
:precondition 
(and (pre-qkk_calibrate_agent2_camera2_objective2_waypoint2 dd) (immediate-dummy-iom_observe-vis_agent2_objective2_waypoint2 dd) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_FALSE))
)
(:action act-dummy-iom_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-qkk_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2) (not (dummy-left-iom_observe-vis_agent2_objective2_waypoint2 dd)) (not (dummy-right-iom_observe-vis_agent2_objective2_waypoint2 dd)))
:effect 
(and (immediate-dummy-iom_observe-vis_agent2_objective2_waypoint2 dd))
)
(:action dummy-left-iom_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-iom_observe-vis_agent2_objective2_waypoint2 dd) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (not (immediate-dummy-iom_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-left-iom_observe-vis_agent2_objective2_waypoint2 dd))
)
(:action dummy-right-iom_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-iom_observe-vis_agent2_objective2_waypoint2 dd) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (not (immediate-dummy-iom_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-right-iom_observe-vis_agent2_objective2_waypoint2 dd))
)
(:action act-2ew_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-iom_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (pre-2ew_calibrate_agent2_camera2_objective2_waypoint5 dd))
)
(:action act-cpv_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-2ew_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-cpv_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-2ew_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)
(:action act-evd_joint-sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-cpv_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-evd_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-cpv_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)
(:action act-om4_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-evd_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-om4_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-evd_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-exm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-om4_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-exm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-om4_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action goal-achieve-exm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-exm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-exm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-8zx_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-iom_observe-vis_agent2_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at agent2 waypoint2) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (pre-8zx_take-image_agent2_waypoint2_objective2_camera2_low-res dd))
)
(:action act-sfb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-8zx_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-sfb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-8zx_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)
(:action goal-achieve-sfb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-sfb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-sfb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)
(:action act-wcj_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-i75_observe-vis_agent1_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (visible-from objective1 waypoint0) (Kvisible-from objective2 waypoint1 V_TRUE) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (pre-wcj_drop_agent2_a2store dd))
)
(:action act-fdl_joint-sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-wcj_drop_agent2_a2store dd) (at agent2 waypoint5))
:effect 
(and (pre-fdl_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-wcj_drop_agent2_a2store dd)))
)
(:action act-ese_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-fdl_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-ese_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-fdl_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd)))
)
(:action act-k3v_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ese_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-k3v_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-ese_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-rock-data ))
)
(:action act-w5t_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k3v_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-w5t_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-k3v_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)
(:action act-ygl_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-w5t_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-ygl_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-w5t_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-kdl_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ygl_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-kdl_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-ygl_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)
(:action goal-achieve-kdl_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-kdl_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-kdl_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-1zp_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3mo_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at-soil-sample waypoint4) (at agent2 waypoint4) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (pre-1zp_sample-soil_agent2_a2store_waypoint4 dd))
)
(:action act-5es_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-1zp_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint4))
:effect 
(and (pre-5es_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (not (pre-1zp_sample-soil_agent2_a2store_waypoint4 dd)))
)
(:action act-0sv_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5es_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-0sv_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-5es_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)) (communicated-soil-data ))
)
(:action act-w0i_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-0sv_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-w0i_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-0sv_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)
(:action act-kgb_observe-vis_agent2_objective2_waypoint2-T
:parameters ( ?a - agent)
:precondition 
(and (pre-w0i_calibrate_agent2_camera2_objective2_waypoint2 dd) (immediate-dummy-kgb_observe-vis_agent2_objective2_waypoint2 dd) (at agent2 waypoint2) (visible-from objective2 waypoint2) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_TRUE))
)
(:action act-kgb_observe-vis_agent2_objective2_waypoint2-F
:parameters ( ?a - agent)
:precondition 
(and (pre-w0i_calibrate_agent2_camera2_objective2_waypoint2 dd) (immediate-dummy-kgb_observe-vis_agent2_objective2_waypoint2 dd) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (not (Kvisible-from objective2 waypoint2 V_TRUE)) (not (Kvisible-from objective2 waypoint2 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint2 V_FALSE))
)
(:action act-dummy-kgb_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-w0i_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2) (not (dummy-left-kgb_observe-vis_agent2_objective2_waypoint2 dd)) (not (dummy-right-kgb_observe-vis_agent2_objective2_waypoint2 dd)))
:effect 
(and (immediate-dummy-kgb_observe-vis_agent2_objective2_waypoint2 dd))
)
(:action dummy-left-kgb_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-kgb_observe-vis_agent2_objective2_waypoint2 dd) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (not (immediate-dummy-kgb_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-left-kgb_observe-vis_agent2_objective2_waypoint2 dd))
)
(:action dummy-right-kgb_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-kgb_observe-vis_agent2_objective2_waypoint2 dd) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (not (immediate-dummy-kgb_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-right-kgb_observe-vis_agent2_objective2_waypoint2 dd))
)
(:action act-n7m_observe-vis_agent1_objective2_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kgb_observe-vis_agent2_objective2_waypoint2 dd) (immediate-dummy-n7m_observe-vis_agent1_objective2_waypoint5 dd) (not (visible-from objective2 waypoint2)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_FALSE) (visible-from objective2 waypoint5) (not (Kvisible-from objective2 waypoint5 V_TRUE)) (not (Kvisible-from objective2 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint5 V_TRUE))
)
(:action act-n7m_observe-vis_agent1_objective2_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kgb_observe-vis_agent2_objective2_waypoint2 dd) (immediate-dummy-n7m_observe-vis_agent1_objective2_waypoint5 dd) (not (visible-from objective2 waypoint2)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint2 V_FALSE) (not (visible-from objective2 waypoint5)) (not (Kvisible-from objective2 waypoint5 V_TRUE)) (not (Kvisible-from objective2 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective2 waypoint5 V_FALSE))
)
(:action act-dummy-n7m_observe-vis_agent1_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kgb_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at agent2 waypoint5) (not (dummy-left-n7m_observe-vis_agent1_objective2_waypoint5 dd)) (not (dummy-right-n7m_observe-vis_agent1_objective2_waypoint5 dd)) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (immediate-dummy-n7m_observe-vis_agent1_objective2_waypoint5 dd))
)
(:action dummy-left-n7m_observe-vis_agent1_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kgb_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-n7m_observe-vis_agent1_objective2_waypoint5 dd) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective2 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-n7m_observe-vis_agent1_objective2_waypoint5 dd)) (dummy-left-n7m_observe-vis_agent1_objective2_waypoint5 dd))
)
(:action dummy-right-n7m_observe-vis_agent1_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kgb_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-n7m_observe-vis_agent1_objective2_waypoint5 dd) (Kvisible-from objective2 waypoint2 V_FALSE) (Kvisible-from objective2 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-n7m_observe-vis_agent1_objective2_waypoint5 dd)) (dummy-right-n7m_observe-vis_agent1_objective2_waypoint5 dd))
)
(:action act-jad_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-n7m_observe-vis_agent1_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective2 waypoint2)) (at agent2 waypoint1) (Kvisible-from objective2 waypoint5 V_FALSE) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (pre-jad_calibrate_agent2_camera2_objective2_waypoint1 dd))
)
(:action act-9et_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-jad_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-9et_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-jad_calibrate_agent2_camera2_objective2_waypoint1 dd)))
)
(:action act-jr2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9et_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-jr2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-9et_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)
(:action goal-achieve-jr2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-jr2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-jr2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-2jt_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-n7m_observe-vis_agent1_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (visible-from objective2 waypoint2)) (at agent2 waypoint5) (Kvisible-from objective2 waypoint5 V_TRUE) (Kvisible-from objective2 waypoint2 V_FALSE))
:effect 
(and (pre-2jt_calibrate_agent2_camera2_objective2_waypoint5 dd))
)
(:action act-mhc_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-2jt_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-mhc_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-2jt_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)
(:action act-z4n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-mhc_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-z4n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-mhc_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)
(:action goal-achieve-z4n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-z4n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-z4n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)
(:action act-4j8_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kgb_observe-vis_agent2_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at agent2 waypoint2) (Kvisible-from objective2 waypoint2 V_TRUE))
:effect 
(and (pre-4j8_take-image_agent2_waypoint2_objective2_camera2_low-res dd))
)
(:action act-3n9_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-4j8_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-3n9_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-4j8_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)
(:action goal-achieve-3n9_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3n9_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd))
:effect 
(and (done-goal dd) (not (pre-3n9_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
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
