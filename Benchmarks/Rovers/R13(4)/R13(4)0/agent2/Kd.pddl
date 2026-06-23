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
 tag0 - TAG_TYPE ; (visible-from objective1 waypoint0)
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
(init-krg_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-krg_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-krg_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-6or_observe-rock_agent2_waypoint4 ?dd - dummy)
(dummy-left-6or_observe-rock_agent2_waypoint4 ?dd - dummy)
(pre-xso_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-6or_observe-rock_agent2_waypoint4 ?dd - dummy)
(pre-75n_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
(pre-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-krg_observe-soil_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-t7r_observe-rock_agent0_waypoint5 ?dd - dummy)
(dummy-left-t7r_observe-rock_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(dummy-left-23a_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(pre-hm0_sample-rock_agent0_agent2_a0store_waypoint4 ?dd - dummy)
(dummy-right-23a_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
(dummy-right-t7r_observe-rock_agent0_waypoint5 ?dd - dummy)
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
(:action act-krg_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (init-krg_observe-soil_agent0_waypoint5 dd) (immediate-dummy-krg_observe-soil_agent0_waypoint5 dd) (at agent2 waypoint5) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-krg_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (init-krg_observe-soil_agent0_waypoint5 dd) (immediate-dummy-krg_observe-soil_agent0_waypoint5 dd) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-krg_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (init-krg_observe-soil_agent0_waypoint5 dd) (not (dummy-left-krg_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-krg_observe-soil_agent0_waypoint5 dd)))
:effect 
(and (immediate-dummy-krg_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-krg_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (init-krg_observe-soil_agent0_waypoint5 dd) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-krg_observe-soil_agent0_waypoint5 dd) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (init-krg_observe-soil_agent0_waypoint5 dd)) (not (immediate-dummy-krg_observe-soil_agent0_waypoint5 dd)) (dummy-left-krg_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-krg_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (init-krg_observe-soil_agent0_waypoint5 dd) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-krg_observe-soil_agent0_waypoint5 dd) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (init-krg_observe-soil_agent0_waypoint5 dd)) (not (immediate-dummy-krg_observe-soil_agent0_waypoint5 dd)) (dummy-right-krg_observe-soil_agent0_waypoint5 dd))
)
(:action act-6or_observe-rock_agent2_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-krg_observe-soil_agent0_waypoint5 dd) (immediate-dummy-6or_observe-rock_agent2_waypoint4 dd) (not (at-soil-sample waypoint5)) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-6or_observe-rock_agent2_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-krg_observe-soil_agent0_waypoint5 dd) (immediate-dummy-6or_observe-rock_agent2_waypoint4 dd) (not (at-soil-sample waypoint5)) (at agent2 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-6or_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-krg_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at agent2 waypoint4) (not (dummy-left-6or_observe-rock_agent2_waypoint4 dd)) (not (dummy-right-6or_observe-rock_agent2_waypoint4 dd)) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (immediate-dummy-6or_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-left-6or_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-krg_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-6or_observe-rock_agent2_waypoint4 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-6or_observe-rock_agent2_waypoint4 dd)) (dummy-left-6or_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-6or_observe-rock_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-krg_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-6or_observe-rock_agent2_waypoint4 dd) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-6or_observe-rock_agent2_waypoint4 dd)) (dummy-right-6or_observe-rock_agent2_waypoint4 dd))
)
(:action act-xso_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-6or_observe-rock_agent2_waypoint4 dd) (not (at-rock-sample waypoint4)) (not (at-soil-sample waypoint5)) (at agent2 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (pre-xso_sample-rock_agent0_agent2_a0store_waypoint5 dd))
)
(:action goal-achieve-xso_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-xso_sample-rock_agent0_agent2_a0store_waypoint5 dd))
:effect 
(and (done-goal dd) (not (pre-xso_sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)
(:action act-75n_sample-rock_agent2_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-6or_observe-rock_agent2_waypoint4 dd) (at-rock-sample waypoint4) (not (at-soil-sample waypoint5)) (at agent2 waypoint4) (empty a1store agent2) (Kat-rock-sample waypoint4 V_TRUE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (pre-75n_sample-rock_agent2_agent3_a1store_waypoint4 dd) (not (empty a1store agent2)) (full a1store agent2) (have-rock-analysis agent2))
)
(:action act-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-75n_sample-rock_agent2_agent3_a1store_waypoint4 dd) (at agent2 waypoint1) (have-rock-analysis agent2))
:effect 
(and (pre-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-75n_sample-rock_agent2_agent3_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action goal-achieve-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action act-t7r_observe-rock_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-krg_observe-soil_agent0_waypoint5 dd) (immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent2 waypoint5) (Kat-soil-sample waypoint5 V_TRUE) (at-rock-sample waypoint5) (not (Kat-rock-sample waypoint5 V_TRUE)) (not (Kat-rock-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint5 V_TRUE))
)
(:action act-t7r_observe-rock_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-krg_observe-soil_agent0_waypoint5 dd) (immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent2 waypoint5) (Kat-soil-sample waypoint5 V_TRUE) (not (at-rock-sample waypoint5)) (not (Kat-rock-sample waypoint5 V_TRUE)) (not (Kat-rock-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint5 V_FALSE))
)
(:action act-dummy-t7r_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-krg_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent2 waypoint5) (not (dummy-left-t7r_observe-rock_agent0_waypoint5 dd)) (not (dummy-right-t7r_observe-rock_agent0_waypoint5 dd)) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd))
)
(:action dummy-left-t7r_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-krg_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent2 waypoint5) (not (at-rock-sample waypoint5)) (immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd)) (dummy-left-t7r_observe-rock_agent0_waypoint5 dd))
)
(:action dummy-right-t7r_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-krg_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at agent2 waypoint5) (at-rock-sample waypoint5) (immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd)) (dummy-right-t7r_observe-rock_agent0_waypoint5 dd))
)
(:action act-23a_observe-vis_agent0_objective1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-t7r_observe-rock_agent0_waypoint5 dd) (immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent2 waypoint4) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (visible-from objective1 waypoint4) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_TRUE))
)
(:action act-23a_observe-vis_agent0_objective1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-t7r_observe-rock_agent0_waypoint5 dd) (immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent2 waypoint4) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (not (visible-from objective1 waypoint4)) (not (Kvisible-from objective1 waypoint4 V_TRUE)) (not (Kvisible-from objective1 waypoint4 V_FALSE)))
:effect 
(and (Kvisible-from objective1 waypoint4 V_FALSE))
)
(:action act-dummy-23a_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-t7r_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent2 waypoint4) (not (dummy-left-23a_observe-vis_agent0_objective1_waypoint4 dd)) (not (dummy-right-23a_observe-vis_agent0_objective1_waypoint4 dd)) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-left-23a_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-t7r_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent2 waypoint4) (not (visible-from objective1 waypoint4)) (immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_FALSE))
:effect 
(and (not (immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-left-23a_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-23a_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-t7r_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent2 waypoint4) (visible-from objective1 waypoint4) (immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE) (Kvisible-from objective1 waypoint4 V_TRUE))
:effect 
(and (not (immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd)) (dummy-right-23a_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-hm0_sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-23a_observe-vis_agent0_objective1_waypoint4 dd) (not (visible-from objective1 waypoint4)) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (at agent2 waypoint4) (Kvisible-from objective1 waypoint4 V_FALSE) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (pre-hm0_sample-rock_agent0_agent2_a0store_waypoint4 dd))
)
(:action goal-achieve-hm0_sample-rock_agent0_agent2_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-hm0_sample-rock_agent0_agent2_a0store_waypoint4 dd))
:effect 
(and (done-goal dd) (not (pre-hm0_sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)
(:action goal-achieve-right-23a_observe-vis_agent0_objective1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-23a_observe-vis_agent0_objective1_waypoint4 dd) (visible-from objective1 waypoint4) (not (at-rock-sample waypoint5)) (at-soil-sample waypoint5) (Kvisible-from objective1 waypoint4 V_TRUE) (Kat-rock-sample waypoint5 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-23a_observe-vis_agent0_objective1_waypoint4 dd)))
)
(:action goal-achieve-right-t7r_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-t7r_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (at-soil-sample waypoint5) (Kat-rock-sample waypoint5 V_TRUE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (done-goal dd) (not (dummy-right-t7r_observe-rock_agent0_waypoint5 dd)))
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
