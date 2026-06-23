(define (domain Krover-agent3)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy dummy)
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
(can-sample-rock ?x - agent)
(can-sample-soil ?x - agent)
(dummy-pred-needed ?dd - dummy)
(init-amy_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-amy_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-amy_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-9ig_observe-soil_agent3_waypoint4 ?dd - dummy)
(dummy-left-9ig_observe-soil_agent3_waypoint4 ?dd - dummy)
(immediate-dummy-tur_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-tur_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-kpz_observe-vis_agent3_objective1_waypoint5 ?dd - dummy)
(dummy-left-kpz_observe-vis_agent3_objective1_waypoint5 ?dd - dummy)
(pre-g4g_sample-soil_agent3_a1store_waypoint5 ?dd - dummy)
(pre-2jb_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-kpz_observe-vis_agent3_objective1_waypoint5 ?dd - dummy)
(pre-fzd_take-image_agent3_waypoint5_objective1_camera1_high-res ?dd - dummy)
(pre-kuf_sample-rock_agent3_agent0_a1store_waypoint5 ?dd - dummy)
(pre-omr_sample-soil_agent3_a1store_waypoint5 ?dd - dummy)
(pre-zp7_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-hps_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-iox_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-tur_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-wh2_take-image_agent3_waypoint4_objective1_camera1_high-res ?dd - dummy)
(pre-kgc_sample-soil_agent3_a1store_waypoint5 ?dd - dummy)
(pre-h65_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-52a_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-9ig_observe-soil_agent3_waypoint4 ?dd - dummy)
(immediate-dummy-44t_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-44t_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-xmv_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
(pre-tz1_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-44t_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(pre-tu6_take-image_agent3_waypoint4_objective1_camera1_high-res ?dd - dummy)
(pre-z3f_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
(pre-ud9_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-g7p_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-amy_observe-rock_agent2_waypoint4 ?dd - dummy)
(immediate-dummy-sfb_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(dummy-left-sfb_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-i4s_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-i4s_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-bcy_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
(pre-jtt_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
(pre-q5u_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(immediate-dummy-ntd_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-left-ntd_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(dummy-right-ntd_observe-vis_agent3_objective1_waypoint0 ?dd - dummy)
(pre-7zy_take-image_agent3_waypoint0_objective1_camera1_high-res ?dd - dummy)
(pre-5dw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd ?dd - dummy)
(dummy-right-i4s_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-6vn_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
(pre-6x3_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-sfb_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
(immediate-dummy-6y5_observe-soil_agent3_waypoint4 ?dd - dummy)
(dummy-left-6y5_observe-soil_agent3_waypoint4 ?dd - dummy)
(pre-vly_take-image_agent3_waypoint4_objective1_camera1_high-res ?dd - dummy)
(pre-ror_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
(pre-csw_sample-soil_agent3_a1store_waypoint5 ?dd - dummy)
(pre-dja_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-mi7_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-ugt_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-6y5_observe-soil_agent3_waypoint4 ?dd - dummy)
(pre-5ih_take-image_agent3_waypoint4_objective1_camera1_high-res ?dd - dummy)
(pre-1xc_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
(pre-omj_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
(pre-fep_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
(pre-5n4_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
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
(and (equipped-for-imaging ?r) (calibration-target ?i ?t) (at ?r ?w) (visible-from ?t ?w) (on-board ?i ?r))
:effect (calibrated ?i ?r ?w ?t)
)

(:action drop
:parameters ( ?x - agent ?y - store)
:precondition (store-of ?y ?x)
:effect 
(and (not (full ?y ?x)) (empty ?y ?x))
)

(:action act-dummy-amy_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-amy_observe-rock_agent2_waypoint4 dd) (not (dummy-left-amy_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-amy_observe-rock_agent2_waypoint4 dd)))
:effect (immediate-dummy-amy_observe-rock_agent2_waypoint4 dd)
)

(:action dummy-left-amy_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-amy_observe-rock_agent2_waypoint4 dd) (at agent3 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-amy_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (init-amy_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-amy_observe-rock_agent2_waypoint4 dd)) (dummy-left-amy_observe-rock_agent2_waypoint4 dd))
)

(:action dummy-right-amy_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-amy_observe-rock_agent2_waypoint4 dd) (at agent3 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-amy_observe-rock_agent2_waypoint4 dd))
:effect 
(and (not (init-amy_observe-rock_agent2_waypoint4 dd)) (not (immediate-dummy-amy_observe-rock_agent2_waypoint4 dd)) (dummy-right-amy_observe-rock_agent2_waypoint4 dd))
)

(:action act-dummy-9ig_observe-soil_agent3_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-amy_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (not (dummy-left-9ig_observe-soil_agent3_waypoint4 dd)) (not (dummy-right-9ig_observe-soil_agent3_waypoint4 dd)))
:effect (immediate-dummy-9ig_observe-soil_agent3_waypoint4 dd)
)

(:action dummy-left-9ig_observe-soil_agent3_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-amy_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-9ig_observe-soil_agent3_waypoint4 dd))
:effect 
(and (not (immediate-dummy-9ig_observe-soil_agent3_waypoint4 dd)) (dummy-left-9ig_observe-soil_agent3_waypoint4 dd))
)

(:action dummy-right-9ig_observe-soil_agent3_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-amy_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-9ig_observe-soil_agent3_waypoint4 dd))
:effect 
(and (not (immediate-dummy-9ig_observe-soil_agent3_waypoint4 dd)) (dummy-right-9ig_observe-soil_agent3_waypoint4 dd))
)

(:action act-dummy-tur_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9ig_observe-soil_agent3_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (not (dummy-left-tur_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-tur_observe-vis_agent3_objective1_waypoint4 dd)))
:effect (immediate-dummy-tur_observe-vis_agent3_objective1_waypoint4 dd)
)

(:action dummy-left-tur_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9ig_observe-soil_agent3_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-tur_observe-vis_agent3_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-tur_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-tur_observe-vis_agent3_objective1_waypoint4 dd))
)

