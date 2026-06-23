(define (domain rover-agent0)
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
	(init-4s6_observe-rock_agent1_waypoint4 ?dd - dummy)
	(immediate-dummy-4s6_observe-rock_agent1_waypoint4 ?dd - dummy)
	(dummy-left-4s6_observe-rock_agent1_waypoint4 ?dd - dummy)
	(immediate-dummy-tjn_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-tjn_observe-soil_agent0_waypoint5 ?dd - dummy)
	(pre-vug_sample-rock_agent3_agent0_a1store_waypoint5 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-tjn_observe-soil_agent0_waypoint5 ?dd - dummy)
	(pre-lsp_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-q65_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-4s6_observe-rock_agent1_waypoint4 ?dd - dummy)
	(immediate-dummy-qhw_observe-soil-2c4_agent2_waypoint4 ?dd - dummy)
	(dummy-left-qhw_observe-soil-2c4_agent2_waypoint4 ?dd - dummy)
	(pre-1t6_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-9fm_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-qhw_observe-soil-2c4_agent2_waypoint4 ?dd - dummy)
)

(:action navigate
	:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
	:precondition (and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z) )
	:effect (and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)) )
)
(:action act-4s6_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-4s6_observe-rock_agent1_waypoint4 dd)(immediate-dummy-4s6_observe-rock_agent1_waypoint4 dd)(at agent0 waypoint4)(can-sample-rock agent0))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-4s6_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-4s6_observe-rock_agent1_waypoint4 dd)(not (dummy-left-4s6_observe-rock_agent1_waypoint4 dd))(not (dummy-right-4s6_observe-rock_agent1_waypoint4 dd)))
	:effect (and (immediate-dummy-4s6_observe-rock_agent1_waypoint4 dd) )
)
(:action dummy-left-4s6_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-4s6_observe-rock_agent1_waypoint4 dd)(at agent0 waypoint4)(can-sample-rock agent0)(not (at-rock-sample waypoint4))(immediate-dummy-4s6_observe-rock_agent1_waypoint4 dd))
	:effect (and (not (init-4s6_observe-rock_agent1_waypoint4 dd))(not (immediate-dummy-4s6_observe-rock_agent1_waypoint4 dd))(dummy-left-4s6_observe-rock_agent1_waypoint4 dd))
)
(:action dummy-right-4s6_observe-rock_agent1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-4s6_observe-rock_agent1_waypoint4 dd)(at agent0 waypoint4)(can-sample-rock agent0)(at-rock-sample waypoint4)(immediate-dummy-4s6_observe-rock_agent1_waypoint4 dd))
	:effect (and (not (init-4s6_observe-rock_agent1_waypoint4 dd))(not (immediate-dummy-4s6_observe-rock_agent1_waypoint4 dd))(dummy-right-4s6_observe-rock_agent1_waypoint4 dd))
)
(:action act-tjn_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4s6_observe-rock_agent1_waypoint4 dd)(immediate-dummy-tjn_observe-soil_agent0_waypoint5 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-tjn_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4s6_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0)(not (dummy-left-tjn_observe-soil_agent0_waypoint5 dd))(not (dummy-right-tjn_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-tjn_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-tjn_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4s6_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0)(not (at-soil-sample waypoint5))(immediate-dummy-tjn_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-tjn_observe-soil_agent0_waypoint5 dd))(dummy-left-tjn_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-tjn_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-4s6_observe-rock_agent1_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0)(at-soil-sample waypoint5)(immediate-dummy-tjn_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-tjn_observe-soil_agent0_waypoint5 dd))(dummy-right-tjn_observe-soil_agent0_waypoint5 dd))
)
(:action act-vug_sample-rock_agent3_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-tjn_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(not (at-rock-sample waypoint4))(at agent0 waypoint5))
	:effect (and (pre-vug_sample-rock_agent3_agent0_a1store_waypoint5 dd))
)
(:action goal-achieve-vug_sample-rock_agent3_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-vug_sample-rock_agent3_agent0_a1store_waypoint5 dd))
	:effect (and (done-goal dd)(not (pre-vug_sample-rock_agent3_agent0_a1store_waypoint5 dd)))
)
(:action act-lsp_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-tjn_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint5))
	:effect (and (pre-lsp_sample-soil_agent0_a0store_waypoint5 dd))
)
(:action act-q65_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-lsp_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(available agent0))
	:effect (and (pre-q65_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-lsp_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-q65_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-q65_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-q65_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-qhw_observe-soil-2c4_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4s6_observe-rock_agent1_waypoint4 dd)(immediate-dummy-qhw_observe-soil-2c4_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint4)(can-sample-soil agent0))
	:observe (at-soil-sample waypoint4)
)
(:action act-dummy-qhw_observe-soil-2c4_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4s6_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint4)(can-sample-soil agent0)(not (dummy-left-qhw_observe-soil-2c4_agent2_waypoint4 dd))(not (dummy-right-qhw_observe-soil-2c4_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-qhw_observe-soil-2c4_agent2_waypoint4 dd) )
)
(:action dummy-left-qhw_observe-soil-2c4_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4s6_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint4)(can-sample-soil agent0)(not (at-soil-sample waypoint4))(immediate-dummy-qhw_observe-soil-2c4_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-qhw_observe-soil-2c4_agent2_waypoint4 dd))(dummy-left-qhw_observe-soil-2c4_agent2_waypoint4 dd))
)
(:action dummy-right-qhw_observe-soil-2c4_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-4s6_observe-rock_agent1_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint4)(can-sample-soil agent0)(at-soil-sample waypoint4)(immediate-dummy-qhw_observe-soil-2c4_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-qhw_observe-soil-2c4_agent2_waypoint4 dd))(dummy-right-qhw_observe-soil-2c4_agent2_waypoint4 dd))
)
(:action act-1t6_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-qhw_observe-soil-2c4_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint5))
	:effect (and (pre-1t6_sample-soil_agent0_a0store_waypoint5 dd))
)
(:action act-9fm_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-1t6_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(available agent0))
	:effect (and (pre-9fm_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-1t6_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-9fm_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-9fm_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-9fm_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-qhw_observe-soil-2c4_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qhw_observe-soil-2c4_agent2_waypoint4 dd)(at-rock-sample waypoint4))
	:effect (and (done-goal dd)(not (dummy-right-qhw_observe-soil-2c4_agent2_waypoint4 dd)))
)
)