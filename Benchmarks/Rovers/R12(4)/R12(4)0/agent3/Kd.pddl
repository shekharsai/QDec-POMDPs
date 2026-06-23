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
 a2store - store
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
 tag0 - TAG_TYPE ; (at-soil-sample waypoint5)
 tag1 - TAG_TYPE ; (at-soil-sample waypoint4)
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
(store-of ?s - store ?r - agent)
(calibration-target ?i - camera ?o - objective)
(on-board ?i - camera ?r - agent)
(channel-free ?l - lander)
(can-sample-rock ?x - agent)
(can-sample-soil ?x - agent)
(dummy-pred-needed ?dd - dummy)
(init-g88_observe-rock_agent1_waypoint4 ?dd - dummy)
(immediate-dummy-g88_observe-rock_agent1_waypoint4 ?dd - dummy)
(dummy-left-g88_observe-rock_agent1_waypoint4 ?dd - dummy)
(immediate-dummy-2os_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-2os_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-04n_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
(pre-um1_drop_agent3_a1store ?dd - dummy)
(pre-0d2_sample-rock_agent3_agent0_a1store_waypoint5 ?dd - dummy)
(pre-859_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-2os_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-noq_sample-rock_agent3_agent2_a1store_waypoint5 ?dd - dummy)
(pre-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-g88_observe-rock_agent1_waypoint4 ?dd - dummy)
(pre-hrn_sample-rock_agent3_agent1_a1store_waypoint4 ?dd - dummy)
(pre-btq_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-bm4_drop_agent3_a1store ?dd - dummy)
(KNot ?TAG_PARAM - TAG_TYPE)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)
(:action act-g88_observe-rock_agent1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (init-g88_observe-rock_agent1_waypoint4 dd) (immediate-dummy-g88_observe-rock_agent1_waypoint4 dd) (at agent3 waypoint4) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-g88_observe-rock_agent1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (init-g88_observe-rock_agent1_waypoint4 dd) (immediate-dummy-g88_observe-rock_agent1_waypoint4 dd) (at agent3 waypoint4) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-g88_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-g88_observe-rock_agent1_waypoint4 dd) (not (dummy-left-g88_observe-rock_agent1_waypoint4 dd)) (not (dummy-right-g88_observe-rock_agent1_waypoint4 dd)))
:effect 
(and (immediate-dummy-g88_observe-rock_agent1_waypoint4 dd))
)
(:action dummy-left-g88_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-g88_observe-rock_agent1_waypoint4 dd) (at agent3 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-g88_observe-rock_agent1_waypoint4 dd) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (init-g88_observe-rock_agent1_waypoint4 dd)) (not (immediate-dummy-g88_observe-rock_agent1_waypoint4 dd)) (dummy-left-g88_observe-rock_agent1_waypoint4 dd))
)
(:action dummy-right-g88_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-g88_observe-rock_agent1_waypoint4 dd) (at agent3 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-g88_observe-rock_agent1_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (init-g88_observe-rock_agent1_waypoint4 dd)) (not (immediate-dummy-g88_observe-rock_agent1_waypoint4 dd)) (dummy-right-g88_observe-rock_agent1_waypoint4 dd))
)
(:action act-2os_observe-soil_agent0_waypoint5-T
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g88_observe-rock_agent1_waypoint4 dd) (immediate-dummy-2os_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (at-soil-sample waypoint5) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_TRUE))
)
(:action act-2os_observe-soil_agent0_waypoint5-F
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g88_observe-rock_agent1_waypoint4 dd) (immediate-dummy-2os_observe-soil_agent0_waypoint5 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kat-rock-sample waypoint4 V_FALSE) (not (at-soil-sample waypoint5)) (not (Kat-soil-sample waypoint5 V_TRUE)) (not (Kat-soil-sample waypoint5 V_FALSE)))
:effect 
(and (Kat-soil-sample waypoint5 V_FALSE))
)
(:action act-dummy-2os_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g88_observe-rock_agent1_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (dummy-left-2os_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-2os_observe-soil_agent0_waypoint5 dd)) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (immediate-dummy-2os_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-left-2os_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g88_observe-rock_agent1_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-2os_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_FALSE))
:effect 
(and (not (immediate-dummy-2os_observe-soil_agent0_waypoint5 dd)) (dummy-left-2os_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-2os_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-g88_observe-rock_agent1_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-2os_observe-soil_agent0_waypoint5 dd) (Kat-rock-sample waypoint4 V_FALSE) (Kat-soil-sample waypoint5 V_TRUE))
:effect 
(and (not (immediate-dummy-2os_observe-soil_agent0_waypoint5 dd)) (dummy-right-2os_observe-soil_agent0_waypoint5 dd))
)
(:action act-04n_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2os_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (at-rock-sample waypoint4)) (at agent3 waypoint4) (Kat-soil-sample waypoint5 V_FALSE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-04n_sample-soil_agent3_a1store_waypoint4 dd))
)
(:action act-um1_drop_agent3_a1store
:parameters ( ?a - agent)
:precondition 
(and (pre-04n_sample-soil_agent3_a1store_waypoint4 dd))
:effect 
(and (pre-um1_drop_agent3_a1store dd) (not (pre-04n_sample-soil_agent3_a1store_waypoint4 dd)))
)
(:action act-0d2_sample-rock_agent3_agent0_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-um1_drop_agent3_a1store dd) (at agent3 waypoint5))
:effect 
(and (pre-0d2_sample-rock_agent3_agent0_a1store_waypoint5 dd) (not (pre-um1_drop_agent3_a1store dd)))
)
(:action act-859_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-0d2_sample-rock_agent3_agent0_a1store_waypoint5 dd) (at agent3 waypoint1))
:effect 
(and (pre-859_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-0d2_sample-rock_agent3_agent0_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action act-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-859_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (at agent3 waypoint1))
:effect 
(and (pre-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-859_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)) (communicated-soil-data ))
)
(:action goal-achieve-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-noq_sample-rock_agent3_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2os_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (Kat-soil-sample waypoint5 V_TRUE) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (pre-noq_sample-rock_agent3_agent2_a1store_waypoint5 dd))
)
(:action act-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-noq_sample-rock_agent3_agent2_a1store_waypoint5 dd) (at agent3 waypoint1))
:effect 
(and (pre-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-noq_sample-rock_agent3_agent2_a1store_waypoint5 dd)) (communicated-rock-data ))
)
(:action goal-achieve-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd))
:effect 
(and (done-goal dd) (not (pre-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-hrn_sample-rock_agent3_agent1_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-g88_observe-rock_agent1_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint4) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-hrn_sample-rock_agent3_agent1_a1store_waypoint4 dd))
)
(:action act-btq_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-hrn_sample-rock_agent3_agent1_a1store_waypoint4 dd) (at agent3 waypoint1))
:effect 
(and (pre-btq_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-hrn_sample-rock_agent3_agent1_a1store_waypoint4 dd)) (communicated-rock-data ))
)
(:action act-bm4_drop_agent3_a1store
:parameters ( ?a - agent)
:precondition 
(and (pre-btq_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd))
:effect 
(and (pre-bm4_drop_agent3_a1store dd) (not (pre-btq_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-bm4_drop_agent3_a1store
:parameters ( ?a - agent)
:precondition 
(and (pre-bm4_drop_agent3_a1store dd))
:effect 
(and (done-goal dd) (not (pre-bm4_drop_agent3_a1store dd)))
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

)
