(define (domain Krover-agent3)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy dummy TAG_TYPE VALUE_TYPE)
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
 dd - dummy
 tag0 - TAG_TYPE ; (visible-from objective1 waypoint0) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint4) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (not (at-rock-sample waypoint5))
 tag1 - TAG_TYPE ; (not (visible-from objective1 waypoint0)) (not (at-soil-sample waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at-rock-sample waypoint5) (visible-from objective1 waypoint4)
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
(:action act-4mn_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (init-4mn_observe-rock_agent2_waypoint4 dd) (immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd) (at agent3 waypoint4) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-4mn_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (init-4mn_observe-rock_agent2_waypoint4 dd) (immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd) (at agent3 waypoint4) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-4mn_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-4mn_observe-rock_agent2_waypoint4 dd) (not (dummy-left-4mn_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-4mn_observe-rock_agent2_waypoint4 dd)))
:effect 
(and (immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-4mn_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-4mn_observe-rock_agent2_waypoint4 dd) (at agent3 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (init-4mn_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd)) (dummy-left-4mn_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-4mn_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-4mn_observe-rock_agent2_waypoint4 dd) (at agent3 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (init-4mn_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-4mn_observe-rock_agent2_waypoint4 dd)) (dummy-right-4mn_observe-rock_agent2_waypoint4 dd))
)
(:action act-89e_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4mn_observe-rock_agent2_waypoint4 dd) (immediate-dummy-89e_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-89e_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4mn_observe-rock_agent2_waypoint4 dd) (immediate-dummy-89e_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-89e_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4mn_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (dummy-left-89e_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-89e_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-89e_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-89e_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4mn_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-89e_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-89e_observe-soil_agent0_waypoint5 dd)) (dummy-left-89e_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-89e_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-4mn_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-89e_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-89e_observe-soil_agent0_waypoint5 dd)) (dummy-right-89e_observe-soil_agent0_waypoint5 dd))
)
(:action act-gbp_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-89e_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (empty a1store agent3) (not (full a1store agent3)) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-gbp_sample-soil_agent3_a1store_waypoint4 dd) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)
(:action act-hv8_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-gbp_sample-soil_agent3_a1store_waypoint4 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-hv8_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-gbp_sample-soil_agent3_a1store_waypoint4 dd)) (communicated-soil-data ))
)
(:action act-8oj_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-hv8_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd) (at agent3 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-8oj_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-hv8_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd) (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-8oj_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-hv8_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint0) (not (dummy-left-8oj_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-8oj_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-8oj_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-8oj_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-8oj_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-8oj_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-8oj_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action goal-achieve-left-8oj_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-8oj_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-8oj_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-5u3_take-image_agent3_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-8oj_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (calibrated camera1 agent3 waypoint0 objective1) (at agent3 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (pre-5u3_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-5u3_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (at agent3 waypoint3) (have-image agent3 objective1 high-res))
:effect 
(and (pre-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-5u3_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-o1f_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-61c_observe-vis_agent0_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-89e_observe-soil_agent0_waypoint5 dd) (immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-61c_observe-vis_agent0_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-89e_observe-soil_agent0_waypoint5 dd) (immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-61c_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-89e_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (not (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd)) (not (dummy-right-61c_observe-vis_agent0_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-left-61c_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-89e_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-61c_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-89e_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-61c_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-right-61c_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-96n_observe-vis_agent2_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd) (immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-96n_observe-vis_agent2_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd) (immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-96n_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (dummy-left-96n_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-96n_observe-vis_agent2_objective1_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-left-96n_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-96n_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-96n_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-61c_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-96n_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-96n_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-gu5_take-image_agent3_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-96n_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (calibrated camera1 agent3 waypoint0 objective1) (at agent3 waypoint0) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-gu5_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-gu5_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (at agent3 waypoint3) (have-image agent3 objective1 high-res))
:effect 
(and (pre-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-gu5_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-ovs_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action goal-achieve-right-96n_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-96n_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-96n_observe-vis_agent2_objective1_waypoint5 dd)))
)
(:action goal-achieve-right-61c_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-61c_observe-vis_agent0_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-61c_observe-vis_agent0_objective1_waypoint4 dd)))
)
(:action act-1m2_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4mn_observe-rock_agent2_waypoint4 dd) (immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd) (at-rock-sample waypoint4) (at agent3 waypoint5) (Kat-rock-sample waypoint4 V_TRUE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-1m2_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4mn_observe-rock_agent2_waypoint4 dd) (immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd) (at-rock-sample waypoint4) (at agent3 waypoint5) (Kat-rock-sample waypoint4 V_TRUE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-1m2_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4mn_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint5) (not (dummy-left-1m2_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-1m2_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-1m2_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4mn_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd)) (dummy-left-1m2_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-1m2_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-4mn_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-1m2_observe-soil_agent0_waypoint5 dd)) (dummy-right-1m2_observe-soil_agent0_waypoint5 dd))
)
(:action act-r7j_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1m2_observe-soil_agent0_waypoint5 dd) (immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-r7j_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1m2_observe-soil_agent0_waypoint5 dd) (immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-r7j_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1m2_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (dummy-left-r7j_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-r7j_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-r7j_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1m2_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-r7j_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-r7j_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-1m2_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent3 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-r7j_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-r7j_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-5yj_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-r7j_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent3 waypoint4) (empty a1store agent3) (not (full a1store agent3)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-5yj_sample-soil_agent3_a1store_waypoint4 dd) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)
(:action act-ij1_sample-rock_agent2_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-5yj_sample-soil_agent3_a1store_waypoint4 dd) (at agent3 waypoint4))
:effect 
(and (pre-ij1_sample-rock_agent2_agent3_a1store_waypoint4 dd) (not (pre-5yj_sample-soil_agent3_a1store_waypoint4 dd)))
)
(:action act-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ij1_sample-rock_agent2_agent3_a1store_waypoint4 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-ij1_sample-rock_agent2_agent3_a1store_waypoint4 dd)) (communicated-soil-data ))
)
(:action goal-achieve-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-8cr_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-ml9_take-image_agent3_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-r7j_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (calibrated camera1 agent3 waypoint4 objective1) (at agent3 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-ml9_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint4 objective1)))
)
(:action act-4jw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ml9_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (at agent3 waypoint1) (have-image agent3 objective1 high-res))
:effect 
(and (pre-4jw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-ml9_take-image_agent3_waypoint4_objective1_camera1_high-res dd)))
)
(:action act-s8v_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-4jw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd) (at agent3 waypoint4) (empty a1store agent3) (not (full a1store agent3)))
:effect 
(and (pre-s8v_sample-soil_agent3_a1store_waypoint4 dd) (not (pre-4jw_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)
(:action act-k8d_sample-rock_agent2_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-s8v_sample-soil_agent3_a1store_waypoint4 dd) (at agent3 waypoint4))
:effect 
(and (pre-k8d_sample-rock_agent2_agent3_a1store_waypoint4 dd) (not (pre-s8v_sample-soil_agent3_a1store_waypoint4 dd)))
)
(:action act-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-k8d_sample-rock_agent2_agent3_a1store_waypoint4 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-k8d_sample-rock_agent2_agent3_a1store_waypoint4 dd)) (communicated-soil-data ))
)
(:action goal-achieve-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-19r_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-u3a_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1m2_observe-soil_agent0_waypoint5 dd) (immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-u3a_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1m2_observe-soil_agent0_waypoint5 dd) (immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-u3a_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1m2_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (dummy-left-u3a_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-u3a_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-u3a_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1m2_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-u3a_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-u3a_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-1m2_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-u3a_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-u3a_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-pgb_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-u3a_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (empty a1store agent3) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-pgb_sample-rock_agent3_agent2_a1store_waypoint4 dd) (not (empty a1store agent3)) (full a1store agent3) (have-rock-analysis agent3))
)
(:action act-qox_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-pgb_sample-rock_agent3_agent2_a1store_waypoint4 dd) (at agent3 waypoint1) (have-rock-analysis agent3))
:effect 
(and (pre-qox_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-pgb_sample-rock_agent3_agent2_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action act-usc_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-qox_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd) (at agent3 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-usc_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-qox_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd) (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-usc_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-qox_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint0) (not (dummy-left-usc_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-usc_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-usc_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-usc_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-usc_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-usc_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-usc_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action goal-achieve-left-usc_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-usc_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-usc_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-6xr_take-image_agent3_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-usc_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (calibrated camera1 agent3 waypoint0 objective1) (at agent3 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (pre-6xr_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-6xr_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (at agent3 waypoint3) (have-image agent3 objective1 high-res))
:effect 
(and (pre-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-6xr_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-la3_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-63i_take-image_agent3_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-u3a_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (calibrated camera1 agent3 waypoint4 objective1) (at agent3 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-63i_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint4 objective1)))
)
(:action act-5um_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-63i_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (at agent3 waypoint4) (empty a1store agent3))
:effect 
(and (pre-5um_sample-rock_agent3_agent2_a1store_waypoint4 dd) (not (pre-63i_take-image_agent3_waypoint4_objective1_camera1_high-res dd)) (not (empty a1store agent3)) (full a1store agent3) (have-rock-analysis agent3))
)
(:action act-5jo_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-5um_sample-rock_agent3_agent2_a1store_waypoint4 dd) (at agent3 waypoint1) (have-rock-analysis agent3))
:effect 
(and (pre-5jo_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-5um_sample-rock_agent3_agent2_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action act-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-5jo_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint1) (have-image agent3 objective1 high-res))
:effect 
(and (pre-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-5jo_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-hh8_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
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
