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
 camera3 - camera
 objective1 - objective
 objective2 - objective
 objective3 - objective
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
(init-j3u_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-j3u_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-j3u_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-b8w_observe-vis_agent0_objective3_waypoint3 ?dd - dummy)
(dummy-left-b8w_observe-vis_agent0_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-nbd_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-nbd_observe-soil_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-ij0_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(dummy-left-ij0_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-e3i_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-e3i_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-88q_sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-zy8_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-5yn_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-ku5_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-hak_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-hak_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-z3w_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-ru0_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-f5m_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(dummy-left-f5m_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-g0j_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-g0j_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-esq_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-st1_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-auz_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-knj_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-xof_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-g1n_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-g0j_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-1gb_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-2tq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-dwj_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-r2c_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-es7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-f5m_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-z1f_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-z1f_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-72b_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-dhp_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-vop_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-n4f_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-v9d_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-z1f_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-8pu_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-il9_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-9o6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-ss2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-hak_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-wg4_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-m7x_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-9j9_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-my8_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-my8_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-vhe_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-a01_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-e63_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-my8_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-8gd_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-mrp_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-e3i_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-g7n_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-evy_sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-x8i_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-ub6_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-svz_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-svz_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-ew1_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-wwd_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-49x_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(dummy-left-49x_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-eow_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-eow_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-8y9_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-19q_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-h2m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-vhc_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-k7j_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-5pz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-eow_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-5vk_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-d4t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-m04_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-mm7_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-z9g_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-49x_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-cyk_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-cyk_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-i3b_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-pk2_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-mso_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-ymz_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-48t_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-cyk_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-8j2_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-l53_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-qpi_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-w5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-svz_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-o6h_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-5hi_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-8ww_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-xpl_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-xpl_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-r1l_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-exo_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-esn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-xpl_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-n10_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-o13_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-ij0_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(pre-q2n_sample-rock_agent1_agent2_a1store_waypoint5 ?dd - dummy)
(pre-32p_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-m8w_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-g2e_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-q5l_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-q5l_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-7k4_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-q3d_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-sl1_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(dummy-left-sl1_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-3sn_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-3sn_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-dae_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-rrq_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-ps4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-j3w_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-6f3_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-z85_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-3sn_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-kyw_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-bqq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-577_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-z8r_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-vak_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-sl1_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-cj7_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-cj7_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-rzk_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-ybn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-ryr_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-iuy_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-k2n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-cj7_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-6t3_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-0bu_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-ywt_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-tzt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-q5l_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-nx3_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-l45_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-5hi_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-uwx_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-uwx_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-jt2_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-9xn_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-iof_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-uwx_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-dzr_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-qlh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-nbd_observe-soil_agent2_waypoint4 ?dd - dummy)
(pre-m3c_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-1el_drop_agent2_a2store ?dd - dummy)
(pre-3ea_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-x6z_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(immediate-dummy-2ou_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(dummy-left-2ou_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-em6_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-gqr_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-gqr_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-1z9_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-fkk_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-fkk_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-oj8_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-m4s_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-yso_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-g2r_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-lqp_sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-1l0_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-xq9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-u9m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-fkk_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-uj5_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-zvd_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(pre-dv4_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-bo4_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-clc_sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-he6_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-g8t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-gqr_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-p5a_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-bao_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-ir4_sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-k3k_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-v1u_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-x87_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-x87_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-kch_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-wkb_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-vz9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-x87_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-yql_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-dob_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-2ou_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-3eo_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-5yv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-z4d_sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-a0v_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-uru_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-rug_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-rug_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-855_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-l2v_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-8qk_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-rug_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-oub_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-sgo_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-b8w_observe-vis_agent0_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-j1w_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
(dummy-left-j1w_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-g2k_observe-soil_agent1_waypoint5 ?dd - dummy)
(dummy-left-g2k_observe-soil_agent1_waypoint5 ?dd - dummy)
(immediate-dummy-mvi_observe-vis_agent1_objective1_waypoint5 ?dd - dummy)
(dummy-left-mvi_observe-vis_agent1_objective1_waypoint5 ?dd - dummy)
(pre-dwt_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-qbh_drop_agent2_a2store ?dd - dummy)
(pre-og6_sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-fft_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-frl_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-36h_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(pre-kkj_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-crt_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(pre-glz_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-7l2_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-6vk_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-6vk_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-xig_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(dummy-left-xig_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-bsp_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-dao_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-fnb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-xig_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-5dj_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-kn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-6vk_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-cck_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-8be_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-mvi_observe-vis_agent1_objective1_waypoint5 ?dd - dummy)
(pre-9jz_sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-sr5_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-eit_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-jsj_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(pre-f1o_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-2hk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(pre-57e_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-skh_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-qw8_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-qw8_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-63t_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(dummy-left-63t_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-9zg_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-bci_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-zus_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-63t_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-sae_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-rwv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-qw8_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-9fv_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-rk5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-g2k_observe-soil_agent1_waypoint5 ?dd - dummy)
(pre-9ce_sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-aq8_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-sc4_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-6hp_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(pre-aj3_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-ddz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(pre-fcw_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-2m6_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-9by_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-9by_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-wqr_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(dummy-left-wqr_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-mpt_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-yax_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-cbv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-wqr_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-jhs_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-yw3_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-9by_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-zrm_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-26b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-j1w_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-6lh_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-6lh_observe-soil_agent2_waypoint4 ?dd - dummy)
(pre-ihz_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-hap_drop_agent2_a2store ?dd - dummy)
(pre-k5v_sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-mu2_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-5li_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-fac_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(pre-d55_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-dd0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(pre-dku_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-l4t_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-qpd_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-qpd_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-lp3_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(dummy-left-lp3_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-74a_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-f9l_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-7lb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-lp3_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-a3f_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-ew5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-qpd_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-83q_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-mfd_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-6lh_observe-soil_agent2_waypoint4 ?dd - dummy)
(pre-8e0_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-58a_drop_agent2_a2store ?dd - dummy)
(pre-c6e_sample-rock_agent2_agent1_a2store_waypoint5 ?dd - dummy)
(pre-zt6_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-pig_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-c85_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(pre-tg1_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-zcq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(pre-ohi_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-ysw_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-w9k_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-w9k_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-090_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(dummy-left-090_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-jkb_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(pre-l5p_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-6kj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-090_observe-vis_agent2_objective2_waypoint2 ?dd - dummy)
(pre-jzn_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-z54_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-w9k_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-u39_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-ljb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-j3u_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-jq0_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(dummy-left-jq0_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-2nn_observe-soil_agent2_waypoint5 ?dd - dummy)
(dummy-left-2nn_observe-soil_agent2_waypoint5 ?dd - dummy)
(pre-scu_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(immediate-dummy-vyj_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(dummy-left-vyj_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-p2y_sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-4il_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-l22_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-gfs_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-gfs_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-48w_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-1cg_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-koz_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(dummy-left-koz_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-za3_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-za3_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-lsr_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-coi_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-zxa_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-ejc_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-g0u_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-y9q_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-za3_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-jdl_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-h7p_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-009_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-olk_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-t02_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-koz_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-4sz_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-4sz_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-4jo_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-trr_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-s0z_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-uvm_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-vwo_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-4sz_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-jp6_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-sev_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-blx_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-ikm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-gfs_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-zus_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-jlh_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-54z_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-czv_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-czv_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-3zg_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-0gf_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(dummy-left-0gf_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-x3y_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-5kl_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-5mo_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-0gf_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-d28_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-1lg_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-czv_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-f2f_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-gkj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-vyj_observe-vis_agent0_objective1_waypoint0 ?dd - dummy)
(pre-ez2_sample-rock_agent1_agent2_a1store_waypoint4 ?dd - dummy)
(pre-ygz_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-lyp_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-ole_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-ole_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-rvr_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-y4k_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-hn9_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(dummy-left-hn9_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-31b_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-31b_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-1lo_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-px6_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-bt5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-6sd_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-5gd_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-vux_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-31b_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-9zq_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-3j0_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-zr8_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-597_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-jl7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-hn9_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-075_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-075_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-l6a_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-sn2_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-jvc_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-n2x_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-gw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-075_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-l3c_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-v8b_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-y0g_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-8gu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-ole_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-8wg_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-gej_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-hjy_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-wql_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(dummy-left-wql_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-yux_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-xlz_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-xlz_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-kym_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-e7s_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-5f8_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-xlz_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-4wg_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-4uh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-wql_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-hk9_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-5hx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-2nn_observe-soil_agent2_waypoint5 ?dd - dummy)
(immediate-dummy-o9m_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-left-o9m_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-eym_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-07o_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-07o_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-obo_sample-rock_agent2_agent0_a2store_waypoint4 ?dd - dummy)
(pre-ryr_drop_agent2_a2store ?dd - dummy)
(pre-h4y_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-yk9_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-knx_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-knx_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-s26_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-eqj_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-y1d_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-b5y_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(dummy-left-b5y_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-a9j_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-fei_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-upv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-1m6_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-zaq_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-zaq_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-kh6_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-xdv_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-zw6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-zaq_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-qvq_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-ezj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-b5y_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-lp2_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-3h4_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(pre-psg_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-1z7_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-b0q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-knx_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-apq_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-2ot_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-gn2_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-cln_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-mzs_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-1p0_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(dummy-left-1p0_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-lp6_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-d52_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-d52_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-v5z_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-06n_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-yx5_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-d52_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-qpg_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-aml_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-1p0_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-0ec_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-a05_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-07o_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-rc3_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-yak_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-h0k_sample-rock_agent2_agent0_a2store_waypoint4 ?dd - dummy)
(pre-t6t_drop_agent2_a2store ?dd - dummy)
(pre-xgt_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-4qr_communicate-rock-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-ooy_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-r6j_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-m0d_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(dummy-left-m0d_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-ovl_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-4df_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-4df_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-7e2_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-5c6_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-dq6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-4df_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-u6t_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-wmf_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-m0d_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-25y_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-uwm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-o9m_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-h9g_sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-ulj_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(immediate-dummy-g2e_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-g2e_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-9y3_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-o0c_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-o0c_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-09o_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-vk7_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-169_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-0zo_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(dummy-left-0zo_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-8v0_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-wkr_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-3zf_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-wl0_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-w7x_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-w7x_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-2vh_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-ziw_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-cb6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-w7x_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-k8m_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-opc_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-0zo_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-g3w_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-5ig_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(pre-omo_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-lua_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-7ex_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-o0c_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-y8m_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-j9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-2ar_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-15u_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-4ml_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-fpj_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(dummy-left-fpj_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-cqr_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-d1z_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-d1z_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-qni_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-3ox_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-vf7_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-d1z_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-iv9_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-9eq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-fpj_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-0n3_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-edm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-g2e_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-wua_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-dgf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-04y_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-guh_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(pre-x2v_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-d9w_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(dummy-left-d9w_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-4f0_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-wv0_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-wv0_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-lgk_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-3lc_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-y9y_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-wv0_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-m43_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-hzh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-d9w_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-r5k_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-jcb_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-jq0_observe-vis_agent2_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-2ll_observe-soil_agent2_waypoint5 ?dd - dummy)
(dummy-left-2ll_observe-soil_agent2_waypoint5 ?dd - dummy)
(pre-4xo_sample-soil_agent2_a2store_waypoint4 ?dd - dummy)
(pre-hk7_sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-wa8_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-j1a_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-57t_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-57t_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-vsv_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-sl8_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-25j_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(dummy-left-25j_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-omk_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-omk_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-pnt_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-zs4_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-88y_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-xqy_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-103_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-487_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-omk_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-hw8_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-1xt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-qka_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-mb1_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-f28_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-25j_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-wgx_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-wgx_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-ouj_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-f68_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-48b_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-61u_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-f87_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-wgx_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-lhz_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-mxz_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-9ji_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-4v7_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-57t_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-6sy_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-0eu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-gpo_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-yb0_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(dummy-left-yb0_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-97z_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-sts_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-sts_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-phd_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-43v_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-iks_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-sts_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-7pk_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-blk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-yb0_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-a7p_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-mfx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-2ll_observe-soil_agent2_waypoint5 ?dd - dummy)
(pre-a8t_sample-soil_agent2_a2store_waypoint5 ?dd - dummy)
(pre-swg_sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-9m0_calibrate_agent2_camera2_objective2_waypoint1 ?dd - dummy)
(pre-aqz_communicate-soil-data_agent2_general_waypoint1_waypoint0 ?dd - dummy)
(immediate-dummy-zoo_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(dummy-left-zoo_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-4cy_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-ds4_calibrate_agent2_camera2_objective2_waypoint5 ?dd - dummy)
(immediate-dummy-bia_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(dummy-left-bia_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-dxz_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-dxz_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-p99_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-jfo_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-5pj_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(pre-ulg_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-oi7_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-178_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-dxz_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-vl6_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-6g5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-1jw_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(pre-39z_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-tp9_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-bia_observe-vis_agent2_objective3_waypoint5 ?dd - dummy)
(immediate-dummy-qtn_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(dummy-left-qtn_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-11k_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-l39_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-fj0_calibrate_agent2_camera2_objective2_waypoint2 ?dd - dummy)
(pre-ryk_take-image_agent2_waypoint2_objective2_camera2_low-res ?dd - dummy)
(pre-6jl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 ?dd - dummy)
(dummy-right-qtn_observe-vis_agent2_objective2_waypoint5 ?dd - dummy)
(pre-bsl_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-3t2_take-image_agent2_waypoint5_objective2_camera2_low-res ?dd - dummy)
(pre-ds6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(pre-1cq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-zoo_observe-vis_agent2_objective2_waypoint1 ?dd - dummy)
(pre-tb6_take-image_agent2_waypoint1_objective2_camera2_low-res ?dd - dummy)
(pre-h8y_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 ?dd - dummy)
(pre-t9f_calibrate_agent2_camera3_objective3_waypoint3 ?dd - dummy)
(immediate-dummy-xjs_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(dummy-left-xjs_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-716_calibrate_agent2_camera3_objective3_waypoint0 ?dd - dummy)
(immediate-dummy-eju_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(dummy-left-eju_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-m6z_calibrate_agent2_camera3_objective3_waypoint5 ?dd - dummy)
(pre-nr7_take-image_agent2_waypoint5_objective3_camera3_colour ?dd - dummy)
(pre-xxa_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 ?dd - dummy)
(dummy-right-eju_observe-vis_agent2_objective3_waypoint0 ?dd - dummy)
(pre-vyj_take-image_agent2_waypoint0_objective3_camera3_colour ?dd - dummy)
(pre-ot1_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
(dummy-right-xjs_observe-vis_agent2_objective3_waypoint3 ?dd - dummy)
(pre-tvi_take-image_agent2_waypoint3_objective3_camera3_colour ?dd - dummy)
(pre-4k0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 ?dd - dummy)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action act-dummy-j3u_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-j3u_observe-rock_agent2_waypoint4 dd) (not (dummy-left-j3u_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-j3u_observe-rock_agent2_waypoint4 dd)))
:effect (immediate-dummy-j3u_observe-rock_agent2_waypoint4 dd)
)

(:action dummy-left-j3u_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-j3u_observe-rock_agent2_waypoint4 dd) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-j3u_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (init-j3u_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-j3u_observe-rock_agent2_waypoint4 dd)) (dummy-left-j3u_observe-rock_agent2_waypoint4 dd))
)

(:action dummy-right-j3u_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-j3u_observe-rock_agent2_waypoint4 dd) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-j3u_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (init-j3u_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-j3u_observe-rock_agent2_waypoint4 dd)) (dummy-right-j3u_observe-rock_agent2_waypoint4 dd))
)

(:action act-dummy-b8w_observe-vis_agent0_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j3u_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint3) (not (dummy-left-b8w_observe-vis_agent0_objective3_waypoint3 dd)) (not (dummy-right-b8w_observe-vis_agent0_objective3_waypoint3 dd)))
:effect (immediate-dummy-b8w_observe-vis_agent0_objective3_waypoint3 dd)
)

(:action dummy-left-b8w_observe-vis_agent0_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j3u_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-b8w_observe-vis_agent0_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-b8w_observe-vis_agent0_objective3_waypoint3 dd)) (dummy-left-b8w_observe-vis_agent0_objective3_waypoint3 dd))
)

(:action dummy-right-b8w_observe-vis_agent0_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j3u_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-b8w_observe-vis_agent0_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-b8w_observe-vis_agent0_objective3_waypoint3 dd)) (dummy-right-b8w_observe-vis_agent0_objective3_waypoint3 dd))
)

(:action act-dummy-nbd_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b8w_observe-vis_agent0_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (dummy-left-nbd_observe-soil_agent2_waypoint4 dd)) (not (dummy-right-nbd_observe-soil_agent2_waypoint4 dd)))
:effect (immediate-dummy-nbd_observe-soil_agent2_waypoint4 dd)
)

(:action dummy-left-nbd_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b8w_observe-vis_agent0_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-nbd_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-nbd_observe-soil_agent2_waypoint4 dd)) (dummy-left-nbd_observe-soil_agent2_waypoint4 dd))
)

(:action dummy-right-nbd_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b8w_observe-vis_agent0_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-nbd_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-nbd_observe-soil_agent2_waypoint4 dd)) (dummy-right-nbd_observe-soil_agent2_waypoint4 dd))
)

(:action act-dummy-ij0_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nbd_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (dummy-left-ij0_observe-vis_agent2_objective1_waypoint4 dd)) (not (dummy-right-ij0_observe-vis_agent2_objective1_waypoint4 dd)))
:effect (immediate-dummy-ij0_observe-vis_agent2_objective1_waypoint4 dd)
)

(:action dummy-left-ij0_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nbd_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-ij0_observe-vis_agent2_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-ij0_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-left-ij0_observe-vis_agent2_objective1_waypoint4 dd))
)

(:action dummy-right-ij0_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-nbd_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-ij0_observe-vis_agent2_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-ij0_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-right-ij0_observe-vis_agent2_objective1_waypoint4 dd))
)

(:action act-dummy-e3i_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ij0_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint0) (not (dummy-left-e3i_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-e3i_observe-vis_agent0_objective1_waypoint0 dd)))
:effect (immediate-dummy-e3i_observe-vis_agent0_objective1_waypoint0 dd)
)

(:action dummy-left-e3i_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ij0_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-e3i_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-e3i_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-e3i_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action dummy-right-e3i_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ij0_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-e3i_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-e3i_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-e3i_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action act-88q_sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-e3i_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint5))
:effect (pre-88q_sample-rock_agent1_agent2_a1store_waypoint5 dd)
)

(:action act-zy8_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-88q_sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-zy8_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-88q_sample-rock_agent1_agent2_a1store_waypoint5 dd)))
)

(:action act-5yn_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-zy8_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-5yn_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-zy8_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-ku5_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5yn_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-ku5_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-5yn_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-dummy-hak_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-ku5_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1) (not (dummy-left-hak_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-hak_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-hak_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-hak_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-hak_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-hak_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-hak_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-hak_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-hak_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-hak_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-hak_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-z3w_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hak_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-z3w_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-ru0_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-z3w_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-ru0_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-z3w_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-dummy-f5m_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-ru0_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-f5m_observe-vis_agent2_objective3_waypoint5 dd)) (not (dummy-right-f5m_observe-vis_agent2_objective3_waypoint5 dd)))
:effect (immediate-dummy-f5m_observe-vis_agent2_objective3_waypoint5 dd)
)

(:action dummy-left-f5m_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective3 waypoint5)) (immediate-dummy-f5m_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-f5m_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-left-f5m_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action dummy-right-f5m_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective3 waypoint5) (immediate-dummy-f5m_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-f5m_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-right-f5m_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action act-dummy-g0j_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f5m_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (dummy-left-g0j_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-g0j_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-g0j_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-g0j_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f5m_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-g0j_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-g0j_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-g0j_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-g0j_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f5m_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-g0j_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-g0j_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-g0j_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-esq_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g0j_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective3 waypoint5)) (at agent2 waypoint2))
:effect (pre-esq_calibrate_agent2_camera2_objective2_waypoint2 dd)
)

(:action act-st1_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-esq_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-st1_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-esq_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-auz_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-st1_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-auz_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-st1_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-knj_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-auz_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-knj_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-auz_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-xof_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-knj_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-xof_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-knj_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-g1n_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-xof_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-g1n_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-xof_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-g1n_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-g1n_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-g1n_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-1gb_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-g0j_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5))
:effect (pre-1gb_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-2tq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-1gb_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-2tq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-1gb_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-dwj_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-2tq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-dwj_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-2tq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-r2c_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-dwj_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-r2c_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-dwj_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-es7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-r2c_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-es7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-r2c_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-es7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-es7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-es7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-dummy-z1f_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f5m_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (dummy-left-z1f_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-z1f_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-z1f_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-z1f_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f5m_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-z1f_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-z1f_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-z1f_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-z1f_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f5m_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-z1f_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-z1f_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-z1f_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-72b_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-z1f_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-72b_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-dhp_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-72b_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-dhp_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-72b_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-vop_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-dhp_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-vop_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-dhp_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-n4f_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-vop_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-n4f_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-vop_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-v9d_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-n4f_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-v9d_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-n4f_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-v9d_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-v9d_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-v9d_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-8pu_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-z1f_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-8pu_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-il9_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-8pu_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint5))
:effect 
(and (pre-il9_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-8pu_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-9o6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-il9_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-9o6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-il9_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-ss2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9o6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-ss2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-9o6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-ss2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-ss2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-ss2_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-wg4_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hak_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-wg4_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-m7x_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-wg4_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-m7x_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-wg4_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-9j9_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-m7x_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-9j9_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-m7x_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-my8_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9j9_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-my8_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-my8_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-my8_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-my8_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-my8_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-my8_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-my8_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-my8_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-my8_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-my8_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-my8_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-vhe_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-my8_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-vhe_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-a01_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-vhe_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-a01_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-vhe_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-e63_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-a01_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-e63_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-a01_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-e63_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-e63_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-e63_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-8gd_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-my8_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-8gd_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-mrp_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-8gd_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-mrp_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-8gd_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-mrp_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-mrp_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-mrp_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-g7n_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-e3i_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint1))
:effect (pre-g7n_calibrate_agent2_camera2_objective2_waypoint1 dd)
)

(:action act-evy_sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-g7n_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint5))
:effect 
(and (pre-evy_sample-rock_agent1_agent2_a1store_waypoint5 dd) (not (pre-g7n_calibrate_agent2_camera2_objective2_waypoint1 dd)))
)

(:action act-x8i_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-evy_sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-x8i_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-evy_sample-rock_agent1_agent2_a1store_waypoint5 dd)))
)

(:action act-ub6_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-x8i_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-ub6_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-x8i_sample-soil_agent2_a2store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-dummy-svz_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-ub6_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1) (not (dummy-left-svz_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-svz_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-svz_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-svz_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-svz_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-svz_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-svz_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-svz_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-svz_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-svz_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-svz_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-ew1_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-svz_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-ew1_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-wwd_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-ew1_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-wwd_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-ew1_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-dummy-49x_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-wwd_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-49x_observe-vis_agent2_objective3_waypoint5 dd)) (not (dummy-right-49x_observe-vis_agent2_objective3_waypoint5 dd)))
:effect (immediate-dummy-49x_observe-vis_agent2_objective3_waypoint5 dd)
)

(:action dummy-left-49x_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective3 waypoint5)) (immediate-dummy-49x_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-49x_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-left-49x_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action dummy-right-49x_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective3 waypoint5) (immediate-dummy-49x_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-49x_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-right-49x_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action act-dummy-eow_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-49x_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (dummy-left-eow_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-eow_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-eow_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-eow_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-49x_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-eow_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-eow_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-eow_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-eow_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-49x_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-eow_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-eow_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-eow_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-8y9_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-eow_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective3 waypoint5)) (at agent2 waypoint2))
:effect (pre-8y9_calibrate_agent2_camera2_objective2_waypoint2 dd)
)

