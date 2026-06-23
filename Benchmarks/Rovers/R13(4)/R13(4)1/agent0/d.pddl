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
	(init-ghv_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-ghv_observe-soil_agent0_waypoint5 ?dd - dummy)
	(dummy-left-ghv_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-8t9_observe-rock_agent2_waypoint4 ?dd - dummy)
	(dummy-left-8t9_observe-rock_agent2_waypoint4 ?dd - dummy)
	(pre-tk8_sample-rock_agent0_agent2_a0store_waypoint5 ?dd - dummy)
	(pre-exw_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(done-goal ?dd - dummy)
	(dummy-right-8t9_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-tg6_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(dummy-left-tg6_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(immediate-dummy-g97_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(dummy-left-g97_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(dummy-right-g97_observe-vis_agent0_objective1_waypoint5 ?dd - dummy)
	(pre-xdq_take-image_agent0_waypoint5_objective1_camera0_high-res ?dd - dummy)
	(pre-px7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-tg6_observe-vis_agent3_objective1_waypoint4 ?dd - dummy)
	(dummy-right-ghv_observe-soil_agent0_waypoint5 ?dd - dummy)
	(immediate-dummy-qfy_observe-rock_agent2_waypoint4 ?dd - dummy)
	(dummy-left-qfy_observe-rock_agent2_waypoint4 ?dd - dummy)
	(immediate-dummy-doe_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(dummy-left-doe_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(pre-l5h_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
	(pre-kqp_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-kqr_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-doe_observe-vis_agent0_objective1_waypoint4 ?dd - dummy)
	(pre-7p3_take-image_agent0_waypoint4_objective1_camera0_high-res ?dd - dummy)
	(pre-fzx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd ?dd - dummy)
	(pre-k4o_sample-rock_agent2_agent0_a1store_waypoint5 ?dd - dummy)
	(pre-jp5_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-77p_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
	(dummy-right-qfy_observe-rock_agent2_waypoint4 ?dd - dummy)
	(pre-f0u_sample-soil_agent0_a0store_waypoint5 ?dd - dummy)
	(pre-yso_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd ?dd - dummy)
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
(:action act-ghv_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-ghv_observe-soil_agent0_waypoint5 dd)(immediate-dummy-ghv_observe-soil_agent0_waypoint5 dd)(at agent0 waypoint5)(can-sample-soil agent0))
	:observe (at-soil-sample waypoint5)
)
(:action act-dummy-ghv_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-ghv_observe-soil_agent0_waypoint5 dd)(not (dummy-left-ghv_observe-soil_agent0_waypoint5 dd))(not (dummy-right-ghv_observe-soil_agent0_waypoint5 dd)))
	:effect (and (immediate-dummy-ghv_observe-soil_agent0_waypoint5 dd) )
)
(:action dummy-left-ghv_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-ghv_observe-soil_agent0_waypoint5 dd)(at agent0 waypoint5)(can-sample-soil agent0)(not (at-soil-sample waypoint5))(immediate-dummy-ghv_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (init-ghv_observe-soil_agent0_waypoint5 dd))(not (immediate-dummy-ghv_observe-soil_agent0_waypoint5 dd))(dummy-left-ghv_observe-soil_agent0_waypoint5 dd))
)
(:action dummy-right-ghv_observe-soil_agent0_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (init-ghv_observe-soil_agent0_waypoint5 dd)(at agent0 waypoint5)(can-sample-soil agent0)(at-soil-sample waypoint5)(immediate-dummy-ghv_observe-soil_agent0_waypoint5 dd))
	:effect (and (not (init-ghv_observe-soil_agent0_waypoint5 dd))(not (immediate-dummy-ghv_observe-soil_agent0_waypoint5 dd))(dummy-right-ghv_observe-soil_agent0_waypoint5 dd))
)
(:action act-8t9_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ghv_observe-soil_agent0_waypoint5 dd)(immediate-dummy-8t9_observe-rock_agent2_waypoint4 dd)(not (at-soil-sample waypoint5))(at agent0 waypoint4)(can-sample-rock agent0))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-8t9_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ghv_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at agent0 waypoint4)(can-sample-rock agent0)(not (dummy-left-8t9_observe-rock_agent2_waypoint4 dd))(not (dummy-right-8t9_observe-rock_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-8t9_observe-rock_agent2_waypoint4 dd) )
)
(:action dummy-left-8t9_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ghv_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at agent0 waypoint4)(can-sample-rock agent0)(not (at-rock-sample waypoint4))(immediate-dummy-8t9_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-8t9_observe-rock_agent2_waypoint4 dd))(dummy-left-8t9_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-8t9_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-ghv_observe-soil_agent0_waypoint5 dd)(not (at-soil-sample waypoint5))(at agent0 waypoint4)(can-sample-rock agent0)(at-rock-sample waypoint4)(immediate-dummy-8t9_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-8t9_observe-rock_agent2_waypoint4 dd))(dummy-right-8t9_observe-rock_agent2_waypoint4 dd))
)
(:action act-tk8_sample-rock_agent0_agent2_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-8t9_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(not (at-soil-sample waypoint5))(at agent0 waypoint5)(equipped-for-rock-analysis agent0)(store-of a0store agent0)(empty a0store agent0))
	:effect (and (pre-tk8_sample-rock_agent0_agent2_a0store_waypoint5 dd)(not (empty a0store agent0))(full a0store agent0)(have-rock-analysis agent0))
)
(:action act-exw_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-tk8_sample-rock_agent0_agent2_a0store_waypoint5 dd)(at agent0 waypoint1)(have-rock-analysis agent0)(available agent0))
	:effect (and (pre-exw_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-tk8_sample-rock_agent0_agent2_a0store_waypoint5 dd))(communicated-rock-data ))
)
(:action goal-achieve-exw_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-exw_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-exw_communicate-rock-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-tg6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8t9_observe-rock_agent2_waypoint4 dd)(immediate-dummy-tg6_observe-vis_agent3_objective1_waypoint4 dd)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent0 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-tg6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8t9_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent0 waypoint4)(not (dummy-left-tg6_observe-vis_agent3_objective1_waypoint4 dd))(not (dummy-right-tg6_observe-vis_agent3_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-tg6_observe-vis_agent3_objective1_waypoint4 dd) )
)
(:action dummy-left-tg6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8t9_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent0 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-tg6_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-tg6_observe-vis_agent3_objective1_waypoint4 dd))(dummy-left-tg6_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action dummy-right-tg6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-8t9_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent0 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-tg6_observe-vis_agent3_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-tg6_observe-vis_agent3_objective1_waypoint4 dd))(dummy-right-tg6_observe-vis_agent3_objective1_waypoint4 dd))
)
(:action act-g97_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-tg6_observe-vis_agent3_objective1_waypoint4 dd)(immediate-dummy-g97_observe-vis_agent0_objective1_waypoint5 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent0 waypoint5))
	:observe (visible-from objective1 waypoint5)
)
(:action act-dummy-g97_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-tg6_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent0 waypoint5)(not (dummy-left-g97_observe-vis_agent0_objective1_waypoint5 dd))(not (dummy-right-g97_observe-vis_agent0_objective1_waypoint5 dd)))
	:effect (and (immediate-dummy-g97_observe-vis_agent0_objective1_waypoint5 dd) )
)
(:action dummy-left-g97_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-tg6_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent0 waypoint5)(not (visible-from objective1 waypoint5))(immediate-dummy-g97_observe-vis_agent0_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-g97_observe-vis_agent0_objective1_waypoint5 dd))(dummy-left-g97_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action dummy-right-g97_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-tg6_observe-vis_agent3_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(at agent0 waypoint5)(visible-from objective1 waypoint5)(immediate-dummy-g97_observe-vis_agent0_objective1_waypoint5 dd))
	:effect (and (not (immediate-dummy-g97_observe-vis_agent0_objective1_waypoint5 dd))(dummy-right-g97_observe-vis_agent0_objective1_waypoint5 dd))
)
(:action goal-achieve-left-g97_observe-vis_agent0_objective1_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-g97_observe-vis_agent0_objective1_waypoint5 dd)(not (visible-from objective1 waypoint5))(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(not (at-soil-sample waypoint5)))
	:effect (and (done-goal dd)(not (dummy-left-g97_observe-vis_agent0_objective1_waypoint5 dd)))
)
(:action act-xdq_take-image_agent0_waypoint5_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-g97_observe-vis_agent0_objective1_waypoint5 dd)(visible-from objective1 waypoint5)(not (visible-from objective1 waypoint4))(at-rock-sample waypoint4)(not (at-soil-sample waypoint5))(calibrated camera0 agent0 waypoint5 objective1)(on-board camera0 agent0)(equipped-for-imaging agent0)(at agent0 waypoint5))
	:effect (and (pre-xdq_take-image_agent0_waypoint5_objective1_camera0_high-res dd)(have-image agent0 objective1 high-res)(not (calibrated camera0 agent0 waypoint5 objective1)))
)
(:action act-px7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-xdq_take-image_agent0_waypoint5_objective1_camera0_high-res dd)(at agent0 waypoint1)(have-image agent0 objective1 high-res))
	:effect (and (pre-px7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)(not (pre-xdq_take-image_agent0_waypoint5_objective1_camera0_high-res dd)))
)
(:action goal-achieve-px7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-px7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-px7_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action goal-achieve-right-tg6_observe-vis_agent3_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-tg6_observe-vis_agent3_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(at-rock-sample waypoint4)(not (at-soil-sample waypoint5)))
	:effect (and (done-goal dd)(not (dummy-right-tg6_observe-vis_agent3_objective1_waypoint4 dd)))
)
(:action act-qfy_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ghv_observe-soil_agent0_waypoint5 dd)(immediate-dummy-qfy_observe-rock_agent2_waypoint4 dd)(at-soil-sample waypoint5)(at agent0 waypoint4)(can-sample-rock agent0))
	:observe (at-rock-sample waypoint4)
)
(:action act-dummy-qfy_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ghv_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent0 waypoint4)(can-sample-rock agent0)(not (dummy-left-qfy_observe-rock_agent2_waypoint4 dd))(not (dummy-right-qfy_observe-rock_agent2_waypoint4 dd)))
	:effect (and (immediate-dummy-qfy_observe-rock_agent2_waypoint4 dd) )
)
(:action dummy-left-qfy_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ghv_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent0 waypoint4)(can-sample-rock agent0)(not (at-rock-sample waypoint4))(immediate-dummy-qfy_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-qfy_observe-rock_agent2_waypoint4 dd))(dummy-left-qfy_observe-rock_agent2_waypoint4 dd))
)
(:action dummy-right-qfy_observe-rock_agent2_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-ghv_observe-soil_agent0_waypoint5 dd)(at-soil-sample waypoint5)(at agent0 waypoint4)(can-sample-rock agent0)(at-rock-sample waypoint4)(immediate-dummy-qfy_observe-rock_agent2_waypoint4 dd))
	:effect (and (not (immediate-dummy-qfy_observe-rock_agent2_waypoint4 dd))(dummy-right-qfy_observe-rock_agent2_waypoint4 dd))
)
(:action act-doe_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-qfy_observe-rock_agent2_waypoint4 dd)(immediate-dummy-doe_observe-vis_agent0_objective1_waypoint4 dd)(not (at-rock-sample waypoint4))(at-soil-sample waypoint5)(at agent0 waypoint4))
	:observe (visible-from objective1 waypoint4)
)
(:action act-dummy-doe_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-qfy_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at-soil-sample waypoint5)(at agent0 waypoint4)(not (dummy-left-doe_observe-vis_agent0_objective1_waypoint4 dd))(not (dummy-right-doe_observe-vis_agent0_objective1_waypoint4 dd)))
	:effect (and (immediate-dummy-doe_observe-vis_agent0_objective1_waypoint4 dd) )
)
(:action dummy-left-doe_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-qfy_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at-soil-sample waypoint5)(at agent0 waypoint4)(not (visible-from objective1 waypoint4))(immediate-dummy-doe_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-doe_observe-vis_agent0_objective1_waypoint4 dd))(dummy-left-doe_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action dummy-right-doe_observe-vis_agent0_objective1_waypoint4
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-qfy_observe-rock_agent2_waypoint4 dd)(not (at-rock-sample waypoint4))(at-soil-sample waypoint5)(at agent0 waypoint4)(visible-from objective1 waypoint4)(immediate-dummy-doe_observe-vis_agent0_objective1_waypoint4 dd))
	:effect (and (not (immediate-dummy-doe_observe-vis_agent0_objective1_waypoint4 dd))(dummy-right-doe_observe-vis_agent0_objective1_waypoint4 dd))
)
(:action act-l5h_sample-rock_agent2_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-left-doe_observe-vis_agent0_objective1_waypoint4 dd)(not (visible-from objective1 waypoint4))(not (at-rock-sample waypoint4))(at-soil-sample waypoint5)(at agent0 waypoint5)(equipped-for-rock-analysis agent0))
	:effect (and (pre-l5h_sample-rock_agent2_agent0_a1store_waypoint5 dd))
)
(:action act-kqp_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-l5h_sample-rock_agent2_agent0_a1store_waypoint5 dd)(at agent0 waypoint5)(equipped-for-soil-analysis agent0)(store-of a0store agent0)(empty a0store agent0)(not (full a0store agent0)))
	:effect (and (pre-kqp_sample-soil_agent0_a0store_waypoint5 dd)(not (pre-l5h_sample-rock_agent2_agent0_a1store_waypoint5 dd))(not (empty a0store agent0))(full a0store agent0)(have-soil-analysis agent0))
)
(:action act-kqr_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-kqp_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(have-soil-analysis agent0)(available agent0))
	:effect (and (pre-kqr_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-kqp_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-kqr_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-kqr_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-kqr_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-7p3_take-image_agent0_waypoint4_objective1_camera0_high-res
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-doe_observe-vis_agent0_objective1_waypoint4 dd)(visible-from objective1 waypoint4)(not (at-rock-sample waypoint4))(at-soil-sample waypoint5)(calibrated camera0 agent0 waypoint4 objective1)(on-board camera0 agent0)(equipped-for-imaging agent0)(at agent0 waypoint4))
	:effect (and (pre-7p3_take-image_agent0_waypoint4_objective1_camera0_high-res dd)(have-image agent0 objective1 high-res)(not (calibrated camera0 agent0 waypoint4 objective1)))
)
(:action act-fzx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-7p3_take-image_agent0_waypoint4_objective1_camera0_high-res dd)(at agent0 waypoint1)(have-image agent0 objective1 high-res))
	:effect (and (pre-fzx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)(not (pre-7p3_take-image_agent0_waypoint4_objective1_camera0_high-res dd)))
)
(:action act-k4o_sample-rock_agent2_agent0_a1store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-fzx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)(at agent0 waypoint5)(equipped-for-rock-analysis agent0))
	:effect (and (pre-k4o_sample-rock_agent2_agent0_a1store_waypoint5 dd)(not (pre-fzx_communicate-image-data_agent0_general_objective1_high-res_waypoint1_waypoint0_dd dd)))
)
(:action act-jp5_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (pre-k4o_sample-rock_agent2_agent0_a1store_waypoint5 dd)(at agent0 waypoint5)(equipped-for-soil-analysis agent0)(store-of a0store agent0)(empty a0store agent0)(not (full a0store agent0)))
	:effect (and (pre-jp5_sample-soil_agent0_a0store_waypoint5 dd)(not (pre-k4o_sample-rock_agent2_agent0_a1store_waypoint5 dd))(not (empty a0store agent0))(full a0store agent0)(have-soil-analysis agent0))
)
(:action act-77p_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-jp5_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(have-soil-analysis agent0)(available agent0))
	:effect (and (pre-77p_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-jp5_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-77p_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-77p_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-77p_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
(:action act-f0u_sample-soil_agent0_a0store_waypoint5
	:parameters ( ?a - agent )
	:precondition (and (dummy-right-qfy_observe-rock_agent2_waypoint4 dd)(at-rock-sample waypoint4)(at-soil-sample waypoint5)(at agent0 waypoint5)(equipped-for-soil-analysis agent0)(store-of a0store agent0)(empty a0store agent0)(not (full a0store agent0)))
	:effect (and (pre-f0u_sample-soil_agent0_a0store_waypoint5 dd)(not (empty a0store agent0))(full a0store agent0)(have-soil-analysis agent0))
)
(:action act-yso_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-f0u_sample-soil_agent0_a0store_waypoint5 dd)(at agent0 waypoint1)(have-soil-analysis agent0)(available agent0))
	:effect (and (pre-yso_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)(not (pre-f0u_sample-soil_agent0_a0store_waypoint5 dd))(communicated-soil-data ))
)
(:action goal-achieve-yso_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd
	:parameters ( ?a - agent )
	:precondition (and (pre-yso_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd))
	:effect (and (done-goal dd)(not (pre-yso_communicate-soil-data_agent0_general_waypoint1_waypoint0_dd dd)))
)
)