(:action dummy-right-tur_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-9ig_observe-soil_agent3_waypoint4 dd) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-tur_observe-vis_agent3_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-tur_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-tur_observe-vis_agent3_objective1_waypoint4 dd))
)

(:action act-dummy-kpz_observe-vis_agent3_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-tur_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (dummy-left-kpz_observe-vis_agent3_objective1_waypoint5 dd)) (not (dummy-right-kpz_observe-vis_agent3_objective1_waypoint5 dd)))
:effect (immediate-dummy-kpz_observe-vis_agent3_objective1_waypoint5 dd)
)

(:action dummy-left-kpz_observe-vis_agent3_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-tur_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (visible-from objective1 waypoint5)) (immediate-dummy-kpz_observe-vis_agent3_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-kpz_observe-vis_agent3_objective1_waypoint5 dd)) (dummy-left-kpz_observe-vis_agent3_objective1_waypoint5 dd))
)

(:action dummy-right-kpz_observe-vis_agent3_objective1_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-tur_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (visible-from objective1 waypoint5) (immediate-dummy-kpz_observe-vis_agent3_objective1_waypoint5 dd))
:effect 
(and (not (immediate-dummy-kpz_observe-vis_agent3_objective1_waypoint5 dd)) (dummy-right-kpz_observe-vis_agent3_objective1_waypoint5 dd))
)

(:action act-g4g_sample-soil_agent3_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-kpz_observe-vis_agent3_objective1_waypoint5 dd) (not (visible-from objective1 waypoint5)) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (empty a1store agent3) (not (full a1store agent3)))
:effect 
(and (pre-g4g_sample-soil_agent3_a1store_waypoint5 dd) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)

(:action act-2jb_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-g4g_sample-soil_agent3_a1store_waypoint5 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-2jb_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-g4g_sample-soil_agent3_a1store_waypoint5 dd)) (communicated-soil-data ))
)

(:action goal-achieve-2jb_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-2jb_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-2jb_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)

(:action act-fzd_take-image_agent3_waypoint5_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-kpz_observe-vis_agent3_objective1_waypoint5 dd) (visible-from objective1 waypoint5) (not (visible-from objective1 waypoint4)) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (calibrated camera1 agent3 waypoint5 objective1) (at agent3 waypoint5))
:effect 
(and (pre-fzd_take-image_agent3_waypoint5_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint5 objective1)))
)

(:action act-kuf_sample-rock_agent3_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-fzd_take-image_agent3_waypoint5_objective1_camera1_high-res dd) (at agent3 waypoint5) (empty a1store agent3))
:effect 
(and (pre-kuf_sample-rock_agent3_agent0_a1store_waypoint5 dd) (not (pre-fzd_take-image_agent3_waypoint5_objective1_camera1_high-res dd)) (not (empty a1store agent3)) (full a1store agent3) (have-rock-analysis agent3))
)

(:action act-omr_sample-soil_agent3_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-kuf_sample-rock_agent3_agent0_a1store_waypoint5 dd) (at agent3 waypoint5) (empty a1store agent3) (not (full a1store agent3)))
:effect 
(and (pre-omr_sample-soil_agent3_a1store_waypoint5 dd) (not (pre-kuf_sample-rock_agent3_agent0_a1store_waypoint5 dd)) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)

