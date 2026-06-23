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
 tag0 - TAG_TYPE ; (visible-from objective1 waypoint5)
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
(can-sample-rock ?x - agent)
(can-sample-soil ?x - agent)
(dummy-pred-needed ?dd - dummy)
(init-y5u_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-y5u_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-y5u_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-65f_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-65f_observe-rock_agent2_waypoint4 ?dd - dummy)
(pre-w4h_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-b24_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(immediate-dummy-wun_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-wun_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-qmq_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-kaq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-wun_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-65f_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-x3x_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-x3x_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-wcc_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-wcc_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-i7n_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-hh5_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-wcc_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-x3x_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-right-y5u_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-fxm_observe-rock_agent0_waypoint5 ?dd - dummy)
(dummy-left-fxm_observe-rock_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-myk_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(dummy-left-myk_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-njo_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-left-njo_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-az5_sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-h22_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-5y1_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-9vn_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(dummy-right-njo_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-obb_sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(pre-6j3_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-do6_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-34u_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-9q6_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-ady_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-myk_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(pre-f61_take-image_agent0_waypoint4_objective1_camera0_high-res ?dd - dummy)
(pre-bwe_sample-rock_agent3_agent0_a1store_waypoint4 ?dd - dummy)
(pre-2oj_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-kmi_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-vhw_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-fxm_observe-rock_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-r1v_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-r1v_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-kpo_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-left-kpo_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-rk4_sample-rock_agent3_agent0_a1store_waypoint5 ?dd - dummy)
(pre-rh4_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-kim_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-54v_take-image_agent0_waypoint0_objective1_camera0_high-res ?dd - dummy)
(pre-d3z_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(dummy-right-kpo_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-wno_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-7e5_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-t3c_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-yhx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(pre-8rz_sample-rock_agent3_agent0_a1store_waypoint5 ?dd - dummy)
(dummy-right-r1v_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-k0y_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-kyv_sample-rock_agent3_agent0_a1store_waypoint5 ?dd - dummy)
(pre-6up_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
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
(:action act-y5u_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (init-y5u_observe-soil_agent0_waypoint5 dd) (immediate-dummy-y5u_observe-soil_agent0_waypoint5 dd) (at agent0 waypoint5) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-y5u_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (init-y5u_observe-soil_agent0_waypoint5 dd) (immediate-dummy-y5u_observe-soil_agent0_waypoint5 dd) (at agent0 waypoint5) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-y5u_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (init-y5u_observe-soil_agent0_waypoint5 dd) (not (dummy-left-y5u_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-y5u_observe-soil_agent0_waypoint5 dd)))
:effect 
(and (immediate-dummy-y5u_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-y5u_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (init-y5u_observe-soil_agent0_waypoint5 dd) (at agent0 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-y5u_observe-soil_agent0_waypoint5 dd) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (init-y5u_observe-soil_agent0_waypoint5 dd)) (not (immediate-dummy-y5u_observe-soil_agent0_waypoint5 dd)) (dummy-left-y5u_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-y5u_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (init-y5u_observe-soil_agent0_waypoint5 dd) (at agent0 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-y5u_observe-soil_agent0_waypoint5 dd) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (init-y5u_observe-soil_agent0_waypoint5 dd)) (not (immediate-dummy-y5u_observe-soil_agent0_waypoint5 dd)) (dummy-right-y5u_observe-soil_agent0_waypoint5 dd))
)
(:action act-65f_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y5u_observe-soil_agent0_waypoint5 dd) (immediate-dummy-65f_observe-rock_agent2_waypoint4 dd) (not (at-soil-sample waypoint5)) (at agent0 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-65f_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y5u_observe-soil_agent0_waypoint5 dd) (immediate-dummy-65f_observe-rock_agent2_waypoint4 dd) (not (at-soil-sample waypoint5)) (at agent0 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-65f_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y5u_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at agent0 waypoint4) (not (dummy-left-65f_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-65f_observe-rock_agent2_waypoint4 dd)) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (immediate-dummy-65f_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-65f_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y5u_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at agent0 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-65f_observe-rock_agent2_waypoint4 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-65f_observe-rock_agent2_waypoint4 dd)) (dummy-left-65f_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-65f_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-y5u_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at agent0 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-65f_observe-rock_agent2_waypoint4 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-65f_observe-rock_agent2_waypoint4 dd)) (dummy-right-65f_observe-rock_agent2_waypoint4 dd))
)
(:action act-w4h_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-65f_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (at-soil-sample waypoint5)) (at agent0 waypoint5) (empty a0store agent0) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (pre-w4h_sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (empty a0store agent0)) (full a0store agent0) (have-rock-analysis agent0))
)
(:action act-b24_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-w4h_sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent0 waypoint1) (have-rock-analysis agent0))
:effect 
(and (pre-b24_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-w4h_sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-wun_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-b24_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (immediate-dummy-wun_observe-vis_agent3_objective1_waypoint0 dd) (at agent0 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-wun_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-b24_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (immediate-dummy-wun_observe-vis_agent3_objective1_waypoint0 dd) (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-wun_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-b24_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (at agent0 waypoint0) (not (dummy-left-wun_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-wun_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-wun_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-wun_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-wun_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-wun_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-wun_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-wun_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-wun_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-wun_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-wun_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action act-qmq_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wun_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (calibrated camera0 agent0 waypoint5 objective1) (at agent0 waypoint5) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-qmq_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint5 objective1)))
)
(:action act-kaq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-qmq_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint1) (have-image agent0 objective1 high-res))
:effect 
(and (pre-kaq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-qmq_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)
(:action goal-achieve-kaq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-kaq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-kaq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-wun_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wun_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-wun_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-x3x_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-65f_observe-rock_agent2_waypoint4 dd) (immediate-dummy-x3x_observe-vis_agent3_objective1_waypoint4 dd) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent0 waypoint4) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-x3x_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-65f_observe-rock_agent2_waypoint4 dd) (immediate-dummy-x3x_observe-vis_agent3_objective1_waypoint4 dd) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent0 waypoint4) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-x3x_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-65f_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent0 waypoint4) (not (dummy-left-x3x_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-x3x_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (immediate-dummy-x3x_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-x3x_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-65f_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent0 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-x3x_observe-vis_agent3_objective1_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-x3x_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-x3x_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-x3x_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-65f_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent0 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-x3x_observe-vis_agent3_objective1_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-x3x_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-x3x_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-wcc_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-x3x_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-wcc_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent0 waypoint0) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-wcc_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-x3x_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-wcc_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent0 waypoint0) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-wcc_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-x3x_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent0 waypoint0) (not (dummy-left-wcc_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-wcc_observe-vis_agent3_objective1_waypoint0 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (immediate-dummy-wcc_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-wcc_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-x3x_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent0 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-wcc_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-wcc_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-wcc_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-wcc_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-x3x_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent0 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-wcc_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-wcc_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-wcc_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action act-i7n_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-wcc_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (calibrated camera0 agent0 waypoint5 objective1) (at agent0 waypoint5) (Kvisible-from objective1 waypoint0 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (pre-i7n_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint5 objective1)))
)
(:action act-hh5_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-i7n_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint1) (have-image agent0 objective1 high-res))
:effect 
(and (pre-hh5_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-i7n_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)
(:action goal-achieve-hh5_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-hh5_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-hh5_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-wcc_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-wcc_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (Kvisible-from objective1 waypoint0 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-wcc_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action goal-achieve-right-x3x_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-x3x_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-x3x_observe-vis_agent3_objective1_waypoint4 dd)))
)
(:action act-fxm_observe-rock_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y5u_observe-soil_agent0_waypoint5 dd) (immediate-dummy-fxm_observe-rock_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent0 waypoint5) (Kat-soil-sample waypoint5 V_TRUE) (at-rock-sample waypoint5) (not (Kat-rock-sample waypoint5 V_TRUE)) (not (Kat-rock-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint5 V_TRUE))
)
(:action act-fxm_observe-rock_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y5u_observe-soil_agent0_waypoint5 dd) (immediate-dummy-fxm_observe-rock_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent0 waypoint5) (Kat-soil-sample waypoint5 V_TRUE) (not (at-rock-sample waypoint5)) (not (Kat-rock-sample waypoint5 V_TRUE)) (not (Kat-rock-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint5 V_FALSE))
)
(:action act-dummy-fxm_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y5u_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent0 waypoint5) (not (dummy-left-fxm_observe-rock_agent0_waypoint5 dd)) (not (dummy-right-fxm_observe-rock_agent0_waypoint5 dd)) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (immediate-dummy-fxm_observe-rock_agent0_waypoint5 dd))
)
(:action dummy-left-fxm_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y5u_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent0 waypoint5) (not (at-rock-sample waypoint5)) (immediate-dummy-fxm_observe-rock_agent0_waypoint5 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-fxm_observe-rock_agent0_waypoint5 dd)) (dummy-left-fxm_observe-rock_agent0_waypoint5 dd))
)
(:action dummy-right-fxm_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-y5u_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent0 waypoint5) (at-rock-sample waypoint5) (immediate-dummy-fxm_observe-rock_agent0_waypoint5 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-fxm_observe-rock_agent0_waypoint5 dd)) (dummy-right-fxm_observe-rock_agent0_waypoint5 dd))
)
(:action act-myk_observe-vis_agent0_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fxm_observe-rock_agent0_waypoint5 dd) (immediate-dummy-myk_observe-vis_agent0_objective1_waypoint4 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint4) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-myk_observe-vis_agent0_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fxm_observe-rock_agent0_waypoint5 dd) (immediate-dummy-myk_observe-vis_agent0_objective1_waypoint4 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint4) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-myk_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fxm_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint4) (not (dummy-left-myk_observe-vis_agent0_objective1_waypoint4 dd)) (not (dummy-right-myk_observe-vis_agent0_objective1_waypoint4 dd)) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (immediate-dummy-myk_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-left-myk_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fxm_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-myk_observe-vis_agent0_objective1_waypoint4 dd) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-myk_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-left-myk_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-myk_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fxm_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-myk_observe-vis_agent0_objective1_waypoint4 dd) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-myk_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-right-myk_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-njo_observe-vis_agent0_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-myk_observe-vis_agent0_objective1_waypoint4 dd) (immediate-dummy-njo_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-njo_observe-vis_agent0_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-myk_observe-vis_agent0_objective1_waypoint4 dd) (immediate-dummy-njo_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-njo_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-myk_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint5) (not (dummy-left-njo_observe-vis_agent0_objective1_waypoint5 dd)) (not (dummy-right-njo_observe-vis_agent0_objective1_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (immediate-dummy-njo_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-left-njo_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-myk_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-njo_observe-vis_agent0_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-njo_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-left-njo_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-right-njo_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-myk_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-njo_observe-vis_agent0_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-njo_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-right-njo_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action act-az5_sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-njo_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint4) (empty a0store agent0) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (pre-az5_sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (empty a0store agent0)) (full a0store agent0) (have-rock-analysis agent0))
)
(:action act-h22_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-az5_sample-rock_agent0_agent2_a0store_waypoint4 dd) (at agent0 waypoint1) (have-rock-analysis agent0))
:effect 
(and (pre-h22_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-az5_sample-rock_agent0_agent2_a0store_waypoint4 dd)) (communicated-rock-data ))
)
(:action act-5y1_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-h22_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (calibrated camera0 agent0 waypoint0 objective1) (at agent0 waypoint0))
:effect 
(and (pre-5y1_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (not (pre-h22_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint0 objective1)))
)
(:action act-9vn_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-5y1_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3) (have-image agent0 objective1 high-res))
:effect 
(and (pre-9vn_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-5y1_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)
(:action goal-achieve-9vn_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-9vn_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-9vn_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-obb_sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-njo_observe-vis_agent0_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent0 waypoint4) (empty a0store agent0) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (pre-obb_sample-rock_agent0_agent2_a0store_waypoint4 dd) (not (empty a0store agent0)) (full a0store agent0) (have-rock-analysis agent0))
)
(:action act-6j3_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-obb_sample-rock_agent0_agent2_a0store_waypoint4 dd) (calibrated camera0 agent0 waypoint5 objective1) (at agent0 waypoint5))
:effect 
(and (pre-6j3_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (not (pre-obb_sample-rock_agent0_agent2_a0store_waypoint4 dd)) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint5 objective1)))
)
(:action act-do6_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-6j3_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint5) (empty a0store agent0) (not (full a0store agent0)))
:effect 
(and (pre-do6_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-6j3_take-image_agent0_waypoint5_objective1_camera0_high-res dd)) (not (empty a0store agent0)) (full a0store agent0) (have-soil-analysis agent0))
)
(:action act-34u_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-do6_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1) (have-rock-analysis agent0))
:effect 
(and (pre-34u_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-do6_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-9q6_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-34u_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (at agent0 waypoint1) (have-soil-analysis agent0))
:effect 
(and (pre-9q6_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-34u_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)) (communicated-soil-data ))
)
(:action act-ady_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-9q6_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (at agent0 waypoint1) (have-image agent0 objective1 high-res))
:effect 
(and (pre-ady_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-9q6_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-ady_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ady_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-ady_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action act-f61_take-image_agent0_waypoint4_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-myk_observe-vis_agent0_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (calibrated camera0 agent0 waypoint4 objective1) (at agent0 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (pre-f61_take-image_agent0_waypoint4_objective1_camera0_high-res dd) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint4 objective1)))
)
(:action act-bwe_sample-rock_agent3_agent0_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-f61_take-image_agent0_waypoint4_objective1_camera0_high-res dd) (at agent0 waypoint4))
:effect 
(and (pre-bwe_sample-rock_agent3_agent0_a1store_waypoint4 dd) (not (pre-f61_take-image_agent0_waypoint4_objective1_camera0_high-res dd)))
)
(:action act-2oj_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-bwe_sample-rock_agent3_agent0_a1store_waypoint4 dd) (at agent0 waypoint5) (empty a0store agent0) (not (full a0store agent0)))
:effect 
(and (pre-2oj_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-bwe_sample-rock_agent3_agent0_a1store_waypoint4 dd)) (not (empty a0store agent0)) (full a0store agent0) (have-soil-analysis agent0))
)
(:action act-kmi_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-2oj_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1) (have-soil-analysis agent0))
:effect 
(and (pre-kmi_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-2oj_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-soil-data ))
)
(:action act-vhw_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-kmi_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (at agent0 waypoint1) (have-image agent0 objective1 high-res))
:effect 
(and (pre-vhw_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-kmi_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-vhw_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-vhw_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-vhw_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action act-r1v_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fxm_observe-rock_agent0_waypoint5 dd) (immediate-dummy-r1v_observe-vis_agent3_objective1_waypoint4 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint4) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-r1v_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fxm_observe-rock_agent0_waypoint5 dd) (immediate-dummy-r1v_observe-vis_agent3_objective1_waypoint4 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint4) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-r1v_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fxm_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint4) (not (dummy-left-r1v_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-r1v_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (immediate-dummy-r1v_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-r1v_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fxm_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-r1v_observe-vis_agent3_objective1_waypoint4 dd) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-r1v_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-r1v_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-r1v_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fxm_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-r1v_observe-vis_agent3_objective1_waypoint4 dd) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-r1v_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-r1v_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-kpo_observe-vis_agent0_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r1v_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-kpo_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-kpo_observe-vis_agent0_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r1v_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-kpo_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-kpo_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r1v_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint5) (not (dummy-left-kpo_observe-vis_agent0_objective1_waypoint5 dd)) (not (dummy-right-kpo_observe-vis_agent0_objective1_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (immediate-dummy-kpo_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-left-kpo_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r1v_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-kpo_observe-vis_agent0_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-kpo_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-left-kpo_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-right-kpo_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r1v_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-kpo_observe-vis_agent0_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-kpo_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-right-kpo_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action act-rk4_sample-rock_agent3_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kpo_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint5) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (pre-rk4_sample-rock_agent3_agent0_a1store_waypoint5 dd))
)
(:action act-rh4_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-rk4_sample-rock_agent3_agent0_a1store_waypoint5 dd) (at agent0 waypoint5) (empty a0store agent0) (not (full a0store agent0)))
:effect 
(and (pre-rh4_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-rk4_sample-rock_agent3_agent0_a1store_waypoint5 dd)) (not (empty a0store agent0)) (full a0store agent0) (have-soil-analysis agent0))
)
(:action act-kim_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-rh4_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1) (have-soil-analysis agent0))
:effect 
(and (pre-kim_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-rh4_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-soil-data ))
)
(:action act-54v_take-image_agent0_waypoint0_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-kim_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (calibrated camera0 agent0 waypoint0 objective1) (at agent0 waypoint0))
:effect 
(and (pre-54v_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (not (pre-kim_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint0 objective1)))
)
(:action act-d3z_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-54v_take-image_agent0_waypoint0_objective1_camera0_high-res dd) (at agent0 waypoint3) (have-image agent0 objective1 high-res))
:effect 
(and (pre-d3z_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-54v_take-image_agent0_waypoint0_objective1_camera0_high-res dd)))
)
(:action goal-achieve-d3z_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-d3z_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-d3z_communicate-image-data_agent0_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-wno_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kpo_observe-vis_agent0_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (calibrated camera0 agent0 waypoint5 objective1) (at agent0 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (pre-wno_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint5 objective1)))
)
(:action act-7e5_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-wno_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint5) (empty a0store agent0) (not (full a0store agent0)))
:effect 
(and (pre-7e5_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-wno_take-image_agent0_waypoint5_objective1_camera0_high-res dd)) (not (empty a0store agent0)) (full a0store agent0) (have-soil-analysis agent0))
)
(:action act-t3c_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-7e5_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1) (have-soil-analysis agent0))
:effect 
(and (pre-t3c_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-7e5_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-soil-data ))
)
(:action act-yhx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-t3c_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (at agent0 waypoint1) (have-image agent0 objective1 high-res))
:effect 
(and (pre-yhx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-t3c_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-8rz_sample-rock_agent3_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-yhx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (at agent0 waypoint5))
:effect 
(and (pre-8rz_sample-rock_agent3_agent0_a1store_waypoint5 dd) (not (pre-yhx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-8rz_sample-rock_agent3_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-8rz_sample-rock_agent3_agent0_a1store_waypoint5 dd))
:effect 
(and (done-goal dd) (not (pre-8rz_sample-rock_agent3_agent0_a1store_waypoint5 dd)))
)
(:action act-k0y_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r1v_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent0 waypoint5) (empty a0store agent0) (not (full a0store agent0)) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (pre-k0y_sample-soil_agent0_a0store_waypoint5 dd) (not (empty a0store agent0)) (full a0store agent0) (have-soil-analysis agent0))
)
(:action act-kyv_sample-rock_agent3_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-k0y_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint5))
:effect 
(and (pre-kyv_sample-rock_agent3_agent0_a1store_waypoint5 dd) (not (pre-k0y_sample-soil_agent0_a0store_waypoint5 dd)))
)
(:action act-6up_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-kyv_sample-rock_agent3_agent0_a1store_waypoint5 dd) (at agent0 waypoint1) (have-soil-analysis agent0))
:effect 
(and (pre-6up_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-kyv_sample-rock_agent3_agent0_a1store_waypoint5 dd)) (communicated-soil-data ))
)
(:action goal-achieve-6up_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-6up_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-6up_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
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