(:action act-19q_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-8y9_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-19q_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-8y9_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-h2m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-19q_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-h2m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-19q_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-vhc_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-h2m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-vhc_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-h2m_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-k7j_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-vhc_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-k7j_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-vhc_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-5pz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k7j_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-5pz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-k7j_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-5pz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-5pz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-5pz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-5vk_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-eow_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5))
:effect (pre-5vk_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-d4t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5vk_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-d4t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-5vk_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-m04_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-d4t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-m04_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-d4t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-mm7_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-m04_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-mm7_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-m04_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-z9g_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-mm7_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-z9g_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-mm7_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-z9g_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-z9g_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-z9g_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-dummy-cyk_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-49x_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (dummy-left-cyk_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-cyk_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-cyk_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-cyk_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-49x_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-cyk_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-cyk_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-cyk_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-cyk_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-49x_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-cyk_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-cyk_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-cyk_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-i3b_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cyk_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-i3b_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-pk2_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-i3b_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-pk2_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-i3b_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-mso_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-pk2_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-mso_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-pk2_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-ymz_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-mso_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-ymz_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-mso_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-48t_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ymz_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-48t_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-ymz_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-48t_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-48t_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-48t_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-8j2_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cyk_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-8j2_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-l53_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-8j2_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint5))
:effect 
(and (pre-l53_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-8j2_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-qpi_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-l53_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-qpi_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-l53_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-w5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-qpi_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-w5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-qpi_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-w5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-w5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-w5q_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-o6h_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-svz_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-o6h_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-5hi_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-o6h_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-5hi_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-o6h_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-8ww_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5hi_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-8ww_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-5hi_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-xpl_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-8ww_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-xpl_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-xpl_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-xpl_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-xpl_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-xpl_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-xpl_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-xpl_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-xpl_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-xpl_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-xpl_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-xpl_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-r1l_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xpl_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-r1l_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-exo_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-r1l_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-exo_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-r1l_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-esn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-exo_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-esn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-exo_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-esn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-esn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-esn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-n10_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xpl_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-n10_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-o13_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-n10_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-o13_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-n10_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-o13_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-o13_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-o13_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-q2n_sample-rock_agent1_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ij0_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint5))
:effect (pre-q2n_sample-rock_agent1_agent2_a1store_waypoint5 dd)
)