(:action act-zp7_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-omr_sample-soil_agent3_a1store_waypoint5 dd) (at agent3 waypoint1) (have-rock-analysis agent3))
:effect 
(and (pre-zp7_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-omr_sample-soil_agent3_a1store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-hps_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-zp7_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-hps_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-zp7_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)) (communicated-soil-data ))
)

(:action act-iox_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-hps_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint1) (have-image agent3 objective1 high-res))
:effect 
(and (pre-iox_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-hps_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)

(:action goal-achieve-iox_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-iox_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-iox_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)

(:action act-wh2_take-image_agent3_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-tur_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-soil-sample waypoint4)) (not (at-rock-sample waypoint4)) (calibrated camera1 agent3 waypoint4 objective1) (at agent3 waypoint4))
:effect 
(and (pre-wh2_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint4 objective1)))
)

(:action act-kgc_sample-soil_agent3_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-wh2_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (at agent3 waypoint5) (empty a1store agent3) (not (full a1store agent3)))
:effect 
(and (pre-kgc_sample-soil_agent3_a1store_waypoint5 dd) (not (pre-wh2_take-image_agent3_waypoint4_objective1_camera1_high-res dd)) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)

(:action act-h65_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-kgc_sample-soil_agent3_a1store_waypoint5 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-h65_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-kgc_sample-soil_agent3_a1store_waypoint5 dd)) (communicated-soil-data ))
)

(:action act-52a_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-h65_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint1) (have-image agent3 objective1 high-res))
:effect 
(and (pre-52a_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-h65_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)

(:action goal-achieve-52a_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-52a_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-52a_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)

(:action act-dummy-44t_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9ig_observe-soil_agent3_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (not (dummy-left-44t_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-44t_observe-vis_agent3_objective1_waypoint4 dd)))
:effect (immediate-dummy-44t_observe-vis_agent3_objective1_waypoint4 dd)
)

(:action dummy-left-44t_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9ig_observe-soil_agent3_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-44t_observe-vis_agent3_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-44t_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-44t_observe-vis_agent3_objective1_waypoint4 dd))
)

(:action dummy-right-44t_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-9ig_observe-soil_agent3_waypoint4 dd) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-44t_observe-vis_agent3_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-44t_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-44t_observe-vis_agent3_objective1_waypoint4 dd))
)

(:action act-xmv_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-44t_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (empty a1store agent3) (not (full a1store agent3)))
:effect 
(and (pre-xmv_sample-soil_agent3_a1store_waypoint4 dd) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)

(:action act-tz1_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-xmv_sample-soil_agent3_a1store_waypoint4 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-tz1_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-xmv_sample-soil_agent3_a1store_waypoint4 dd)) (communicated-soil-data ))
)

(:action goal-achieve-tz1_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-tz1_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-tz1_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)

(:action act-tu6_take-image_agent3_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-44t_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-soil-sample waypoint4) (not (at-rock-sample waypoint4)) (calibrated camera1 agent3 waypoint4 objective1) (at agent3 waypoint4))
:effect 
(and (pre-tu6_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint4 objective1)))
)

(:action act-z3f_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-tu6_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (at agent3 waypoint4) (empty a1store agent3) (not (full a1store agent3)))
:effect 
(and (pre-z3f_sample-soil_agent3_a1store_waypoint4 dd) (not (pre-tu6_take-image_agent3_waypoint4_objective1_camera1_high-res dd)) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)

(:action act-ud9_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-z3f_sample-soil_agent3_a1store_waypoint4 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-ud9_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-z3f_sample-soil_agent3_a1store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-g7p_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-ud9_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint1) (have-image agent3 objective1 high-res))
:effect 
(and (pre-g7p_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-ud9_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)

(:action goal-achieve-g7p_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-g7p_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-g7p_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)

(:action act-dummy-sfb_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-amy_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (dummy-left-sfb_observe-vis_agent3_objective1_waypoint4 dd)) (not (dummy-right-sfb_observe-vis_agent3_objective1_waypoint4 dd)))
:effect (immediate-dummy-sfb_observe-vis_agent3_objective1_waypoint4 dd)
)

(:action dummy-left-sfb_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-amy_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-sfb_observe-vis_agent3_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-sfb_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-left-sfb_observe-vis_agent3_objective1_waypoint4 dd))
)

(:action dummy-right-sfb_observe-vis_agent3_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-amy_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-sfb_observe-vis_agent3_objective1_waypoint4 dd))
:effect 
(and (not (immediate-dummy-sfb_observe-vis_agent3_objective1_waypoint4 dd)) (dummy-right-sfb_observe-vis_agent3_objective1_waypoint4 dd))
)

