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
 tag0 - TAG_TYPE ; (not (at-soil-sample waypoint4)) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at-rock-sample waypoint5)
 tag1 - TAG_TYPE ; (at-soil-sample waypoint4) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint4) (not (at-rock-sample waypoint5))
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
(store-of ?s - store ?r - agent)
(calibration-target ?i - camera ?o - objective)
(on-board ?i - camera ?r - agent)
(channel-free ?l - lander)
(can-sample-rock ?x - agent)
(can-sample-soil ?x - agent)
(dummy-pred-needed ?dd - dummy)
(init-04s_observe-rock_agent1_waypoint4 ?dd - dummy)
(immediate-dummy-04s_observe-rock_agent1_waypoint4 ?dd - dummy)
(dummy-left-04s_observe-rock_agent1_waypoint4 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-04s_observe-rock_agent1_waypoint4 ?dd - dummy)
(immediate-dummy-2c4_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-2c4_observe-soil_agent2_waypoint4 ?dd - dummy)
(pre-kug_sample-rock_agent0_agent1_a0store_waypoint4 ?dd - dummy)
(dummy-right-2c4_observe-soil_agent2_waypoint4 ?dd - dummy)
(pre-2vh_sample-rock_agent3_agent1_a1store_waypoint4 ?dd - dummy)
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
(:action act-04s_observe-rock_agent1_waypoint4-T
:parameters ( ?a - agent)
:precondition 
(and (init-04s_observe-rock_agent1_waypoint4 dd) (immediate-dummy-04s_observe-rock_agent1_waypoint4 dd) (at agent1 waypoint4) (at-rock-sample waypoint4) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_TRUE))
)
(:action act-04s_observe-rock_agent1_waypoint4-F
:parameters ( ?a - agent)
:precondition 
(and (init-04s_observe-rock_agent1_waypoint4 dd) (immediate-dummy-04s_observe-rock_agent1_waypoint4 dd) (at agent1 waypoint4) (not (at-rock-sample waypoint4)) (not (Kat-rock-sample waypoint4 V_TRUE)) (not (Kat-rock-sample waypoint4 V_FALSE)))
:effect 
(and (Kat-rock-sample waypoint4 V_FALSE))
)
(:action act-dummy-04s_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-04s_observe-rock_agent1_waypoint4 dd) (not (dummy-left-04s_observe-rock_agent1_waypoint4 dd)) (not (dummy-right-04s_observe-rock_agent1_waypoint4 dd)))
:effect 
(and (immediate-dummy-04s_observe-rock_agent1_waypoint4 dd))
)
(:action dummy-left-04s_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-04s_observe-rock_agent1_waypoint4 dd) (at agent1 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-04s_observe-rock_agent1_waypoint4 dd) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (not (init-04s_observe-rock_agent1_waypoint4 dd)) (not (immediate-dummy-04s_observe-rock_agent1_waypoint4 dd)) (dummy-left-04s_observe-rock_agent1_waypoint4 dd))
)
(:action dummy-right-04s_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-04s_observe-rock_agent1_waypoint4 dd) (at agent1 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-04s_observe-rock_agent1_waypoint4 dd) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (not (init-04s_observe-rock_agent1_waypoint4 dd)) (not (immediate-dummy-04s_observe-rock_agent1_waypoint4 dd)) (dummy-right-04s_observe-rock_agent1_waypoint4 dd))
)
(:action goal-achieve-left-04s_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-04s_observe-rock_agent1_waypoint4 dd) (not (at-rock-sample waypoint4)) (Kat-rock-sample waypoint4 V_FALSE))
:effect 
(and (done-goal dd) (not (dummy-left-04s_observe-rock_agent1_waypoint4 dd)))
)
(:action act-kug_sample-rock_agent0_agent1_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-2c4_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4) (at agent1 waypoint4) (Kat-soil-sample waypoint4 V_FALSE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-kug_sample-rock_agent0_agent1_a0store_waypoint4 dd))
)
(:action goal-achieve-kug_sample-rock_agent0_agent1_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-kug_sample-rock_agent0_agent1_a0store_waypoint4 dd))
:effect 
(and (done-goal dd) (not (pre-kug_sample-rock_agent0_agent1_a0store_waypoint4 dd)))
)
(:action act-2vh_sample-rock_agent3_agent1_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-2c4_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (at agent1 waypoint4) (Kat-soil-sample waypoint4 V_TRUE) (Kat-rock-sample waypoint4 V_TRUE))
:effect 
(and (pre-2vh_sample-rock_agent3_agent1_a1store_waypoint4 dd))
)
(:action goal-achieve-2vh_sample-rock_agent3_agent1_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (pre-2vh_sample-rock_agent3_agent1_a1store_waypoint4 dd))
:effect 
(and (done-goal dd) (not (pre-2vh_sample-rock_agent3_agent1_a1store_waypoint4 dd)))
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
