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
 tag0 - TAG_TYPE ; (visible-from objective1 waypoint4)
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
(init-73t_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-73t_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-73t_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-3s5_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-3s5_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-pcx_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(immediate-dummy-z8i_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-z8i_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-oc0_take-image_agent2_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-a41_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-z8i_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-3s5_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-bwn_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(dummy-left-bwn_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-tqg_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(dummy-left-tqg_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-n9x_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
(pre-li9_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-tqg_observe-vis_agent2_objective1_waypoint5 ?dd - dummy)
(pre-3yu_take-image_agent2_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-ua5_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
(pre-nzl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-n40_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-bwn_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(pre-p6q_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
(pre-72i_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-73t_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-x5n_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-x5n_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-5y7_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
(pre-1nm_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(immediate-dummy-mqt_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-mqt_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-he3_take-image_agent2_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-x5k_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-mqt_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-x5n_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-x4c_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-x4c_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-5we_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
(immediate-dummy-py1_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-py1_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-weu_take-image_agent2_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-0qg_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-py1_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-x4c_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-pxn_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
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
(:action act-73t_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (init-73t_observe-rock_agent2_waypoint4 dd) (immediate-dummy-73t_observe-rock_agent2_waypoint4 dd) (at agent2 waypoint4) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-73t_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (init-73t_observe-rock_agent2_waypoint4 dd) (immediate-dummy-73t_observe-rock_agent2_waypoint4 dd) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-73t_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-73t_observe-rock_agent2_waypoint4 dd) (not (dummy-left-73t_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-73t_observe-rock_agent2_waypoint4 dd)))
:effect 
(and (immediate-dummy-73t_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-73t_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-73t_observe-rock_agent2_waypoint4 dd) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-73t_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (init-73t_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-73t_observe-rock_agent2_waypoint4 dd)) (dummy-left-73t_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-73t_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-73t_observe-rock_agent2_waypoint4 dd) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-73t_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (init-73t_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-73t_observe-rock_agent2_waypoint4 dd)) (dummy-right-73t_observe-rock_agent2_waypoint4 dd))
)
(:action act-3s5_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-73t_observe-rock_agent2_waypoint4 dd) (immediate-dummy-3s5_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-3s5_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-73t_observe-rock_agent2_waypoint4 dd) (immediate-dummy-3s5_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-3s5_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-73t_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (dummy-left-3s5_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-3s5_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-3s5_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-3s5_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-73t_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-3s5_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-3s5_observe-soil_agent0_waypoint5 dd)) (dummy-left-3s5_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-3s5_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-73t_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-3s5_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-3s5_observe-soil_agent0_waypoint5 dd)) (dummy-right-3s5_observe-soil_agent0_waypoint5 dd))
)
(:action act-pcx_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3s5_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-pcx_sample-rock_agent0_agent2_a0store_waypoint5 dd))
)
(:action act-z8i_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-pcx_sample-rock_agent0_agent2_a0store_waypoint5 dd) (immediate-dummy-z8i_observe-vis_agent3_objective1_waypoint0 dd) (at agent2 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-z8i_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-pcx_sample-rock_agent0_agent2_a0store_waypoint5 dd) (immediate-dummy-z8i_observe-vis_agent3_objective1_waypoint0 dd) (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-z8i_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-pcx_sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent2 waypoint0) (not (dummy-left-z8i_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-z8i_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-z8i_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-z8i_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-z8i_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-z8i_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-z8i_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-z8i_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-z8i_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-z8i_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-z8i_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action act-oc0_take-image_agent2_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-z8i_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (calibrated camera1 agent2 waypoint5 objective1) (at agent2 waypoint5) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-oc0_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (have-image agent2 objective1 high-res) (not (calibrated camera1 agent2 waypoint5 objective1)))
)
(:action act-a41_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-oc0_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (at agent2 waypoint1) (have-image agent2 objective1 high-res))
:effect 
(and (pre-a41_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-oc0_take-image_agent2_waypoint5_objective1_camera1_high-res dd)))
)
(:action goal-achieve-a41_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-a41_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-a41_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-z8i_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-z8i_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-z8i_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-bwn_observe-vis_agent0_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3s5_observe-soil_agent0_waypoint5 dd) (immediate-dummy-bwn_observe-vis_agent0_objective1_waypoint4 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-bwn_observe-vis_agent0_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3s5_observe-soil_agent0_waypoint5 dd) (immediate-dummy-bwn_observe-vis_agent0_objective1_waypoint4 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-bwn_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3s5_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (dummy-left-bwn_observe-vis_agent0_objective1_waypoint4 dd)) (not (dummy-right-bwn_observe-vis_agent0_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-bwn_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-left-bwn_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3s5_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-bwn_observe-vis_agent0_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-bwn_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-left-bwn_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-bwn_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3s5_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-bwn_observe-vis_agent0_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-bwn_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-right-bwn_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-tqg_observe-vis_agent2_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bwn_observe-vis_agent0_objective1_waypoint4 dd) (immediate-dummy-tqg_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-tqg_observe-vis_agent2_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bwn_observe-vis_agent0_objective1_waypoint4 dd) (immediate-dummy-tqg_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-tqg_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bwn_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (dummy-left-tqg_observe-vis_agent2_objective1_waypoint5 dd)) (not (dummy-right-tqg_observe-vis_agent2_objective1_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-tqg_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-left-tqg_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bwn_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-tqg_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-tqg_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-left-tqg_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action dummy-right-tqg_observe-vis_agent2_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-bwn_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-tqg_observe-vis_agent2_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-tqg_observe-vis_agent2_objective1_waypoint5 dd)) (dummy-right-tqg_observe-vis_agent2_objective1_waypoint5 dd))
)
(:action act-n9x_sample-rock_agent2_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-tqg_observe-vis_agent2_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (empty a1store agent2) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-n9x_sample-rock_agent2_agent0_a1store_waypoint5 dd) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-li9_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-n9x_sample-rock_agent2_agent0_a1store_waypoint5 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-li9_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-n9x_sample-rock_agent2_agent0_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action goal-achieve-li9_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-li9_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-li9_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action act-3yu_take-image_agent2_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-tqg_observe-vis_agent2_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (calibrated camera1 agent2 waypoint5 objective1) (at agent2 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-3yu_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (have-image agent2 objective1 high-res) (not (calibrated camera1 agent2 waypoint5 objective1)))
)
(:action act-ua5_sample-rock_agent2_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-3yu_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (at agent2 waypoint5) (empty a1store agent2))
:effect 
(and (pre-ua5_sample-rock_agent2_agent0_a1store_waypoint5 dd) (not (pre-3yu_take-image_agent2_waypoint5_objective1_camera1_high-res dd)) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-nzl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ua5_sample-rock_agent2_agent0_a1store_waypoint5 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-nzl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-ua5_sample-rock_agent2_agent0_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-n40_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-nzl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (at agent2 waypoint1) (have-image agent2 objective1 high-res))
:effect 
(and (pre-n40_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-nzl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-n40_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-n40_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-n40_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action act-p6q_sample-rock_agent2_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-bwn_observe-vis_agent0_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (empty a1store agent2) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-p6q_sample-rock_agent2_agent0_a1store_waypoint5 dd) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-72i_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-p6q_sample-rock_agent2_agent0_a1store_waypoint5 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-72i_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-p6q_sample-rock_agent2_agent0_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action goal-achieve-72i_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-72i_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-72i_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action act-x5n_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-73t_observe-rock_agent2_waypoint4 dd) (immediate-dummy-x5n_observe-soil_agent0_waypoint5 dd) (at-rock-sample waypoint4) (at agent2 waypoint5) (Kat-rock-sample waypoint4 V_TRUE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-x5n_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-73t_observe-rock_agent2_waypoint4 dd) (immediate-dummy-x5n_observe-soil_agent0_waypoint5 dd) (at-rock-sample waypoint4) (at agent2 waypoint5) (Kat-rock-sample waypoint4 V_TRUE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-x5n_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-73t_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (dummy-left-x5n_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-x5n_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-x5n_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-x5n_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-73t_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-x5n_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-x5n_observe-soil_agent0_waypoint5 dd)) (dummy-left-x5n_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-x5n_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-73t_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-x5n_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-x5n_observe-soil_agent0_waypoint5 dd)) (dummy-right-x5n_observe-soil_agent0_waypoint5 dd))
)
(:action act-5y7_sample-rock_agent2_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-x5n_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent2 waypoint4) (empty a1store agent2) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-5y7_sample-rock_agent2_agent3_a1store_waypoint4 dd) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-1nm_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-5y7_sample-rock_agent2_agent3_a1store_waypoint4 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-1nm_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-5y7_sample-rock_agent2_agent3_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action act-mqt_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-1nm_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (immediate-dummy-mqt_observe-vis_agent3_objective1_waypoint0 dd) (at agent2 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-mqt_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-1nm_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (immediate-dummy-mqt_observe-vis_agent3_objective1_waypoint0 dd) (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-mqt_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-1nm_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (at agent2 waypoint0) (not (dummy-left-mqt_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-mqt_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-mqt_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-mqt_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-mqt_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-mqt_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-mqt_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-mqt_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-mqt_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-mqt_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-mqt_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action act-he3_take-image_agent2_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-mqt_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (calibrated camera1 agent2 waypoint5 objective1) (at agent2 waypoint5) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-he3_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (have-image agent2 objective1 high-res) (not (calibrated camera1 agent2 waypoint5 objective1)))
)
(:action act-x5k_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-he3_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (at agent2 waypoint1) (have-image agent2 objective1 high-res))
:effect 
(and (pre-x5k_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-he3_take-image_agent2_waypoint5_objective1_camera1_high-res dd)))
)
(:action goal-achieve-x5k_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-x5k_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-x5k_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-mqt_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-mqt_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-mqt_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-x4c_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-x5n_observe-soil_agent0_waypoint5 dd) (immediate-dummy-x4c_observe-vis_agent3_objective1_waypoint4 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-x4c_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-x5n_observe-soil_agent0_waypoint5 dd) (immediate-dummy-x4c_observe-vis_agent3_objective1_waypoint4 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-x4c_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-x5n_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (not (dummy-left-x4c_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-x4c_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-x4c_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-x4c_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-x5n_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-x4c_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-x4c_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-x4c_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-x4c_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-x5n_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-x4c_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-x4c_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-x4c_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-5we_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-x4c_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-5we_sample-rock_agent3_agent2_a1store_waypoint4 dd))
)
(:action act-py1_observe-vis_agent3_objective1_waypoint0-T
:parameters ( ?a - agent)
:precondition 
(and (pre-5we_sample-rock_agent3_agent2_a1store_waypoint4 dd) (immediate-dummy-py1_observe-vis_agent3_objective1_waypoint0 dd) (at agent2 waypoint0) (visible-from objective1 waypoint0) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_TRUE))
)
(:action act-py1_observe-vis_agent3_objective1_waypoint0-F
:parameters ( ?a - agent)
:precondition 
(and (pre-5we_sample-rock_agent3_agent2_a1store_waypoint4 dd) (immediate-dummy-py1_observe-vis_agent3_objective1_waypoint0 dd) (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (not (Kvisible-from objective1 waypoint0 V_TRUE)) (not (Kvisible-from objective1 waypoint0 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint0 V_FALSE))
)
(:action act-dummy-py1_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-5we_sample-rock_agent3_agent2_a1store_waypoint4 dd) (at agent2 waypoint0) (not (dummy-left-py1_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-py1_observe-vis_agent3_objective1_waypoint0 dd)))
:effect 
(and (immediate-dummy-py1_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-left-py1_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-py1_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (not (immediate-dummy-py1_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-py1_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action dummy-right-py1_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent2 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-py1_observe-vis_agent3_objective1_waypoint0 dd) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (not (immediate-dummy-py1_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-py1_observe-vis_agent3_objective1_waypoint0 dd))
)
(:action act-weu_take-image_agent2_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-py1_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)) (calibrated camera1 agent2 waypoint5 objective1) (at agent2 waypoint5) (Kvisible-from objective1 waypoint0 V_FALSE))
:effect 
(and (pre-weu_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (have-image agent2 objective1 high-res) (not (calibrated camera1 agent2 waypoint5 objective1)))
)
(:action act-0qg_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-weu_take-image_agent2_waypoint5_objective1_camera1_high-res dd) (at agent2 waypoint1) (have-image agent2 objective1 high-res))
:effect 
(and (pre-0qg_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-weu_take-image_agent2_waypoint5_objective1_camera1_high-res dd)))
)
(:action goal-achieve-0qg_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-0qg_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-0qg_communicate-image-data_agent2_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-py1_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-py1_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (Kvisible-from objective1 waypoint0 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-py1_observe-vis_agent3_objective1_waypoint0 dd)))
)
(:action act-pxn_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-x4c_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent2 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-pxn_sample-rock_agent3_agent2_a1store_waypoint4 dd))
)
(:action goal-achieve-pxn_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-pxn_sample-rock_agent3_agent2_a1store_waypoint4 dd))
:effect 
(and (done-goal dd) (not (pre-pxn_sample-rock_agent3_agent2_a1store_waypoint4 dd)))
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
