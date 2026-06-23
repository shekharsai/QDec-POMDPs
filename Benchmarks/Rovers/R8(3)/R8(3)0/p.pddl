(define (problem agentprob1234) 
(:domain Rover)
(:objects
        general - lander
        colour high-res low-res - mode
        agent0 agent1 agent2 - agent
        a0store a1store a2store - store
        waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 - waypoint
        camera0 camera1 camera2 - camera
        objective1 objective2 - objective
)
(:init
		(same agent0 agent0)
		(same agent1 agent1)
		(same agent2 agent2)
		
		(not (same agent0 agent1))
		(not (same agent1 agent0))

		(visible waypoint1 waypoint4) 
		(visible waypoint4 waypoint1)
		(visible waypoint5 waypoint4) 
		(visible waypoint4 waypoint5)


		(visible waypoint1 waypoint0) 
		(visible waypoint2 waypoint0) 
		(visible waypoint3 waypoint0)
		(visible waypoint0 waypoint1)
		(visible waypoint0 waypoint2)
		(visible waypoint2 waypoint1)
		(visible waypoint1 waypoint2)

		(visible waypoint0 waypoint3)
		(visible waypoint3 waypoint1)
		(visible waypoint1 waypoint3)
		(visible waypoint3 waypoint2)
		(visible waypoint2 waypoint3)

		(at-lander general waypoint0)
		(channel-free general)
		(at agent0 waypoint3)
		(available agent0)
		(equipped-for-imaging agent0)
		(can-traverse agent0 waypoint1 waypoint4)
		(can-traverse agent0 waypoint4 waypoint1)
		(can-traverse agent0 waypoint5 waypoint4)
		(can-traverse agent0 waypoint4 waypoint5)
		(can-traverse agent0 waypoint3 waypoint0)
		(can-traverse agent0 waypoint0 waypoint3)
		(can-traverse agent0 waypoint3 waypoint1)
		(can-traverse agent0 waypoint1 waypoint3)
		(can-traverse agent0 waypoint1 waypoint2)
		(can-traverse agent0 waypoint2 waypoint1)
		(on-board camera0 agent0)
		(calibration-target camera0 objective1)
		(supports camera0 colour)
		(supports camera0 high-res)
		(store-of a0store agent0)
		(equipped-for-soil-analysis agent0)
		(equipped-for-rock-analysis agent0)
		(empty a0store agent0)

		(at agent1 waypoint2)
		(available agent1)
		(equipped-for-imaging agent1)
		(can-traverse agent1 waypoint1 waypoint4)
		(can-traverse agent1 waypoint4 waypoint1)
		(can-traverse agent1 waypoint5 waypoint4)
		(can-traverse agent1 waypoint4 waypoint5)
		(can-traverse agent1 waypoint3 waypoint0)
		(can-traverse agent1 waypoint0 waypoint3)
		(can-traverse agent1 waypoint3 waypoint1)
		(can-traverse agent1 waypoint1 waypoint3)
		(can-traverse agent1 waypoint1 waypoint2)
		(can-traverse agent1 waypoint2 waypoint1)
		(on-board camera1 agent1)
		(calibration-target camera1 objective1)
		(supports camera1 colour)
		(supports camera1 high-res)
		(store-of a1store agent1)
		(equipped-for-soil-analysis agent1)
		(equipped-for-rock-analysis agent1)
		(empty a1store agent1)
		
		
		(at agent2 waypoint4)
		(available agent2)
		(equipped-for-imaging agent2)
		(can-traverse agent2 waypoint1 waypoint4)
		(can-traverse agent2 waypoint4 waypoint1)
		(can-traverse agent2 waypoint5 waypoint4)
		(can-traverse agent2 waypoint4 waypoint5)
		(can-traverse agent2 waypoint3 waypoint0)
		(can-traverse agent2 waypoint0 waypoint3)
		(can-traverse agent2 waypoint3 waypoint1)
		(can-traverse agent2 waypoint1 waypoint3)
		(can-traverse agent2 waypoint1 waypoint2)
		(can-traverse agent2 waypoint2 waypoint1)
		(on-board camera2 agent2)
		(calibration-target camera2 objective2)
		(supports camera2 colour)
		(supports camera2 low-res)
		(store-of a2store agent2)
		(equipped-for-soil-analysis agent2)
		(equipped-for-rock-analysis agent2)
		(empty a2store agent2)

		;(unknown (visible-from objective1 waypoint0))
		;(unknown (visible-from objective1 waypoint4))
		;(unknown (visible-from objective1 waypoint5))
		(oneof
			(visible-from objective1 waypoint0)
			(visible-from objective1 waypoint4)
			(visible-from objective1 waypoint5)
		)
		
		(oneof
			(visible-from objective2 waypoint1)
			(visible-from objective2 waypoint2)
			(visible-from objective2 waypoint5)
		)

		;(unknown (at-soil-sample waypoint4))
		;(unknown (at-soil-sample waypoint5))
		;(unknown (at-rock-sample waypoint4))
		;(unknown (at-rock-sample waypoint5))

		(oneof
			(at-soil-sample waypoint4)
			(at-soil-sample waypoint5)
		)

		(oneof
			(at-rock-sample waypoint4)
			(at-rock-sample waypoint5)
		)
)

(:goal 
	(and 
		(communicated-image-data objective1 high-res)
		(communicated-image-data objective2 low-res)
		(communicated-soil-data)
     	(communicated-rock-data)
	)
))