(:action act-32p_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-q2n_sample-rock_agent1_agent2_a1store_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-32p_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-q2n_sample-rock_agent1_agent2_a1store_waypoint5 dd)))
)

(:action act-m8w_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-32p_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-m8w_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-32p_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-g2e_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-m8w_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-g2e_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-m8w_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-dummy-q5l_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-g2e_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1) (not (dummy-left-q5l_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-q5l_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-q5l_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-q5l_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-q5l_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-q5l_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-q5l_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-q5l_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-q5l_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-q5l_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-q5l_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-7k4_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-q5l_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-7k4_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-q3d_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-7k4_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-q3d_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-7k4_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-dummy-sl1_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-q3d_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-sl1_observe-vis_agent2_objective3_waypoint5 dd)) (not (dummy-right-sl1_observe-vis_agent2_objective3_waypoint5 dd)))
:effect (immediate-dummy-sl1_observe-vis_agent2_objective3_waypoint5 dd)
)

(:action dummy-left-sl1_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective3 waypoint5)) (immediate-dummy-sl1_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-sl1_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-left-sl1_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action dummy-right-sl1_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective3 waypoint5) (immediate-dummy-sl1_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-sl1_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-right-sl1_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action act-dummy-3sn_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sl1_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (dummy-left-3sn_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-3sn_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-3sn_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-3sn_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sl1_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-3sn_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-3sn_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-3sn_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-3sn_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sl1_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-3sn_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-3sn_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-3sn_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-dae_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3sn_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective3 waypoint5)) (at agent2 waypoint2))
:effect (pre-dae_calibrate_agent2_camera2_objective2_waypoint2 dd)
)

(:action act-rrq_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-dae_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-rrq_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-dae_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-ps4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-rrq_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-ps4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-rrq_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-j3w_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ps4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-j3w_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-ps4_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-6f3_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-j3w_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-6f3_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-j3w_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-z85_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-6f3_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-z85_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-6f3_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-z85_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-z85_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-z85_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-kyw_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3sn_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5))
:effect (pre-kyw_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-bqq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-kyw_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-bqq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-kyw_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-577_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-bqq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-577_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-bqq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-z8r_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-577_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-z8r_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-577_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-vak_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-z8r_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-vak_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-z8r_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-vak_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-vak_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-vak_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-dummy-cj7_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sl1_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (dummy-left-cj7_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-cj7_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-cj7_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-cj7_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sl1_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-cj7_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-cj7_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-cj7_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-cj7_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sl1_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-cj7_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-cj7_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-cj7_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-rzk_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-cj7_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-rzk_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-ybn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-rzk_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-ybn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-rzk_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-ryr_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-ybn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-ryr_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-ybn_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-iuy_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-ryr_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-iuy_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-ryr_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-k2n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-iuy_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-k2n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-iuy_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-k2n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-k2n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-k2n_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-6t3_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-cj7_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-6t3_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-0bu_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-6t3_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint5))
:effect 
(and (pre-0bu_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-6t3_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-ywt_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-0bu_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-ywt_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-0bu_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-tzt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ywt_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-tzt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-ywt_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-tzt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-tzt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-tzt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-nx3_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-q5l_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-nx3_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-l45_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-nx3_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-l45_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-nx3_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-5hi_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-l45_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-5hi_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-l45_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-uwx_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5hi_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-uwx_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-uwx_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-uwx_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-uwx_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-uwx_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-uwx_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-uwx_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-uwx_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-uwx_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-uwx_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-uwx_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-jt2_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-uwx_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-jt2_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-9xn_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-jt2_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-9xn_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-jt2_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-iof_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9xn_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-iof_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-9xn_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-iof_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-iof_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-iof_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-dzr_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-uwx_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-dzr_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-qlh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-dzr_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-qlh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-dzr_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-qlh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-qlh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-qlh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-m3c_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-nbd_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (not (visible-from objective3 waypoint3)) (not (at-rock-sample waypoint4)) (at agent2 waypoint4))
:effect (pre-m3c_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-1el_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition (pre-m3c_sample-soil_agent2_a2store_waypoint4 dd)
:effect 
(and (pre-1el_drop_agent2_a2store dd) (not (pre-m3c_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-3ea_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-1el_drop_agent2_a2store dd) (at agent2 waypoint1))
:effect 
(and (pre-3ea_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-1el_drop_agent2_a2store dd)) (communicated-soil-data ))
)

(:action act-x6z_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-3ea_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-x6z_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-3ea_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-2ou_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-x6z_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2) (not (dummy-left-2ou_observe-vis_agent2_objective2_waypoint2 dd)) (not (dummy-right-2ou_observe-vis_agent2_objective2_waypoint2 dd)))
:effect (immediate-dummy-2ou_observe-vis_agent2_objective2_waypoint2 dd)
)

(:action dummy-left-2ou_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-2ou_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-2ou_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-left-2ou_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action dummy-right-2ou_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-2ou_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-2ou_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-right-2ou_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action act-em6_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2ou_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (at agent2 waypoint1))
:effect (pre-em6_calibrate_agent2_camera2_objective2_waypoint1 dd)
)

(:action act-dummy-gqr_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-em6_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1) (not (dummy-left-gqr_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-gqr_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-gqr_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-gqr_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-gqr_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-gqr_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-gqr_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-gqr_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-gqr_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-gqr_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-gqr_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-1z9_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gqr_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint0))
:effect (pre-1z9_calibrate_agent2_camera3_objective3_waypoint0 dd)
)

(:action act-dummy-fkk_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-1z9_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-fkk_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-fkk_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-fkk_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-fkk_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-fkk_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-fkk_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-fkk_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-fkk_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-fkk_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-fkk_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-fkk_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-oj8_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fkk_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-oj8_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-m4s_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-oj8_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-m4s_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-oj8_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-yso_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-m4s_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-yso_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-m4s_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)

(:action act-g2r_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-yso_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint5))
:effect 
(and (pre-g2r_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-yso_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-lqp_sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-g2r_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-lqp_sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-g2r_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-1l0_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-lqp_sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-1l0_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-lqp_sample-rock_agent2_agent1_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-xq9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-1l0_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-xq9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-1l0_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-u9m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-xq9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-u9m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-xq9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-u9m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-u9m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-u9m_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-uj5_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fkk_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-uj5_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-zvd_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-uj5_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-zvd_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-uj5_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action act-dv4_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-zvd_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (at agent2 waypoint5))
:effect 
(and (pre-dv4_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-zvd_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-bo4_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-dv4_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-bo4_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-dv4_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)

(:action act-clc_sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-bo4_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint5))
:effect 
(and (pre-clc_sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-bo4_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-he6_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-clc_sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-he6_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-clc_sample-rock_agent2_agent1_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-g8t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-he6_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-g8t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-he6_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-g8t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-g8t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-g8t_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-p5a_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gqr_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-p5a_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-bao_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-p5a_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-bao_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-p5a_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-ir4_sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-bao_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint5))
:effect 
(and (pre-ir4_sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-bao_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-k3k_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ir4_sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-k3k_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-ir4_sample-rock_agent2_agent1_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-v1u_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k3k_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-v1u_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-k3k_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-x87_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-v1u_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-x87_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-x87_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-x87_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-x87_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-x87_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-x87_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-x87_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-x87_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-x87_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-x87_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-x87_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-kch_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-x87_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-kch_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-wkb_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-kch_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-wkb_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-kch_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-vz9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-wkb_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-vz9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-wkb_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-vz9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-vz9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-vz9_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-yql_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-x87_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-yql_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-dob_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-yql_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-dob_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-yql_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-dob_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-dob_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-dob_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-3eo_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2ou_observe-vis_agent2_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (at agent2 waypoint2))
:effect (pre-3eo_take-image_agent2_waypoint2_objective2_camera2_low-res dd)
)

(:action act-5yv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3eo_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-5yv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-3eo_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-z4d_sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-5yv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint5))
:effect 
(and (pre-z4d_sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-5yv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-a0v_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-z4d_sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-a0v_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-z4d_sample-rock_agent2_agent1_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-uru_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-a0v_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-uru_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-a0v_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-rug_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-uru_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-rug_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-rug_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-rug_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-rug_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-rug_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-rug_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-rug_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-rug_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-rug_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-rug_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-rug_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-855_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rug_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-855_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-l2v_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-855_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-l2v_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-855_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-8qk_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-l2v_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-8qk_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-l2v_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-8qk_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-8qk_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-8qk_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-oub_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-rug_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-oub_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-sgo_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-oub_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-sgo_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-oub_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-sgo_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-sgo_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-sgo_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-dummy-j1w_observe-vis_agent1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b8w_observe-vis_agent0_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (dummy-left-j1w_observe-vis_agent1_objective1_waypoint4 dd)) (not (dummy-right-j1w_observe-vis_agent1_objective1_waypoint4 dd)))
:effect (immediate-dummy-j1w_observe-vis_agent1_objective1_waypoint4 dd)
)

(:action dummy-left-j1w_observe-vis_agent1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b8w_observe-vis_agent0_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-j1w_observe-vis_agent1_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-j1w_observe-vis_agent1_objective1_waypoint4 dd)) (dummy-left-j1w_observe-vis_agent1_objective1_waypoint4 dd))
)

(:action dummy-right-j1w_observe-vis_agent1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b8w_observe-vis_agent0_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-j1w_observe-vis_agent1_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-j1w_observe-vis_agent1_objective1_waypoint4 dd)) (dummy-right-j1w_observe-vis_agent1_objective1_waypoint4 dd))
)

(:action act-dummy-g2k_observe-soil_agent1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1w_observe-vis_agent1_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (dummy-left-g2k_observe-soil_agent1_waypoint5 dd)) (not (dummy-right-g2k_observe-soil_agent1_waypoint5 dd)))
:effect (immediate-dummy-g2k_observe-soil_agent1_waypoint5 dd)
)

(:action dummy-left-g2k_observe-soil_agent1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1w_observe-vis_agent1_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-g2k_observe-soil_agent1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-g2k_observe-soil_agent1_waypoint5 dd)) (dummy-left-g2k_observe-soil_agent1_waypoint5 dd))
)

(:action dummy-right-g2k_observe-soil_agent1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-j1w_observe-vis_agent1_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-g2k_observe-soil_agent1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-g2k_observe-soil_agent1_waypoint5 dd)) (dummy-right-g2k_observe-soil_agent1_waypoint5 dd))
)

