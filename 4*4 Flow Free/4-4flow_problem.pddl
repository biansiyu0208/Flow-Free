(define (problem FLOW-32)
    (:domain FLOW)
    (:objects
        c s t d
        node1-4 node2-4 node3-4 node4-4
        node1-3 node2-3 node3-3 node4-3
        node1-2 node2-2 node3-2 node4-2
        node1-1 node2-1 node3-1 node4-1)
    (:INIT 
        (circle c) (square s) (triangle t) (dot d)
        
        (position node1-4) (position node2-4) (position node3-4) (position node4-4)
        (position node1-3) (position node2-3) (position node3-3) (position node4-3)
        (position node1-2) (position node2-2) (position node3-2) (position node4-2)
        (position node1-1) (position node2-1) (position node3-1) (position node4-1)
        
        (at c node1-4) (at s node4-4) (at t node1-3) (at d node4-3)
        
        (fill_circle node1-4) (fill_circle node2-3)
        (fill_square node4-4) (fill_square node3-3)
        (fill_triangle node1-3) (fill_triangle node1-1)
        (fill_dot node4-3) (fill_dot node4-1) 
        
        (empty node2-4) (empty node3-4)
        (empty node2-3) (empty node3-3) 
        (empty node1-2) (empty node2-2) (empty node3-2) (empty node4-2)
        (empty node1-1) (empty node2-1) (empty node3-1) (empty node4-1)
        
        (adjacentl node2-1 node1-1) (adjacentl node3-1 node2-1) (adjacentl node4-1 node3-1) 
        (adjacentl node2-2 node1-2) (adjacentl node3-2 node2-2) (adjacentl node4-2 node3-2) 
        (adjacentl node2-3 node1-3) (adjacentl node3-3 node2-3) (adjacentl node4-3 node3-3) 
        (adjacentl node2-4 node1-4) (adjacentl node3-4 node2-4) (adjacentl node4-4 node3-4)
        
        (adjacentr node1-1 node2-1) (adjacentr node2-1 node3-1) (adjacentr node3-1 node4-1) 
        (adjacentr node1-2 node2-2) (adjacentr node2-2 node3-2) (adjacentr node3-2 node4-2) 
        (adjacentr node1-3 node2-3) (adjacentr node2-3 node3-3) (adjacentr node3-3 node4-3) 
        (adjacentr node1-4 node2-4) (adjacentr node2-4 node3-4) (adjacentr node3-4 node4-4) 
        
        (adjacentu node1-1 node1-2) (adjacentu node1-2 node1-3) (adjacentu node1-3 node1-4) 
        (adjacentu node2-1 node2-2) (adjacentu node2-2 node2-3) (adjacentu node2-3 node2-4)
        (adjacentu node3-1 node3-2) (adjacentu node3-2 node3-3) (adjacentu node3-3 node3-4) 
        (adjacentu node4-1 node4-2) (adjacentu node4-2 node4-3) (adjacentu node4-3 node4-4) 
        
        (adjacentd node1-2 node1-1) (adjacentd node1-3 node1-2) (adjacentd node1-4 node1-3)
        (adjacentd node2-2 node2-1) (adjacentd node2-3 node2-2) (adjacentd node2-4 node2-3)
        (adjacentd node3-2 node3-1) (adjacentd node3-3 node3-2) (adjacentd node3-4 node3-3)
        (adjacentd node4-2 node4-1) (adjacentd node4-3 node4-2) (adjacentd node4-4 node4-3)
    )
    (:goal (and (at c node2-3) (at s node3-3) (at t node1-1) (at d node4-1) 
                (not (empty node1-4)) (not (empty node2-4)) (not (empty node3-4)) (not (empty node4-4))
                (not (empty node1-3)) (not (empty node2-3)) (not (empty node3-3)) (not (empty node4-3))
                (not (empty node1-2)) (not (empty node2-2)) (not (empty node3-2)) (not (empty node4-2))
                (not (empty node1-1)) (not (empty node2-1)) (not (empty node3-1)) (not (empty node4-1))
         )
  )
)