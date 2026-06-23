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
(init-qyl_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-qyl_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(dummy-left-qyl_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-wnu_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-wnu_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-fpw_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-fpw_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-6kl_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-usq_observe-soil_agent2_waypoint5 ?dd - dummy)
(dummy-left-usq_observe-soil_agent2_waypoint5 ?dd - dummy)
(immediate-dummy-7gu_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-7gu_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-ob9_joint-sample-rock_agent2_agent0_a2store_waypoint5 ?dd - dummy)
(pre-n4x_drop_agent2_a2store ?dd - dummy)
(pre-k54_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-2vl_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-isz_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-blu_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-zlv_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-481_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-7gu_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-82h_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(immediate-dummy-f6s_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-left-f6s_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-x2s_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-yde_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(dummy-right-f6s_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-cc4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-xls_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-zn4_drop_agent2_a2store ?dd - dummy)
(pre-ky1_joint-sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-wtg_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-6i4_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-8td_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-usq_observe-soil_agent2_waypoint5 ?dd - dummy)
(immediate-dummy-ipb_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-ipb_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-qf8_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(immediate-dummy-me2_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-me2_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-2tp_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-u9j_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-0b9_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-dfv_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-6xe_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-me2_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-qsn_drop_agent2_a2store ?dd - dummy)
(pre-m1u_joint-sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-x0u_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-b3w_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-2hg_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-tni_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-crf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-ipb_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-mcu_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-7gg_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(immediate-dummy-55o_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-55o_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-rm2_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-7aw_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-v9n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-55o_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-hf3_drop_agent2_a2store ?dd - dummy)
(pre-4tf_joint-sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-w73_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-3t2_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-n3f_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-fpw_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-8dq_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-8dq_observe-soil_agent2_waypoint4 ?dd - dummy)
(pre-3ou_joint-sample-rock_agent2_agent0_a2store_waypoint5 ?dd - dummy)
(pre-n24_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-gtr_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-44h_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-t8n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-8dq_observe-soil_agent2_waypoint4 ?dd - dummy)
(pre-44m_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-mrs_drop_agent2_a2store ?dd - dummy)
(immediate-dummy-oli_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-oli_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-mcm_joint-sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-ves_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-w96_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-f1v_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-33m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-oli_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-9ya_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-y2d_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-wju_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-os8_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-3wv_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-8od_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-lb0_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-rup_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-8i4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-wnu_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-kog_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-kog_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-1ba_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(dummy-left-1ba_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(pre-9n3_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-s0s_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-s0s_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-ez2_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-ez2_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-1hv_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-u3n_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-lhn_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-sr2_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-wre_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-uzu_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-ez2_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-im5_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-owr_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-83i_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-2py_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-ugl_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-70n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-4oo_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-r9g_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-3ju_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-hn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-s0s_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-z7a_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-86n_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-7nu_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-ev9_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-et1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-1ba_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-y7k_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-left-y7k_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-ry1_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-00l_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-f0m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-yvn_joint-sample-rock_agent2_agent0_a2store_waypoint4 ?dd - dummy)
(pre-60p_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-y7k_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-ncs_joint-sample-rock_agent2_agent0_a2store_waypoint4 ?dd - dummy)
(pre-xvk_drop_agent2_a2store ?dd - dummy)
(pre-7am_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-3z2_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-pnq_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-oem_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-k0z_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-e8h_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-kog_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-y3f_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-y3f_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-bi2_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-gh5_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-t1q_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-jal_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-jal_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-9uy_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-o7a_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-tzn_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-6kq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-aw9_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-left-aw9_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-right-aw9_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-0ie_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-jal_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-k92_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-f61_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-uws_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-65w_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-left-65w_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(pre-9ed_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-65w_observe-vis_agent1_objective1_waypoint0 ?dd - dummy)
(dummy-right-y3f_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-alg_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(immediate-dummy-b0a_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-b0a_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-hfd_joint-sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-2f8_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-lgv_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-52s_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-m8b_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-b0a_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-t3x_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-63l_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-sw3_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-06f_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-nak_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-3zs_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-dd3_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-yn0_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-3jq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-qyl_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-6bd_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-6bd_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-dxg_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-dxg_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-bqr_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-bqr_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-se6_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(dummy-left-se6_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(pre-zys_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-jbi_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-28f_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-kcd_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-aj5_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-h5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-se6_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(pre-7cu_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-5vv_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-0wi_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-9lt_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-3ku_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-vno_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-bqr_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-lol_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-sal_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-kv8_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-9co_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-k4v_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-avb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-dxg_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-m4c_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(dummy-left-m4c_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-7so_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-7so_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-93w_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-vr2_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-sp5_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-q6q_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-eoc_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-iua_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-7so_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-w1t_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-4yr_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-83z_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-sit_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-ln5_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-7sh_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-m4c_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(pre-yye_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-grx_joint-sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-s47_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-e5g_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-9dj_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-ck1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-6bd_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-4ee_observe-soil_agent2_waypoint5 ?dd - dummy)
(dummy-left-4ee_observe-soil_agent2_waypoint5 ?dd - dummy)
(immediate-dummy-fwy_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-fwy_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-d9g_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-met_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-vh6_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-vh6_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-5u6_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-6qk_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-6m4_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-t47_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-ste_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-vh6_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-kjc_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-dcn_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-csb_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-qdr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-fwy_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-qfz_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-osy_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-ket_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-nf4_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-r81_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-kw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-4ee_observe-soil_agent2_waypoint5 ?dd - dummy)
(immediate-dummy-0uq_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(dummy-left-0uq_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-bb5_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(dummy-left-bb5_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(pre-qre_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-s2b_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-4qm_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-2pg_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-fel_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-jhp_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-bb5_observe-vis_agent0_objective2_waypoint1 ?dd - dummy)
(pre-v7d_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-hve_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-v26_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-jzs_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-bod_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-48b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-0uq_observe-vis_agent1_objective2_waypoint2 ?dd - dummy)
(pre-t2l_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-ssz_joint-sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-szs_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-ver_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-rqn_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-bqe_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action act-dummy-qyl_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-qyl_observe-vis_agent2_objective1_waypoint4 dd) (not (dummy-left-qyl_observe-vis_agent2_objective1_waypoint4 dd)) (not (dummy-right-qyl_observe-vis_agent2_objective1_waypoint4 dd)))
:effect (immediate-dummy-qyl_observe-vis_agent2_objective1_waypoint4 dd)
)

(:action dummy-left-qyl_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-qyl_observe-vis_agent2_objective1_waypoint4 dd) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-qyl_observe-vis_agent2_objective1_waypoint4 dd))
:effect 
(and (not (init-qyl_observe-vis_agent2_objective1_waypoint4 dd)) (not (immediate-dummy-qyl_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-left-qyl_observe-vis_agent2_objective1_waypoint4 dd))
)

(:action dummy-right-qyl_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-qyl_observe-vis_agent2_objective1_waypoint4 dd) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-qyl_observe-vis_agent2_objective1_waypoint4 dd))
:effect 
(and (not (init-qyl_observe-vis_agent2_objective1_waypoint4 dd)) (not (immediate-dummy-qyl_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-right-qyl_observe-vis_agent2_objective1_waypoint4 dd))
)

(:action act-dummy-wnu_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qyl_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (not (dummy-left-wnu_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-wnu_observe-rock_agent2_waypoint4 dd)))
:effect (immediate-dummy-wnu_observe-rock_agent2_waypoint4 dd)
)

(:action dummy-left-wnu_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qyl_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-wnu_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-wnu_observe-rock_agent2_waypoint4 dd)) (dummy-left-wnu_observe-rock_agent2_waypoint4 dd))
)

(:action dummy-right-wnu_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qyl_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-wnu_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-wnu_observe-rock_agent2_waypoint4 dd)) (dummy-right-wnu_observe-rock_agent2_waypoint4 dd))
)

(:action act-dummy-fpw_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wnu_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint2) (not (dummy-left-fpw_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-fpw_observe-vis_agent1_objective2_waypoint2 dd)))
:effect (immediate-dummy-fpw_observe-vis_agent1_objective2_waypoint2 dd)
)

(:action dummy-left-fpw_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wnu_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-fpw_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-fpw_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-fpw_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action dummy-right-fpw_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wnu_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-fpw_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-fpw_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-fpw_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action act-6kl_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fpw_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5))
:effect (pre-6kl_calibrate_agent2_camera2_objective2_waypoint5 dd)
)

