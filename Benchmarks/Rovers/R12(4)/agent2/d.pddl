(define (domain rover-agent2)
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
	dd - dummy)
(:predicates 
	(at ?x - agent ?y - waypoint )
	(at-lander ?x - lander ?y - waypoint )
	(can-traverse ?r - agent ?x - waypoint ?y - waypoint )
	(equipped-for-imaging ?r - agent )
	(equipped-for-soil-analysis ?r - agent )
	(equipped-for-rock-analysis ?r - agent )
	(empty ?s - store ?a - agent )
	(have-rock-analysis ?r - agent )
	(have-soil-analysis ?r - agent )
	(full ?s - store ?a - agent )
	(calibrated ?c - camera ?r - agent ?w - waypoint ?o - objective )
	(supports ?c - camera ?m - mode )
	(available ?r - agent )
	(visible ?w - waypoint ?p - waypoint )
	(have-image ?r - agent ?o - objective ?m - mode )
	(communicated-image-data ?o - objective ?m - mode )
	(communicated-soil-data )
	(communicated-rock-data )
	(at-soil-sample ?w - waypoint )
	(at-rock-sample ?w - waypoint )
	(visible-from ?o - objective ?w - waypoint )
	(store-of ?s - store ?r - agent )
	(calibration-target ?i - camera ?o - objective )
	(on-board ?i - camera ?r - agent )
	(channel-free ?l - lander )
	(can-sample-rock ?x - agent )
	(can-sample-soil ?x - agent )
	(dummy-pred-needed ?dd - dummy )
	(init-hyb_observe-rock_agent1_waypoint4 ?dd - dummy)
	(immediate-dummy-hyb_observe-rock_agent1_waypoint4 ?dd - dummy)
	(dummy-left-hyb_observe-rock_agent1_waypoint4 ?dd - dummy)
	(immediate-dummy-u7p_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-u7p_observe-soil_agent0_waypoint5 ?dd - dummy)
	(pre-tmr_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-u7p_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-right-hyb_observe-rock_agent1_waypoint4 ?dd - dummy)
	(immediate-dummy-ygy_observe-soil_agent2_waypoint4 ?dd - dummy)
	(dummy-left-ygy_observe-soil_agent2_waypoint4 ?dd - dummy)
	(dummy-right-ygy_observe-soil_agent2_waypoint4 ?dd - dummy)
	(pre-jfk_sample-soil_agent2_a1store_waypoint4 ?dd - dummy)
	(pre-agu_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
)

(:action navigate
	:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
	:precondition (and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z) )
	:effect (and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)) )
)
(:action act-hyb_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-hyb_observe-rock_agent1_waypoint4 dd)(immediate-dummy-hyb_observe-rock_agent1_waypoint4 dd)(at agent2 waypoint4)(can-sample-rock agent2))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-hyb_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-hyb_observe-rock_agent1_waypoint4 dd)(not (dummy-left-hyb_observe-rock_agent1_waypoint4 dd))(not (dummy-right-hyb_observe-rock_agent1_waypoint4 dd)))
	:effect (and (immediate-dummy-hyb_observe-rock_agent1_waypoint4 dd) )
)
(:action dummy-left-hyb_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-hyb_observe-rock_agent1_waypoint4 dd)(at agent2 waypoint4)(can-sample-rock agent2)(not (at-rock-sample waypoint4))(immediate-dummy-hyb_observe-rock_agent1_waypoint4 dd))
	:effect (and (not (init-hyb_observe-rock_agent1_waypoint4 dd))(not (immediate-dummy-hyb_observe-rock_agent1_waypoint4 dd))(dummy-left-hyb_observe-rock_agent1_waypoint4 dd))
)
(:action dummy-right-hyb_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-hyb_observe-rock_agent1_waypoint4 dd)(at agent2 waypoint4)(can-sample-rock agent2)(at-rock-sample waypoint4)(immediate-dummy-hyb_observe-rock_agent1_waypoint4 dd))
	:effect (and (not (init-hyb_observe-rock_agent1_waypoint4 dd))(not (immediate-dummy-hyb_observe-rock_agent1_waypoint4 dd))(dummy-right-hyb_observe-rock_agent1_waypoint4 dd))
)
(:action act-u7p_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hyb_observe-rock_agent1_waypoint4 dd)(immediate-dummy-u7p_observe-soil_agent0_waypoint5 dd)(not (at-rock-sample waypoint4))(at agent2 waypoint5)(can-sample-soil agent2))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-u7p_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hyb_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent2 waypoint5)(can-sample-soil agent2)(not (dummy-left-u7p_observe-soil_agent0_waypoint5 dd))(not (dummy-right-u7p_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-u7p_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-u7p_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hyb_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent2 waypoint5)(can-sample-soil agent2)(not (at-soil-sample waypoint5))(immediate-dummy-u7p_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-u7p_observe-soil_agent0_waypoint5 dd))(dummy-left-u7p_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-u7p_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hyb_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent2 waypoint5)(can-sample-soil agent2)(at-soil-sample waypoint5)(immediate-dummy-u7p_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-u7p_observe-soil_agent0_waypoint5 dd))(dummy-right-u7p_observe-soil_agent0_waypoint5 dd))
)
(:action act-tmr_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-u7p_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(not (at-rock-sample waypoint4))(at agent2 waypoint5))
	:effect (and (pre-tmr_sample-rock_agent0_agent2_a0store_waypoint5 dd))
)
(:action goal-achieve-tmr_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-tmr_sample-rock_agent0_agent2_a0store_waypoint5 dd))
	:effect (and (done-goal dd)(not (pre-tmr_sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)
(:action goal-achieve-right-u7p_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-u7p_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4)))
	:effect (and (done-goal dd)(not (dummy-right-u7p_observe-soil_agent0_waypoint5 dd)))
)
(:action act-ygy_observe-soil_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hyb_observe-rock_agent1_waypoint4 dd)(immediate-dummy-ygy_observe-soil_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent2 waypoint4)(can-sample-soil agent2))
	:observe (at-soil-sample waypoint4)
)
(:action act-dummy-ygy_observe-soil_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hyb_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent2 waypoint4)(can-sample-soil agent2)(not (dummy-left-ygy_observe-soil_agent2_waypoint4 dd))(not (dummy-right-ygy_observe-soil_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-ygy_observe-soil_agent2_waypoint4 dd) )
)
(:action dummy-left-ygy_observe-soil_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hyb_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent2 waypoint4)(can-sample-soil agent2)(not (at-soil-sample waypoint4))(immediate-dummy-ygy_observe-soil_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-ygy_observe-soil_agent2_waypoint4 dd))(dummy-left-ygy_observe-soil_agent2_waypoint4 dd))
)
(:action dummy-right-ygy_observe-soil_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hyb_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent2 waypoint4)(can-sample-soil agent2)(at-soil-sample waypoint4)(immediate-dummy-ygy_observe-soil_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-ygy_observe-soil_agent2_waypoint4 dd))(dummy-right-ygy_observe-soil_agent2_waypoint4 dd))
)
(:action goal-achieve-left-ygy_observe-soil_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ygy_observe-soil_agent2_waypoint4 dd)(not (at-soil-sample waypoint4))(at-rock-sample waypoint4))
	:effect (and (done-goal dd)(not (dummy-left-ygy_observe-soil_agent2_waypoint4 dd)))
)
(:action act-jfk_sample-soil_agent2_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ygy_observe-soil_agent2_waypoint4 dd)(at-soil-sample waypoint4)(at-rock-sample waypoint4)(at agent2 waypoint4))
	:effect (and (pre-jfk_sample-soil_agent2_a1store_waypoint4 dd))
)
(:action act-agu_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-jfk_sample-soil_agent2_a1store_waypoint4 dd)(at agent2 waypoint1)(available agent2))
	:effect (and (pre-agu_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd dd)(not (pre-jfk_sample-soil_agent2_a1store_waypoint4 dd))(communicated-soil-data ))
)
(:action goal-achieve-agu_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-agu_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-agu_communicate-soil-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
)