(:action act-dummy-mvi_observe-vis_agent1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g2k_observe-soil_agent1_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (dummy-left-mvi_observe-vis_agent1_objective1_waypoint5 dd)) (not (dummy-right-mvi_observe-vis_agent1_objective1_waypoint5 dd)))
:effect (immediate-dummy-mvi_observe-vis_agent1_objective1_waypoint5 dd)
)

(:action dummy-left-mvi_observe-vis_agent1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g2k_observe-soil_agent1_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-mvi_observe-vis_agent1_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-mvi_observe-vis_agent1_objective1_waypoint5 dd)) (dummy-left-mvi_observe-vis_agent1_objective1_waypoint5 dd))
)

(:action dummy-right-mvi_observe-vis_agent1_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g2k_observe-soil_agent1_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-mvi_observe-vis_agent1_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-mvi_observe-vis_agent1_objective1_waypoint5 dd)) (dummy-right-mvi_observe-vis_agent1_objective1_waypoint5 dd))
)

(:action act-dwt_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mvi_observe-vis_agent1_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint4))
:effect (pre-dwt_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-qbh_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition (pre-dwt_sample-soil_agent2_a2store_waypoint4 dd)
:effect 
(and (pre-qbh_drop_agent2_a2store dd) (not (pre-dwt_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-og6_sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-qbh_drop_agent2_a2store dd) (at agent2 waypoint5))
:effect 
(and (pre-og6_sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-qbh_drop_agent2_a2store dd)))
)

(:action act-fft_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-og6_sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-fft_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-og6_sample-rock_agent2_agent1_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-frl_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-fft_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-frl_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-fft_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-36h_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-frl_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-36h_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-frl_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-kkj_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-36h_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3))
:effect 
(and (pre-kkj_take-image_agent2_waypoint3_objective3_camera3_colour dd) (not (pre-36h_calibrate_agent2_camera3_objective3_waypoint3 dd)))
)

(:action act-crt_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-kkj_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-crt_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-kkj_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action act-glz_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-crt_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-glz_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-crt_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-7l2_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-glz_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint1))
:effect 
(and (pre-7l2_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-glz_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-dummy-6vk_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-7l2_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1) (not (dummy-left-6vk_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-6vk_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-6vk_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-6vk_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-6vk_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-6vk_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-6vk_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-6vk_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-6vk_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-6vk_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-6vk_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-dummy-xig_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6vk_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (not (dummy-left-xig_observe-vis_agent2_objective2_waypoint2 dd)) (not (dummy-right-xig_observe-vis_agent2_objective2_waypoint2 dd)))
:effect (immediate-dummy-xig_observe-vis_agent2_objective2_waypoint2 dd)
)

(:action dummy-left-xig_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6vk_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-xig_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-xig_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-left-xig_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action dummy-right-xig_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6vk_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-xig_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-xig_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-right-xig_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action act-bsp_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xig_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-bsp_calibrate_agent2_camera2_objective2_waypoint5 dd)
)

(:action act-dao_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-bsp_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-dao_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-bsp_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)

(:action act-fnb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-dao_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-fnb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-dao_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action goal-achieve-fnb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-fnb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-fnb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-5dj_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xig_observe-vis_agent2_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2))
:effect (pre-5dj_take-image_agent2_waypoint2_objective2_camera2_low-res dd)
)

(:action act-kn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5dj_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-kn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-5dj_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-kn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-kn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-kn5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-cck_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-6vk_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-cck_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-8be_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-cck_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-8be_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-cck_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-8be_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-8be_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-8be_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-9jz_sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mvi_observe-vis_agent1_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint5))
:effect (pre-9jz_sample-rock_agent2_agent1_a2store_waypoint5 dd)
)

(:action act-sr5_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-9jz_sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-sr5_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-9jz_sample-rock_agent2_agent1_a2store_waypoint5 dd)))
)

(:action act-eit_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-sr5_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-eit_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-sr5_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-rock-data ))
)

(:action act-jsj_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-eit_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-jsj_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-eit_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-f1o_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-jsj_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3))
:effect 
(and (pre-f1o_take-image_agent2_waypoint3_objective3_camera3_colour dd) (not (pre-jsj_calibrate_agent2_camera3_objective3_waypoint3 dd)))
)

(:action act-2hk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-f1o_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-2hk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-f1o_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action act-57e_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-2hk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-57e_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-2hk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-skh_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-57e_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint1))
:effect 
(and (pre-skh_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-57e_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-dummy-qw8_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-skh_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1) (not (dummy-left-qw8_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-qw8_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-qw8_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-qw8_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-qw8_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-qw8_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-qw8_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-qw8_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-qw8_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-qw8_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-qw8_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-dummy-63t_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qw8_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (not (dummy-left-63t_observe-vis_agent2_objective2_waypoint2 dd)) (not (dummy-right-63t_observe-vis_agent2_objective2_waypoint2 dd)))
:effect (immediate-dummy-63t_observe-vis_agent2_objective2_waypoint2 dd)
)

(:action dummy-left-63t_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qw8_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-63t_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-63t_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-left-63t_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action dummy-right-63t_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qw8_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-63t_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-63t_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-right-63t_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action act-9zg_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-63t_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-9zg_calibrate_agent2_camera2_objective2_waypoint5 dd)
)

(:action act-bci_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-9zg_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-bci_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-9zg_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)

(:action act-zus_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-bci_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-zus_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-bci_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action goal-achieve-zus_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-zus_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-zus_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-sae_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-63t_observe-vis_agent2_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2))
:effect (pre-sae_take-image_agent2_waypoint2_objective2_camera2_low-res dd)
)

(:action act-rwv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-sae_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-rwv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-sae_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-rwv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-rwv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-rwv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-9fv_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qw8_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-9fv_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-rk5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9fv_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-rk5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-9fv_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-rk5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-rk5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-rk5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-9ce_sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-g2k_observe-soil_agent1_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint5))
:effect (pre-9ce_sample-rock_agent2_agent1_a2store_waypoint5 dd)
)

(:action act-aq8_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-9ce_sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-aq8_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-9ce_sample-rock_agent2_agent1_a2store_waypoint5 dd)))
)

(:action act-sc4_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-aq8_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-sc4_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-aq8_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-rock-data ))
)

(:action act-6hp_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-sc4_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-6hp_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-sc4_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-aj3_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-6hp_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3))
:effect 
(and (pre-aj3_take-image_agent2_waypoint3_objective3_camera3_colour dd) (not (pre-6hp_calibrate_agent2_camera3_objective3_waypoint3 dd)))
)

(:action act-ddz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-aj3_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-ddz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-aj3_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action act-fcw_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-ddz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-fcw_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-ddz_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-2m6_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-fcw_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint1))
:effect 
(and (pre-2m6_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-fcw_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-dummy-9by_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-2m6_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1) (not (dummy-left-9by_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-9by_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-9by_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-9by_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-9by_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-9by_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-9by_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-9by_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-9by_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-9by_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-9by_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-dummy-wqr_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9by_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (not (dummy-left-wqr_observe-vis_agent2_objective2_waypoint2 dd)) (not (dummy-right-wqr_observe-vis_agent2_objective2_waypoint2 dd)))
:effect (immediate-dummy-wqr_observe-vis_agent2_objective2_waypoint2 dd)
)

(:action dummy-left-wqr_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9by_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-wqr_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-wqr_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-left-wqr_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action dummy-right-wqr_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9by_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-wqr_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-wqr_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-right-wqr_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action act-mpt_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wqr_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-mpt_calibrate_agent2_camera2_objective2_waypoint5 dd)
)

(:action act-yax_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-mpt_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-yax_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-mpt_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)

(:action act-cbv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-yax_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-cbv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-yax_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action goal-achieve-cbv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-cbv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-cbv_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-jhs_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wqr_observe-vis_agent2_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2))
:effect (pre-jhs_take-image_agent2_waypoint2_objective2_camera2_low-res dd)
)

(:action act-yw3_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-jhs_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-yw3_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-jhs_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-yw3_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-yw3_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-yw3_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-zrm_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9by_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-zrm_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-26b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-zrm_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-26b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-zrm_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-26b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-26b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-26b_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-6lh_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1w_observe-vis_agent1_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (dummy-left-6lh_observe-soil_agent2_waypoint4 dd)) (not (dummy-right-6lh_observe-soil_agent2_waypoint4 dd)))
:effect (immediate-dummy-6lh_observe-soil_agent2_waypoint4 dd)
)

(:action dummy-left-6lh_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1w_observe-vis_agent1_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-6lh_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-6lh_observe-soil_agent2_waypoint4 dd)) (dummy-left-6lh_observe-soil_agent2_waypoint4 dd))
)

(:action dummy-right-6lh_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j1w_observe-vis_agent1_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-6lh_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-6lh_observe-soil_agent2_waypoint4 dd)) (dummy-right-6lh_observe-soil_agent2_waypoint4 dd))
)

(:action act-ihz_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6lh_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (visible-from objective1 waypoint4) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint5))
:effect (pre-ihz_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-hap_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition (pre-ihz_sample-soil_agent2_a2store_waypoint5 dd)
:effect 
(and (pre-hap_drop_agent2_a2store dd) (not (pre-ihz_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-k5v_sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-hap_drop_agent2_a2store dd) (at agent2 waypoint5))
:effect 
(and (pre-k5v_sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-hap_drop_agent2_a2store dd)))
)

(:action act-mu2_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k5v_sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-mu2_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-k5v_sample-rock_agent2_agent1_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-5li_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-mu2_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-5li_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-mu2_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-fac_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-5li_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-fac_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-5li_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-d55_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-fac_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3))
:effect 
(and (pre-d55_take-image_agent2_waypoint3_objective3_camera3_colour dd) (not (pre-fac_calibrate_agent2_camera3_objective3_waypoint3 dd)))
)

(:action act-dd0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-d55_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-dd0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-d55_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action act-dku_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-dd0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-dku_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-dd0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-l4t_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-dku_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint1))
:effect 
(and (pre-l4t_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-dku_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-dummy-qpd_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-l4t_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1) (not (dummy-left-qpd_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-qpd_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-qpd_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-qpd_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-qpd_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-qpd_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-qpd_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-qpd_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-qpd_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-qpd_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-qpd_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-dummy-lp3_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qpd_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (not (dummy-left-lp3_observe-vis_agent2_objective2_waypoint2 dd)) (not (dummy-right-lp3_observe-vis_agent2_objective2_waypoint2 dd)))
:effect (immediate-dummy-lp3_observe-vis_agent2_objective2_waypoint2 dd)
)

(:action dummy-left-lp3_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qpd_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-lp3_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-lp3_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-left-lp3_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action dummy-right-lp3_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qpd_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-lp3_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-lp3_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-right-lp3_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action act-74a_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-lp3_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-74a_calibrate_agent2_camera2_objective2_waypoint5 dd)
)

(:action act-f9l_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-74a_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-f9l_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-74a_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)

(:action act-7lb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-f9l_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-7lb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-f9l_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action goal-achieve-7lb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-7lb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-7lb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-a3f_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-lp3_observe-vis_agent2_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2))
:effect (pre-a3f_take-image_agent2_waypoint2_objective2_camera2_low-res dd)
)

(:action act-ew5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-a3f_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-ew5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-a3f_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-ew5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-ew5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-ew5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-83q_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qpd_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-83q_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-mfd_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-83q_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-mfd_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-83q_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-mfd_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-mfd_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-mfd_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-8e0_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-6lh_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (visible-from objective1 waypoint4) (visible-from objective3 waypoint3) (not (at-rock-sample waypoint4)) (at agent2 waypoint4))
:effect (pre-8e0_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-58a_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition (pre-8e0_sample-soil_agent2_a2store_waypoint4 dd)
:effect 
(and (pre-58a_drop_agent2_a2store dd) (not (pre-8e0_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-c6e_sample-rock_agent2_agent1_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-58a_drop_agent2_a2store dd) (at agent2 waypoint5))
:effect 
(and (pre-c6e_sample-rock_agent2_agent1_a2store_waypoint5 dd) (not (pre-58a_drop_agent2_a2store dd)))
)

(:action act-zt6_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-c6e_sample-rock_agent2_agent1_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-zt6_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-c6e_sample-rock_agent2_agent1_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-pig_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-zt6_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-pig_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-zt6_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-c85_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-pig_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-c85_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-pig_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-tg1_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-c85_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3))
:effect 
(and (pre-tg1_take-image_agent2_waypoint3_objective3_camera3_colour dd) (not (pre-c85_calibrate_agent2_camera3_objective3_waypoint3 dd)))
)

