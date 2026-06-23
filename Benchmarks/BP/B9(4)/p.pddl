(define 
(problem Box-3)
(:domain Box-3)
(:goal (and 
(box-at b0 p1-2) (box-at b1 p2-2) (box-at b2 p3-2) (box-at b3 p4-2)
)
)
(:init
	(and
        (agent-at a1 p1-1)
	(agent-at a2 p2-1)
	(agent-at a3 p3-1)
	(agent-at a4 p4-1)
	
	(adj p1-1 p1-2)
	(adj p2-1 p2-2)
	(adj p3-1 p3-2)
	(adj p1-2 p1-1)
	(adj p2-2 p2-1)
	(adj p3-2 p3-1)	
	
	(adj p1-1 p2-1)
	(adj p2-1 p3-1)
	
	(adj p2-1 p1-1)
	(adj p3-1 p2-1)

	(adj p4-1 p3-1)
	(adj p3-1 p4-1)
	
	(adj p4-1 p4-2)
	(adj p4-2 p4-1)
	
	(not (heavy b0))
	(heavy b1)
	(not (heavy b2))
	(heavy b3)

	(oneof (box-at b0 p1-1) (box-at b0 p1-2))
	(oneof (box-at b1 p2-1) (box-at b1 p2-2))
	(oneof (box-at b2 p3-1) (box-at b2 p3-2))
	(oneof (box-at b3 p4-1) (box-at b3 p4-2))
	
	(can-observe a1 b0)
	(can-observe a1 b1)
	(can-observe a1 b2)
	(can-observe a1 b3)

	(can-observe a2 b0)
	(can-observe a2 b1)
	(can-observe a2 b2)
	(can-observe a2 b3)

	(can-observe a3 b0)
	(can-observe a3 b1)
	(can-observe a3 b2)
	(can-observe a3 b3)

	(can-observe a4 b0)
	(can-observe a4 b1)
	(can-observe a4 b2)
	(can-observe a4 b3)

	(same-agent a1 a1)
	(same-agent a2 a2)
	(same-agent a3 a3)
	(same-agent a4 a4)

	(not (same-agent a1 a2))
	(not (same-agent a2 a1))
	(not (same-agent a1 a3))
	(not (same-agent a3 a1))
	(not (same-agent a2 a3))
	(not (same-agent a3 a2))

	(not (same-agent a1 a4))
	(not (same-agent a4 a1))
	(not (same-agent a4 a3))
	(not (same-agent a3 a4))
	(not (same-agent a2 a4))
	(not (same-agent a4 a2))

	)
)
)
