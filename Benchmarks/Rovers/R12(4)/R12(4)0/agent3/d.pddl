(define (domain rover-agent3)
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
)

(:action navigate
	:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
	:precondition (and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z) )
	:effect (and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)) )
)
(:action act-g88_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-g88_observe-rock_agent1_waypoint4 dd)(immediate-dummy-g88_observe-rock_agent1_waypoint4 dd)(at agent3 waypoint4)(can-sample-rock agent3))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-g88_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-g88_observe-rock_agent1_waypoint4 dd)(not (dummy-left-g88_observe-rock_agent1_waypoint4 dd))(not (dummy-right-g88_observe-rock_agent1_waypoint4 dd)))
	:effect (and (immediate-dummy-g88_observe-rock_agent1_waypoint4 dd) )
)
(:action dummy-left-g88_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-g88_observe-rock_agent1_waypoint4 dd)(at agent3 waypoint4)(can-sample-rock agent3)(not (at-rock-sample waypoint4))(immediate-dummy-g88_observe-rock_agent1_waypoint4 dd))
	:effect (and (not (init-g88_observe-rock_agent1_waypoint4 dd))(not (immediate-dummy-g88_observe-rock_agent1_waypoint4 dd))(dummy-left-g88_observe-rock_agent1_waypoint4 dd))
)
(:action dummy-right-g88_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-g88_observe-rock_agent1_waypoint4 dd)(at agent3 waypoint4)(can-sample-rock agent3)(at-rock-sample waypoint4)(immediate-dummy-g88_observe-rock_agent1_waypoint4 dd))
	:effect (and (not (init-g88_observe-rock_agent1_waypoint4 dd))(not (immediate-dummy-g88_observe-rock_agent1_waypoint4 dd))(dummy-right-g88_observe-rock_agent1_waypoint4 dd))
)
(:action act-2os_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g88_observe-rock_agent1_waypoint4 dd)(immediate-dummy-2os_observe-soil_agent0_waypoint5 dd)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(can-sample-soil agent3))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-2os_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g88_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(can-sample-soil agent3)(not (dummy-left-2os_observe-soil_agent0_waypoint5 dd))(not (dummy-right-2os_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-2os_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-2os_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g88_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(can-sample-soil agent3)(not (at-soil-sample waypoint5))(immediate-dummy-2os_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-2os_observe-soil_agent0_waypoint5 dd))(dummy-left-2os_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-2os_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g88_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent3 waypoint5)(can-sample-soil agent3)(at-soil-sample waypoint5)(immediate-dummy-2os_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-2os_observe-soil_agent0_waypoint5 dd))(dummy-right-2os_observe-soil_agent0_waypoint5 dd))
)
(:action act-04n_sample-soil_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-2os_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(not (at-rock-sample waypoint4))(at agent3 waypoint4))
	:effect (and (pre-04n_sample-soil_agent3_a1store_waypoint4 dd))
)
(:action act-um1_drop_agent3_a1store
	:parameters ( ?a - agent )
	:precondition (and (pre-04n_sample-soil_agent3_a1store_waypoint4 dd))
	:effect (and (pre-um1_drop_agent3_a1store dd)(not (pre-04n_sample-soil_agent3_a1store_waypoint4 dd)))
)
(:action act-0d2_sample-rock_agent3_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-um1_drop_agent3_a1store dd)(at agent3 waypoint5))
	:effect (and (pre-0d2_sample-rock_agent3_agent0_a1store_waypoint5 dd)(not (pre-um1_drop_agent3_a1store dd)))
)
(:action act-859_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-0d2_sample-rock_agent3_agent0_a1store_waypoint5 dd)(at agent3 waypoint1)(available agent3))
	:effect (and (pre-859_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-0d2_sample-rock_agent3_agent0_a1store_waypoint5 dd))(communicated-rock-data ))
)
(:action act-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-859_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(at agent3 waypoint1)(available agent3))
	:effect (and (pre-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-859_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd))(communicated-soil-data ))
)
(:action goal-achieve-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-itd_communicate-soil-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-noq_sample-rock_agent3_agent2_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-2os_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent3 waypoint5))
	:effect (and (pre-noq_sample-rock_agent3_agent2_a1store_waypoint5 dd))
)
(:action act-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-noq_sample-rock_agent3_agent2_a1store_waypoint5 dd)(at agent3 waypoint1)(available agent3))
	:effect (and (pre-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-noq_sample-rock_agent3_agent2_a1store_waypoint5 dd))(communicated-rock-data ))
)
(:action goal-achieve-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-hoa_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action act-hrn_sample-rock_agent3_agent1_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g88_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent3 waypoint4))
	:effect (and (pre-hrn_sample-rock_agent3_agent1_a1store_waypoint4 dd))
)
(:action act-btq_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-hrn_sample-rock_agent3_agent1_a1store_waypoint4 dd)(at agent3 waypoint1)(available agent3))
	:effect (and (pre-btq_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)(not (pre-hrn_sample-rock_agent3_agent1_a1store_waypoint4 dd))(communicated-rock-data ))
)
(:action act-bm4_drop_agent3_a1store
	:parameters ( ?a - agent )
	:precondition (and (pre-btq_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd))
	:effect (and (pre-bm4_drop_agent3_a1store dd)(not (pre-btq_communicate-rock-data_agent3_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-bm4_drop_agent3_a1store
	:parameters ( ?a - agent )
	:precondition (and (pre-bm4_drop_agent3_a1store dd))
	:effect (and (done-goal dd)(not (pre-bm4_drop_agent3_a1store dd)))
)
)