(:action act-zcq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-tg1_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-zcq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-tg1_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action act-ohi_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-zcq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-ohi_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-zcq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-ysw_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-ohi_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint1))
:effect 
(and (pre-ysw_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-ohi_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-dummy-w9k_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-ysw_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1) (not (dummy-left-w9k_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-w9k_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-w9k_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-w9k_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-w9k_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-w9k_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-w9k_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-w9k_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-w9k_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-w9k_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-w9k_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-dummy-090_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w9k_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (not (dummy-left-090_observe-vis_agent2_objective2_waypoint2 dd)) (not (dummy-right-090_observe-vis_agent2_objective2_waypoint2 dd)))
:effect (immediate-dummy-090_observe-vis_agent2_objective2_waypoint2 dd)
)

(:action dummy-left-090_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w9k_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (not (visible-from objective2 waypoint2)) (immediate-dummy-090_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-090_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-left-090_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action dummy-right-090_observe-vis_agent2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w9k_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2) (visible-from objective2 waypoint2) (immediate-dummy-090_observe-vis_agent2_objective2_waypoint2 dd))
:effect 
(and (not (immediate-dummy-090_observe-vis_agent2_objective2_waypoint2 dd)) (dummy-right-090_observe-vis_agent2_objective2_waypoint2 dd))
)

(:action act-jkb_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-090_observe-vis_agent2_objective2_waypoint2 dd) (not (visible-from objective2 waypoint2)) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-jkb_calibrate_agent2_camera2_objective2_waypoint5 dd)
)

(:action act-l5p_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-jkb_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-l5p_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-jkb_calibrate_agent2_camera2_objective2_waypoint5 dd)))
)

(:action act-6kj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-l5p_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-6kj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-l5p_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action goal-achieve-6kj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-6kj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-6kj_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-jzn_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-090_observe-vis_agent2_objective2_waypoint2 dd) (visible-from objective2 waypoint2) (not (visible-from objective2 waypoint1)) (at agent2 waypoint2))
:effect (pre-jzn_take-image_agent2_waypoint2_objective2_camera2_low-res dd)
)

(:action act-z54_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-jzn_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-z54_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-jzn_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-z54_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-z54_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-z54_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-u39_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w9k_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-u39_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-ljb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-u39_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-ljb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-u39_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action goal-achieve-ljb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-ljb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-ljb_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-jq0_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j3u_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint4) (not (dummy-left-jq0_observe-vis_agent2_objective1_waypoint4 dd)) (not (dummy-right-jq0_observe-vis_agent2_objective1_waypoint4 dd)))
:effect (immediate-dummy-jq0_observe-vis_agent2_objective1_waypoint4 dd)
)

(:action dummy-left-jq0_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j3u_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-jq0_observe-vis_agent2_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-jq0_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-left-jq0_observe-vis_agent2_objective1_waypoint4 dd))
)

(:action dummy-right-jq0_observe-vis_agent2_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-j3u_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-jq0_observe-vis_agent2_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-jq0_observe-vis_agent2_objective1_waypoint4 dd)) (dummy-right-jq0_observe-vis_agent2_objective1_waypoint4 dd))
)

(:action act-dummy-2nn_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jq0_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (dummy-left-2nn_observe-soil_agent2_waypoint5 dd)) (not (dummy-right-2nn_observe-soil_agent2_waypoint5 dd)))
:effect (immediate-dummy-2nn_observe-soil_agent2_waypoint5 dd)
)

(:action dummy-left-2nn_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jq0_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-2nn_observe-soil_agent2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-2nn_observe-soil_agent2_waypoint5 dd)) (dummy-left-2nn_observe-soil_agent2_waypoint5 dd))
)

(:action dummy-right-2nn_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-jq0_observe-vis_agent2_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-2nn_observe-soil_agent2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-2nn_observe-soil_agent2_waypoint5 dd)) (dummy-right-2nn_observe-soil_agent2_waypoint5 dd))
)

(:action act-scu_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2nn_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent2 waypoint4))
:effect (pre-scu_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-dummy-vyj_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-scu_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint0) (not (dummy-left-vyj_observe-vis_agent0_objective1_waypoint0 dd)) (not (dummy-right-vyj_observe-vis_agent0_objective1_waypoint0 dd)))
:effect (immediate-dummy-vyj_observe-vis_agent0_objective1_waypoint0 dd)
)

(:action dummy-left-vyj_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-vyj_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-vyj_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-left-vyj_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action dummy-right-vyj_observe-vis_agent0_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-vyj_observe-vis_agent0_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-vyj_observe-vis_agent0_objective1_waypoint0 dd)) (dummy-right-vyj_observe-vis_agent0_objective1_waypoint0 dd))
)

(:action act-p2y_sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vyj_observe-vis_agent0_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (at agent2 waypoint4))
:effect (pre-p2y_sample-rock_agent1_agent2_a1store_waypoint4 dd)
)

(:action act-4il_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-p2y_sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-4il_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-p2y_sample-rock_agent1_agent2_a1store_waypoint4 dd)))
)

(:action act-l22_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-4il_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-l22_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-4il_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-dummy-gfs_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-l22_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1) (not (dummy-left-gfs_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-gfs_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-gfs_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-gfs_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-gfs_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-gfs_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-gfs_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-gfs_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-gfs_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-gfs_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-gfs_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-48w_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gfs_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-48w_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-1cg_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-48w_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-1cg_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-48w_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-dummy-koz_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-1cg_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-koz_observe-vis_agent2_objective3_waypoint5 dd)) (not (dummy-right-koz_observe-vis_agent2_objective3_waypoint5 dd)))
:effect (immediate-dummy-koz_observe-vis_agent2_objective3_waypoint5 dd)
)

(:action dummy-left-koz_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective3 waypoint5)) (immediate-dummy-koz_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-koz_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-left-koz_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action dummy-right-koz_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective3 waypoint5) (immediate-dummy-koz_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-koz_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-right-koz_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action act-dummy-za3_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-koz_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (dummy-left-za3_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-za3_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-za3_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-za3_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-koz_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-za3_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-za3_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-za3_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-za3_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-koz_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-za3_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-za3_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-za3_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-lsr_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-za3_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective3 waypoint5)) (at agent2 waypoint2))
:effect (pre-lsr_calibrate_agent2_camera2_objective2_waypoint2 dd)
)

(:action act-coi_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-lsr_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-coi_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-lsr_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-zxa_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-coi_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-zxa_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-coi_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-ejc_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-zxa_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-ejc_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-zxa_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-g0u_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-ejc_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-g0u_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-ejc_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-y9q_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-g0u_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-y9q_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-g0u_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-y9q_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-y9q_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-y9q_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-jdl_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-za3_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5))
:effect (pre-jdl_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-h7p_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-jdl_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-h7p_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-jdl_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-009_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-h7p_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-009_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-h7p_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-olk_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-009_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-olk_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-009_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-t02_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-olk_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-t02_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-olk_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-t02_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-t02_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-t02_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-dummy-4sz_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-koz_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (dummy-left-4sz_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-4sz_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-4sz_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-4sz_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-koz_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-4sz_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-4sz_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-4sz_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-4sz_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-koz_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-4sz_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-4sz_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-4sz_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-4jo_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4sz_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-4jo_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-trr_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-4jo_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-trr_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-4jo_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-s0z_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-trr_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-s0z_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-trr_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-uvm_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-s0z_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-uvm_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-s0z_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-vwo_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-uvm_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-vwo_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-uvm_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-vwo_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-vwo_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-vwo_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-jp6_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4sz_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-jp6_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-sev_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-jp6_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint5))
:effect 
(and (pre-sev_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-jp6_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-blx_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-sev_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-blx_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-sev_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-ikm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-blx_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-ikm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-blx_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-ikm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-ikm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-ikm_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-zus_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gfs_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-zus_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-jlh_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-zus_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-jlh_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-zus_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-54z_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-jlh_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-54z_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-jlh_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-czv_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-54z_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-czv_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-czv_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-czv_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-czv_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-czv_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-czv_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-czv_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-czv_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-czv_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-czv_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-czv_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-3zg_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-czv_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint3))
:effect (pre-3zg_calibrate_agent2_camera3_objective3_waypoint3 dd)
)

(:action act-dummy-0gf_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-3zg_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3) (not (dummy-left-0gf_observe-vis_agent2_objective3_waypoint3 dd)) (not (dummy-right-0gf_observe-vis_agent2_objective3_waypoint3 dd)))
:effect (immediate-dummy-0gf_observe-vis_agent2_objective3_waypoint3 dd)
)

(:action dummy-left-0gf_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-0gf_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-0gf_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-left-0gf_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action dummy-right-0gf_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-0gf_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-0gf_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-right-0gf_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action act-x3y_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0gf_observe-vis_agent2_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (at agent2 waypoint5))
:effect (pre-x3y_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-5kl_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-x3y_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-5kl_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-x3y_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-5mo_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5kl_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-5mo_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-5kl_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-5mo_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-5mo_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-5mo_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-d28_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0gf_observe-vis_agent2_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (at agent2 waypoint3))
:effect (pre-d28_take-image_agent2_waypoint3_objective3_camera3_colour dd)
)

(:action act-1lg_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-d28_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-1lg_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-d28_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action goal-achieve-1lg_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-1lg_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-1lg_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-f2f_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-czv_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-f2f_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-gkj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-f2f_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-gkj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-f2f_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-gkj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-gkj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-gkj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-ez2_sample-rock_agent1_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vyj_observe-vis_agent0_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (at agent2 waypoint4))
:effect (pre-ez2_sample-rock_agent1_agent2_a1store_waypoint4 dd)
)

(:action act-ygz_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-ez2_sample-rock_agent1_agent2_a1store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-ygz_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-ez2_sample-rock_agent1_agent2_a1store_waypoint4 dd)))
)

(:action act-lyp_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ygz_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-lyp_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-ygz_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-dummy-ole_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-lyp_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1) (not (dummy-left-ole_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-ole_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-ole_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-ole_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-ole_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-ole_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-ole_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-ole_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-ole_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-ole_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-ole_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-rvr_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ole_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-rvr_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-y4k_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-rvr_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-y4k_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-rvr_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-dummy-hn9_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-y4k_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-hn9_observe-vis_agent2_objective3_waypoint5 dd)) (not (dummy-right-hn9_observe-vis_agent2_objective3_waypoint5 dd)))
:effect (immediate-dummy-hn9_observe-vis_agent2_objective3_waypoint5 dd)
)

(:action dummy-left-hn9_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective3 waypoint5)) (immediate-dummy-hn9_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-hn9_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-left-hn9_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action dummy-right-hn9_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective3 waypoint5) (immediate-dummy-hn9_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-hn9_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-right-hn9_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action act-dummy-31b_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hn9_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (dummy-left-31b_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-31b_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-31b_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-31b_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hn9_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-31b_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-31b_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-31b_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-31b_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hn9_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-31b_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-31b_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-31b_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-1lo_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-31b_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective3 waypoint5)) (at agent2 waypoint2))
:effect (pre-1lo_calibrate_agent2_camera2_objective2_waypoint2 dd)
)

