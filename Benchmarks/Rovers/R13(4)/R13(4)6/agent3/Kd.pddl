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
(init-w89_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-w89_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-w89_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-w2w_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-w2w_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-saj_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
(pre-2gz_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(immediate-dummy-61a_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-61a_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-61a_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-fj8_take-image_agent3_waypoint0_objective1_camera1_high-res ?dd - dummy)
(pre-f2i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(dummy-right-w2w_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-ipa_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(dummy-left-ipa_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-gfj_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-gfj_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-2va_take-image_agent3_waypoint0_objective1_camera1_high-res ?dd - dummy)
(pre-m1q_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(dummy-right-gfj_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-right-ipa_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(dummy-right-w89_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-qb7_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-qb7_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-kab_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
(pre-pmv_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
(pre-5xs_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(immediate-dummy-bzm_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-bzm_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-bzm_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-uvg_take-image_agent3_waypoint0_objective1_camera1_high-res ?dd - dummy)
(pre-ij5_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(dummy-right-qb7_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-fns_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-fns_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-9qx_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
(pre-m0o_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(immediate-dummy-ipo_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-ipo_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-ipo_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-jq0_take-image_agent3_waypoint0_objective1_camera1_high-res ?dd - dummy)
(pre-c4i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(dummy-right-fns_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-60p_take-image_agent3_waypoint4_objective1_camera1_high-res ?dd - dummy)
(pre-wn2_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
(pre-rep_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-7ha_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
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
(:action act-w89_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (init-w89_observe-rock_agent2_waypoint4 dd) (immediate-dummy-w89_observe-rock_agent2_waypoint4 dd) (at agent3 waypoint4) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-w89_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (init-w89_observe-rock_agent2_waypoint4 dd) (immediate-dummy-w89_observe-rock_agent2_waypoint4 dd) (at agent3 waypoint4) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-w89_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-w89_observe-rock_agent2_waypoint4 dd) (not (dummy-left-w89_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-w89_observe-rock_agent2_waypoint4 dd)))
:effect 
(and (immediate-dummy-w89_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-w89_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-w89_observe-rock_agent2_waypoint4 dd) (at agent3 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-w89_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (init-w89_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-w89_observe-rock_agent2_waypoint4 dd)) (dummy-left-w89_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-w89_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-w89_observe-rock_agent2_waypoint4 dd) (at agent3 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-w89_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (init-w89_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-w89_observe-rock_agent2_waypoint4 dd)) (dummy-right-w89_observe-rock_agent2_waypoint4 dd))
)
(:action act-w2w_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w89_observe-rock_agent2_waypoint4 dd) (immediate-dummy-w2w_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-w2w_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w89_observe-rock_agent2_waypoint4 dd) (immediate-dummy-w2w_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-w2w_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w89_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (dummy-left-w2w_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-w2w_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-w2w_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-w2w_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w89_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-w2w_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-w2w_observe-soil_agent0_waypoint5 dd)) (dummy-left-w2w_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-w2w_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w89_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-w2w_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-w2w_observe-soil_agent0_waypoint5 dd)) (dummy-right-w2w_observe-soil_agent0_waypoint5 dd))
)
(:action act-saj_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-w2w_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (empty a1store agent3) (not (full a1store agent3)) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-saj_sample-soil_agent3_a1store_waypoint4 dd) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)
(:action act-2gz_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-saj_sample-soil_agent3_a1store_waypoint4 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-2gz_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-saj_sample-soil_agent3_a1store_waypoint4 dd)) (communicated-soil-data ))
)
(:action act-61a_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-2gz_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (immediate-dummy-61a_observe-vis_agent3_objective1_waypoint0 dd) (at agent3 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-61a_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-2gz_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (immediate-dummy-61a_observe-vis_agent3_objective1_waypoint0 dd) (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-61a_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-2gz_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint0) (not (dummy-left-61a_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-61a_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-61a_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-61a_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-61a_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-61a_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-61a_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-61a_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-61a_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-61a_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-61a_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action goal-achieve-left-61a_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-61a_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-61a_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-fj8_take-image_agent3_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-61a_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (calibrated camera1 agent3 waypoint0 objective1) (at agent3 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (pre-fj8_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-f2i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-fj8_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (at agent3 waypoint3) (have-image agent3 objective1 high-res))
:effect 
(and (pre-f2i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-fj8_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-f2i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-f2i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-f2i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-ipa_observe-vis_agent0_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w2w_observe-soil_agent0_waypoint5 dd) (immediate-dummy-ipa_observe-vis_agent0_objective1_waypoint4 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-ipa_observe-vis_agent0_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w2w_observe-soil_agent0_waypoint5 dd) (immediate-dummy-ipa_observe-vis_agent0_objective1_waypoint4 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-ipa_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w2w_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (not (dummy-left-ipa_observe-vis_agent0_objective1_waypoint4 dd)) (not (dummy-right-ipa_observe-vis_agent0_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-ipa_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-left-ipa_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w2w_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-ipa_observe-vis_agent0_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-ipa_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-left-ipa_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-ipa_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w2w_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-ipa_observe-vis_agent0_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-ipa_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-right-ipa_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-gfj_observe-vis_agent2_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ipa_observe-vis_agent0_objective1_waypoint4 dd) (immediate-dummy-gfj_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-gfj_observe-vis_agent2_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ipa_observe-vis_agent0_objective1_waypoint4 dd) (immediate-dummy-gfj_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-gfj_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ipa_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (dummy-left-gfj_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-gfj_observe-vis_agent2_objective1_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-gfj_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-left-gfj_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ipa_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-gfj_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-gfj_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-gfj_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-gfj_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ipa_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-gfj_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-gfj_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-gfj_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-2va_take-image_agent3_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gfj_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (calibrated camera1 agent3 waypoint0 objective1) (at agent3 waypoint0) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-2va_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-m1q_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-2va_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (at agent3 waypoint3) (have-image agent3 objective1 high-res))
:effect 
(and (pre-m1q_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-2va_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-m1q_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-m1q_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-m1q_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action goal-achieve-right-gfj_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gfj_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-gfj_observe-vis_agent2_objective1_waypoint5 dd)))
)
(:action goal-achieve-right-ipa_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ipa_observe-vis_agent0_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-right-ipa_observe-vis_agent0_objective1_waypoint4 dd)))
)
(:action act-qb7_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w89_observe-rock_agent2_waypoint4 dd) (immediate-dummy-qb7_observe-soil_agent0_waypoint5 dd) (at-rock-sample waypoint4) (at agent3 waypoint5) (Kat-rock-sample waypoint4 V_TRUE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-qb7_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w89_observe-rock_agent2_waypoint4 dd) (immediate-dummy-qb7_observe-soil_agent0_waypoint5 dd) (at-rock-sample waypoint4) (at agent3 waypoint5) (Kat-rock-sample waypoint4 V_TRUE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-qb7_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w89_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint5) (not (dummy-left-qb7_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-qb7_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-qb7_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-qb7_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w89_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-qb7_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-qb7_observe-soil_agent0_waypoint5 dd)) (dummy-left-qb7_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-qb7_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-w89_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-qb7_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-qb7_observe-soil_agent0_waypoint5 dd)) (dummy-right-qb7_observe-soil_agent0_waypoint5 dd))
)
(:action act-kab_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qb7_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent3 waypoint4) (empty a1store agent3) (not (full a1store agent3)) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-kab_sample-soil_agent3_a1store_waypoint4 dd) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)
(:action act-pmv_sample-rock_agent2_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-kab_sample-soil_agent3_a1store_waypoint4 dd) (at agent3 waypoint4))
:effect 
(and (pre-pmv_sample-rock_agent2_agent3_a1store_waypoint4 dd) (not (pre-kab_sample-soil_agent3_a1store_waypoint4 dd)))
)
(:action act-5xs_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-pmv_sample-rock_agent2_agent3_a1store_waypoint4 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-5xs_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-pmv_sample-rock_agent2_agent3_a1store_waypoint4 dd)) (communicated-soil-data ))
)
(:action act-bzm_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-5xs_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (immediate-dummy-bzm_observe-vis_agent3_objective1_waypoint0 dd) (at agent3 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-bzm_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-5xs_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (immediate-dummy-bzm_observe-vis_agent3_objective1_waypoint0 dd) (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-bzm_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5xs_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint0) (not (dummy-left-bzm_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-bzm_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-bzm_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-bzm_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-bzm_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-bzm_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-bzm_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-bzm_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-bzm_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-bzm_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-bzm_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action goal-achieve-left-bzm_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bzm_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-bzm_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-uvg_take-image_agent3_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bzm_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (calibrated camera1 agent3 waypoint0 objective1) (at agent3 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (pre-uvg_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-ij5_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-uvg_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (at agent3 waypoint3) (have-image agent3 objective1 high-res))
:effect 
(and (pre-ij5_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-uvg_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-ij5_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ij5_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-ij5_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-fns_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qb7_observe-soil_agent0_waypoint5 dd) (immediate-dummy-fns_observe-vis_agent3_objective1_waypoint4 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-fns_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qb7_observe-soil_agent0_waypoint5 dd) (immediate-dummy-fns_observe-vis_agent3_objective1_waypoint4 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-fns_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qb7_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (dummy-left-fns_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-fns_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-fns_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-fns_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qb7_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-fns_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-fns_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-fns_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-fns_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qb7_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-fns_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-fns_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-fns_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-9qx_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-fns_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent3 waypoint4) (empty a1store agent3) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-9qx_sample-rock_agent3_agent2_a1store_waypoint4 dd) (not (empty a1store agent3)) (full a1store agent3) (have-rock-analysis agent3))
)
(:action act-m0o_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-9qx_sample-rock_agent3_agent2_a1store_waypoint4 dd) (at agent3 waypoint1) (have-rock-analysis agent3))
:effect 
(and (pre-m0o_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-9qx_sample-rock_agent3_agent2_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action act-ipo_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-m0o_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (immediate-dummy-ipo_observe-vis_agent3_objective1_waypoint0 dd) (at agent3 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-ipo_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-m0o_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (immediate-dummy-ipo_observe-vis_agent3_objective1_waypoint0 dd) (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-ipo_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-m0o_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint0) (not (dummy-left-ipo_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-ipo_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-ipo_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-ipo_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-ipo_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-ipo_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-ipo_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-ipo_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-ipo_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-ipo_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-ipo_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action goal-achieve-left-ipo_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ipo_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-ipo_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-jq0_take-image_agent3_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ipo_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (calibrated camera1 agent3 waypoint0 objective1) (at agent3 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (pre-jq0_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint0 objective1)))
)
(:action act-c4i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-jq0_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (at agent3 waypoint3) (have-image agent3 objective1 high-res))
:effect 
(and (pre-c4i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-jq0_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-c4i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-c4i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-c4i_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-60p_take-image_agent3_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-fns_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (calibrated camera1 agent3 waypoint4 objective1) (at agent3 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-60p_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint4 objective1)))
)
(:action act-wn2_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-60p_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (at agent3 waypoint4) (empty a1store agent3))
:effect 
(and (pre-wn2_sample-rock_agent3_agent2_a1store_waypoint4 dd) (not (pre-60p_take-image_agent3_waypoint4_objective1_camera1_high-res dd)) (not (empty a1store agent3)) (full a1store agent3) (have-rock-analysis agent3))
)
(:action act-rep_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-wn2_sample-rock_agent3_agent2_a1store_waypoint4 dd) (at agent3 waypoint1) (have-rock-analysis agent3))
:effect 
(and (pre-rep_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-wn2_sample-rock_agent3_agent2_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action act-7ha_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-rep_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint1) (have-image agent3 objective1 high-res))
:effect 
(and (pre-7ha_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-rep_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-7ha_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-7ha_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-7ha_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
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
