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
	(init-wgg_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-wgg_observe-rock_agent2_waypoint4 ?dd - dummy)
	(dummy-left-wgg_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-mtb_observe-soil_agent3_waypoint4 ?dd - dummy)
	(dummy-left-mtb_observe-soil_agent3_waypoint4 ?dd - dummy)
	(immediate-dummy-jgd_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(dummy-left-jgd_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(immediate-dummy-pcx_observe-vis_agent3_objective1_waypoint5 ?dd - dummy)
	(dummy-left-pcx_observe-vis_agent3_objective1_waypoint5 ?dd - dummy)
	(pre-p08_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-pcx_observe-vis_agent3_objective1_waypoint5 ?dd - dummy)
	(dummy-right-jgd_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(pre-1q8_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
	(dummy-right-mtb_observe-soil_agent3_waypoint4 ?dd - dummy)
	(pre-ln0_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
	(dummy-right-wgg_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-bz6_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(dummy-left-bz6_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(immediate-dummy-745_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-745_observe-soil_agent0_waypoint5 ?dd - dummy)
	(pre-oal_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-gar_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-745_observe-soil_agent0_waypoint5 ?dd - dummy)
	(pre-0wy_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
	(dummy-right-bz6_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(immediate-dummy-glu_observe-soil_agent3_waypoint4 ?dd - dummy)
	(dummy-left-glu_observe-soil_agent3_waypoint4 ?dd - dummy)
	(pre-85a_sample-rock_agent3_agent2_a1store_waypoint4 ?dd - dummy)
	(dummy-right-glu_observe-soil_agent3_waypoint4 ?dd - dummy)
	(pre-w2y_sample-rock_agent2_agent3_a1store_waypoint4 ?dd - dummy)
	(pre-rlw_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd ?dd - dummy)
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
(:action act-wgg_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-wgg_observe-rock_agent2_waypoint4 dd)(immediate-dummy-wgg_observe-rock_agent2_waypoint4 dd)(at agent2 waypoint4)(can-sample-rock agent2))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-wgg_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-wgg_observe-rock_agent2_waypoint4 dd)(not (dummy-left-wgg_observe-rock_agent2_waypoint4 dd))(not (dummy-right-wgg_observe-rock_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-wgg_observe-rock_agent2_waypoint4 dd) )
)
(:action dummy-left-wgg_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-wgg_observe-rock_agent2_waypoint4 dd)(at agent2 waypoint4)(can-sample-rock agent2)(not (at-rock-sample waypoint4))(immediate-dummy-wgg_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (init-wgg_observe-rock_agent2_waypoint4 dd))(not (immediate-dummy-wgg_observe-rock_agent2_waypoint4 dd))(dummy-left-wgg_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-wgg_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-wgg_observe-rock_agent2_waypoint4 dd)(at agent2 waypoint4)(can-sample-rock agent2)(at-rock-sample waypoint4)(immediate-dummy-wgg_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (init-wgg_observe-rock_agent2_waypoint4 dd))(not (immediate-dummy-wgg_observe-rock_agent2_waypoint4 dd))(dummy-right-wgg_observe-rock_agent2_waypoint4 dd))
)
(:action act-mtb_observe-soil_agent3_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wgg_observe-rock_agent2_waypoint4 dd)(immediate-dummy-mtb_observe-soil_agent3_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent2 waypoint4)(can-sample-soil agent2))
	:observe (at-soil-sample waypoint4)
)
(:action act-dummy-mtb_observe-soil_agent3_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wgg_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent2 waypoint4)(can-sample-soil agent2)(not (dummy-left-mtb_observe-soil_agent3_waypoint4 dd))(not (dummy-right-mtb_observe-soil_agent3_waypoint4 dd)))
	:effect (and (immediate-dummy-mtb_observe-soil_agent3_waypoint4 dd) )
)
(:action dummy-left-mtb_observe-soil_agent3_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wgg_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent2 waypoint4)(can-sample-soil agent2)(not (at-soil-sample waypoint4))(immediate-dummy-mtb_observe-soil_agent3_waypoint4 dd))
	:effect (and (not (immediate-dummy-mtb_observe-soil_agent3_waypoint4 dd))(dummy-left-mtb_observe-soil_agent3_waypoint4 dd))
)
(:action dummy-right-mtb_observe-soil_agent3_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-wgg_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent2 waypoint4)(can-sample-soil agent2)(at-soil-sample waypoint4)(immediate-dummy-mtb_observe-soil_agent3_waypoint4 dd))
	:effect (and (not (immediate-dummy-mtb_observe-soil_agent3_waypoint4 dd))(dummy-right-mtb_observe-soil_agent3_waypoint4 dd))
)
(:action act-jgd_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mtb_observe-soil_agent3_waypoint4 dd)(immediate-dummy-jgd_observe-vis_agent3_objective1_waypoint4 dd)(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4))(at agent2 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-jgd_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mtb_observe-soil_agent3_waypoint4 dd)(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4))(at agent2 waypoint4)(not (dummy-left-jgd_observe-vis_agent3_objective1_waypoint4 dd))(not (dummy-right-jgd_observe-vis_agent3_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-jgd_observe-vis_agent3_objective1_waypoint4 dd) )
)
(:action dummy-left-jgd_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mtb_observe-soil_agent3_waypoint4 dd)(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4))(at agent2 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-jgd_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-jgd_observe-vis_agent3_objective1_waypoint4 dd))(dummy-left-jgd_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-jgd_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-mtb_observe-soil_agent3_waypoint4 dd)(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4))(at agent2 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-jgd_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-jgd_observe-vis_agent3_objective1_waypoint4 dd))(dummy-right-jgd_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-pcx_observe-vis_agent3_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jgd_observe-vis_agent3_objective1_waypoint4 dd)(immediate-dummy-pcx_observe-vis_agent3_objective1_waypoint5 dd)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4))(at agent2 waypoint5))
	:observe (visible-from objective1 waypoint5)
)
(:action act-dummy-pcx_observe-vis_agent3_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jgd_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4))(at agent2 waypoint5)(not (dummy-left-pcx_observe-vis_agent3_objective1_waypoint5 dd))(not (dummy-right-pcx_observe-vis_agent3_objective1_waypoint5 dd)))
	:effect (and (immediate-dummy-pcx_observe-vis_agent3_objective1_waypoint5 dd) )
)
(:action dummy-left-pcx_observe-vis_agent3_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jgd_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4))(at agent2 waypoint5)(not (visible-from objective1 waypoint5))(immediate-dummy-pcx_observe-vis_agent3_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-pcx_observe-vis_agent3_objective1_waypoint5 dd))(dummy-left-pcx_observe-vis_agent3_objective1_waypoint5 dd))
)
(:action dummy-right-pcx_observe-vis_agent3_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-jgd_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4))(at agent2 waypoint5)(visible-from objective1 waypoint5)(immediate-dummy-pcx_observe-vis_agent3_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-pcx_observe-vis_agent3_objective1_waypoint5 dd))(dummy-right-pcx_observe-vis_agent3_objective1_waypoint5 dd))
)
(:action act-p08_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-pcx_observe-vis_agent3_objective1_waypoint5 dd)(not (visible-from objective1 waypoint5))(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4))(at agent2 waypoint5)(equipped-for-rock-analysis agent2))
	:effect (and (pre-p08_sample-rock_agent0_agent2_a0store_waypoint5 dd))
)
(:action goal-achieve-p08_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-p08_sample-rock_agent0_agent2_a0store_waypoint5 dd))
	:effect (and (done-goal dd)(not (pre-p08_sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)
(:action goal-achieve-right-pcx_observe-vis_agent3_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-pcx_observe-vis_agent3_objective1_waypoint5 dd)(visible-from objective1 waypoint5)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4)))
	:effect (and (done-goal dd)(not (dummy-right-pcx_observe-vis_agent3_objective1_waypoint5 dd)))
)
(:action act-1q8_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-jgd_observe-vis_agent3_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(not (at-soil-sample waypoint4))(not (at-rock-sample waypoint4))(at agent2 waypoint5)(equipped-for-rock-analysis agent2))
	:effect (and (pre-1q8_sample-rock_agent0_agent2_a0store_waypoint5 dd))
)
(:action goal-achieve-1q8_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-1q8_sample-rock_agent0_agent2_a0store_waypoint5 dd))
	:effect (and (done-goal dd)(not (pre-1q8_sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)
(:action act-ln0_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-mtb_observe-soil_agent3_waypoint4 dd)(at-soil-sample waypoint4)(not (at-rock-sample waypoint4))(at agent2 waypoint5)(equipped-for-rock-analysis agent2))
	:effect (and (pre-ln0_sample-rock_agent0_agent2_a0store_waypoint5 dd))
)
(:action goal-achieve-ln0_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-ln0_sample-rock_agent0_agent2_a0store_waypoint5 dd))
	:effect (and (done-goal dd)(not (pre-ln0_sample-rock_agent0_agent2_a0store_waypoint5 dd)))
)
(:action act-bz6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wgg_observe-rock_agent2_waypoint4 dd)(immediate-dummy-bz6_observe-vis_agent3_objective1_waypoint4 dd)(at-rock-sample waypoint4)(at agent2 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-bz6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wgg_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent2 waypoint4)(not (dummy-left-bz6_observe-vis_agent3_objective1_waypoint4 dd))(not (dummy-right-bz6_observe-vis_agent3_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-bz6_observe-vis_agent3_objective1_waypoint4 dd) )
)
(:action dummy-left-bz6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wgg_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent2 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-bz6_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-bz6_observe-vis_agent3_objective1_waypoint4 dd))(dummy-left-bz6_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-bz6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-wgg_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent2 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-bz6_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-bz6_observe-vis_agent3_objective1_waypoint4 dd))(dummy-right-bz6_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-745_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bz6_observe-vis_agent3_objective1_waypoint4 dd)(immediate-dummy-745_observe-soil_agent0_waypoint5 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent2 waypoint5)(can-sample-soil agent2))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-745_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bz6_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent2 waypoint5)(can-sample-soil agent2)(not (dummy-left-745_observe-soil_agent0_waypoint5 dd))(not (dummy-right-745_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-745_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-745_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bz6_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent2 waypoint5)(can-sample-soil agent2)(not (at-soil-sample waypoint5))(immediate-dummy-745_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-745_observe-soil_agent0_waypoint5 dd))(dummy-left-745_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-745_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-bz6_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent2 waypoint5)(can-sample-soil agent2)(at-soil-sample waypoint5)(immediate-dummy-745_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-745_observe-soil_agent0_waypoint5 dd))(dummy-right-745_observe-soil_agent0_waypoint5 dd))
)
(:action act-oal_sample-rock_agent2_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-745_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent2 waypoint4)(equipped-for-rock-analysis agent2)(store-of a1store agent2)(empty a1store agent2))
	:effect (and (pre-oal_sample-rock_agent2_agent3_a1store_waypoint4 dd)(not (empty a1store agent2))(full a1store agent2)(have-rock-analysis agent2))
)
(:action act-gar_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-oal_sample-rock_agent2_agent3_a1store_waypoint4 dd)(at agent2 waypoint1)(have-rock-analysis agent2)(available agent2))
	:effect (and (pre-gar_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)(not (pre-oal_sample-rock_agent2_agent3_a1store_waypoint4 dd))(communicated-rock-data ))
)
(:action goal-achieve-gar_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-gar_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-gar_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
(:action act-0wy_sample-rock_agent3_agent2_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-745_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(at agent2 waypoint4)(equipped-for-rock-analysis agent2))
	:effect (and (pre-0wy_sample-rock_agent3_agent2_a1store_waypoint4 dd))
)
(:action goal-achieve-0wy_sample-rock_agent3_agent2_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-0wy_sample-rock_agent3_agent2_a1store_waypoint4 dd))
	:effect (and (done-goal dd)(not (pre-0wy_sample-rock_agent3_agent2_a1store_waypoint4 dd)))
)
(:action act-glu_observe-soil_agent3_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bz6_observe-vis_agent3_objective1_waypoint4 dd)(immediate-dummy-glu_observe-soil_agent3_waypoint4 dd)(visible-from objective1 waypoint4)(at-rock-sample waypoint4)(at agent2 waypoint4)(can-sample-soil agent2))
	:observe (at-soil-sample waypoint4)
)
(:action act-dummy-glu_observe-soil_agent3_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bz6_observe-vis_agent3_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-rock-sample waypoint4)(at agent2 waypoint4)(can-sample-soil agent2)(not (dummy-left-glu_observe-soil_agent3_waypoint4 dd))(not (dummy-right-glu_observe-soil_agent3_waypoint4 dd)))
	:effect (and (immediate-dummy-glu_observe-soil_agent3_waypoint4 dd) )
)
(:action dummy-left-glu_observe-soil_agent3_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bz6_observe-vis_agent3_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-rock-sample waypoint4)(at agent2 waypoint4)(can-sample-soil agent2)(not (at-soil-sample waypoint4))(immediate-dummy-glu_observe-soil_agent3_waypoint4 dd))
	:effect (and (not (immediate-dummy-glu_observe-soil_agent3_waypoint4 dd))(dummy-left-glu_observe-soil_agent3_waypoint4 dd))
)
(:action dummy-right-glu_observe-soil_agent3_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-bz6_observe-vis_agent3_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-rock-sample waypoint4)(at agent2 waypoint4)(can-sample-soil agent2)(at-soil-sample waypoint4)(immediate-dummy-glu_observe-soil_agent3_waypoint4 dd))
	:effect (and (not (immediate-dummy-glu_observe-soil_agent3_waypoint4 dd))(dummy-right-glu_observe-soil_agent3_waypoint4 dd))
)
(:action act-85a_sample-rock_agent3_agent2_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-glu_observe-soil_agent3_waypoint4 dd)(not (at-soil-sample waypoint4))(visible-from objective1 waypoint4)(at-rock-sample waypoint4)(at agent2 waypoint4)(equipped-for-rock-analysis agent2))
	:effect (and (pre-85a_sample-rock_agent3_agent2_a1store_waypoint4 dd))
)
(:action goal-achieve-85a_sample-rock_agent3_agent2_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (pre-85a_sample-rock_agent3_agent2_a1store_waypoint4 dd))
	:effect (and (done-goal dd)(not (pre-85a_sample-rock_agent3_agent2_a1store_waypoint4 dd)))
)
(:action act-w2y_sample-rock_agent2_agent3_a1store_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-glu_observe-soil_agent3_waypoint4 dd)(at-soil-sample waypoint4)(visible-from objective1 waypoint4)(at-rock-sample waypoint4)(at agent2 waypoint4)(equipped-for-rock-analysis agent2)(store-of a1store agent2)(empty a1store agent2))
	:effect (and (pre-w2y_sample-rock_agent2_agent3_a1store_waypoint4 dd)(not (empty a1store agent2))(full a1store agent2)(have-rock-analysis agent2))
)
(:action act-rlw_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-w2y_sample-rock_agent2_agent3_a1store_waypoint4 dd)(at agent2 waypoint1)(have-rock-analysis agent2)(available agent2))
	:effect (and (pre-rlw_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)(not (pre-w2y_sample-rock_agent2_agent3_a1store_waypoint4 dd))(communicated-rock-data ))
)
(:action goal-achieve-rlw_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-rlw_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-rlw_communicate-rock-data_agent2_general_waypoint1_waypoint0_dd dd)))
)
)