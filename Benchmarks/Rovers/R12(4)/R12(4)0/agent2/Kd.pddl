(define (domain Krover-agent2)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy dummy)
(:constants
 agent2 - agent
 general - lander
 colour - mode
 high-res - mode
 low-res - mode
 agent2 - agent
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
(init-qsg_observe-rock_agent1_waypoint4 ?dd - dummy)
(immediate-dummy-qsg_observe-rock_agent1_waypoint4 ?dd - dummy)
(dummy-left-qsg_observe-rock_agent1_waypoint4 ?dd - dummy)
(immediate-dummy-73s_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-73s_observe-soil_agent0_waypoint5 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-73s_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-c1p_sample-rock_agent3_agent2_a1store_waypoint5 ?dd - dummy)
(dummy-right-qsg_observe-rock_agent1_waypoint4 ?dd - dummy)
(immediate-dummy-msz_observe-soil-2c4_agent2_waypoint4 ?dd - dummy)
(dummy-left-msz_observe-soil-2c4_agent2_waypoint4 ?dd - dummy)
(dummy-right-msz_observe-soil-2c4_agent2_waypoint4 ?dd - dummy)
(pre-s2k_sample-soil_agent2_a1store_waypoint4 ?dd - dummy)
(pre-xbw_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action act-dummy-qsg_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-qsg_observe-rock_agent1_waypoint4 dd) (not (dummy-left-qsg_observe-rock_agent1_waypoint4 dd)) (not (dummy-right-qsg_observe-rock_agent1_waypoint4 dd)))
:effect (immediate-dummy-qsg_observe-rock_agent1_waypoint4 dd)
)

(:action dummy-left-qsg_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-qsg_observe-rock_agent1_waypoint4 dd) (at agent2 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-qsg_observe-rock_agent1_waypoint4 dd))
:effect 
(and (not (init-qsg_observe-rock_agent1_waypoint4 dd)) (not (immediate-dummy-qsg_observe-rock_agent1_waypoint4 dd)) (dummy-left-qsg_observe-rock_agent1_waypoint4 dd))
)

(:action dummy-right-qsg_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-qsg_observe-rock_agent1_waypoint4 dd) (at agent2 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-qsg_observe-rock_agent1_waypoint4 dd))
:effect 
(and (not (init-qsg_observe-rock_agent1_waypoint4 dd)) (not (immediate-dummy-qsg_observe-rock_agent1_waypoint4 dd)) (dummy-right-qsg_observe-rock_agent1_waypoint4 dd))
)

(:action act-dummy-73s_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qsg_observe-rock_agent1_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (dummy-left-73s_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-73s_observe-soil_agent0_waypoint5 dd)))
:effect (immediate-dummy-73s_observe-soil_agent0_waypoint5 dd)
)

(:action dummy-left-73s_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qsg_observe-rock_agent1_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-73s_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-73s_observe-soil_agent0_waypoint5 dd)) (dummy-left-73s_observe-soil_agent0_waypoint5 dd))
)

(:action dummy-right-73s_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-qsg_observe-rock_agent1_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent2 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-73s_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-73s_observe-soil_agent0_waypoint5 dd)) (dummy-right-73s_observe-soil_agent0_waypoint5 dd))
)

(:action goal-achieve-left-73s_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-73s_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (at-rock-sample waypoint4)))
:effect 
(and (done-goal dd) (not (dummy-left-73s_observe-soil_agent0_waypoint5 dd)))
)

(:action act-c1p_sample-rock_agent3_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-73s_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent2 waypoint5))
:effect (pre-c1p_sample-rock_agent3_agent2_a1store_waypoint5 dd)
)

(:action goal-achieve-c1p_sample-rock_agent3_agent2_a1store_waypoint5
:parameters ( ?a - agent)
:precondition (pre-c1p_sample-rock_agent3_agent2_a1store_waypoint5 dd)
:effect 
(and (done-goal dd) (not (pre-c1p_sample-rock_agent3_agent2_a1store_waypoint5 dd)))
)

(:action act-dummy-msz_observe-soil-2c4_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qsg_observe-rock_agent1_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint4) (not (dummy-left-msz_observe-soil-2c4_agent2_waypoint4 dd)) (not (dummy-right-msz_observe-soil-2c4_agent2_waypoint4 dd)))
:effect (immediate-dummy-msz_observe-soil-2c4_agent2_waypoint4 dd)
)

(:action dummy-left-msz_observe-soil-2c4_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qsg_observe-rock_agent1_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-msz_observe-soil-2c4_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-msz_observe-soil-2c4_agent2_waypoint4 dd)) (dummy-left-msz_observe-soil-2c4_agent2_waypoint4 dd))
)

(:action dummy-right-msz_observe-soil-2c4_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-qsg_observe-rock_agent1_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-msz_observe-soil-2c4_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-msz_observe-soil-2c4_agent2_waypoint4 dd)) (dummy-right-msz_observe-soil-2c4_agent2_waypoint4 dd))
)

(:action goal-achieve-left-msz_observe-soil-2c4_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-msz_observe-soil-2c4_agent2_waypoint4 dd) (at-rock-sample waypoint4))
:effect 
(and (done-goal dd) (not (dummy-left-msz_observe-soil-2c4_agent2_waypoint4 dd)))
)

(:action act-s2k_sample-soil_agent2_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-msz_observe-soil-2c4_agent2_waypoint4 dd) (at-rock-sample waypoint4) (at agent2 waypoint4))
:effect (pre-s2k_sample-soil_agent2_a1store_waypoint4 dd)
)

(:action act-xbw_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-s2k_sample-soil_agent2_a1store_waypoint4 dd) (at agent2 waypoint1))
:effect 
(and (pre-xbw_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd dd) (not (pre-s2k_sample-soil_agent2_a1store_waypoint4 dd)) (communicated-soil-data ))
)

(:action goal-achieve-xbw_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-xbw_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-xbw_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd dd)))
)

)