(:action act-dummy-i4s_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sfb_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent3 waypoint5) (not (dummy-left-i4s_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-i4s_observe-soil_agent0_waypoint5 dd)))
:effect (immediate-dummy-i4s_observe-soil_agent0_waypoint5 dd)
)

(:action dummy-left-i4s_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sfb_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent3 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-i4s_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-i4s_observe-soil_agent0_waypoint5 dd)) (dummy-left-i4s_observe-soil_agent0_waypoint5 dd))
)

(:action dummy-right-i4s_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-sfb_observe-vis_agent3_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent3 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-i4s_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-i4s_observe-soil_agent0_waypoint5 dd)) (dummy-right-i4s_observe-soil_agent0_waypoint5 dd))
)

(:action act-bcy_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-i4s_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent3 waypoint4) (empty a1store agent3) (not (full a1store agent3)))
:effect 
(and (pre-bcy_sample-soil_agent3_a1store_waypoint4 dd) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)

(:action act-jtt_sample-rock_agent2_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-bcy_sample-soil_agent3_a1store_waypoint4 dd) (at agent3 waypoint4))
:effect 
(and (pre-jtt_sample-rock_agent2_agent3_a1store_waypoint4 dd) (not (pre-bcy_sample-soil_agent3_a1store_waypoint4 dd)))
)

(:action act-q5u_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-jtt_sample-rock_agent2_agent3_a1store_waypoint4 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-q5u_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-jtt_sample-rock_agent2_agent3_a1store_waypoint4 dd)) (communicated-soil-data ))
)

(:action act-dummy-ntd_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (pre-q5u_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint0) (not (dummy-left-ntd_observe-vis_agent3_objective1_waypoint0 dd)) (not (dummy-right-ntd_observe-vis_agent3_objective1_waypoint0 dd)))
:effect (immediate-dummy-ntd_observe-vis_agent3_objective1_waypoint0 dd)
)

(:action dummy-left-ntd_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (not (visible-from objective1 waypoint0)) (immediate-dummy-ntd_observe-vis_agent3_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-ntd_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-left-ntd_observe-vis_agent3_objective1_waypoint0 dd))
)

(:action dummy-right-ntd_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (at agent3 waypoint0) (visible-from objective1 waypoint0) (immediate-dummy-ntd_observe-vis_agent3_objective1_waypoint0 dd))
:effect 
(and (not (immediate-dummy-ntd_observe-vis_agent3_objective1_waypoint0 dd)) (dummy-right-ntd_observe-vis_agent3_objective1_waypoint0 dd))
)

(:action goal-achieve-left-ntd_observe-vis_agent3_objective1_waypoint0
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-ntd_observe-vis_agent3_objective1_waypoint0 dd) (not (visible-from objective1 waypoint0)))
:effect 
(and (done-goal dd) (not (dummy-left-ntd_observe-vis_agent3_objective1_waypoint0 dd)))
)

(:action act-7zy_take-image_agent3_waypoint0_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-ntd_observe-vis_agent3_objective1_waypoint0 dd) (visible-from objective1 waypoint0) (calibrated camera1 agent3 waypoint0 objective1) (at agent3 waypoint0))
:effect 
(and (pre-7zy_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint0 objective1)))
)

(:action act-5dw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-7zy_take-image_agent3_waypoint0_objective1_camera1_high-res dd) (at agent3 waypoint3) (have-image agent3 objective1 high-res))
:effect 
(and (pre-5dw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd) (not (pre-7zy_take-image_agent3_waypoint0_objective1_camera1_high-res dd)))
)

(:action goal-achieve-5dw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-5dw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-5dw_communicate-image-data_agent3_general_objective1_high-res_waypoint3_waypoint0_dd dd)))
)

(:action act-6vn_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-i4s_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint4) (at agent3 waypoint4) (empty a1store agent3))
:effect 
(and (pre-6vn_sample-rock_agent3_agent2_a1store_waypoint4 dd) (not (empty a1store agent3)) (full a1store agent3) (have-rock-analysis agent3))
)

(:action act-6x3_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-6vn_sample-rock_agent3_agent2_a1store_waypoint4 dd) (at agent3 waypoint1) (have-rock-analysis agent3))
:effect 
(and (pre-6x3_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-6vn_sample-rock_agent3_agent2_a1store_waypoint4 dd)) (communicated-rock-data ))
)

(:action goal-achieve-6x3_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-6x3_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-6x3_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)

