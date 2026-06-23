(define (domain Krover-agent0)
(:requirements :strips :typing)
(:types agent waypoint store camera mode lander objective dummy dummy)
(:constants
 agent0 - agent
 general - lander
 colour - mode
 high-res - mode
 low-res - mode
 agent0 - agent
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
(init-yaa_observe-rock_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-yaa_observe-rock_agent0_waypoint5 ?dd - dummy)
(dummy-left-yaa_observe-rock_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-a2m_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-a2m_observe-soil_agent0_waypoint5 ?dd - dummy)
(done-goal ?dd - dummy)
(dummy-right-a2m_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-gtt_sample-rock_agent0_agent1_a0store_waypoint4 ?dd - dummy)
(pre-zie_drop_agent0_a0store ?dd - dummy)
(pre-swj_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-kjt_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-4bf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-yaa_observe-rock_agent0_waypoint5 ?dd - dummy)
(immediate-dummy-a2d_observe-soil_agent0_waypoint5 ?dd - dummy)
(dummy-left-a2d_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-st1_sample-rock_agent0_agent1_a0store_waypoint5 ?dd - dummy)
(pre-alq_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(dummy-right-a2d_observe-soil_agent0_waypoint5 ?dd - dummy)
(pre-y4s_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
(pre-gia_drop_agent0_a0store ?dd - dummy)
(pre-8pn_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
(pre-okx_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
(pre-8ww_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
)

(:action navigate
:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
:precondition 
(and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
:effect 
(and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)))
)

(:action act-dummy-yaa_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (init-yaa_observe-rock_agent0_waypoint5 dd) (not (dummy-left-yaa_observe-rock_agent0_waypoint5 dd)) (not (dummy-right-yaa_observe-rock_agent0_waypoint5 dd)))
:effect (immediate-dummy-yaa_observe-rock_agent0_waypoint5 dd)
)

(:action dummy-left-yaa_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (init-yaa_observe-rock_agent0_waypoint5 dd) (at agent0 waypoint5) (not (at-rock-sample waypoint5)) (immediate-dummy-yaa_observe-rock_agent0_waypoint5 dd))
:effect 
(and (not (init-yaa_observe-rock_agent0_waypoint5 dd)) (not (immediate-dummy-yaa_observe-rock_agent0_waypoint5 dd)) (dummy-left-yaa_observe-rock_agent0_waypoint5 dd))
)

(:action dummy-right-yaa_observe-rock_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (init-yaa_observe-rock_agent0_waypoint5 dd) (at agent0 waypoint5) (at-rock-sample waypoint5) (immediate-dummy-yaa_observe-rock_agent0_waypoint5 dd))
:effect 
(and (not (init-yaa_observe-rock_agent0_waypoint5 dd)) (not (immediate-dummy-yaa_observe-rock_agent0_waypoint5 dd)) (dummy-right-yaa_observe-rock_agent0_waypoint5 dd))
)

(:action act-dummy-a2m_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yaa_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (at agent0 waypoint5) (not (dummy-left-a2m_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-a2m_observe-soil_agent0_waypoint5 dd)))
:effect (immediate-dummy-a2m_observe-soil_agent0_waypoint5 dd)
)

(:action dummy-left-a2m_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yaa_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (at agent0 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-a2m_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-a2m_observe-soil_agent0_waypoint5 dd)) (dummy-left-a2m_observe-soil_agent0_waypoint5 dd))
)

(:action dummy-right-a2m_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-yaa_observe-rock_agent0_waypoint5 dd) (not (at-rock-sample waypoint5)) (at agent0 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-a2m_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-a2m_observe-soil_agent0_waypoint5 dd)) (dummy-right-a2m_observe-soil_agent0_waypoint5 dd))
)

(:action goal-achieve-left-a2m_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a2m_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (not (at-rock-sample waypoint5)))
:effect 
(and (done-goal dd) (not (dummy-left-a2m_observe-soil_agent0_waypoint5 dd)))
)

(:action act-gtt_sample-rock_agent0_agent1_a0store_waypoint4
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a2m_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (not (at-rock-sample waypoint5)) (at agent0 waypoint4))
:effect (pre-gtt_sample-rock_agent0_agent1_a0store_waypoint4 dd)
)

