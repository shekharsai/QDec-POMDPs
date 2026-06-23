(define (domain Krover-agent0)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy dummy TAG_TYPE VALUE_TYPE)
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
 dd - dummy
 tag0 - TAG_TYPE ; (visible-from objective1 waypoint0)
 tag1 - TAG_TYPE ; (visible-from objective1 waypoint5)
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
(can-sample-rock ?x - agent)
(can-sample-soil ?x - agent)
(dummy-pred-needed ?dd - dummy)
(init-vq6_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-vq6_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-vq6_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-4k6_observe-soil_agent3_waypoint4 ?dd - dummy)
(dummy-left-4k6_observe-soil_agent3_waypoint4 ?dd - dummy)
(immediate-dummy-44z_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-44z_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-l1c_observe-vis_agent3_objective1_waypoint5 ?dd - dummy)
(dummy-left-l1c_observe-vis_agent3_objective1_waypoint5 ?dd - dummy)
(pre-1vw_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-4li_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-kwj_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-pc1_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-l1c_observe-vis_agent3_objective1_waypoint5 ?dd - dummy)
(pre-a51_sample-rock_agent3_agent0_a1store_waypoint5 ?dd - dummy)
(dummy-right-44z_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-uho_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-0gp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-4k6_observe-soil_agent3_waypoint4 ?dd - dummy)
(immediate-dummy-dgx_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-dgx_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-agd_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-left-agd_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-ik2_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-sk3_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-n3g_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-m3j_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(dummy-right-agd_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-ka5_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-bgo_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-e3p_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-ekx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-dgx_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-luv_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-wyp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-vq6_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-94e_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-94e_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-ecl_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-ecl_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-r72_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-r72_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-8xc_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-vin_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-r72_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-ecl_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-eqf_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-left-eqf_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-ub9_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-i5n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-yda_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-eg0_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(dummy-right-eqf_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-i0e_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-1m9_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-ef8_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-ttj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-94e_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)
(:action calibrate
:parameters ( ?r - agent ?i - camera ?t - objective ?w - waypoint)
:precondition 
(and (equipped-for-imaging ?r) (calibration-target ?i ?t) (at ?r ?w) (visible-from ?t ?w) (on-board ?i ?r) (Kvisible-from ?t ?w V_TRUE))
:effect 
(and (calibrated ?i ?r ?w ?t))
)
(:action drop
:parameters ( ?x - agent ?y - store)
:precondition 
(and (store-of ?y ?x))
:effect 
(and (not (full ?y ?x)) (empty ?y ?x))
)
(:action act-vq6_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (init-vq6_observe-rock_agent2_waypoint4 dd) (immediate-dummy-vq6_observe-rock_agent2_waypoint4 dd) (at agent0 waypoint4) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-vq6_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (init-vq6_observe-rock_agent2_waypoint4 dd) (immediate-dummy-vq6_observe-rock_agent2_waypoint4 dd) (at agent0 waypoint4) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-vq6_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-vq6_observe-rock_agent2_waypoint4 dd) (not (dummy-left-vq6_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-vq6_observe-rock_agent2_waypoint4 dd)))
:effect 
(and (immediate-dummy-vq6_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-vq6_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-vq6_observe-rock_agent2_waypoint4 dd) (at agent0 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-vq6_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (init-vq6_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-vq6_observe-rock_agent2_waypoint4 dd)) (dummy-left-vq6_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-vq6_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-vq6_observe-rock_agent2_waypoint4 dd) (at agent0 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-vq6_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (init-vq6_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-vq6_observe-rock_agent2_waypoint4 dd)) (dummy-right-vq6_observe-rock_agent2_waypoint4 dd))
)
(:action act-4k6_observe-soil_agent3_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vq6_observe-rock_agent2_waypoint4 dd) (immediate-dummy-4k6_observe-soil_agent3_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (Kat-rock-sample waypoint4 V_FALSE) (at-soil-sample waypoint4) (not (Kat-soil-sample waypoint4 V_TRUE)) (not (Kat-soil-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint4 V_TRUE))
)
(:action act-4k6_observe-soil_agent3_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vq6_observe-rock_agent2_waypoint4 dd) (immediate-dummy-4k6_observe-soil_agent3_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (Kat-rock-sample waypoint4 V_FALSE) (not (at-soil-sample waypoint4)) (not (Kat-soil-sample waypoint4 V_TRUE)) (not (Kat-soil-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint4 V_FALSE))
)
(:action act-dummy-4k6_observe-soil_agent3_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vq6_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (not (dummy-left-4k6_observe-soil_agent3_waypoint4 dd)) (not (dummy-right-4k6_observe-soil_agent3_waypoint4 dd)) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-4k6_observe-soil_agent3_waypoint4 dd))
)
(:action dummy-left-4k6_observe-soil_agent3_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vq6_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-4k6_observe-soil_agent3_waypoint4 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-4k6_observe-soil_agent3_waypoint4 dd)) (dummy-left-4k6_observe-soil_agent3_waypoint4 dd))
)
(:action dummy-right-4k6_observe-soil_agent3_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vq6_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-4k6_observe-soil_agent3_waypoint4 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-4k6_observe-soil_agent3_waypoint4 dd)) (dummy-right-4k6_observe-soil_agent3_waypoint4 dd))
)
(:action act-44z_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4k6_observe-soil_agent3_waypoint4 dd) (immediate-dummy-44z_observe-vis_agent3_objective1_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-44z_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4k6_observe-soil_agent3_waypoint4 dd) (immediate-dummy-44z_observe-vis_agent3_objective1_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-44z_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4k6_observe-soil_agent3_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (not (dummy-left-44z_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-44z_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-44z_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-44z_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4k6_observe-soil_agent3_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-44z_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-44z_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-44z_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-44z_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4k6_observe-soil_agent3_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-44z_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-44z_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-44z_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-l1c_observe-vis_agent3_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-44z_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-l1c_observe-vis_agent3_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-l1c_observe-vis_agent3_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-44z_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-l1c_observe-vis_agent3_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-l1c_observe-vis_agent3_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-44z_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (not (dummy-left-l1c_observe-vis_agent3_objective1_waypoint5 dd)) (not (dummy-right-l1c_observe-vis_agent3_objective1_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-l1c_observe-vis_agent3_objective1_waypoint5 dd))
)
(:action dummy-left-l1c_observe-vis_agent3_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-44z_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-l1c_observe-vis_agent3_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-l1c_observe-vis_agent3_objective1_waypoint5 dd)) (dummy-left-l1c_observe-vis_agent3_objective1_waypoint5 dd))
)
(:action dummy-right-l1c_observe-vis_agent3_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-44z_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-l1c_observe-vis_agent3_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-l1c_observe-vis_agent3_objective1_waypoint5 dd)) (dummy-right-l1c_observe-vis_agent3_objective1_waypoint5 dd))
)
(:action act-1vw_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-l1c_observe-vis_agent3_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (empty a0store agent0) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-1vw_sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (empty a0store agent0)) (full a0store agent0) (have-rock-analysis agent0))
)
(:action act-4li_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-1vw_sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent0 waypoint1) (have-rock-analysis agent0))
:effect 
(and (pre-4li_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-1vw_sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-kwj_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-4li_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (calibrated camera0 agent0 waypoint0 objective1) (at agent0 waypoint0))
:effect 
(and (pre-kwj_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (not (pre-4li_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint0 objective1)))
)
(:action act-pc1_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-kwj_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3) (have-image agent0 objective1 high-res))
:effect 
(and (pre-pc1_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-kwj_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)
(:action goal-achieve-pc1_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-pc1_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-pc1_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-a51_sample-rock_agent3_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-l1c_observe-vis_agent3_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-a51_sample-rock_agent3_agent0_a1store_waypoint5 dd))
)
(:action goal-achieve-a51_sample-rock_agent3_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-a51_sample-rock_agent3_agent0_a1store_waypoint5 dd))
:effect 
(and (done-goal dd) (not (pre-a51_sample-rock_agent3_agent0_a1store_waypoint5 dd)))
)
(:action act-uho_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-44z_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (empty a0store agent0) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-uho_sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (empty a0store agent0)) (full a0store agent0) (have-rock-analysis agent0))
)
(:action act-0gp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-uho_sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent0 waypoint1) (have-rock-analysis agent0))
:effect 
(and (pre-0gp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-uho_sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-rock-data ))
)
(:action goal-achieve-0gp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-0gp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-0gp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-dgx_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4k6_observe-soil_agent3_waypoint4 dd) (immediate-dummy-dgx_observe-vis_agent3_objective1_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-dgx_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4k6_observe-soil_agent3_waypoint4 dd) (immediate-dummy-dgx_observe-vis_agent3_objective1_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-dgx_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4k6_observe-soil_agent3_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (not (dummy-left-dgx_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-dgx_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-dgx_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-dgx_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4k6_observe-soil_agent3_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-dgx_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-dgx_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-dgx_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-dgx_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4k6_observe-soil_agent3_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-dgx_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-dgx_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-dgx_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-agd_observe-vis_agent0_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dgx_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-agd_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-agd_observe-vis_agent0_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dgx_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-agd_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-agd_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dgx_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (not (dummy-left-agd_observe-vis_agent0_objective1_waypoint5 dd)) (not (dummy-right-agd_observe-vis_agent0_objective1_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-agd_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-left-agd_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dgx_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-agd_observe-vis_agent0_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-agd_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-left-agd_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-right-agd_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-dgx_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-agd_observe-vis_agent0_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-agd_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-right-agd_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action act-ik2_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-agd_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (empty a0store agent0) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-ik2_sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (empty a0store agent0)) (full a0store agent0) (have-rock-analysis agent0))
)
(:action act-sk3_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ik2_sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent0 waypoint1) (have-rock-analysis agent0))
:effect 
(and (pre-sk3_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-ik2_sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-n3g_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-sk3_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (calibrated camera0 agent0 waypoint0 objective1) (at agent0 waypoint0))
:effect 
(and (pre-n3g_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (not (pre-sk3_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint0 objective1)))
)
(:action act-m3j_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-n3g_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3) (have-image agent0 objective1 high-res))
:effect 
(and (pre-m3j_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-n3g_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)
(:action goal-achieve-m3j_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-m3j_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-m3j_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-ka5_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-agd_observe-vis_agent0_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (calibrated camera0 agent0 waypoint5 objective1) (at agent0 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-ka5_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint5 objective1)))
)
(:action act-bgo_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-ka5_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint5) (empty a0store agent0))
:effect 
(and (pre-bgo_sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (pre-ka5_take-image_agent0_waypoint5_objective1_camera0_high-res dd)) (not (empty a0store agent0)) (full a0store agent0) (have-rock-analysis agent0))
)
(:action act-e3p_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-bgo_sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent0 waypoint1) (have-rock-analysis agent0))
:effect 
(and (pre-e3p_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-bgo_sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-ekx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-e3p_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (at agent0 waypoint1) (have-image agent0 objective1 high-res))
:effect 
(and (pre-ekx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-e3p_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-ekx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ekx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-ekx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action act-luv_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-dgx_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (empty a0store agent0) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-luv_sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (empty a0store agent0)) (full a0store agent0) (have-rock-analysis agent0))
)
(:action act-wyp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-luv_sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent0 waypoint1) (have-rock-analysis agent0))
:effect 
(and (pre-wyp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-luv_sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-rock-data ))
)
(:action goal-achieve-wyp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-wyp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-wyp_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-94e_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vq6_observe-rock_agent2_waypoint4 dd) (immediate-dummy-94e_observe-vis_agent3_objective1_waypoint4 dd) (at-rock-sample waypoint4) (at agent0 waypoint4) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-94e_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vq6_observe-rock_agent2_waypoint4 dd) (immediate-dummy-94e_observe-vis_agent3_objective1_waypoint4 dd) (at-rock-sample waypoint4) (at agent0 waypoint4) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-94e_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vq6_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent0 waypoint4) (not (dummy-left-94e_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-94e_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-94e_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-94e_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vq6_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent0 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-94e_observe-vis_agent3_objective1_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-94e_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-94e_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-94e_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vq6_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent0 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-94e_observe-vis_agent3_objective1_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-94e_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-94e_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-ecl_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-94e_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-ecl_observe-soil_agent0_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-ecl_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-94e_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-ecl_observe-soil_agent0_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-ecl_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-94e_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (not (dummy-left-ecl_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-ecl_observe-soil_agent0_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-ecl_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-ecl_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-94e_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-ecl_observe-soil_agent0_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-ecl_observe-soil_agent0_waypoint5 dd)) (dummy-left-ecl_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-ecl_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-94e_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-ecl_observe-soil_agent0_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-ecl_observe-soil_agent0_waypoint5 dd)) (dummy-right-ecl_observe-soil_agent0_waypoint5 dd))
)
(:action act-r72_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ecl_observe-soil_agent0_waypoint5 dd) (immediate-dummy-r72_observe-vis_agent3_objective1_waypoint0 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint0) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-r72_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ecl_observe-soil_agent0_waypoint5 dd) (immediate-dummy-r72_observe-vis_agent3_objective1_waypoint0 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint0) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-r72_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ecl_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint0) (not (dummy-left-r72_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-r72_observe-vis_agent3_objective1_waypoint0 dd)) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-r72_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-r72_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ecl_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-r72_observe-vis_agent3_objective1_waypoint0 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-r72_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-r72_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-r72_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ecl_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-r72_observe-vis_agent3_objective1_waypoint0 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-r72_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-r72_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action act-8xc_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r72_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (calibrated camera0 agent0 waypoint5 objective1) (at agent0 waypoint5) (Kvisible-from objective1 waypoint0 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-8xc_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint5 objective1)))
)
(:action act-vin_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-8xc_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint1) (have-image agent0 objective1 high-res))
:effect 
(and (pre-vin_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-8xc_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)
(:action goal-achieve-vin_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-vin_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-vin_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-r72_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r72_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (Kvisible-from objective1 waypoint0 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-r72_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-eqf_observe-vis_agent0_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ecl_observe-soil_agent0_waypoint5 dd) (immediate-dummy-eqf_observe-vis_agent0_objective1_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-eqf_observe-vis_agent0_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ecl_observe-soil_agent0_waypoint5 dd) (immediate-dummy-eqf_observe-vis_agent0_objective1_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-eqf_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ecl_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (not (dummy-left-eqf_observe-vis_agent0_objective1_waypoint5 dd)) (not (dummy-right-eqf_observe-vis_agent0_objective1_waypoint5 dd)) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-eqf_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-left-eqf_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ecl_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-eqf_observe-vis_agent0_objective1_waypoint5 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-eqf_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-left-eqf_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-right-eqf_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ecl_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-eqf_observe-vis_agent0_objective1_waypoint5 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-eqf_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-right-eqf_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action act-ub9_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-eqf_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent0 waypoint5) (empty a0store agent0) (not (full a0store agent0)) (Kvisible-from objective1 waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-ub9_sample-soil_agent0_a0store_waypoint5 dd) (not (empty a0store agent0)) (full a0store agent0) (have-soil-analysis agent0))
)
(:action act-i5n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ub9_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1) (have-soil-analysis agent0))
:effect 
(and (pre-i5n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-ub9_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-soil-data ))
)
(:action act-yda_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-i5n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (calibrated camera0 agent0 waypoint0 objective1) (at agent0 waypoint0))
:effect 
(and (pre-yda_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (not (pre-i5n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint0 objective1)))
)
(:action act-eg0_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-yda_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3) (have-image agent0 objective1 high-res))
:effect 
(and (pre-eg0_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-yda_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)
(:action goal-achieve-eg0_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-eg0_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-eg0_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-i0e_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-eqf_observe-vis_agent0_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (calibrated camera0 agent0 waypoint5 objective1) (at agent0 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-i0e_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint5 objective1)))
)
(:action act-1m9_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-i0e_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint5) (empty a0store agent0) (not (full a0store agent0)))
:effect 
(and (pre-1m9_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-i0e_take-image_agent0_waypoint5_objective1_camera0_high-res dd)) (not (empty a0store agent0)) (full a0store agent0) (have-soil-analysis agent0))
)
(:action act-ef8_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-1m9_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1) (have-soil-analysis agent0))
:effect 
(and (pre-ef8_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-1m9_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-soil-data ))
)
(:action act-ttj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ef8_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (at agent0 waypoint1) (have-image agent0 objective1 high-res))
:effect 
(and (pre-ttj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-ef8_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-ttj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ttj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-ttj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-94e_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-94e_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-94e_observe-vis_agent3_objective1_waypoint4 dd)))
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