(:action act-dummy-usq_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-6kl_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-usq_observe-soil_agent2_waypoint5 dd)) (not (dummy-right-usq_observe-soil_agent2_waypoint5 dd)))
:effect (immediate-dummy-usq_observe-soil_agent2_waypoint5 dd)
)

(:action dummy-left-usq_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-usq_observe-soil_agent2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-usq_observe-soil_agent2_waypoint5 dd)) (dummy-left-usq_observe-soil_agent2_waypoint5 dd))
)

(:action dummy-right-usq_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-usq_observe-soil_agent2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-usq_observe-soil_agent2_waypoint5 dd)) (dummy-right-usq_observe-soil_agent2_waypoint5 dd))
)

(:action act-dummy-7gu_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-usq_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (at agent2 waypoint5) (not (dummy-left-7gu_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-7gu_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-7gu_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-7gu_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-usq_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-7gu_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-7gu_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-7gu_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-7gu_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-usq_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-7gu_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-7gu_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-7gu_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-ob9_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7gu_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (at-soil-sample waypoint5)) (at agent2 waypoint5))
:effect (pre-ob9_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)
)

(:action act-n4x_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition (pre-ob9_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)
:effect 
(and (pre-n4x_drop_agent2_a2store dd) (not (pre-ob9_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)))
)

(:action act-k54_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-n4x_drop_agent2_a2store dd) (at agent2 waypoint4))
:effect 
(and (pre-k54_sample-soil_agent2_a2store_waypoint4 dd) (not (pre-n4x_drop_agent2_a2store dd)))
)

(:action act-2vl_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-k54_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-2vl_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-k54_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-isz_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-2vl_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-isz_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-2vl_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-rock-data ))
)

