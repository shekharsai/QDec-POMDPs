(define (domain Krover-agent2)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy dummy TAG_TYPE VALUE_TYPE)
(:constants
 agent2 - agent
 general - lander
 colour - mode
 high-res - mode
 low-res - mode
 agent2 - agent
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
(init-28h_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-28h_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-28h_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-gog_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-gog_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-k1p_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(immediate-dummy-vec_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-vec_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-xym_take-image_agent2_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-z3y_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-vec_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-gog_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-q5k_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(dummy-left-q5k_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-7uw_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-7uw_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-1xz_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
(pre-gn3_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-7uw_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-eu3_take-image_agent2_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-h2o_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
(pre-rb7_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-a2b_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-q5k_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(pre-afp_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
(pre-w24_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-28h_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-7n8_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-7n8_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-35l_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-35l_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-55o_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-left-55o_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-vp0_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
(pre-qdn_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-wqu_take-image_agent2_waypoint0_objective1_camera1_high-res ?dd - dummy)
(pre-jp6_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(dummy-right-55o_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-7i2_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
(pre-1pd_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-35l_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-j6p_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
(pre-hf4_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-7n8_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-5j9_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-5j9_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-4ly_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
(immediate-dummy-rm6_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-rm6_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-a5w_take-image_agent2_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-huy_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-rm6_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-5j9_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-xoy_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
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
(:action act-28h_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (init-28h_observe-rock_agent2_waypoint4 dd) (immediate-dummy-28h_observe-rock_agent2_waypoint4 dd) (at agent2 waypoint4) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-28h_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (init-28h_observe-rock_agent2_waypoint4 dd) (immediate-dummy-28h_observe-rock_agent2_waypoint4 dd) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-28h_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-28h_observe-rock_agent2_waypoint4 dd) (not (dummy-left-28h_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-28h_observe-rock_agent2_waypoint4 dd)))
:effect 
(and (immediate-dummy-28h_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-28h_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-28h_observe-rock_agent2_waypoint4 dd) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-28h_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (init-28h_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-28h_observe-rock_agent2_waypoint4 dd)) (dummy-left-28h_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-28h_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-28h_observe-rock_agent2_waypoint4 dd) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-28h_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (init-28h_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-28h_observe-rock_agent2_waypoint4 dd)) (dummy-right-28h_observe-rock_agent2_waypoint4 dd))
)
(:action act-gog_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-28h_observe-rock_agent2_waypoint4 dd) (immediate-dummy-gog_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-gog_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-28h_observe-rock_agent2_waypoint4 dd) (immediate-dummy-gog_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-gog_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-28h_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (dummy-left-gog_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-gog_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-gog_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-gog_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-28h_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-gog_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-gog_observe-soil_agent0_waypoint5 dd)) (dummy-left-gog_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-gog_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-28h_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-gog_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-gog_observe-soil_agent0_waypoint5 dd)) (dummy-right-gog_observe-soil_agent0_waypoint5 dd))
)
(:action act-k1p_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-gog_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-k1p_sample-rock_agent0_agent2_a0store_waypoint5 dd))
)
(:action act-vec_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-k1p_sample-rock_agent0_agent2_a0store_waypoint5 dd) (immediate-dummy-vec_observe-vis_agent3_objective1_waypoint0 dd) (at agent2 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-vec_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-k1p_sample-rock_agent0_agent2_a0store_waypoint5 dd) (immediate-dummy-vec_observe-vis_agent3_objective1_waypoint0 dd) (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-vec_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-k1p_sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint0) (not (dummy-left-vec_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-vec_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-vec_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-vec_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-vec_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-vec_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-vec_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-vec_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-vec_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-vec_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-vec_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action act-xym_take-image_agent2_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-vec_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (calibrated camera1 agent2 waypoint5 objective1) (at agent2 waypoint5) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-xym_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (have-image agent2 objective1 high-res) (not (calibrated camera1 agent2 waypoint5 objective1)))
)
(:action act-z3y_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-xym_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (at agent2 waypoint1) (have-image agent2 objective1 high-res))
:effect 
(and (pre-z3y_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-xym_take-image_agent2_waypoint5_objective1_camera1_high-res dd)))
)
(:action goal-achieve-z3y_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-z3y_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-z3y_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-vec_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-vec_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-vec_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-q5k_observe-vis_agent0_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gog_observe-soil_agent0_waypoint5 dd) (immediate-dummy-q5k_observe-vis_agent0_objective1_waypoint4 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-q5k_observe-vis_agent0_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gog_observe-soil_agent0_waypoint5 dd) (immediate-dummy-q5k_observe-vis_agent0_objective1_waypoint4 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-q5k_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gog_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (dummy-left-q5k_observe-vis_agent0_objective1_waypoint4 dd)) (not (dummy-right-q5k_observe-vis_agent0_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-q5k_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-left-q5k_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gog_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-q5k_observe-vis_agent0_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-q5k_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-left-q5k_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-q5k_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-gog_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-q5k_observe-vis_agent0_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-q5k_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-right-q5k_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-7uw_observe-vis_agent2_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-q5k_observe-vis_agent0_objective1_waypoint4 dd) (immediate-dummy-7uw_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-7uw_observe-vis_agent2_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-q5k_observe-vis_agent0_objective1_waypoint4 dd) (immediate-dummy-7uw_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-7uw_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-q5k_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (dummy-left-7uw_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-7uw_observe-vis_agent2_objective1_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-7uw_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-left-7uw_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-q5k_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-7uw_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-7uw_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-7uw_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-7uw_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-q5k_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-7uw_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-7uw_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-7uw_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-1xz_sample-rock_agent2_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7uw_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (empty a1store agent2) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-1xz_sample-rock_agent2_agent0_a1store_waypoint5 dd) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-gn3_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-1xz_sample-rock_agent2_agent0_a1store_waypoint5 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-gn3_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-1xz_sample-rock_agent2_agent0_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action goal-achieve-gn3_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-gn3_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-gn3_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action act-eu3_take-image_agent2_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7uw_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (calibrated camera1 agent2 waypoint5 objective1) (at agent2 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-eu3_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (have-image agent2 objective1 high-res) (not (calibrated camera1 agent2 waypoint5 objective1)))
)
(:action act-h2o_sample-rock_agent2_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-eu3_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (at agent2 waypoint5) (empty a1store agent2))
:effect 
(and (pre-h2o_sample-rock_agent2_agent0_a1store_waypoint5 dd) (not (pre-eu3_take-image_agent2_waypoint5_objective1_camera1_high-res dd)) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-rb7_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-h2o_sample-rock_agent2_agent0_a1store_waypoint5 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-rb7_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-h2o_sample-rock_agent2_agent0_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-a2b_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-rb7_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (at agent2 waypoint1) (have-image agent2 objective1 high-res))
:effect 
(and (pre-a2b_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-rb7_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-a2b_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-a2b_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-a2b_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action act-afp_sample-rock_agent2_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-q5k_observe-vis_agent0_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (empty a1store agent2) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-afp_sample-rock_agent2_agent0_a1store_waypoint5 dd) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-w24_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-afp_sample-rock_agent2_agent0_a1store_waypoint5 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-w24_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-afp_sample-rock_agent2_agent0_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action goal-achieve-w24_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-w24_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-w24_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action act-7n8_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-28h_observe-rock_agent2_waypoint4 dd) (immediate-dummy-7n8_observe-soil_agent0_waypoint5 dd) (at-rock-sample waypoint4) (at agent2 waypoint5) (Kat-rock-sample waypoint4 V_TRUE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-7n8_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-28h_observe-rock_agent2_waypoint4 dd) (immediate-dummy-7n8_observe-soil_agent0_waypoint5 dd) (at-rock-sample waypoint4) (at agent2 waypoint5) (Kat-rock-sample waypoint4 V_TRUE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-7n8_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-28h_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (dummy-left-7n8_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-7n8_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-7n8_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-7n8_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-28h_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-7n8_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-7n8_observe-soil_agent0_waypoint5 dd)) (dummy-left-7n8_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-7n8_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-28h_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-7n8_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-7n8_observe-soil_agent0_waypoint5 dd)) (dummy-right-7n8_observe-soil_agent0_waypoint5 dd))
)
(:action act-35l_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7n8_observe-soil_agent0_waypoint5 dd) (immediate-dummy-35l_observe-vis_agent3_objective1_waypoint4 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-35l_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7n8_observe-soil_agent0_waypoint5 dd) (immediate-dummy-35l_observe-vis_agent3_objective1_waypoint4 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-35l_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7n8_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint4) (not (dummy-left-35l_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-35l_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-35l_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-35l_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7n8_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-35l_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-35l_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-35l_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-35l_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-7n8_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-35l_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-35l_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-35l_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-55o_observe-vis_agent0_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-35l_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-55o_observe-vis_agent0_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-35l_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-55o_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-35l_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (dummy-left-55o_observe-vis_agent0_objective1_waypoint5 dd)) (not (dummy-right-55o_observe-vis_agent0_objective1_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-left-55o_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-35l_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-left-55o_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-right-55o_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-35l_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-55o_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-right-55o_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action act-vp0_sample-rock_agent2_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-55o_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint4) (empty a1store agent2) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-vp0_sample-rock_agent2_agent3_a1store_waypoint4 dd) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-qdn_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-vp0_sample-rock_agent2_agent3_a1store_waypoint4 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-qdn_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-vp0_sample-rock_agent2_agent3_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action act-wqu_take-image_agent2_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (pre-qdn_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (calibrated camera1 agent2 waypoint0 objective1) (at agent2 waypoint0))
:effect 
(and (pre-wqu_take-image_agent2_waypoint0_objective1_camera1_high-res dd) (not (pre-qdn_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)) (have-image agent2 objective1 high-res) (not (calibrated camera1 agent2 waypoint0 objective1)))
)
(:action act-jp6_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-wqu_take-image_agent2_waypoint0_objective1_camera1_high-res dd) (at agent2 waypoint3) (have-image agent2 objective1 high-res))
:effect 
(and (pre-jp6_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-wqu_take-image_agent2_waypoint0_objective1_camera1_high-res dd)))
)
(:action goal-achieve-jp6_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-jp6_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-jp6_communicate-image-data_agent2_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)
(:action act-7i2_sample-rock_agent2_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-55o_observe-vis_agent0_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint4) (empty a1store agent2) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-7i2_sample-rock_agent2_agent3_a1store_waypoint4 dd) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-1pd_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-7i2_sample-rock_agent2_agent3_a1store_waypoint4 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-1pd_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-7i2_sample-rock_agent2_agent3_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action goal-achieve-1pd_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-1pd_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-1pd_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action act-j6p_sample-rock_agent2_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-35l_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint4) (empty a1store agent2) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-j6p_sample-rock_agent2_agent3_a1store_waypoint4 dd) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-hf4_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-j6p_sample-rock_agent2_agent3_a1store_waypoint4 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-hf4_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-j6p_sample-rock_agent2_agent3_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action goal-achieve-hf4_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-hf4_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-hf4_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action act-5j9_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7n8_observe-soil_agent0_waypoint5 dd) (immediate-dummy-5j9_observe-vis_agent3_objective1_waypoint4 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-5j9_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7n8_observe-soil_agent0_waypoint5 dd) (immediate-dummy-5j9_observe-vis_agent3_objective1_waypoint4 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-5j9_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7n8_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (not (dummy-left-5j9_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-5j9_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-5j9_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-5j9_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7n8_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-5j9_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-5j9_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-5j9_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-5j9_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-7n8_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-5j9_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-5j9_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-5j9_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-4ly_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-5j9_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-4ly_sample-rock_agent3_agent2_a1store_waypoint4 dd))
)
(:action act-rm6_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-4ly_sample-rock_agent3_agent2_a1store_waypoint4 dd) (immediate-dummy-rm6_observe-vis_agent3_objective1_waypoint0 dd) (at agent2 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-rm6_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-4ly_sample-rock_agent3_agent2_a1store_waypoint4 dd) (immediate-dummy-rm6_observe-vis_agent3_objective1_waypoint0 dd) (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-rm6_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-4ly_sample-rock_agent3_agent2_a1store_waypoint4 dd) (at agent2 waypoint0) (not (dummy-left-rm6_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-rm6_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-rm6_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-rm6_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-rm6_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-rm6_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-rm6_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-rm6_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-rm6_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-rm6_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-rm6_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action act-a5w_take-image_agent2_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-rm6_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (calibrated camera1 agent2 waypoint5 objective1) (at agent2 waypoint5) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-a5w_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (have-image agent2 objective1 high-res) (not (calibrated camera1 agent2 waypoint5 objective1)))
)
(:action act-huy_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-a5w_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (at agent2 waypoint1) (have-image agent2 objective1 high-res))
:effect 
(and (pre-huy_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-a5w_take-image_agent2_waypoint5_objective1_camera1_high-res dd)))
)
(:action goal-achieve-huy_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-huy_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-huy_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-rm6_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-rm6_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-rm6_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-xoy_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-5j9_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-xoy_sample-rock_agent3_agent2_a1store_waypoint4 dd))
)
(:action goal-achieve-xoy_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-xoy_sample-rock_agent3_agent2_a1store_waypoint4 dd))
:effect 
(and (done-goal dd) (not (pre-xoy_sample-rock_agent3_agent2_a1store_waypoint4 dd)))
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
