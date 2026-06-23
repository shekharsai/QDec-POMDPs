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
 tag0 - TAG_TYPE ; (not (visible-from objective1 waypoint0)) (not (at-soil-sample waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at-rock-sample waypoint5) (visible-from objective1 waypoint4)
 tag1 - TAG_TYPE ; (visible-from objective1 waypoint0) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint4) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (not (at-rock-sample waypoint5))
 V_TRUE - VALUE_TYPE
 V_FALSE - VALUE_TYPE
)

(:predicates
(p-dummy-agnt)
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
(init-3sa_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-3sa_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-3sa_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-ejf_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-ejf_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-knx_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-ejf_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(dummy-left-hah_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(pre-bcb_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
(pre-izo_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-hah_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(pre-8dn_take-image_agent0_waypoint4_objective1_camera0_high-res ?dd - dummy)
(pre-lgq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(pre-eip_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
(pre-qvw_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-3sa_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-uny_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-uny_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-left-c2p_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(dummy-right-c2p_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
(pre-0ty_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
(pre-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-ilh_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-right-uny_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-d1r_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action dummyprivateaction
:precondition 
(and )
:effect 
(and (p-dummy-agnt ))
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
(:action act-3sa_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (init-3sa_observe-rock_agent2_waypoint4 dd) (immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd) (at agent0 waypoint4) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-3sa_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (init-3sa_observe-rock_agent2_waypoint4 dd) (immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd) (at agent0 waypoint4) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-3sa_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-3sa_observe-rock_agent2_waypoint4 dd) (not (dummy-left-3sa_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-3sa_observe-rock_agent2_waypoint4 dd)))
:effect 
(and (immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-3sa_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-3sa_observe-rock_agent2_waypoint4 dd) (at agent0 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (init-3sa_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd)) (dummy-left-3sa_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-3sa_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-3sa_observe-rock_agent2_waypoint4 dd) (at agent0 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (init-3sa_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd)) (dummy-right-3sa_observe-rock_agent2_waypoint4 dd))
)
(:action act-ejf_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3sa_observe-rock_agent2_waypoint4 dd) (immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-ejf_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3sa_observe-rock_agent2_waypoint4 dd) (immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-ejf_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3sa_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (not (dummy-left-ejf_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-ejf_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-ejf_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3sa_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd)) (dummy-left-ejf_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-ejf_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-3sa_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd)) (dummy-right-ejf_observe-soil_agent0_waypoint5 dd))
)
(:action act-knx_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ejf_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (empty a0store agent0) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-knx_sample-rock_agent0_agent2_a0store_waypoint5 dd) (not (empty a0store agent0)) (full a0store agent0) (have-rock-analysis agent0))
)
(:action act-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-knx_sample-rock_agent0_agent2_a0store_waypoint5 dd) (at agent0 waypoint1) (have-rock-analysis agent0))
:effect 
(and (pre-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-knx_sample-rock_agent0_agent2_a0store_waypoint5 dd)) (communicated-rock-data ))
)
(:action goal-achieve-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-hah_observe-vis_agent0_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ejf_observe-soil_agent0_waypoint5 dd) (immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-hah_observe-vis_agent0_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ejf_observe-soil_agent0_waypoint5 dd) (immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-hah_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ejf_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (not (dummy-left-hah_observe-vis_agent0_objective1_waypoint4 dd)) (not (dummy-right-hah_observe-vis_agent0_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-left-hah_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ejf_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-left-hah_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-hah_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ejf_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent0 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-right-hah_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-bcb_sample-rock_agent2_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-hah_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-bcb_sample-rock_agent2_agent0_a1store_waypoint5 dd))
)
(:action act-izo_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-bcb_sample-rock_agent2_agent0_a1store_waypoint5 dd) (at agent0 waypoint5) (empty a0store agent0) (not (full a0store agent0)))
:effect 
(and (pre-izo_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-bcb_sample-rock_agent2_agent0_a1store_waypoint5 dd)) (not (empty a0store agent0)) (full a0store agent0) (have-soil-analysis agent0))
)
(:action act-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-izo_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1) (have-soil-analysis agent0))
:effect 
(and (pre-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-izo_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-soil-data ))
)
(:action goal-achieve-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-8dn_take-image_agent0_waypoint4_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-hah_observe-vis_agent0_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (calibrated camera0 agent0 waypoint4 objective1) (at agent0 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-8dn_take-image_agent0_waypoint4_objective1_camera0_high-res dd) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint4 objective1)))
)
(:action act-lgq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-8dn_take-image_agent0_waypoint4_objective1_camera0_high-res dd) (at agent0 waypoint1) (have-image agent0 objective1 high-res))
:effect 
(and (pre-lgq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-8dn_take-image_agent0_waypoint4_objective1_camera0_high-res dd)))
)
(:action act-eip_sample-rock_agent2_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-lgq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (at agent0 waypoint5))
:effect 
(and (pre-eip_sample-rock_agent2_agent0_a1store_waypoint5 dd) (not (pre-lgq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action act-qvw_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-eip_sample-rock_agent2_agent0_a1store_waypoint5 dd) (at agent0 waypoint5) (empty a0store agent0) (not (full a0store agent0)))
:effect 
(and (pre-qvw_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-eip_sample-rock_agent2_agent0_a1store_waypoint5 dd)) (not (empty a0store agent0)) (full a0store agent0) (have-soil-analysis agent0))
)
(:action act-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-qvw_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1) (have-soil-analysis agent0))
:effect 
(and (pre-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-qvw_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-soil-data ))
)
(:action goal-achieve-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-uny_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3sa_observe-rock_agent2_waypoint4 dd) (immediate-dummy-uny_observe-soil_agent0_waypoint5 dd) (at-rock-sample waypoint4) (at agent0 waypoint5) (Kat-rock-sample waypoint4 V_TRUE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-uny_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3sa_observe-rock_agent2_waypoint4 dd) (immediate-dummy-uny_observe-soil_agent0_waypoint5 dd) (at-rock-sample waypoint4) (at agent0 waypoint5) (Kat-rock-sample waypoint4 V_TRUE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-uny_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3sa_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent0 waypoint5) (not (dummy-left-uny_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-uny_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-uny_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-uny_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3sa_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent0 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-uny_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-uny_observe-soil_agent0_waypoint5 dd)) (dummy-left-uny_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-uny_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-3sa_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent0 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-uny_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-uny_observe-soil_agent0_waypoint5 dd)) (dummy-right-uny_observe-soil_agent0_waypoint5 dd))
)
(:action act-ilh_observe-vis_agent3_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-uny_observe-soil_agent0_waypoint5 dd) (immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent0 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-ilh_observe-vis_agent3_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-uny_observe-soil_agent0_waypoint5 dd) (immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent0 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-ilh_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-uny_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent0 waypoint4) (not (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-ilh_observe-vis_agent3_objective1_waypoint4 dd)) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-left-ilh_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-uny_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent0 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-ilh_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-uny_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent0 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-ilh_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-c2p_observe-vis_agent0_objective1_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (visible-from objective1 waypoint5) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_TRUE))
)
(:action act-c2p_observe-vis_agent0_objective1_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd) (immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent0 waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (not (visible-from objective1 waypoint5)) (not (Kvisible-from objective1 waypoint5 V_TRUE)) (not (Kvisible-from objective1 waypoint5 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint5 V_FALSE))
)
(:action act-dummy-c2p_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent0 waypoint5) (not (dummy-left-c2p_observe-vis_agent0_objective1_waypoint5 dd)) (not (dummy-right-c2p_observe-vis_agent0_objective1_waypoint5 dd)) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-left-c2p_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent0 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-left-c2p_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-right-c2p_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (at agent0 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE) (Kvisible-from objective1 waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd)) (dummy-right-c2p_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action goal-achieve-left-c2p_observe-vis_agent0_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-c2p_observe-vis_agent0_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (Kvisible-from objective1 waypoint5 V_FALSE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-c2p_observe-vis_agent0_objective1_waypoint5 dd)))
)
(:action act-0ty_take-image_agent0_waypoint5_objective1_camera0_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-c2p_observe-vis_agent0_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (calibrated camera0 agent0 waypoint5 objective1) (at agent0 waypoint5) (Kvisible-from objective1 waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-0ty_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (have-image agent0 objective1 high-res) (not (calibrated camera0 agent0 waypoint5 objective1)))
)
(:action act-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-0ty_take-image_agent0_waypoint5_objective1_camera0_high-res dd) (at agent0 waypoint1) (have-image agent0 objective1 high-res))
:effect 
(and (pre-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-0ty_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)
(:action goal-achieve-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-ilh_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ilh_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-ilh_observe-vis_agent3_objective1_waypoint4 dd)))
)
(:action act-d1r_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-uny_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint4) (at agent0 waypoint5) (empty a0store agent0) (not (full a0store agent0)) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-d1r_sample-soil_agent0_a0store_waypoint5 dd) (not (empty a0store agent0)) (full a0store agent0) (have-soil-analysis agent0))
)
(:action act-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-d1r_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1) (have-soil-analysis agent0))
:effect 
(and (pre-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-d1r_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-soil-data ))
)
(:action goal-achieve-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
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