(:action act-blu_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-isz_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-blu_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-isz_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-zlv_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-blu_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-zlv_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-blu_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-481_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-zlv_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-481_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-zlv_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-481_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-481_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-481_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-82h_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7gu_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (at-soil-sample waypoint5)) (at agent2 waypoint5))
:effect (pre-82h_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-dummy-f6s_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-82h_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint0) (not (dummy-left-f6s_observe-vis_agent1_objective1_waypoint0 dd)) (not (dummy-right-f6s_observe-vis_agent1_objective1_waypoint0 dd)))
:effect (immediate-dummy-f6s_observe-vis_agent1_objective1_waypoint0 dd)
)

(:action dummy-left-f6s_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-f6s_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-f6s_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-left-f6s_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action dummy-right-f6s_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-f6s_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-f6s_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-right-f6s_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action act-x2s_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f6s_observe-vis_agent1_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint1))
:effect (pre-x2s_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
)

(:action act-yde_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-x2s_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint5))
:effect 
(and (pre-yde_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-x2s_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-yde_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition (pre-yde_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)
:effect 
(and (done-goal dd) (not (pre-yde_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)

(:action act-cc4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f6s_observe-vis_agent1_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent2 waypoint1))
:effect (pre-cc4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
)

(:action act-xls_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-cc4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint4))
:effect 
(and (pre-xls_sample-soil_agent2_a2store_waypoint4 dd) (not (pre-cc4_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-zn4_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition (pre-xls_sample-soil_agent2_a2store_waypoint4 dd)
:effect 
(and (pre-zn4_drop_agent2_a2store dd) (not (pre-xls_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-ky1_joint-sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-zn4_drop_agent2_a2store dd) (at agent2 waypoint5))
:effect 
(and (pre-ky1_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-zn4_drop_agent2_a2store dd)))
)

(:action act-wtg_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ky1_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-wtg_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-ky1_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-6i4_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-wtg_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-6i4_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-wtg_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-8td_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-6i4_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-8td_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-6i4_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-8td_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-8td_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-8td_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-ipb_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-usq_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (at agent2 waypoint5) (not (dummy-left-ipb_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-ipb_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-ipb_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-ipb_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-usq_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-ipb_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-ipb_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-ipb_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-ipb_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-usq_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-ipb_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-ipb_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-ipb_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-qf8_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ipb_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at-soil-sample waypoint5) (at agent2 waypoint5))
:effect (pre-qf8_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-dummy-me2_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-qf8_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint0) (not (dummy-left-me2_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-me2_observe-vis_agent0_objective1_waypoint0 dd)))
:effect (immediate-dummy-me2_observe-vis_agent0_objective1_waypoint0 dd)
)

(:action dummy-left-me2_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-me2_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-me2_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-me2_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action dummy-right-me2_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-me2_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-me2_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-me2_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action act-2tp_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-me2_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint5))
:effect (pre-2tp_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)
)

(:action act-u9j_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-2tp_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-u9j_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-2tp_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)))
)

(:action act-0b9_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-u9j_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-0b9_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-u9j_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-dfv_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-0b9_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-dfv_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-0b9_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-6xe_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-dfv_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-6xe_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-dfv_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-6xe_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-6xe_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-6xe_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-qsn_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-me2_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0))
:effect (pre-qsn_drop_agent2_a2store dd)
)

(:action act-m1u_joint-sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-qsn_drop_agent2_a2store dd) (at agent2 waypoint5))
:effect 
(and (pre-m1u_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-qsn_drop_agent2_a2store dd)))
)

(:action act-x0u_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-m1u_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-x0u_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-m1u_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd)))
)

(:action act-b3w_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-x0u_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-b3w_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-x0u_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-rock-data ))
)

(:action act-2hg_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-b3w_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-2hg_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-b3w_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-tni_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-2hg_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-tni_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-2hg_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-crf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-tni_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-crf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-tni_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-crf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-crf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-crf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-mcu_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ipb_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (at-soil-sample waypoint5) (at agent2 waypoint5))
:effect (pre-mcu_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-7gg_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-mcu_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-7gg_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-mcu_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-dummy-55o_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-7gg_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint0) (not (dummy-left-55o_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-55o_observe-vis_agent0_objective1_waypoint0 dd)))
:effect (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint0 dd)
)

(:action dummy-left-55o_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-55o_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action dummy-right-55o_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-55o_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action act-rm2_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-55o_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint5))
:effect (pre-rm2_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)
)

(:action act-7aw_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-rm2_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-7aw_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-rm2_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-v9n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-7aw_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-v9n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-7aw_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-v9n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-v9n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-v9n_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-hf3_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-55o_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0))
:effect (pre-hf3_drop_agent2_a2store dd)
)

(:action act-4tf_joint-sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-hf3_drop_agent2_a2store dd) (at agent2 waypoint5))
:effect 
(and (pre-4tf_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-hf3_drop_agent2_a2store dd)))
)

(:action act-w73_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-4tf_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-w73_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-4tf_joint-sample-rock_agent2_agent1_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-3t2_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-w73_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-3t2_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-w73_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-n3f_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3t2_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-n3f_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-3t2_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-n3f_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-n3f_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-n3f_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-8dq_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fpw_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (not (dummy-left-8dq_observe-soil_agent2_waypoint4 dd)) (not (dummy-right-8dq_observe-soil_agent2_waypoint4 dd)))
:effect (immediate-dummy-8dq_observe-soil_agent2_waypoint4 dd)
)

