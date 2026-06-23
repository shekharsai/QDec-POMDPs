(define (problem agentprob1234) 
	(:domain Rover)
	(:objects
        	general - lander
	        colour high-res low-res - mode
        	agent0 agent1 - agent
        	agent0store - store

        	waypoint0 waypoint1 waypoint2 waypoint3 - waypoint
        	camera0 camera1 - camera
        	objective1 - objective
        )

(:init
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
	(at_lander general waypoint0)

	(channel_free general)
	(at agent0 waypoint3)
	(available agent0)
	(equipped_for_imaging agent0)
	(can_traverse agent0 waypoint3 waypoint0)
	(can_traverse agent0 waypoint0 waypoint3)
	(can_traverse agent0 waypoint3 waypoint1)
	(can_traverse agent0 waypoint1 waypoint3)
	(can_traverse agent0 waypoint1 waypoint2)
	(can_traverse agent0 waypoint2 waypoint1)

	(on_board camera0 agent0)
	(calibration_target camera0 objective1)
	(supports camera0 colour)
	(supports camera0 high-res)
	
	
	(at agent1 waypoint3)
	(available agent1)
	(equipped_for_imaging agent1)
	(can_traverse agent1 waypoint3 waypoint0)
	(can_traverse agent1 waypoint0 waypoint3)
	(can_traverse agent1 waypoint3 waypoint1)
	(can_traverse agent1 waypoint1 waypoint3)
	(can_traverse agent1 waypoint1 waypoint2)
	(can_traverse agent1 waypoint2 waypoint1)
	
    	(on_board camera1 agent1)
	(calibration_target camera1 objective1)
	(supports camera1 colour)
	(supports camera1 high-res)

	;(unknown (visible_from objective1 waypoint0))
	;(unknown (visible_from objective1 waypoint1))

	(oneof
         	(visible_from objective1 waypoint0)
         	(visible_from objective1 waypoint1)
	)

)

(:goal
	(communicated_image_data objective1 high-res)
)

)

