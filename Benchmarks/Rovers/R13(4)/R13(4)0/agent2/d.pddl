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
)

(:action navigate
	:parameters ( ?x - agent ?y - waypoint ?z - waypoint ?c - camera ?p - objective)
	:precondition (and (can-traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z) )
	:effect (and (not (at ?x ?y)) (at ?x ?z) (not (calibrated ?c ?x ?z ?p)) )
)
(:action calibrate
	:parameters ( ?r - agent ?i - camera ?t - objective ?w - waypoint)
	:precondition (and (equipped-for-imaging ?r) (calibration-target ?i ?t) (at ?r ?w) (visible-from ?t ?w) (on-board ?i ?r) )
	:effect (and (calibrated ?i ?r ?w ?t) )
)
(:action drop
	:parameters ( ?x - agent ?y - store)
	:precondition (and (store-of ?y ?x) )
	:effect (and (not (full ?y ?x)) (empty ?y ?x) )
)
(:action act-krg_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-krg_observe-soil_agent0_waypoint5 dd)(immediate-dummy-krg_observe-soil_agent0_waypoint5 dd)(at agent2 waypoint5)(can-sample-soil agent2))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-krg_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-krg_observe-soil_agent0_waypoint5 dd)(not (dummy-left-krg_observe-soil_agent0_waypoint5 dd))(not (dummy-right-krg_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-krg_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-krg_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-krg_observe-soil_agent0_waypoint5 dd)(at agent2 waypoint5)(can-sample-soil agent2)(not (at-soil-sample waypoint5))(immediate-dummy-krg_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (init-krg_observe-soil_agent0_waypoint5 dd))(not (immediate-dummy-krg_observe-soil_agent0_waypoint5 dd))(dummy-left-krg_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-krg_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-krg_observe-soil_agent0_waypoint5 dd)(at agent2 waypoint5)(can-sample-soil agent2)(at-soil-sample waypoint5)(immediate-dummy-krg_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (init-krg_observe-soil_agent0_waypoint5 dd))(not (immediate-dummy-krg_observe-soil_agent0_waypoint5 dd))(dummy-right-krg_observe-soil_agent0_waypoint5 dd))
)
(:action act-6or_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-krg_observe-soil_agent0_waypoint5 dd)(immediate-dummy-6or_observe-rock_agent2_waypoint4 dd)(not (at-soil-sample waypoint5))(at agent2 waypoint4)(can-sample-rock agent2))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-6or_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-krg_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at agent2 waypoint4)(can-sample-rock agent2)(not (dummy-left-6or_observe-rock_agent2_waypoint4 dd))(not (dummy-right-6or_observe-rock_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-6or_observe-rock_agent2_waypoint4 dd) )
)
(:action dummy-left-6or_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-krg_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at agent2 waypoint4)(can-sample-rock agent2)(not (at-rock-sample waypoint4))(immediate-dummy-6or_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-6or_observe-rock_agent2_waypoint4 dd))(dummy-left-6or_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-6or_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-krg_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at agent2 waypoint4)(can-sample-rock agent2)(at-rock-sample waypoint4)(immediate-dummy-6or_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-6or_observe-rock_agent2_waypoint4 dd))(dummy-right-6or_observe-rock_agent2_waypoint4 dd))
)
(:action act-xso_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-6or_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(not (at-soil-sample waypoint5))(at agent2 waypoint5)(equipped-for-rock-analysis agent2))
	:effect (and (pre-xso_sample-rock_agent0_agent2_a0store_waypoint5 dd))
)
(:action goal-achieve-xso_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-xso_sample-rock_agent0_agent2_a0store_waypoint5 dd))
	:effect (and (done-goal dd)(not (pre-xso_sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)
(:action act-75n_sample-rock_agent2_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-6or_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent2 waypoint4)(equipped-for-rock-analysis agent2)(store-of a1store agent2)(empty a1store agent2))
	:effect (and (pre-75n_sample-rock_agent2_agent3_a1store_waypoint4 dd)(not (empty a1store agent2))(full a1store agent2)(have-rock-analysis agent2))
)
(:action act-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-75n_sample-rock_agent2_agent3_a1store_waypoint4 dd)(at agent2 waypoint1)(have-rock-analysis agent2)(available agent2))
	:effect (and (pre-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)(not (pre-75n_sample-rock_agent2_agent3_a1store_waypoint4 dd))(communicated-rock-data ))
)
(:action goal-achieve-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-hnl_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action act-t7r_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-krg_observe-soil_agent0_waypoint5 dd)(immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent2 waypoint5)(can-sample-rock agent2))
	:observe (at-rock-sample waypoint5)
)
(:action act-dummy-t7r_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-krg_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent2 waypoint5)(can-sample-rock agent2)(not (dummy-left-t7r_observe-rock_agent0_waypoint5 dd))(not (dummy-right-t7r_observe-rock_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd) )
)
(:action dummy-left-t7r_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-krg_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent2 waypoint5)(can-sample-rock agent2)(not (at-rock-sample waypoint5))(immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd))(dummy-left-t7r_observe-rock_agent0_waypoint5 dd))
)
(:action dummy-right-t7r_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-krg_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent2 waypoint5)(can-sample-rock agent2)(at-rock-sample waypoint5)(immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-t7r_observe-rock_agent0_waypoint5 dd))(dummy-right-t7r_observe-rock_agent0_waypoint5 dd))
)
(:action act-23a_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-t7r_observe-rock_agent0_waypoint5 dd)(immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent2 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-23a_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-t7r_observe-rock_agent0_waypoint5 dd)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent2 waypoint4)(not (dummy-left-23a_observe-vis_agent0_objective1_waypoint4 dd))(not (dummy-right-23a_observe-vis_agent0_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd) )
)
(:action dummy-left-23a_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-t7r_observe-rock_agent0_waypoint5 dd)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent2 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd))(dummy-left-23a_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-23a_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-t7r_observe-rock_agent0_waypoint5 dd)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent2 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-23a_observe-vis_agent0_objective1_waypoint4 dd))(dummy-right-23a_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-hm0_sample-rock_agent0_agent2_a0store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-23a_observe-vis_agent0_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-rock-sample waypoint5))(at-soil-sample waypoint5)(at agent2 waypoint4)(equipped-for-rock-analysis agent2))
	:effect (and (pre-hm0_sample-rock_agent0_agent2_a0store_waypoint4 dd))
)
(:action goal-achieve-hm0_sample-rock_agent0_agent2_a0store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-hm0_sample-rock_agent0_agent2_a0store_waypoint4 dd))
	:effect (and (done-goal dd)(not (pre-hm0_sample-rock_agent0_agent2_a0store_waypoint4 dd)))
)
(:action goal-achieve-right-23a_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-23a_observe-vis_agent0_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(not (at-rock-sample waypoint5))(at-soil-sample waypoint5))
	:effect (and (done-goal dd)(not (dummy-right-23a_observe-vis_agent0_objective1_waypoint4 dd)))
)
(:action goal-achieve-right-t7r_observe-rock_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-t7r_observe-rock_agent0_waypoint5 dd)(at-rock-sample waypoint5)(at-soil-sample waypoint5))
	:effect (and (done-goal dd)(not (dummy-right-t7r_observe-rock_agent0_waypoint5 dd)))
)
)