(:action dummy-left-8dq_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fpw_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-8dq_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-8dq_observe-soil_agent2_waypoint4 dd)) (dummy-left-8dq_observe-soil_agent2_waypoint4 dd))
)

(:action dummy-right-8dq_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fpw_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-8dq_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-8dq_observe-soil_agent2_waypoint4 dd)) (dummy-right-8dq_observe-soil_agent2_waypoint4 dd))
)

(:action act-3ou_joint-sample-rock_agent2_agent0_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-8dq_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5))
:effect (pre-3ou_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)
)

(:action act-n24_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3ou_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-n24_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-3ou_joint-sample-rock_agent2_agent0_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-gtr_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-n24_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-gtr_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-n24_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-44h_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-gtr_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-44h_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-gtr_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-t8n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-44h_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-t8n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-44h_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-t8n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-t8n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-t8n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-44m_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-8dq_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (visible-from objective2 waypoint2) (not (at-rock-sample waypoint4)) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4))
:effect (pre-44m_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-mrs_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition (pre-44m_sample-soil_agent2_a2store_waypoint4 dd)
:effect 
(and (pre-mrs_drop_agent2_a2store dd) (not (pre-44m_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-dummy-oli_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-mrs_drop_agent2_a2store dd) (at agent2 waypoint0) (not (dummy-left-oli_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-oli_observe-vis_agent0_objective1_waypoint0 dd)))
:effect (immediate-dummy-oli_observe-vis_agent0_objective1_waypoint0 dd)
)

(:action dummy-left-oli_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-oli_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-oli_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-oli_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action dummy-right-oli_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-oli_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-oli_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-oli_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action act-mcm_joint-sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-oli_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint5))
:effect (pre-mcm_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)
)

(:action act-ves_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-mcm_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-ves_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-mcm_joint-sample-rock_agent1_agent2_a1store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-w96_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-ves_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-w96_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-ves_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-f1v_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-w96_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-f1v_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-w96_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-33m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-f1v_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-33m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-f1v_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-33m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-33m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-33m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-9ya_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-oli_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent2 waypoint1))
:effect 
(and (pre-9ya_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (communicated-soil-data ))
)

(:action act-y2d_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-9ya_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-y2d_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-9ya_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-wju_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-y2d_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-wju_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-y2d_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-os8_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-wju_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-os8_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-wju_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-3wv_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-os8_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint5))
:effect 
(and (pre-3wv_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-os8_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-8od_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3wv_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-8od_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-3wv_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-lb0_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-8od_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-lb0_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-8od_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-rup_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-lb0_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-rup_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-lb0_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-8i4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-rup_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-8i4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-rup_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-8i4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-8i4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-8i4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-dummy-kog_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wnu_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (not (dummy-left-kog_observe-soil_agent2_waypoint4 dd)) (not (dummy-right-kog_observe-soil_agent2_waypoint4 dd)))
:effect (immediate-dummy-kog_observe-soil_agent2_waypoint4 dd)
)

(:action dummy-left-kog_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wnu_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-kog_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-kog_observe-soil_agent2_waypoint4 dd)) (dummy-left-kog_observe-soil_agent2_waypoint4 dd))
)

(:action dummy-right-kog_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wnu_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-kog_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-kog_observe-soil_agent2_waypoint4 dd)) (dummy-right-kog_observe-soil_agent2_waypoint4 dd))
)

(:action act-dummy-1ba_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kog_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint1) (not (dummy-left-1ba_observe-vis_agent0_objective2_waypoint1 dd)) (not (dummy-right-1ba_observe-vis_agent0_objective2_waypoint1 dd)))
:effect (immediate-dummy-1ba_observe-vis_agent0_objective2_waypoint1 dd)
)

(:action dummy-left-1ba_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kog_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-1ba_observe-vis_agent0_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-1ba_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-left-1ba_observe-vis_agent0_objective2_waypoint1 dd))
)

(:action dummy-right-1ba_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kog_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-1ba_observe-vis_agent0_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-1ba_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-right-1ba_observe-vis_agent0_objective2_waypoint1 dd))
)

(:action act-9n3_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1ba_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint5))
:effect (pre-9n3_calibrate_agent2_camera2_objective2_waypoint5 dd)
)

(:action act-dummy-s0s_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-9n3_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-s0s_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-s0s_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-s0s_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-s0s_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-s0s_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-s0s_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-s0s_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-s0s_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-s0s_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-s0s_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-s0s_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-dummy-ez2_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-s0s_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (not (dummy-left-ez2_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-ez2_observe-vis_agent2_objective1_waypoint5 dd)))
:effect (immediate-dummy-ez2_observe-vis_agent2_objective1_waypoint5 dd)
)

(:action dummy-left-ez2_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-s0s_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-ez2_observe-vis_agent2_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-ez2_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-ez2_observe-vis_agent2_objective1_waypoint5 dd))
)

(:action dummy-right-ez2_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-s0s_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-ez2_observe-vis_agent2_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-ez2_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-ez2_observe-vis_agent2_objective1_waypoint5 dd))
)