(:action act-px6_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-1lo_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-px6_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-1lo_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-bt5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-px6_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-bt5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-px6_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-6sd_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-bt5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-6sd_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-bt5_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-5gd_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-6sd_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-5gd_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-6sd_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-vux_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5gd_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-vux_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-5gd_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-vux_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-vux_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-vux_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-9zq_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-31b_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5))
:effect (pre-9zq_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-3j0_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9zq_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-3j0_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-9zq_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-zr8_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3j0_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-zr8_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-3j0_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-597_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-zr8_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-597_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-zr8_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-jl7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-597_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-jl7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-597_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-jl7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-jl7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-jl7_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-dummy-075_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hn9_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (dummy-left-075_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-075_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-075_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-075_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hn9_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-075_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-075_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-075_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-075_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hn9_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-075_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-075_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-075_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-l6a_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-075_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-l6a_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-sn2_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-l6a_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-sn2_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-l6a_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-jvc_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-sn2_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-jvc_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-sn2_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-n2x_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-jvc_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-n2x_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-jvc_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-gw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-n2x_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-gw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-n2x_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-gw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-gw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-gw2_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-l3c_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-075_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-l3c_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-v8b_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-l3c_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint5))
:effect 
(and (pre-v8b_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-l3c_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-y0g_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-v8b_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-y0g_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-v8b_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-8gu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-y0g_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-8gu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-y0g_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-8gu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-8gu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-8gu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-8wg_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ole_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-8wg_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-gej_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-8wg_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-gej_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-8wg_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-hjy_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-gej_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-hjy_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-gej_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-wql_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-hjy_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3) (not (dummy-left-wql_observe-vis_agent2_objective3_waypoint3 dd)) (not (dummy-right-wql_observe-vis_agent2_objective3_waypoint3 dd)))
:effect (immediate-dummy-wql_observe-vis_agent2_objective3_waypoint3 dd)
)

(:action dummy-left-wql_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-wql_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-wql_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-left-wql_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action dummy-right-wql_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-wql_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-wql_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-right-wql_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action act-yux_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wql_observe-vis_agent2_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (at agent2 waypoint0))
:effect (pre-yux_calibrate_agent2_camera3_objective3_waypoint0 dd)
)

(:action act-dummy-xlz_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-yux_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-xlz_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-xlz_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-xlz_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-xlz_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-xlz_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-xlz_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-xlz_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-xlz_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-xlz_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-xlz_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-xlz_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-kym_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xlz_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-kym_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-e7s_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-kym_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-e7s_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-kym_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-5f8_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-e7s_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-5f8_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-e7s_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-5f8_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-5f8_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-5f8_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-4wg_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xlz_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-4wg_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-4uh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-4wg_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-4uh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-4wg_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-4uh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-4uh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-4uh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-hk9_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wql_observe-vis_agent2_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (at agent2 waypoint3))
:effect (pre-hk9_take-image_agent2_waypoint3_objective3_camera3_colour dd)
)

(:action act-5hx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-hk9_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-5hx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-hk9_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action goal-achieve-5hx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-5hx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-5hx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-dummy-o9m_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2nn_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (dummy-left-o9m_observe-vis_agent0_objective1_waypoint5 dd)) (not (dummy-right-o9m_observe-vis_agent0_objective1_waypoint5 dd)))
:effect (immediate-dummy-o9m_observe-vis_agent0_objective1_waypoint5 dd)
)

(:action dummy-left-o9m_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2nn_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-o9m_observe-vis_agent0_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-o9m_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-left-o9m_observe-vis_agent0_objective1_waypoint5 dd))
)

(:action dummy-right-o9m_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2nn_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-o9m_observe-vis_agent0_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-o9m_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-right-o9m_observe-vis_agent0_objective1_waypoint5 dd))
)

(:action act-eym_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-o9m_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent2 waypoint1))
:effect (pre-eym_calibrate_agent2_camera2_objective2_waypoint1 dd)
)

(:action act-dummy-07o_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-eym_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1) (not (dummy-left-07o_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-07o_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-07o_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-07o_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-07o_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-07o_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-07o_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-07o_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-07o_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-07o_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-07o_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-obo_sample-rock_agent2_agent0_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-07o_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint4))
:effect (pre-obo_sample-rock_agent2_agent0_a2store_waypoint4 dd)
)

(:action act-ryr_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition (pre-obo_sample-rock_agent2_agent0_a2store_waypoint4 dd)
:effect 
(and (pre-ryr_drop_agent2_a2store dd) (not (pre-obo_sample-rock_agent2_agent0_a2store_waypoint4 dd)))
)

(:action act-h4y_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ryr_drop_agent2_a2store dd) (at agent2 waypoint1))
:effect 
(and (pre-h4y_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-ryr_drop_agent2_a2store dd)) (communicated-rock-data ))
)

(:action act-yk9_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-h4y_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint5))
:effect 
(and (pre-yk9_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-h4y_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-knx_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-yk9_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-knx_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-knx_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-knx_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-knx_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-knx_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-knx_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-knx_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-knx_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-knx_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-knx_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-knx_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-s26_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-knx_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5))
:effect (pre-s26_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-eqj_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-s26_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-eqj_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-s26_sample-soil_agent2_a2store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-y1d_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-eqj_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-y1d_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-eqj_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-b5y_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-y1d_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3) (not (dummy-left-b5y_observe-vis_agent2_objective3_waypoint3 dd)) (not (dummy-right-b5y_observe-vis_agent2_objective3_waypoint3 dd)))
:effect (immediate-dummy-b5y_observe-vis_agent2_objective3_waypoint3 dd)
)

(:action dummy-left-b5y_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-b5y_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-b5y_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-left-b5y_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action dummy-right-b5y_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-b5y_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-b5y_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-right-b5y_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action act-a9j_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-b5y_observe-vis_agent2_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (at agent2 waypoint2))
:effect (pre-a9j_calibrate_agent2_camera2_objective2_waypoint2 dd)
)

(:action act-fei_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-a9j_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-fei_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-a9j_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-upv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-fei_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-upv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-fei_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-1m6_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-upv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-1m6_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-upv_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-dummy-zaq_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-1m6_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-zaq_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-zaq_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-zaq_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-zaq_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-zaq_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-zaq_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-zaq_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-zaq_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-zaq_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-zaq_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-zaq_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-kh6_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-zaq_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-kh6_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-xdv_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-kh6_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-xdv_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-kh6_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-zw6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-xdv_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-zw6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-xdv_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-zw6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-zw6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-zw6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-qvq_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zaq_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-qvq_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-ezj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-qvq_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-ezj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-qvq_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-ezj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-ezj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-ezj_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-lp2_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-b5y_observe-vis_agent2_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (at agent2 waypoint3))
:effect (pre-lp2_take-image_agent2_waypoint3_objective3_camera3_colour dd)
)

(:action act-3h4_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-lp2_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-3h4_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-lp2_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action act-psg_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-3h4_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-psg_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-3h4_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-1z7_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-psg_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-1z7_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-psg_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-b0q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-1z7_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-b0q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-1z7_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-b0q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-b0q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-b0q_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-apq_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-knx_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (at agent2 waypoint5))
:effect (pre-apq_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-2ot_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-apq_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-2ot_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-apq_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-gn2_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-2ot_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint5))
:effect 
(and (pre-gn2_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-2ot_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-cln_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-gn2_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-cln_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-gn2_sample-soil_agent2_a2store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-mzs_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-cln_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-mzs_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-cln_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-1p0_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-mzs_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3) (not (dummy-left-1p0_observe-vis_agent2_objective3_waypoint3 dd)) (not (dummy-right-1p0_observe-vis_agent2_objective3_waypoint3 dd)))
:effect (immediate-dummy-1p0_observe-vis_agent2_objective3_waypoint3 dd)
)

(:action dummy-left-1p0_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-1p0_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-1p0_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-left-1p0_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action dummy-right-1p0_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-1p0_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-1p0_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-right-1p0_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action act-lp6_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1p0_observe-vis_agent2_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (at agent2 waypoint0))
:effect (pre-lp6_calibrate_agent2_camera3_objective3_waypoint0 dd)
)

(:action act-dummy-d52_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-lp6_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-d52_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-d52_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-d52_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-d52_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-d52_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-d52_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-d52_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-d52_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-d52_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-d52_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-d52_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-v5z_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-d52_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-v5z_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-06n_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-v5z_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-06n_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-v5z_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-yx5_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-06n_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-yx5_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-06n_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-yx5_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-yx5_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-yx5_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-qpg_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-d52_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-qpg_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-aml_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-qpg_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-aml_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-qpg_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-aml_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-aml_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-aml_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-0ec_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1p0_observe-vis_agent2_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (at agent2 waypoint3))
:effect (pre-0ec_take-image_agent2_waypoint3_objective3_camera3_colour dd)
)

(:action act-a05_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-0ec_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-a05_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-0ec_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action goal-achieve-a05_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-a05_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-a05_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-rc3_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-07o_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-rc3_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-yak_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-rc3_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-yak_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-rc3_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-h0k_sample-rock_agent2_agent0_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-yak_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint4))
:effect 
(and (pre-h0k_sample-rock_agent2_agent0_a2store_waypoint4 dd) (not (pre-yak_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-t6t_drop_agent2_a2store
:parameters ( ?a - agent)
:precondition (pre-h0k_sample-rock_agent2_agent0_a2store_waypoint4 dd)
:effect 
(and (pre-t6t_drop_agent2_a2store dd) (not (pre-h0k_sample-rock_agent2_agent0_a2store_waypoint4 dd)))
)

(:action act-xgt_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-t6t_drop_agent2_a2store dd) (at agent2 waypoint5))
:effect 
(and (pre-xgt_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-t6t_drop_agent2_a2store dd)))
)

(:action act-4qr_communicate-rock-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-xgt_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-4qr_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-xgt_sample-soil_agent2_a2store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-ooy_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-4qr_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-ooy_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-4qr_communicate-rock-data_agent2_general_waypoint1_waypoint0 dd)) (communicated-soil-data ))
)

(:action act-r6j_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-ooy_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-r6j_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-ooy_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-m0d_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-r6j_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3) (not (dummy-left-m0d_observe-vis_agent2_objective3_waypoint3 dd)) (not (dummy-right-m0d_observe-vis_agent2_objective3_waypoint3 dd)))
:effect (immediate-dummy-m0d_observe-vis_agent2_objective3_waypoint3 dd)
)

(:action dummy-left-m0d_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-m0d_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-m0d_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-left-m0d_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action dummy-right-m0d_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-m0d_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-m0d_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-right-m0d_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action act-ovl_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-m0d_observe-vis_agent2_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (at agent2 waypoint0))
:effect (pre-ovl_calibrate_agent2_camera3_objective3_waypoint0 dd)
)

(:action act-dummy-4df_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ovl_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-4df_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-4df_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-4df_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-4df_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-4df_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-4df_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-4df_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-4df_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-4df_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-4df_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-4df_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-7e2_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4df_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-7e2_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-5c6_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-7e2_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-5c6_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-7e2_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-dq6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5c6_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-dq6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-5c6_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-dq6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-dq6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-dq6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-u6t_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4df_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-u6t_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-wmf_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-u6t_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-wmf_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-u6t_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-wmf_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-wmf_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-wmf_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-25y_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-m0d_observe-vis_agent2_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (at agent2 waypoint3))
:effect (pre-25y_take-image_agent2_waypoint3_objective3_camera3_colour dd)
)

(:action act-uwm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-25y_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-uwm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-25y_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action goal-achieve-uwm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-uwm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-uwm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-h9g_sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-o9m_observe-vis_agent0_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent2 waypoint4))
:effect (pre-h9g_sample-rock_agent0_agent2_a0store_waypoint4 dd)
)

(:action act-ulj_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-h9g_sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-ulj_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-h9g_sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)

(:action act-dummy-g2e_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-ulj_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1) (not (dummy-left-g2e_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-g2e_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-g2e_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-g2e_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-g2e_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-g2e_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-g2e_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-g2e_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-g2e_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-g2e_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-g2e_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-9y3_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g2e_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-9y3_calibrate_agent2_camera2_objective2_waypoint5 dd)
)

(:action act-dummy-o0c_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-9y3_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-o0c_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-o0c_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-o0c_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-o0c_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-o0c_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-o0c_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-o0c_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-o0c_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-o0c_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-o0c_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-o0c_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-09o_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-o0c_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (at agent2 waypoint5))
:effect (pre-09o_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-vk7_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-09o_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-vk7_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-09o_sample-soil_agent2_a2store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-169_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-vk7_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-169_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-vk7_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-0zo_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-169_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3) (not (dummy-left-0zo_observe-vis_agent2_objective3_waypoint3 dd)) (not (dummy-right-0zo_observe-vis_agent2_objective3_waypoint3 dd)))
:effect (immediate-dummy-0zo_observe-vis_agent2_objective3_waypoint3 dd)
)

(:action dummy-left-0zo_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-0zo_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-0zo_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-left-0zo_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action dummy-right-0zo_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-0zo_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-0zo_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-right-0zo_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action act-8v0_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-0zo_observe-vis_agent2_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (at agent2 waypoint2))
:effect (pre-8v0_calibrate_agent2_camera2_objective2_waypoint2 dd)
)

