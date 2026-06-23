(define 
(problem Table-2)
(:domain Tablemover-2)
(:goal 
	(and
	(inroom table1 room4) 
	(inroom table2 room1)
	(inroom table3 room2)
	(inroom table4 room2)
	(inroom table5 room4)
	)
)
(:init 
	(and
        (connected room1 room2)	
	(connected room2 room1)
	(connected room3 room2)
	(connected room2 room3)
	(connected room3 room4)
	(connected room4 room3)

	(in a1 room1)
	(in a2 room3)	
	(in a3 room1)
	(in a4 room3)
	(in a5 room4)

	(available a1)
	(available a2)
	(available a3)
	(available a4)
	(available a5)

	(oneof 
		(inroom table1 room3) 
		(inroom table1 room4)
	)
	(oneof 
		(inroom table2 room2) 
		(inroom table2 room1)
	)
	(oneof 
		(inroom table3 room2) 
		(inroom table3 room3)
	)
	(oneof 
		(inroom table4 room1) 
		(inroom table4 room2)
	)
	(oneof 
		(inroom table5 room4) 
		(inroom table5 room3)
	)

	(same-agent a1 a1)
	(same-agent a2 a2)
	(same-agent a3 a3)
	(same-agent a4 a4)
	(same-agent a5 a5)

	(not (same-agent a1 a2))
	(not (same-agent a2 a1))
	(not (same-agent a1 a3))
	(not (same-agent a3 a1))
	(not (same-agent a3 a2))
	(not (same-agent a2 a3))
	(not (same-agent a1 a4))
	(not (same-agent a4 a1))
	(not (same-agent a2 a4))
	(not (same-agent a4 a2))
	(not (same-agent a3 a4))
	(not (same-agent a4 a3))

	(not (same-agent a5 a1))
	(not (same-agent a1 a5))
	(not (same-agent a5 a2))
	(not (same-agent a2 a5))
	(not (same-agent a5 a3))
	(not (same-agent a3 a5))
	(not (same-agent a5 a4))
	(not (same-agent a4 a5))
	)
) 
)