(:action act-1hv_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ez2_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5))
:effect (pre-1hv_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-u3n_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-1hv_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-u3n_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (not (pre-1hv_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-lhn_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-u3n_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-lhn_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-u3n_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-sr2_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-lhn_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-sr2_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-lhn_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-wre_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-sr2_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-wre_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-sr2_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-uzu_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-wre_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-uzu_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-wre_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-uzu_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-uzu_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-uzu_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-im5_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ez2_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5))
:effect (pre-im5_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-owr_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-im5_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-owr_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-im5_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-83i_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-owr_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-83i_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-owr_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-2py_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-83i_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-2py_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-83i_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-ugl_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-2py_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-ugl_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-2py_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-70n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ugl_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-70n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-ugl_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-4oo_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-70n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-4oo_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-70n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-r9g_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-4oo_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-r9g_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-4oo_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-3ju_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-r9g_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-3ju_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-r9g_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-hn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3ju_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-hn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-3ju_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-hn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-hn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-hn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-z7a_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-s0s_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (at agent2 waypoint5))
:effect (pre-z7a_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-86n_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-z7a_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-86n_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-z7a_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-7nu_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-86n_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-7nu_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (not (pre-86n_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-ev9_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-7nu_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-ev9_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-7nu_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-et1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ev9_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-et1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-ev9_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-et1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-et1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-et1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-y7k_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1ba_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint0) (not (dummy-left-y7k_observe-vis_agent1_objective1_waypoint0 dd)) (not (dummy-right-y7k_observe-vis_agent1_objective1_waypoint0 dd)))
:effect (immediate-dummy-y7k_observe-vis_agent1_objective1_waypoint0 dd)
)

(:action dummy-left-y7k_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1ba_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-y7k_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-y7k_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-left-y7k_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action dummy-right-y7k_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1ba_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-y7k_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-y7k_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-right-y7k_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action act-ry1_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y7k_observe-vis_agent1_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (visible-from objective2 waypoint1) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint1))
:effect (pre-ry1_calibrate_agent2_camera2_objective2_waypoint1 dd)
)

(:action act-00l_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-ry1_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-00l_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-ry1_calibrate_agent2_camera2_objective2_waypoint1 dd)))
)

(:action act-f0m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-00l_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-f0m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-00l_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-yvn_joint-sample-rock_agent2_agent0_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-f0m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint4))
:effect 
(and (pre-yvn_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd) (not (pre-f0m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-60p_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-yvn_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-60p_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-yvn_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd)) (communicated-rock-data ))
)

(:action goal-achieve-60p_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-60p_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-60p_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-ncs_joint-sample-rock_agent2_agent0_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y7k_observe-vis_agent1_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (visible-from objective2 waypoint1) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4))
:effect (pre-ncs_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd)
)

(:action act-xvk_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition (pre-ncs_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd)
:effect 
(and (pre-xvk_drop_agent2_a2store dd) (not (pre-ncs_joint-sample-rock_agent2_agent0_a2store_waypoint4 dd)))
)

(:action act-7am_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-xvk_drop_agent2_a2store dd) (at agent2 waypoint5))
:effect 
(and (pre-7am_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-xvk_drop_agent2_a2store dd)))
)

(:action act-3z2_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-7am_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-3z2_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-7am_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-pnq_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3z2_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-pnq_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-3z2_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-rock-data ))
)

(:action act-oem_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-pnq_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-oem_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-pnq_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-k0z_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-oem_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-k0z_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-oem_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-e8h_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k0z_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-e8h_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-k0z_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-e8h_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-e8h_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-e8h_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-y3f_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kog_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint2) (not (dummy-left-y3f_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-y3f_observe-vis_agent1_objective2_waypoint2 dd)))
:effect (immediate-dummy-y3f_observe-vis_agent1_objective2_waypoint2 dd)
)

(:action dummy-left-y3f_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kog_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-y3f_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-y3f_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-y3f_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action dummy-right-y3f_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kog_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-y3f_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-y3f_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-y3f_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action act-bi2_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y3f_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4))
:effect (pre-bi2_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-gh5_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-bi2_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint4))
:effect 
(and (pre-gh5_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-bi2_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-t1q_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-gh5_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint5))
:effect 
(and (pre-t1q_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-gh5_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)

(:action act-dummy-jal_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-t1q_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-jal_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-jal_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-jal_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-jal_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-jal_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-jal_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-jal_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-jal_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-jal_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-jal_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-jal_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-9uy_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jal_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint1))
:effect (pre-9uy_calibrate_agent2_camera2_objective2_waypoint1 dd)
)

(:action act-o7a_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9uy_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-o7a_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-9uy_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-tzn_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-o7a_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-tzn_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-o7a_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-6kq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-tzn_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-6kq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-tzn_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-dummy-aw9_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-6kq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint5) (not (dummy-left-aw9_observe-vis_agent0_objective1_waypoint5 dd)) (not (dummy-right-aw9_observe-vis_agent0_objective1_waypoint5 dd)))
:effect (immediate-dummy-aw9_observe-vis_agent0_objective1_waypoint5 dd)
)

(:action dummy-left-aw9_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-aw9_observe-vis_agent0_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-aw9_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-left-aw9_observe-vis_agent0_objective1_waypoint5 dd))
)

(:action dummy-right-aw9_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-aw9_observe-vis_agent0_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-aw9_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-right-aw9_observe-vis_agent0_objective1_waypoint5 dd))
)

