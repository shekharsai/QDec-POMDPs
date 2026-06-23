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
	(p-dummy-agnt)
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
	(init-3sa_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-3sa_observe-rock_agent2_waypoint4 ?dd - dummy)
	(dummy-left-3sa_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-ejf_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-ejf_observe-soil_agent0_waypoint5 ?dd - dummy)
	(pre-knx_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
	(pre-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-ejf_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(dummy-left-hah_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(pre-bcb_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
	(pre-izo_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-hah_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(pre-8dn_take-image_agent0_waypoint4_objective1_camera0_high-res ?dd - dummy)
	(pre-lgq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
	(pre-eip_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
	(pre-qvw_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-3sa_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-uny_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-uny_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(dummy-left-c2p_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(dummy-right-c2p_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(pre-0ty_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
	(pre-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-ilh_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(dummy-right-uny_observe-soil_agent0_waypoint5 ?dd - dummy)
	(pre-d1r_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
)

(:action dummyPrivateAction 
	:effect (and (p-dummy-agnt))
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
(:action act-3sa_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-3sa_observe-rock_agent2_waypoint4 dd)(immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd)(at agent0 waypoint4)(can-sample-rock agent0))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-3sa_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-3sa_observe-rock_agent2_waypoint4 dd)(not (dummy-left-3sa_observe-rock_agent2_waypoint4 dd))(not (dummy-right-3sa_observe-rock_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd) )
)
(:action dummy-left-3sa_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-3sa_observe-rock_agent2_waypoint4 dd)(at agent0 waypoint4)(can-sample-rock agent0)(not (at-rock-sample waypoint4))(immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (init-3sa_observe-rock_agent2_waypoint4 dd))(not (immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd))(dummy-left-3sa_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-3sa_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (init-3sa_observe-rock_agent2_waypoint4 dd)(at agent0 waypoint4)(can-sample-rock agent0)(at-rock-sample waypoint4)(immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (init-3sa_observe-rock_agent2_waypoint4 dd))(not (immediate-dummy-3sa_observe-rock_agent2_waypoint4 dd))(dummy-right-3sa_observe-rock_agent2_waypoint4 dd))
)
(:action act-ejf_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3sa_observe-rock_agent2_waypoint4 dd)(immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-ejf_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3sa_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0)(not (dummy-left-ejf_observe-soil_agent0_waypoint5 dd))(not (dummy-right-ejf_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-ejf_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3sa_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0)(not (at-soil-sample waypoint5))(immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd))(dummy-left-ejf_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-ejf_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-3sa_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(can-sample-soil agent0)(at-soil-sample waypoint5)(immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-ejf_observe-soil_agent0_waypoint5 dd))(dummy-right-ejf_observe-soil_agent0_waypoint5 dd))
)
(:action act-knx_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ejf_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(not (at-rock-sample waypoint4))(at agent0 waypoint5)(equipped-for-rock-analysis agent0)(store-of a0store agent0)(empty a0store agent0))
	:effect (and (pre-knx_sample-rock_agent0_agent2_a0store_waypoint5 dd)(not (empty a0store agent0))(full a0store agent0)(have-rock-analysis agent0))
)
(:action act-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-knx_sample-rock_agent0_agent2_a0store_waypoint5 dd)(at agent0 waypoint1)(have-rock-analysis agent0)(available agent0))
	:effect (and (pre-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-knx_sample-rock_agent0_agent2_a0store_waypoint5 dd))(communicated-rock-data ))
)
(:action goal-achieve-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-so0_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-hah_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ejf_observe-soil_agent0_waypoint5 dd)(immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-hah_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ejf_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint4)(not (dummy-left-hah_observe-vis_agent0_objective1_waypoint4 dd))(not (dummy-right-hah_observe-vis_agent0_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd) )
)
(:action dummy-left-hah_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ejf_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd))(dummy-left-hah_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-hah_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ejf_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-hah_observe-vis_agent0_objective1_waypoint4 dd))(dummy-right-hah_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-bcb_sample-rock_agent2_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-hah_observe-vis_agent0_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(at agent0 waypoint5)(equipped-for-rock-analysis agent0))
	:effect (and (pre-bcb_sample-rock_agent2_agent0_a1store_waypoint5 dd))
)
(:action act-izo_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-bcb_sample-rock_agent2_agent0_a1store_waypoint5 dd)(at agent0 waypoint5)(equipped-for-soil-analysis agent0)(store-of a0store agent0)(empty a0store agent0)(not (full a0store agent0)))
	:effect (and (pre-izo_sample-soil_agent0_a0store_waypoint5 dd)(not (pre-bcb_sample-rock_agent2_agent0_a1store_waypoint5 dd))(not (empty a0store agent0))(full a0store agent0)(have-soil-analysis agent0))
)
(:action act-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-izo_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(have-soil-analysis agent0)(available agent0))
	:effect (and (pre-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-izo_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-bay_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-8dn_take-image_agent0_waypoint4_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-hah_observe-vis_agent0_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-soil-sample waypoint5)(not (at-rock-sample waypoint4))(calibrated camera0 agent0 waypoint4 objective1)(on-board camera0 agent0)(equipped-for-imaging agent0)(at agent0 waypoint4))
	:effect (and (pre-8dn_take-image_agent0_waypoint4_objective1_camera0_high-res dd)(have-image agent0 objective1 high-res)(not (calibrated camera0 agent0 waypoint4 objective1)))
)
(:action act-lgq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-8dn_take-image_agent0_waypoint4_objective1_camera0_high-res dd)(at agent0 waypoint1)(have-image agent0 objective1 high-res))
	:effect (and (pre-lgq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)(not (pre-8dn_take-image_agent0_waypoint4_objective1_camera0_high-res dd)))
)
(:action act-eip_sample-rock_agent2_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-lgq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)(at agent0 waypoint5)(equipped-for-rock-analysis agent0))
	:effect (and (pre-eip_sample-rock_agent2_agent0_a1store_waypoint5 dd)(not (pre-lgq_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action act-qvw_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-eip_sample-rock_agent2_agent0_a1store_waypoint5 dd)(at agent0 waypoint5)(equipped-for-soil-analysis agent0)(store-of a0store agent0)(empty a0store agent0)(not (full a0store agent0)))
	:effect (and (pre-qvw_sample-soil_agent0_a0store_waypoint5 dd)(not (pre-eip_sample-rock_agent2_agent0_a1store_waypoint5 dd))(not (empty a0store agent0))(full a0store agent0)(have-soil-analysis agent0))
)
(:action act-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-qvw_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(have-soil-analysis agent0)(available agent0))
	:effect (and (pre-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-qvw_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-69n_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-uny_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3sa_observe-rock_agent2_waypoint4 dd)(immediate-dummy-uny_observe-soil_agent0_waypoint5 dd)(at-rock-sample waypoint4)(at agent0 waypoint5)(can-sample-soil agent0))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-uny_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3sa_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint5)(can-sample-soil agent0)(not (dummy-left-uny_observe-soil_agent0_waypoint5 dd))(not (dummy-right-uny_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-uny_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-uny_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3sa_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint5)(can-sample-soil agent0)(not (at-soil-sample waypoint5))(immediate-dummy-uny_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-uny_observe-soil_agent0_waypoint5 dd))(dummy-left-uny_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-uny_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-3sa_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at agent0 waypoint5)(can-sample-soil agent0)(at-soil-sample waypoint5)(immediate-dummy-uny_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (immediate-dummy-uny_observe-soil_agent0_waypoint5 dd))(dummy-right-uny_observe-soil_agent0_waypoint5 dd))
)
(:action act-ilh_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uny_observe-soil_agent0_waypoint5 dd)(immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent0 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-ilh_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uny_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent0 waypoint4)(not (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd))(not (dummy-right-ilh_observe-vis_agent3_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd) )
)
(:action dummy-left-ilh_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uny_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent0 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd))(dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-ilh_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-uny_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent0 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-ilh_observe-vis_agent3_objective1_waypoint4 dd))(dummy-right-ilh_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-c2p_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd)(immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent0 waypoint5))
	:observe (visible-from objective1 waypoint5)
)
(:action act-dummy-c2p_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent0 waypoint5)(not (dummy-left-c2p_observe-vis_agent0_objective1_waypoint5 dd))(not (dummy-right-c2p_observe-vis_agent0_objective1_waypoint5 dd)))
	:effect (and (immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd) )
)
(:action dummy-left-c2p_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent0 waypoint5)(not (visible-from objective1 waypoint5))(immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd))(dummy-left-c2p_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-right-c2p_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ilh_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(at agent0 waypoint5)(visible-from objective1 waypoint5)(immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-c2p_observe-vis_agent0_objective1_waypoint5 dd))(dummy-right-c2p_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action goal-achieve-left-c2p_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-c2p_observe-vis_agent0_objective1_waypoint5 dd)(not (visible-from objective1 waypoint5))(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint5))(at-rock-sample waypoint4))
	:effect (and (done-goal dd)(not (dummy-left-c2p_observe-vis_agent0_objective1_waypoint5 dd)))
)
(:action act-0ty_take-image_agent0_waypoint5_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-c2p_observe-vis_agent0_objective1_waypoint5 dd)(visible-from objective1 waypoint5)(not (visible-from objective1 waypoint4))(not (at-soil-sample waypoint5))(at-rock-sample waypoint4)(calibrated camera0 agent0 waypoint5 objective1)(on-board camera0 agent0)(equipped-for-imaging agent0)(at agent0 waypoint5))
	:effect (and (pre-0ty_take-image_agent0_waypoint5_objective1_camera0_high-res dd)(have-image agent0 objective1 high-res)(not (calibrated camera0 agent0 waypoint5 objective1)))
)
(:action act-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-0ty_take-image_agent0_waypoint5_objective1_camera0_high-res dd)(at agent0 waypoint1)(have-image agent0 objective1 high-res))
	:effect (and (pre-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)(not (pre-0ty_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)
(:action goal-achieve-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-qsj_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-ilh_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ilh_observe-vis_agent3_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(not (at-soil-sample waypoint5))(at-rock-sample waypoint4))
	:effect (and (done-goal dd)(not (dummy-right-ilh_observe-vis_agent3_objective1_waypoint4 dd)))
)
(:action act-d1r_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-uny_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at-rock-sample waypoint4)(at agent0 waypoint5)(equipped-for-soil-analysis agent0)(store-of a0store agent0)(empty a0store agent0)(not (full a0store agent0)))
	:effect (and (pre-d1r_sample-soil_agent0_a0store_waypoint5 dd)(not (empty a0store agent0))(full a0store agent0)(have-soil-analysis agent0))
)
(:action act-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-d1r_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(have-soil-analysis agent0)(available agent0))
	:effect (and (pre-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-d1r_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-mgf_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
)