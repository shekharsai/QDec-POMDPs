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
(init-io5_observe-rock_agent1_waypoint4 ?dd - dummy)
(immediate-dummy-io5_observe-rock_agent1_waypoint4 ?dd - dummy)
(dummy-left-io5_observe-rock_agent1_waypoint4 ?dd - dummy)
(immediate-dummy-yiu_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-yiu_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-xb9_sample-soil_agent3_a1store_waypoint4 ?dd - dummy)
(pre-lz0_drop_agent3_a1store ?dd - dummy)
(pre-eky_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-yiu_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-e2d_sample-rock_agent0_agent3_a0store_waypoint5 ?dd - dummy)
(dummy-right-io5_observe-rock_agent1_waypoint4 ?dd - dummy)
(immediate-dummy-stb_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-left-stb_observe-soil_agent2_waypoint4 ?dd - dummy)
(dummy-right-stb_observe-soil_agent2_waypoint4 ?dd - dummy)
(pre-pgp_sample-rock_agent3_agent1_a1store_waypoint4 ?dd - dummy)
(pre-gcx_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd ?dd - dummy)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action act-dummy-io5_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-io5_observe-rock_agent1_waypoint4 dd) (not (dummy-left-io5_observe-rock_agent1_waypoint4 dd)) (not (dummy-right-io5_observe-rock_agent1_waypoint4 dd)))
:effect (immediate-dummy-io5_observe-rock_agent1_waypoint4 dd)
)

(:action dummy-left-io5_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-io5_observe-rock_agent1_waypoint4 dd) (at agent3 waypoint4) (not (at-rock-sample waypoint4)) (immediate-dummy-io5_observe-rock_agent1_waypoint4 dd))
:effect 
(and (not (init-io5_observe-rock_agent1_waypoint4 dd)) (not (immediate-dummy-io5_observe-rock_agent1_waypoint4 dd)) (dummy-left-io5_observe-rock_agent1_waypoint4 dd))
)

(:action dummy-right-io5_observe-rock_agent1_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (init-io5_observe-rock_agent1_waypoint4 dd) (at agent3 waypoint4) (at-rock-sample waypoint4) (immediate-dummy-io5_observe-rock_agent1_waypoint4 dd))
:effect 
(and (not (init-io5_observe-rock_agent1_waypoint4 dd)) (not (immediate-dummy-io5_observe-rock_agent1_waypoint4 dd)) (dummy-right-io5_observe-rock_agent1_waypoint4 dd))
)

(:action act-dummy-yiu_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-io5_observe-rock_agent1_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (dummy-left-yiu_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-yiu_observe-soil_agent0_waypoint5 dd)))
:effect (immediate-dummy-yiu_observe-soil_agent0_waypoint5 dd)
)

(:action dummy-left-yiu_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-io5_observe-rock_agent1_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-yiu_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-yiu_observe-soil_agent0_waypoint5 dd)) (dummy-left-yiu_observe-soil_agent0_waypoint5 dd))
)

(:action dummy-right-yiu_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-io5_observe-rock_agent1_waypoint4 dd) (not (at-rock-sample waypoint4)) (at agent3 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-yiu_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-yiu_observe-soil_agent0_waypoint5 dd)) (dummy-right-yiu_observe-soil_agent0_waypoint5 dd))
)

(:action act-xb9_sample-soil_agent3_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yiu_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (at-rock-sample waypoint4)) (at agent3 waypoint4))
:effect (pre-xb9_sample-soil_agent3_a1store_waypoint4 dd)
)

(:action act-lz0_drop_agent3_a1store
:parameters ( ?a - agent)
:precondition (pre-xb9_sample-soil_agent3_a1store_waypoint4 dd)
:effect 
(and (pre-lz0_drop_agent3_a1store dd) (not (pre-xb9_sample-soil_agent3_a1store_waypoint4 dd)))
)

(:action act-eky_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-lz0_drop_agent3_a1store dd) (at agent3 waypoint1))
:effect 
(and (pre-eky_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-lz0_drop_agent3_a1store dd)) (communicated-soil-data ))
)

(:action goal-achieve-eky_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-eky_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-eky_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)

(:action act-e2d_sample-rock_agent0_agent3_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yiu_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint4)) (at agent3 waypoint5))
:effect (pre-e2d_sample-rock_agent0_agent3_a0store_waypoint5 dd)
)

(:action goal-achieve-e2d_sample-rock_agent0_agent3_a0store_waypoint5
:parameters ( ?a - agent)
:precondition (pre-e2d_sample-rock_agent0_agent3_a0store_waypoint5 dd)
:effect 
(and (done-goal dd) (not (pre-e2d_sample-rock_agent0_agent3_a0store_waypoint5 dd)))
)

(:action act-dummy-stb_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-io5_observe-rock_agent1_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (dummy-left-stb_observe-soil_agent2_waypoint4 dd)) (not (dummy-right-stb_observe-soil_agent2_waypoint4 dd)))
:effect (immediate-dummy-stb_observe-soil_agent2_waypoint4 dd)
)

(:action dummy-left-stb_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-io5_observe-rock_agent1_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint4) (not (at-soil-sample waypoint4)) (immediate-dummy-stb_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-stb_observe-soil_agent2_waypoint4 dd)) (dummy-left-stb_observe-soil_agent2_waypoint4 dd))
)

(:action dummy-right-stb_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-io5_observe-rock_agent1_waypoint4 dd) (at-rock-sample waypoint4) (at agent3 waypoint4) (at-soil-sample waypoint4) (immediate-dummy-stb_observe-soil_agent2_waypoint4 dd))
:effect 
(and (not (immediate-dummy-stb_observe-soil_agent2_waypoint4 dd)) (dummy-right-stb_observe-soil_agent2_waypoint4 dd))
)

(:action goal-achieve-left-stb_observe-soil_agent2_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-stb_observe-soil_agent2_waypoint4 dd) (not (at-soil-sample waypoint4)) (at-rock-sample waypoint4))
:effect 
(and (done-goal dd) (not (dummy-left-stb_observe-soil_agent2_waypoint4 dd)))
)

(:action act-pgp_sample-rock_agent3_agent1_a1store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-stb_observe-soil_agent2_waypoint4 dd) (at-soil-sample waypoint4) (at-rock-sample waypoint4) (at agent3 waypoint4))
:effect (pre-pgp_sample-rock_agent3_agent1_a1store_waypoint4 dd)
)

(:action act-gcx_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-pgp_sample-rock_agent3_agent1_a1store_waypoint4 dd) (at agent3 waypoint1))
:effect 
(and (pre-gcx_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd) (not (pre-pgp_sample-rock_agent3_agent1_a1store_waypoint4 dd)) (communicated-rock-data ))
)

(:action goal-achieve-gcx_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-gcx_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-gcx_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)

)