(:action goal-achieve-left-aw9_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-aw9_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)))
:effect 
(and (done-goal dd) (not (dummy-left-aw9_observe-vis_agent0_objective1_waypoint5 dd)))
)

(:action act-0ie_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-aw9_observe-vis_agent0_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (at agent2 waypoint1))
:effect (pre-0ie_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
)

(:action goal-achieve-0ie_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-0ie_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-0ie_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-k92_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jal_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (at agent2 waypoint5))
:effect (pre-k92_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-f61_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k92_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-f61_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-k92_take-image_agent2_waypoint5_objective2_camera2_low-res dd)) (communicated-soil-data ))
)

(:action act-uws_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-f61_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-uws_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-f61_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-65w_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-uws_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-65w_observe-vis_agent1_objective1_waypoint0 dd)) (not (dummy-right-65w_observe-vis_agent1_objective1_waypoint0 dd)))
:effect (immediate-dummy-65w_observe-vis_agent1_objective1_waypoint0 dd)
)

(:action dummy-left-65w_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-65w_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-65w_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-left-65w_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action dummy-right-65w_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-65w_observe-vis_agent1_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-65w_observe-vis_agent1_objective1_waypoint0 dd)) (dummy-right-65w_observe-vis_agent1_objective1_waypoint0 dd))
)

(:action act-9ed_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-65w_observe-vis_agent1_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint1))
:effect (pre-9ed_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
)

(:action goal-achieve-9ed_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-9ed_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-9ed_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-right-65w_observe-vis_agent1_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-65w_observe-vis_agent1_objective1_waypoint0 dd) (visible-from objective1 waypoint0))
:effect 
(and (done-goal dd) (not (dummy-right-65w_observe-vis_agent1_objective1_waypoint0 dd)))
)

(:action act-alg_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y3f_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (not (visible-from objective1 waypoint4)) (at agent2 waypoint4))
:effect (pre-alg_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-dummy-b0a_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-alg_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint5) (not (dummy-left-b0a_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-b0a_observe-vis_agent2_objective1_waypoint5 dd)))
:effect (immediate-dummy-b0a_observe-vis_agent2_objective1_waypoint5 dd)
)

(:action dummy-left-b0a_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-b0a_observe-vis_agent2_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-b0a_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-b0a_observe-vis_agent2_objective1_waypoint5 dd))
)

(:action dummy-right-b0a_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-b0a_observe-vis_agent2_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-b0a_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-b0a_observe-vis_agent2_objective1_waypoint5 dd))
)

(:action act-hfd_joint-sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b0a_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (at agent2 waypoint4))
:effect (pre-hfd_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)
)

(:action act-2f8_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-hfd_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-2f8_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-hfd_joint-sample-rock_agent1_agent2_a1store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-lgv_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-2f8_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-lgv_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-2f8_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-52s_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-lgv_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-52s_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-lgv_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-m8b_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-52s_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-m8b_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-52s_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-m8b_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-m8b_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-m8b_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-t3x_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b0a_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (at agent2 waypoint4))
:effect (pre-t3x_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)
)

(:action act-63l_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-t3x_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-63l_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-t3x_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-sw3_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-63l_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-sw3_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-63l_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-06f_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-sw3_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-06f_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-sw3_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-nak_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-06f_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-nak_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-06f_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-3zs_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-nak_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-3zs_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-nak_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-dd3_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-3zs_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-dd3_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-3zs_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-yn0_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-dd3_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-yn0_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-dd3_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-3jq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-yn0_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-3jq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-yn0_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-3jq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-3jq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-3jq_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-dummy-6bd_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qyl_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at agent2 waypoint4) (not (dummy-left-6bd_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-6bd_observe-rock_agent2_waypoint4 dd)))
:effect (immediate-dummy-6bd_observe-rock_agent2_waypoint4 dd)
)

(:action dummy-left-6bd_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qyl_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-6bd_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-6bd_observe-rock_agent2_waypoint4 dd)) (dummy-left-6bd_observe-rock_agent2_waypoint4 dd))
)

(:action dummy-right-6bd_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qyl_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-6bd_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-6bd_observe-rock_agent2_waypoint4 dd)) (dummy-right-6bd_observe-rock_agent2_waypoint4 dd))
)

(:action act-dummy-dxg_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6bd_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint4) (not (dummy-left-dxg_observe-soil_agent2_waypoint4 dd)) (not (dummy-right-dxg_observe-soil_agent2_waypoint4 dd)))
:effect (immediate-dummy-dxg_observe-soil_agent2_waypoint4 dd)
)

(:action dummy-left-dxg_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6bd_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-dxg_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-dxg_observe-soil_agent2_waypoint4 dd)) (dummy-left-dxg_observe-soil_agent2_waypoint4 dd))
)

(:action dummy-right-dxg_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6bd_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-dxg_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-dxg_observe-soil_agent2_waypoint4 dd)) (dummy-right-dxg_observe-soil_agent2_waypoint4 dd))
)

(:action act-dummy-bqr_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dxg_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint2) (not (dummy-left-bqr_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-bqr_observe-vis_agent1_objective2_waypoint2 dd)))
:effect (immediate-dummy-bqr_observe-vis_agent1_objective2_waypoint2 dd)
)