(:action act-dummy-6y5_observe-soil_agent3_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sfb_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (dummy-left-6y5_observe-soil_agent3_waypoint4 dd)) (not (dummy-right-6y5_observe-soil_agent3_waypoint4 dd)))
:effect (immediate-dummy-6y5_observe-soil_agent3_waypoint4 dd)
)

(:action dummy-left-6y5_observe-soil_agent3_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sfb_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-6y5_observe-soil_agent3_waypoint4 dd))
:effect 
(and (not (immediate-dummy-6y5_observe-soil_agent3_waypoint4 dd)) (dummy-left-6y5_observe-soil_agent3_waypoint4 dd))
)

(:action dummy-right-6y5_observe-soil_agent3_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-sfb_observe-vis_agent3_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (at agent3 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-6y5_observe-soil_agent3_waypoint4 dd))
:effect 
(and (not (immediate-dummy-6y5_observe-soil_agent3_waypoint4 dd)) (dummy-right-6y5_observe-soil_agent3_waypoint4 dd))
)

(:action act-vly_take-image_agent3_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6y5_observe-soil_agent3_waypoint4 dd) (not (at-soil-sample waypoint4)) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (calibrated camera1 agent3 waypoint4 objective1) (at agent3 waypoint4))
:effect 
(and (pre-vly_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint4 objective1)))
)

(:action act-ror_sample-rock_agent3_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-vly_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (at agent3 waypoint4) (empty a1store agent3))
:effect 
(and (pre-ror_sample-rock_agent3_agent2_a1store_waypoint4 dd) (not (pre-vly_take-image_agent3_waypoint4_objective1_camera1_high-res dd)) (not (empty a1store agent3)) (full a1store agent3) (have-rock-analysis agent3))
)

(:action act-csw_sample-soil_agent3_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-ror_sample-rock_agent3_agent2_a1store_waypoint4 dd) (at agent3 waypoint5) (empty a1store agent3) (not (full a1store agent3)))
:effect 
(and (pre-csw_sample-soil_agent3_a1store_waypoint5 dd) (not (pre-ror_sample-rock_agent3_agent2_a1store_waypoint4 dd)) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)

(:action act-dja_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-csw_sample-soil_agent3_a1store_waypoint5 dd) (at agent3 waypoint1) (have-rock-analysis agent3))
:effect 
(and (pre-dja_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-csw_sample-soil_agent3_a1store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-mi7_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-dja_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-mi7_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-dja_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)) (communicated-soil-data ))
)

(:action act-ugt_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-mi7_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint1) (have-image agent3 objective1 high-res))
:effect 
(and (pre-ugt_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-mi7_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)

(:action goal-achieve-ugt_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-ugt_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-ugt_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)

(:action act-5ih_take-image_agent3_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-6y5_observe-soil_agent3_waypoint4 dd) (at-soil-sample waypoint4) (visible-from objective1 waypoint4) (at-rock-sample waypoint4) (calibrated camera1 agent3 waypoint4 objective1) (at agent3 waypoint4))
:effect 
(and (pre-5ih_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (have-image agent3 objective1 high-res) (not (calibrated camera1 agent3 waypoint4 objective1)))
)

(:action act-1xc_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-5ih_take-image_agent3_waypoint4_objective1_camera1_high-res dd) (at agent3 waypoint1) (have-image agent3 objective1 high-res))
:effect 
(and (pre-1xc_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-5ih_take-image_agent3_waypoint4_objective1_camera1_high-res dd)))
)

(:action act-omj_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-1xc_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd) (at agent3 waypoint4) (empty a1store agent3) (not (full a1store agent3)))
:effect 
(and (pre-omj_sample-soil_agent3_a1store_waypoint4 dd) (not (pre-1xc_communicate-image-data_agent3_general_objective1_high-res_waypoint1_waypoint0_dd dd)) (not (empty a1store agent3)) (full a1store agent3) (have-soil-analysis agent3))
)

(:action act-fep_sample-rock_agent2_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-omj_sample-soil_agent3_a1store_waypoint4 dd) (at agent3 waypoint4))
:effect 
(and (pre-fep_sample-rock_agent2_agent3_a1store_waypoint4 dd) (not (pre-omj_sample-soil_agent3_a1store_waypoint4 dd)))
)

(:action act-5n4_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-fep_sample-rock_agent2_agent3_a1store_waypoint4 dd) (at agent3 waypoint1) (have-soil-analysis agent3))
:effect 
(and (pre-5n4_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-fep_sample-rock_agent2_agent3_a1store_waypoint4 dd)) (communicated-soil-data ))
)

(:action goal-achieve-5n4_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-5n4_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-5n4_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)

)