(:action act-wkr_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-8v0_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-wkr_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-8v0_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-3zf_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-wkr_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-3zf_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-wkr_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-wl0_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3zf_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-wl0_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-3zf_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-dummy-w7x_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-wl0_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-w7x_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-w7x_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-w7x_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-w7x_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-w7x_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-w7x_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-w7x_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-w7x_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-w7x_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-w7x_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-w7x_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-2vh_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w7x_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-2vh_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-ziw_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-2vh_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-ziw_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-2vh_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-cb6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ziw_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-cb6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-ziw_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-cb6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-cb6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-cb6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-k8m_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w7x_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-k8m_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-opc_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k8m_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-opc_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-k8m_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-opc_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-opc_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-opc_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-g3w_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-0zo_observe-vis_agent2_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (at agent2 waypoint3))
:effect (pre-g3w_take-image_agent2_waypoint3_objective3_camera3_colour dd)
)

(:action act-5ig_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-g3w_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-5ig_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-g3w_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action act-omo_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-5ig_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-omo_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-5ig_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-lua_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-omo_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-lua_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-omo_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-7ex_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-lua_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-7ex_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-lua_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-7ex_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-7ex_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-7ex_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-y8m_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-o0c_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (at agent2 waypoint5))
:effect (pre-y8m_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-j9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-y8m_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-j9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-y8m_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-2ar_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-j9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint5))
:effect 
(and (pre-2ar_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-j9l_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-15u_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-2ar_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-15u_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-2ar_sample-soil_agent2_a2store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-4ml_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-15u_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-4ml_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-15u_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-fpj_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-4ml_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3) (not (dummy-left-fpj_observe-vis_agent2_objective3_waypoint3 dd)) (not (dummy-right-fpj_observe-vis_agent2_objective3_waypoint3 dd)))
:effect (immediate-dummy-fpj_observe-vis_agent2_objective3_waypoint3 dd)
)

(:action dummy-left-fpj_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-fpj_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-fpj_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-left-fpj_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action dummy-right-fpj_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-fpj_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-fpj_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-right-fpj_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action act-cqr_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fpj_observe-vis_agent2_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (at agent2 waypoint0))
:effect (pre-cqr_calibrate_agent2_camera3_objective3_waypoint0 dd)
)

(:action act-dummy-d1z_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-cqr_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-d1z_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-d1z_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-d1z_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-d1z_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-d1z_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-d1z_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-d1z_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-d1z_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-d1z_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-d1z_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-d1z_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-qni_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-d1z_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-qni_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-3ox_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-qni_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-3ox_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-qni_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-vf7_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3ox_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-vf7_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-3ox_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-vf7_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-vf7_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-vf7_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-iv9_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-d1z_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-iv9_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-9eq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-iv9_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-9eq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-iv9_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-9eq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-9eq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-9eq_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-0n3_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fpj_observe-vis_agent2_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (at agent2 waypoint3))
:effect (pre-0n3_take-image_agent2_waypoint3_objective3_camera3_colour dd)
)

(:action act-edm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-0n3_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-edm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-0n3_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action goal-achieve-edm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-edm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-edm_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-wua_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-g2e_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-wua_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-dgf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-wua_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-dgf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-wua_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-04y_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-dgf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint5))
:effect 
(and (pre-04y_sample-soil_agent2_a2store_waypoint5 dd) (not (pre-dgf_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-guh_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-04y_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint1))
:effect 
(and (pre-guh_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-04y_sample-soil_agent2_a2store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-x2v_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-guh_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-x2v_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-guh_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd)))
)

(:action act-dummy-d9w_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-x2v_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3) (not (dummy-left-d9w_observe-vis_agent2_objective3_waypoint3 dd)) (not (dummy-right-d9w_observe-vis_agent2_objective3_waypoint3 dd)))
:effect (immediate-dummy-d9w_observe-vis_agent2_objective3_waypoint3 dd)
)

(:action dummy-left-d9w_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-d9w_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-d9w_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-left-d9w_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action dummy-right-d9w_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-d9w_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-d9w_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-right-d9w_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action act-4f0_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-d9w_observe-vis_agent2_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (at agent2 waypoint0))
:effect (pre-4f0_calibrate_agent2_camera3_objective3_waypoint0 dd)
)

(:action act-dummy-wv0_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-4f0_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-wv0_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-wv0_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-wv0_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-wv0_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-wv0_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-wv0_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-wv0_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-wv0_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-wv0_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-wv0_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-wv0_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-lgk_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wv0_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-lgk_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-3lc_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-lgk_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-3lc_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-lgk_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-y9y_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3lc_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-y9y_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-3lc_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-y9y_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-y9y_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-y9y_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-m43_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wv0_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-m43_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-hzh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-m43_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-hzh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-m43_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-hzh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-hzh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-hzh_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-r5k_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-d9w_observe-vis_agent2_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (at agent2 waypoint3))
:effect (pre-r5k_take-image_agent2_waypoint3_objective3_camera3_colour dd)
)

(:action act-jcb_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-r5k_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-jcb_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-r5k_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action goal-achieve-jcb_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-jcb_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-jcb_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-dummy-2ll_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jq0_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (dummy-left-2ll_observe-soil_agent2_waypoint5 dd)) (not (dummy-right-2ll_observe-soil_agent2_waypoint5 dd)))
:effect (immediate-dummy-2ll_observe-soil_agent2_waypoint5 dd)
)

(:action dummy-left-2ll_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jq0_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-2ll_observe-soil_agent2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-2ll_observe-soil_agent2_waypoint5 dd)) (dummy-left-2ll_observe-soil_agent2_waypoint5 dd))
)

(:action dummy-right-2ll_observe-soil_agent2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-jq0_observe-vis_agent2_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-2ll_observe-soil_agent2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-2ll_observe-soil_agent2_waypoint5 dd)) (dummy-right-2ll_observe-soil_agent2_waypoint5 dd))
)

(:action act-4xo_sample-soil_agent2_a2store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2ll_observe-soil_agent2_waypoint5 dd) (not (at-soil-sample waypoint5)) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (at agent2 waypoint4))
:effect (pre-4xo_sample-soil_agent2_a2store_waypoint4 dd)
)

(:action act-hk7_sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-4xo_sample-soil_agent2_a2store_waypoint4 dd) (at agent2 waypoint4))
:effect 
(and (pre-hk7_sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-4xo_sample-soil_agent2_a2store_waypoint4 dd)))
)

(:action act-wa8_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-hk7_sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-wa8_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-hk7_sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)

(:action act-j1a_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-wa8_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-j1a_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-wa8_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-dummy-57t_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-j1a_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1) (not (dummy-left-57t_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-57t_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-57t_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-57t_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-57t_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-57t_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-57t_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-57t_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-57t_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-57t_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-57t_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-vsv_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-57t_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-vsv_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-sl8_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-vsv_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-sl8_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-vsv_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-dummy-25j_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-sl8_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-25j_observe-vis_agent2_objective3_waypoint5 dd)) (not (dummy-right-25j_observe-vis_agent2_objective3_waypoint5 dd)))
:effect (immediate-dummy-25j_observe-vis_agent2_objective3_waypoint5 dd)
)

(:action dummy-left-25j_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective3 waypoint5)) (immediate-dummy-25j_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-25j_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-left-25j_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action dummy-right-25j_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective3 waypoint5) (immediate-dummy-25j_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-25j_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-right-25j_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action act-dummy-omk_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-25j_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (dummy-left-omk_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-omk_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-omk_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-omk_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-25j_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-omk_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-omk_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-omk_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-omk_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-25j_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-omk_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-omk_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-omk_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-pnt_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-omk_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective3 waypoint5)) (at agent2 waypoint2))
:effect (pre-pnt_calibrate_agent2_camera2_objective2_waypoint2 dd)
)

(:action act-zs4_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-pnt_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-zs4_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-pnt_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-88y_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-zs4_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-88y_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-zs4_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-xqy_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-88y_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-xqy_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-88y_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-103_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-xqy_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-103_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-xqy_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-487_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-103_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-487_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-103_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-487_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-487_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-487_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-hw8_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-omk_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5))
:effect (pre-hw8_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-1xt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-hw8_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-1xt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-hw8_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-qka_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-1xt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-qka_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-1xt_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-mb1_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-qka_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-mb1_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-qka_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-f28_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-mb1_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-f28_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-mb1_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-f28_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-f28_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-f28_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-dummy-wgx_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-25j_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (dummy-left-wgx_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-wgx_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-wgx_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-wgx_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-25j_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-wgx_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-wgx_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-wgx_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-wgx_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-25j_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-wgx_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-wgx_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-wgx_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-ouj_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wgx_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-ouj_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-f68_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ouj_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-f68_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-ouj_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-48b_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-f68_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-48b_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-f68_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-61u_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-48b_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-61u_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-48b_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-f87_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-61u_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-f87_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-61u_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-f87_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-f87_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-f87_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-lhz_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wgx_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-lhz_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-mxz_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-lhz_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint5))
:effect 
(and (pre-mxz_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-lhz_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-9ji_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-mxz_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-9ji_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-mxz_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-4v7_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9ji_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-4v7_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-9ji_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-4v7_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-4v7_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-4v7_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-6sy_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-57t_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-6sy_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-0eu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-6sy_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-0eu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-6sy_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-gpo_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-0eu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-gpo_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-0eu_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-yb0_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-gpo_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3) (not (dummy-left-yb0_observe-vis_agent2_objective3_waypoint3 dd)) (not (dummy-right-yb0_observe-vis_agent2_objective3_waypoint3 dd)))
:effect (immediate-dummy-yb0_observe-vis_agent2_objective3_waypoint3 dd)
)

(:action dummy-left-yb0_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-yb0_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-yb0_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-left-yb0_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action dummy-right-yb0_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-yb0_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-yb0_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-right-yb0_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action act-97z_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yb0_observe-vis_agent2_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (at agent2 waypoint0))
:effect (pre-97z_calibrate_agent2_camera3_objective3_waypoint0 dd)
)

(:action act-dummy-sts_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-97z_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-sts_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-sts_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-sts_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-sts_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-sts_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-sts_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-sts_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-sts_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-sts_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-sts_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-sts_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-phd_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sts_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-phd_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-43v_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-phd_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-43v_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-phd_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-iks_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-43v_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-iks_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-43v_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-iks_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-iks_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-iks_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-7pk_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sts_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-7pk_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-blk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-7pk_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-blk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-7pk_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-blk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-blk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-blk_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-a7p_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yb0_observe-vis_agent2_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (at agent2 waypoint3))
:effect (pre-a7p_take-image_agent2_waypoint3_objective3_camera3_colour dd)
)

(:action act-mfx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-a7p_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-mfx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-a7p_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action goal-achieve-mfx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-mfx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-mfx_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-a8t_sample-soil_agent2_a2store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2ll_observe-soil_agent2_waypoint5 dd) (at-soil-sample waypoint5) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (at agent2 waypoint5))
:effect (pre-a8t_sample-soil_agent2_a2store_waypoint5 dd)
)

(:action act-swg_sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-a8t_sample-soil_agent2_a2store_waypoint5 dd) (at agent2 waypoint4))
:effect 
(and (pre-swg_sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (pre-a8t_sample-soil_agent2_a2store_waypoint5 dd)))
)

(:action act-9m0_calibrate_agent2_camera2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-swg_sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-9m0_calibrate_agent2_camera2_objective2_waypoint1 dd) (not (pre-swg_sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)

(:action act-aqz_communicate-soil-data_agent2_general_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-9m0_calibrate_agent2_camera2_objective2_waypoint1 dd) (at agent2 waypoint1))
:effect 
(and (pre-aqz_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (not (pre-9m0_calibrate_agent2_camera2_objective2_waypoint1 dd)) (communicated-soil-data ))
)

(:action act-dummy-zoo_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (pre-aqz_communicate-soil-data_agent2_general_waypoint1_waypoint0 dd) (at agent2 waypoint1) (not (dummy-left-zoo_observe-vis_agent2_objective2_waypoint1 dd)) (not (dummy-right-zoo_observe-vis_agent2_objective2_waypoint1 dd)))
:effect (immediate-dummy-zoo_observe-vis_agent2_objective2_waypoint1 dd)
)

