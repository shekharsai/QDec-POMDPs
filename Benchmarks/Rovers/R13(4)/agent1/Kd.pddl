(define (domain Krover-agent1)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy dummy TAG_TYPE VALUE_TYPE)
(:constants
 agent1 - agent
 general - lander
 colour - mode
 high-res - mode
 low-res - mode
 agent1 - agent
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
(init-f5h_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-f5h_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-f5h_observe-soil_agent0_waypoint5 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-f5h_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-qal_observe-rock_agent0_waypoint5 ?dd - dummy)
(dummy-left-qal_observe-rock_agent0_waypoint5 ?dd - dummy)
(dummy-right-qal_observe-rock_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
(dummy-left-evx_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
(dummy-right-evx_observe-vis_agent1_objective1_waypoint4 ?dd - dummy)
(pre-4q1_take-image_agent1_waypoint4_objective1_camera1_high-res ?dd - dummy)
(pre-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
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
(:action act-dummy-f5h_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (init-f5h_observe-soil_agent0_waypoint5 dd) (not (dummy-left-f5h_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-f5h_observe-soil_agent0_waypoint5 dd)))
:effect 
(and (immediate-dummy-f5h_observe-soil_agent0_waypoint5 dd))
)
(:action goal-achieve-left-f5h_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-f5h_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-f5h_observe-soil_agent0_waypoint5 dd)))
)
(:action act-qal_observe-rock_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f5h_observe-soil_agent0_waypoint5 dd) (immediate-dummy-qal_observe-rock_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent1 waypoint5) (Kat-soil-sample waypoint5 V_TRUE) (at-rock-sample waypoint5) (not (Kat-rock-sample waypoint5 V_TRUE)) (not (Kat-rock-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint5 V_TRUE))
)
(:action act-qal_observe-rock_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f5h_observe-soil_agent0_waypoint5 dd) (immediate-dummy-qal_observe-rock_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent1 waypoint5) (Kat-soil-sample waypoint5 V_TRUE) (not (at-rock-sample waypoint5)) (not (Kat-rock-sample waypoint5 V_TRUE)) (not (Kat-rock-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint5 V_FALSE))
)
(:action act-dummy-qal_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f5h_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent1 waypoint5) (not (dummy-left-qal_observe-rock_agent0_waypoint5 dd)) (not (dummy-right-qal_observe-rock_agent0_waypoint5 dd)) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (immediate-dummy-qal_observe-rock_agent0_waypoint5 dd))
)
(:action dummy-left-qal_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f5h_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent1 waypoint5) (not (at-rock-sample waypoint5)) (immediate-dummy-qal_observe-rock_agent0_waypoint5 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-qal_observe-rock_agent0_waypoint5 dd)) (dummy-left-qal_observe-rock_agent0_waypoint5 dd))
)
(:action dummy-right-qal_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-f5h_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent1 waypoint5) (at-rock-sample waypoint5) (immediate-dummy-qal_observe-rock_agent0_waypoint5 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-qal_observe-rock_agent0_waypoint5 dd)) (dummy-right-qal_observe-rock_agent0_waypoint5 dd))
)
(:action goal-achieve-left-qal_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qal_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-qal_observe-rock_agent0_waypoint5 dd)))
)
(:action act-evx_observe-vis_agent1_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qal_observe-rock_agent0_waypoint5 dd) (immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent1 waypoint4) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-evx_observe-vis_agent1_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qal_observe-rock_agent0_waypoint5 dd) (immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent1 waypoint4) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-evx_observe-vis_agent1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qal_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent1 waypoint4) (not (dummy-left-evx_observe-vis_agent1_objective1_waypoint4 dd)) (not (dummy-right-evx_observe-vis_agent1_objective1_waypoint4 dd)) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd))
)
(:action dummy-left-evx_observe-vis_agent1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qal_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent1 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd)) (dummy-left-evx_observe-vis_agent1_objective1_waypoint4 dd))
)
(:action dummy-right-evx_observe-vis_agent1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qal_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (at agent1 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-evx_observe-vis_agent1_objective1_waypoint4 dd)) (dummy-right-evx_observe-vis_agent1_objective1_waypoint4 dd))
)
(:action goal-achieve-left-evx_observe-vis_agent1_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-evx_observe-vis_agent1_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-left-evx_observe-vis_agent1_objective1_waypoint4 dd)))
)
(:action act-4q1_take-image_agent1_waypoint4_objective1_camera1_high-res
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-evx_observe-vis_agent1_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (calibrated camera1 agent1 waypoint4 objective1) (at agent1 waypoint4) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (pre-4q1_take-image_agent1_waypoint4_objective1_camera1_high-res dd) (have-image agent1 objective1 high-res) (not (calibrated camera1 agent1 waypoint4 objective1)))
)
(:action act-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-4q1_take-image_agent1_waypoint4_objective1_camera1_high-res dd) (at agent1 waypoint1) (have-image agent1 objective1 high-res))
:effect 
(and (pre-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd dd) (not (pre-4q1_take-image_agent1_waypoint4_objective1_camera1_high-res dd)))
)
(:action goal-achieve-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-892_communicate-image-data_agent1_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
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