(:action act-zie_drop_agent0_a0store
:parameters ( ?a - agent)
:precondition (pre-gtt_sample-rock_agent0_agent1_a0store_waypoint4 dd)
:effect 
(and (pre-zie_drop_agent0_a0store dd) (not (pre-gtt_sample-rock_agent0_agent1_a0store_waypoint4 dd)))
)

(:action act-swj_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-zie_drop_agent0_a0store dd) (at agent0 waypoint5))
:effect 
(and (pre-swj_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-zie_drop_agent0_a0store dd)))
)

(:action act-kjt_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-swj_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1))
:effect 
(and (pre-kjt_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-swj_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-4bf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-kjt_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (at agent0 waypoint1))
:effect 
(and (pre-4bf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-kjt_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)) (communicated-soil-data ))
)

(:action goal-achieve-4bf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-4bf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-4bf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)

(:action act-dummy-a2d_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yaa_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (at agent0 waypoint5) (not (dummy-left-a2d_observe-soil_agent0_waypoint5 dd)) (not (dummy-right-a2d_observe-soil_agent0_waypoint5 dd)))
:effect (immediate-dummy-a2d_observe-soil_agent0_waypoint5 dd)
)

(:action dummy-left-a2d_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yaa_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (at agent0 waypoint5) (not (at-soil-sample waypoint5)) (immediate-dummy-a2d_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-a2d_observe-soil_agent0_waypoint5 dd)) (dummy-left-a2d_observe-soil_agent0_waypoint5 dd))
)

(:action dummy-right-a2d_observe-soil_agent0_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-yaa_observe-rock_agent0_waypoint5 dd) (at-rock-sample waypoint5) (at agent0 waypoint5) (at-soil-sample waypoint5) (immediate-dummy-a2d_observe-soil_agent0_waypoint5 dd))
:effect 
(and (not (immediate-dummy-a2d_observe-soil_agent0_waypoint5 dd)) (dummy-right-a2d_observe-soil_agent0_waypoint5 dd))
)

(:action act-st1_sample-rock_agent0_agent1_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-left-a2d_observe-soil_agent0_waypoint5 dd) (not (at-soil-sample waypoint5)) (at-rock-sample waypoint5) (at agent0 waypoint5))
:effect (pre-st1_sample-rock_agent0_agent1_a0store_waypoint5 dd)
)

(:action act-alq_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-st1_sample-rock_agent0_agent1_a0store_waypoint5 dd) (at agent0 waypoint1))
:effect 
(and (pre-alq_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-st1_sample-rock_agent0_agent1_a0store_waypoint5 dd)) (communicated-rock-data ))
)

(:action goal-achieve-alq_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-alq_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-alq_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)))
)

(:action act-y4s_sample-rock_agent0_agent2_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (dummy-right-a2d_observe-soil_agent0_waypoint5 dd) (at-soil-sample waypoint5) (at-rock-sample waypoint5) (at agent0 waypoint5))
:effect (pre-y4s_sample-rock_agent0_agent2_a0store_waypoint5 dd)
)

(:action act-gia_drop_agent0_a0store
:parameters ( ?a - agent)
:precondition (pre-y4s_sample-rock_agent0_agent2_a0store_waypoint5 dd)
:effect 
(and (pre-gia_drop_agent0_a0store dd) (not (pre-y4s_sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)

(:action act-8pn_sample-soil_agent0_a0store_waypoint5
:parameters ( ?a - agent)
:precondition 
(and (pre-gia_drop_agent0_a0store dd) (at agent0 waypoint5))
:effect 
(and (pre-8pn_sample-soil_agent0_a0store_waypoint5 dd) (not (pre-gia_drop_agent0_a0store dd)))
)

(:action act-okx_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-8pn_sample-soil_agent0_a0store_waypoint5 dd) (at agent0 waypoint1))
:effect 
(and (pre-okx_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-8pn_sample-soil_agent0_a0store_waypoint5 dd)) (communicated-rock-data ))
)

(:action act-8ww_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition 
(and (pre-okx_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd) (at agent0 waypoint1))
:effect 
(and (pre-8ww_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd) (not (pre-okx_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)) (communicated-soil-data ))
)

(:action goal-achieve-8ww_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
:parameters ( ?a - agent)
:precondition (pre-8ww_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)
:effect 
(and (done-goal dd) (not (pre-8ww_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)

)