(:action dummy-left-zoo_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (not (visible-from objective2 waypoint1)) (immediate-dummy-zoo_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-zoo_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-left-zoo_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action dummy-right-zoo_observe-vis_agent2_objective2_waypoint1
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint1) (visible-from objective2 waypoint1) (immediate-dummy-zoo_observe-vis_agent2_objective2_waypoint1 dd))
:effect 
(and (not (immediate-dummy-zoo_observe-vis_agent2_objective2_waypoint1 dd)) (dummy-right-zoo_observe-vis_agent2_objective2_waypoint1 dd))
)

(:action act-4cy_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-zoo_observe-vis_agent2_objective2_waypoint1 dd) (not (visible-from objective2 waypoint1)) (at agent2 waypoint5))
:effect (pre-4cy_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-ds4_calibrate_agent2_camera2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-4cy_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-ds4_calibrate_agent2_camera2_objective2_waypoint5 dd) (not (pre-4cy_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-dummy-bia_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-ds4_calibrate_agent2_camera2_objective2_waypoint5 dd) (at agent2 waypoint5) (not (dummy-left-bia_observe-vis_agent2_objective3_waypoint5 dd)) (not (dummy-right-bia_observe-vis_agent2_objective3_waypoint5 dd)))
:effect (immediate-dummy-bia_observe-vis_agent2_objective3_waypoint5 dd)
)

(:action dummy-left-bia_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (not (visible-from objective3 waypoint5)) (immediate-dummy-bia_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-bia_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-left-bia_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action dummy-right-bia_observe-vis_agent2_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint5) (visible-from objective3 waypoint5) (immediate-dummy-bia_observe-vis_agent2_objective3_waypoint5 dd))
:effect 
(and (not (immediate-dummy-bia_observe-vis_agent2_objective3_waypoint5 dd)) (dummy-right-bia_observe-vis_agent2_objective3_waypoint5 dd))
)

(:action act-dummy-dxz_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bia_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (dummy-left-dxz_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-dxz_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-dxz_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-dxz_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bia_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-dxz_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-dxz_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-dxz_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-dxz_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bia_observe-vis_agent2_objective3_waypoint5 dd) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-dxz_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-dxz_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-dxz_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-p99_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dxz_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (not (visible-from objective3 waypoint5)) (at agent2 waypoint2))
:effect (pre-p99_calibrate_agent2_camera2_objective2_waypoint2 dd)
)

(:action act-jfo_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-p99_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-jfo_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-p99_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-5pj_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-jfo_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-5pj_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-jfo_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action act-ulg_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5pj_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-ulg_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-5pj_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-oi7_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-ulg_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-oi7_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-ulg_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-178_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-oi7_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-178_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-oi7_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-178_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-178_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-178_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-vl6_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dxz_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (not (visible-from objective3 waypoint5)) (at agent2 waypoint5))
:effect (pre-vl6_take-image_agent2_waypoint5_objective2_camera2_low-res dd)
)

(:action act-6g5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-vl6_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-6g5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-vl6_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-1jw_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-6g5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-1jw_calibrate_agent2_camera3_objective3_waypoint0 dd) (not (pre-6g5_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-39z_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-1jw_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0))
:effect 
(and (pre-39z_take-image_agent2_waypoint0_objective3_camera3_colour dd) (not (pre-1jw_calibrate_agent2_camera3_objective3_waypoint0 dd)))
)

(:action act-tp9_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-39z_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-tp9_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-39z_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-tp9_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-tp9_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-tp9_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-dummy-qtn_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bia_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (dummy-left-qtn_observe-vis_agent2_objective2_waypoint5 dd)) (not (dummy-right-qtn_observe-vis_agent2_objective2_waypoint5 dd)))
:effect (immediate-dummy-qtn_observe-vis_agent2_objective2_waypoint5 dd)
)

(:action dummy-left-qtn_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bia_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (not (visible-from objective2 waypoint5)) (immediate-dummy-qtn_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-qtn_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-left-qtn_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action dummy-right-qtn_observe-vis_agent2_objective2_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bia_observe-vis_agent2_objective3_waypoint5 dd) (visible-from objective3 waypoint5) (at agent2 waypoint5) (visible-from objective2 waypoint5) (immediate-dummy-qtn_observe-vis_agent2_objective2_waypoint5 dd))
:effect 
(and (not (immediate-dummy-qtn_observe-vis_agent2_objective2_waypoint5 dd)) (dummy-right-qtn_observe-vis_agent2_objective2_waypoint5 dd))
)

(:action act-11k_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qtn_observe-vis_agent2_objective2_waypoint5 dd) (not (visible-from objective2 waypoint5)) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-11k_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-l39_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-11k_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-l39_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-11k_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-fj0_calibrate_agent2_camera2_objective2_waypoint2
:parameters ( ?a - agent)
:precondition 
(and (pre-l39_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint2))
:effect 
(and (pre-fj0_calibrate_agent2_camera2_objective2_waypoint2 dd) (not (pre-l39_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-ryk_take-image_agent2_waypoint2_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-fj0_calibrate_agent2_camera2_objective2_waypoint2 dd) (at agent2 waypoint2))
:effect 
(and (pre-ryk_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (not (pre-fj0_calibrate_agent2_camera2_objective2_waypoint2 dd)))
)

(:action act-6jl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ryk_take-image_agent2_waypoint2_objective2_camera2_low-res dd) (at agent2 waypoint2))
:effect 
(and (pre-6jl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd) (not (pre-ryk_take-image_agent2_waypoint2_objective2_camera2_low-res dd)))
)

(:action goal-achieve-6jl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0
:parameters ( ?a - agent)
:precondition (pre-6jl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-6jl_communicate-image-data_agent2_general_objective2_low-res_waypoint2_waypoint0 dd)))
)

(:action act-bsl_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qtn_observe-vis_agent2_objective2_waypoint5 dd) (visible-from objective2 waypoint5) (visible-from objective3 waypoint5) (at agent2 waypoint5))
:effect (pre-bsl_take-image_agent2_waypoint5_objective3_camera3_colour dd)
)

(:action act-3t2_take-image_agent2_waypoint5_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (pre-bsl_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint5))
:effect 
(and (pre-3t2_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (not (pre-bsl_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action act-ds6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-3t2_take-image_agent2_waypoint5_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-ds6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-3t2_take-image_agent2_waypoint5_objective2_camera2_low-res dd)))
)

(:action act-1cq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-ds6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (at agent2 waypoint1))
:effect 
(and (pre-1cq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-ds6_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action goal-achieve-1cq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-1cq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-1cq_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-tb6_take-image_agent2_waypoint1_objective2_camera2_low-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-zoo_observe-vis_agent2_objective2_waypoint1 dd) (visible-from objective2 waypoint1) (at agent2 waypoint1))
:effect (pre-tb6_take-image_agent2_waypoint1_objective2_camera2_low-res dd)
)

(:action act-h8y_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-tb6_take-image_agent2_waypoint1_objective2_camera2_low-res dd) (at agent2 waypoint1))
:effect 
(and (pre-h8y_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (not (pre-tb6_take-image_agent2_waypoint1_objective2_camera2_low-res dd)))
)

(:action act-t9f_calibrate_agent2_camera3_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-h8y_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd) (at agent2 waypoint3))
:effect 
(and (pre-t9f_calibrate_agent2_camera3_objective3_waypoint3 dd) (not (pre-h8y_communicate-image-data_agent2_general_objective2_low-res_waypoint1_waypoint0 dd)))
)

(:action act-dummy-xjs_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (pre-t9f_calibrate_agent2_camera3_objective3_waypoint3 dd) (at agent2 waypoint3) (not (dummy-left-xjs_observe-vis_agent2_objective3_waypoint3 dd)) (not (dummy-right-xjs_observe-vis_agent2_objective3_waypoint3 dd)))
:effect (immediate-dummy-xjs_observe-vis_agent2_objective3_waypoint3 dd)
)

(:action dummy-left-xjs_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (not (visible-from objective3 waypoint3)) (immediate-dummy-xjs_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-xjs_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-left-xjs_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action dummy-right-xjs_observe-vis_agent2_objective3_waypoint3
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint3) (visible-from objective3 waypoint3) (immediate-dummy-xjs_observe-vis_agent2_objective3_waypoint3 dd))
:effect 
(and (not (immediate-dummy-xjs_observe-vis_agent2_objective3_waypoint3 dd)) (dummy-right-xjs_observe-vis_agent2_objective3_waypoint3 dd))
)

(:action act-716_calibrate_agent2_camera3_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-xjs_observe-vis_agent2_objective3_waypoint3 dd) (not (visible-from objective3 waypoint3)) (at agent2 waypoint0))
:effect (pre-716_calibrate_agent2_camera3_objective3_waypoint0 dd)
)

(:action act-dummy-eju_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-716_calibrate_agent2_camera3_objective3_waypoint0 dd) (at agent2 waypoint0) (not (dummy-left-eju_observe-vis_agent2_objective3_waypoint0 dd)) (not (dummy-right-eju_observe-vis_agent2_objective3_waypoint0 dd)))
:effect (immediate-dummy-eju_observe-vis_agent2_objective3_waypoint0 dd)
)

(:action dummy-left-eju_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective3 waypoint0)) (immediate-dummy-eju_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-eju_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-left-eju_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action dummy-right-eju_observe-vis_agent2_objective3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective3 waypoint0) (immediate-dummy-eju_observe-vis_agent2_objective3_waypoint0 dd))
:effect 
(and (not (immediate-dummy-eju_observe-vis_agent2_objective3_waypoint0 dd)) (dummy-right-eju_observe-vis_agent2_objective3_waypoint0 dd))
)

(:action act-m6z_calibrate_agent2_camera3_objective3_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-eju_observe-vis_agent2_objective3_waypoint0 dd) (not (visible-from objective3 waypoint0)) (at agent2 waypoint5))
:effect (pre-m6z_calibrate_agent2_camera3_objective3_waypoint5 dd)
)

(:action act-nr7_take-image_agent2_waypoint5_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (pre-m6z_calibrate_agent2_camera3_objective3_waypoint5 dd) (at agent2 waypoint5))
:effect 
(and (pre-nr7_take-image_agent2_waypoint5_objective3_camera3_colour dd) (not (pre-m6z_calibrate_agent2_camera3_objective3_waypoint5 dd)))
)

(:action act-xxa_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-nr7_take-image_agent2_waypoint5_objective3_camera3_colour dd) (at agent2 waypoint1))
:effect 
(and (pre-xxa_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd) (not (pre-nr7_take-image_agent2_waypoint5_objective3_camera3_colour dd)))
)

(:action goal-achieve-xxa_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0
:parameters ( ?a - agent)
:precondition (pre-xxa_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-xxa_communicate-image-data_agent2_general_objective3_colour_waypoint1_waypoint0 dd)))
)

(:action act-vyj_take-image_agent2_waypoint0_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-eju_observe-vis_agent2_objective3_waypoint0 dd) (visible-from objective3 waypoint0) (at agent2 waypoint0))
:effect (pre-vyj_take-image_agent2_waypoint0_objective3_camera3_colour dd)
)

(:action act-ot1_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-vyj_take-image_agent2_waypoint0_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-ot1_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-vyj_take-image_agent2_waypoint0_objective3_camera3_colour dd)))
)

(:action goal-achieve-ot1_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-ot1_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-ot1_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

(:action act-tvi_take-image_agent2_waypoint3_objective3_camera3_colour
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-xjs_observe-vis_agent2_objective3_waypoint3 dd) (visible-from objective3 waypoint3) (at agent2 waypoint3))
:effect (pre-tvi_take-image_agent2_waypoint3_objective3_camera3_colour dd)
)

(:action act-4k0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-tvi_take-image_agent2_waypoint3_objective3_camera3_colour dd) (at agent2 waypoint3))
:effect 
(and (pre-4k0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd) (not (pre-tvi_take-image_agent2_waypoint3_objective3_camera3_colour dd)))
)

(:action goal-achieve-4k0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0
:parameters ( ?a - agent)
:precondition (pre-4k0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)
:effect 
(and (done-goal dd) (not (pre-4k0_communicate-image-data_agent2_general_objective3_colour_waypoint3_waypoint0 dd)))
)

)