(:action dummy-left-bqr_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dxg_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-bqr_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-bqr_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-bqr_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action dummy-right-bqr_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dxg_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-bqr_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-bqr_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-bqr_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action act-dummy-se6_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bqr_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint1) (not (dummy-left-se6_observe-vis_agent0_objective2_waypoint1 dd)) (not (dummy-right-se6_observe-vis_agent0_objective2_waypoint1 dd)))
:effect (immediate-dummy-se6_observe-vis_agent0_objective2_waypoint1 dd)
)

(:action dummy-left-se6_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bqr_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-se6_observe-vis_agent0_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-se6_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-left-se6_observe-vis_agent0_objective2_waypoint1 dd))
)

(:action dummy-right-se6_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bqr_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-se6_observe-vis_agent0_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-se6_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-right-se6_observe-vis_agent0_objective2_waypoint1 dd))
)

(:action act-zys_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-se6_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint5))
:effect (pre-zys_calibrate_agent2_camera2_objective2_waypoint5 dd)
)

(:action act-jbi_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-zys_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-jbi_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-zys_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)

(:action act-28f_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-jbi_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-28f_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-jbi_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-kcd_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-28f_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-kcd_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-28f_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-aj5_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-kcd_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-aj5_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-kcd_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-h5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-aj5_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-h5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-aj5_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-h5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-h5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-h5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-7cu_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-se6_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint5))
:effect (pre-7cu_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-5vv_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-7cu_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-5vv_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-7cu_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-0wi_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-5vv_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-0wi_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-5vv_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)

(:action act-9lt_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-0wi_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-9lt_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-0wi_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-3ku_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-9lt_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-3ku_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-9lt_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-vno_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3ku_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-vno_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-3ku_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-vno_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-vno_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-vno_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-lol_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bqr_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint5))
:effect (pre-lol_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-sal_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-lol_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-sal_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-lol_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-kv8_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-sal_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-kv8_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-sal_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-9co_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-kv8_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-9co_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-kv8_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-k4v_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-9co_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-k4v_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-9co_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-avb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k4v_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-avb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-k4v_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-avb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-avb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-avb_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-dummy-m4c_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dxg_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint1) (not (dummy-left-m4c_observe-vis_agent0_objective2_waypoint1 dd)) (not (dummy-right-m4c_observe-vis_agent0_objective2_waypoint1 dd)))
:effect (immediate-dummy-m4c_observe-vis_agent0_objective2_waypoint1 dd)
)

(:action dummy-left-m4c_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dxg_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-m4c_observe-vis_agent0_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-m4c_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-left-m4c_observe-vis_agent0_objective2_waypoint1 dd))
)

(:action dummy-right-m4c_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dxg_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-m4c_observe-vis_agent0_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-m4c_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-right-m4c_observe-vis_agent0_objective2_waypoint1 dd))
)

(:action act-dummy-7so_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m4c_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint2) (not (dummy-left-7so_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-7so_observe-vis_agent1_objective2_waypoint2 dd)))
:effect (immediate-dummy-7so_observe-vis_agent1_objective2_waypoint2 dd)
)

(:action dummy-left-7so_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m4c_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-7so_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-7so_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-7so_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action dummy-right-7so_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m4c_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-7so_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-7so_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-7so_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action act-93w_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7so_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective2 waypoint1)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint4))
:effect (pre-93w_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-vr2_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-93w_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint5))
:effect 
(and (pre-vr2_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-93w_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-sp5_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-vr2_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-sp5_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-vr2_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)

(:action act-q6q_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-sp5_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-q6q_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-sp5_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-eoc_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-q6q_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-eoc_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-q6q_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-iua_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-eoc_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-iua_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-eoc_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-iua_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-iua_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-iua_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-w1t_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7so_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective2 waypoint1)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint4))
:effect (pre-w1t_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-4yr_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-w1t_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint5))
:effect 
(and (pre-4yr_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-w1t_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-83z_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-4yr_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-83z_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-4yr_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-sit_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-83z_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-sit_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-83z_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-ln5_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-sit_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-ln5_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-sit_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-7sh_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ln5_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-7sh_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-ln5_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-7sh_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-7sh_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-7sh_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-yye_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m4c_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (visible-from objective1 waypoint4) (at agent2 waypoint4))
:effect (pre-yye_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-grx_joint-sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-yye_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint5))
:effect 
(and (pre-grx_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-yye_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-s47_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-grx_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-s47_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-grx_joint-sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)

(:action act-e5g_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-s47_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-e5g_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-s47_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-9dj_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-e5g_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-9dj_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-e5g_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-ck1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9dj_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-ck1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-9dj_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-ck1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-ck1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-ck1_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-4ee_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-6bd_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint5) (not (dummy-left-4ee_observe-soil_agent2_waypoint5 dd)) (not (dummy-right-4ee_observe-soil_agent2_waypoint5 dd)))
:effect (immediate-dummy-4ee_observe-soil_agent2_waypoint5 dd)
)

(:action dummy-left-4ee_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-6bd_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-4ee_observe-soil_agent2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-4ee_observe-soil_agent2_waypoint5 dd)) (dummy-left-4ee_observe-soil_agent2_waypoint5 dd))
)

(:action dummy-right-4ee_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-6bd_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-4ee_observe-soil_agent2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-4ee_observe-soil_agent2_waypoint5 dd)) (dummy-right-4ee_observe-soil_agent2_waypoint5 dd))
)

(:action act-dummy-fwy_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4ee_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint2) (not (dummy-left-fwy_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-fwy_observe-vis_agent1_objective2_waypoint2 dd)))
:effect (immediate-dummy-fwy_observe-vis_agent1_objective2_waypoint2 dd)
)

(:action dummy-left-fwy_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4ee_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-fwy_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-fwy_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-fwy_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action dummy-right-fwy_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4ee_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-fwy_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-fwy_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-fwy_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action act-d9g_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fwy_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint4))
:effect (pre-d9g_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-met_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-d9g_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint5))
:effect 
(and (pre-met_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-d9g_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-dummy-vh6_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-met_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-vh6_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-vh6_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-vh6_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-vh6_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-vh6_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-vh6_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-vh6_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-vh6_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-vh6_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-vh6_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-vh6_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-5u6_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vh6_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint4))
:effect (pre-5u6_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)
)

(:action act-6qk_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-5u6_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-6qk_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-5u6_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)

(:action act-6m4_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-6qk_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-6m4_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-6qk_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-t47_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-6m4_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-t47_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-6m4_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-ste_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-t47_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-ste_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-t47_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-ste_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-ste_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-ste_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-kjc_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vh6_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (at agent2 waypoint5))
:effect (pre-kjc_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-dcn_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-kjc_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint4))
:effect 
(and (pre-dcn_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-kjc_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-csb_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-dcn_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-csb_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-dcn_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-qdr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-csb_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-qdr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-csb_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-qdr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-qdr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-qdr_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-qfz_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fwy_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint4))
:effect (pre-qfz_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-osy_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-qfz_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint4))
:effect 
(and (pre-osy_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-qfz_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-ket_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-osy_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-ket_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-osy_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-nf4_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-ket_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-nf4_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-ket_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-r81_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-nf4_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-r81_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-nf4_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-kw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-r81_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-kw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-r81_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-kw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-kw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-kw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-dummy-0uq_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4ee_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint2) (not (dummy-left-0uq_observe-vis_agent1_objective2_waypoint2 dd)) (not (dummy-right-0uq_observe-vis_agent1_objective2_waypoint2 dd)))
:effect (immediate-dummy-0uq_observe-vis_agent1_objective2_waypoint2 dd)
)

(:action dummy-left-0uq_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4ee_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-0uq_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-0uq_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-left-0uq_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action dummy-right-0uq_observe-vis_agent1_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4ee_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-0uq_observe-vis_agent1_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-0uq_observe-vis_agent1_objective2_waypoint2 dd)) (dummy-right-0uq_observe-vis_agent1_objective2_waypoint2 dd))
)

(:action act-dummy-bb5_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0uq_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint1) (not (dummy-left-bb5_observe-vis_agent0_objective2_waypoint1 dd)) (not (dummy-right-bb5_observe-vis_agent0_objective2_waypoint1 dd)))
:effect (immediate-dummy-bb5_observe-vis_agent0_objective2_waypoint1 dd)
)

(:action dummy-left-bb5_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0uq_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-bb5_observe-vis_agent0_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-bb5_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-left-bb5_observe-vis_agent0_objective2_waypoint1 dd))
)

(:action dummy-right-bb5_observe-vis_agent0_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0uq_observe-vis_agent1_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-bb5_observe-vis_agent0_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-bb5_observe-vis_agent0_objective2_waypoint1 dd)) (dummy-right-bb5_observe-vis_agent0_objective2_waypoint1 dd))
)

(:action act-qre_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bb5_observe-vis_agent0_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (not (visible-from objective2 waypoint2)) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint5))
:effect (pre-qre_calibrate_agent2_camera2_objective2_waypoint5 dd)
)

(:action act-s2b_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-qre_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-s2b_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-qre_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)

(:action act-4qm_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-s2b_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-4qm_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-s2b_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-2pg_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-4qm_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-2pg_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-4qm_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-fel_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-2pg_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-fel_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-2pg_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-jhp_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-fel_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-jhp_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-fel_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-jhp_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-jhp_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-jhp_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-v7d_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bb5_observe-vis_agent0_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (not (visible-from objective2 waypoint2)) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint5))
:effect (pre-v7d_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-hve_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-v7d_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-hve_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-v7d_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-v26_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-hve_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-v26_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-hve_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)

(:action act-jzs_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-v26_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-jzs_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-v26_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-bod_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-jzs_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-bod_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (not (pre-jzs_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-48b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-bod_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-48b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-bod_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-48b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-48b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-48b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-t2l_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0uq_observe-vis_agent1_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (visible-from objective1 waypoint4) (at agent2 waypoint5))
:effect (pre-t2l_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-ssz_joint-sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-t2l_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-ssz_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-t2l_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-szs_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ssz_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-szs_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-ssz_joint-sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-ver_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-szs_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-ver_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-szs_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-rqn_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-ver_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-rqn_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-ver_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-bqe_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-rqn_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-bqe_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-rqn_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-bqe_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-bqe_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-bqe_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

)
