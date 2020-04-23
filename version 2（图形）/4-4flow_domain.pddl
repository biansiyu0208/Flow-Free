(define (domain FLOW)
    (:requirements :strips)
    (:predicates
        (circle ?c)
        (square ?s)
        (triangle ?t)
        (dot ?d)
        (position ?p)
        (at ?color ?p)
        (adjacentl ?from ?emp)
        (adjacentr ?from ?emp)
        (adjacentu ?from ?emp)
        (adjacentd ?from ?emp)
        (empty ?emp)
        (fill_circle ?p)
        (fill_square ?p)
        (fill_triangle ?p)
        (fill_dot ?p)
        ; (conn ?x ?y)
    )

    (:action circle-draw-left
        :parameters (?c ?from ?emp)
        :precondition
            (and (circle ?c) (position ?from) (position ?emp)
                 (adjacentl ?from ?emp) (at ?c ?from) (empty ?emp))
        :effect
            (and (not (at ?c ?from)) (not (empty ?emp))
                 (at ?c ?emp) (fill_circle ?emp))
    )
    (:action circle-draw-right
        :parameters (?c ?from ?emp)
        :precondition
            (and (circle ?c) (position ?from) (position ?emp)
                 (adjacentr ?from ?emp) (at ?c ?from) (empty ?emp))
        :effect
            (and (not (at ?c ?from)) (not (empty ?emp))
                 (at ?c ?emp) (fill_circle ?emp)
                 ;(conn ?from ?emp)
            )
    )
    (:action circle-draw-up
        :parameters (?c ?from ?emp)
        :precondition
            (and (circle ?c) (position ?from) (position ?emp)
                 (adjacentu ?from ?emp) (at ?c ?from) (empty ?emp))
        :effect 
            (and (not (at ?c ?from)) (not (empty ?emp))
                 (at ?c ?emp) (fill_circle ?emp))
    )
    (:action circle-draw-down
        :parameters (?c ?from ?emp)
        :precondition 
            (and (circle ?c) (position ?from) (position ?emp)
                 (adjacentd ?from ?emp) (at ?c ?from) (empty ?emp))
        :effect 
            (and (not (at ?c ?from)) (not (empty ?emp))
                 (at ?c ?emp) (fill_circle ?emp))
    )
    
    (:action square-draw-left
        :parameters (?s ?from ?emp)
        :precondition
            (and (square ?s) (position ?from) (position ?emp)
                 (adjacentl ?from ?emp) (at ?s ?from) (empty ?emp))
        :effect
            (and (not (at ?s ?from)) (not (empty ?emp))
                 (at ?s ?emp) (fill_square ?emp))
    )
    (:action square-draw-right
        :parameters (?s ?from ?emp)
        :precondition
            (and (square ?s) (position ?from) (position ?emp)
                 (adjacentr ?from ?emp) (at ?s ?from) (empty ?emp))
        :effect
            (and (not (at ?s ?from)) (not (empty ?emp))
                 (at ?s ?emp) (fill_square ?emp))
    )
    (:action square-draw-up
        :parameters (?s ?from ?emp)
        :precondition
            (and (square ?s) (position ?from) (position ?emp)
                 (adjacentu ?from ?emp) (at ?s ?from) (empty ?emp))
        :effect 
            (and (not (at ?s ?from)) (not (empty ?emp))
                 (at ?s ?emp) (fill_square ?emp))
    )
    (:action square-draw-down
        :parameters (?s ?from ?emp)
        :precondition 
            (and (square ?s) (position ?from) (position ?emp)
                 (adjacentd ?from ?emp) (at ?s ?from) (empty ?emp))
        :effect 
            (and (not (at ?s ?from)) (not (empty ?emp))
                 (at ?s ?emp) (fill_square ?emp))
    )
    
    (:action triangle-draw-left
        :parameters (?t ?from ?emp)
        :precondition
            (and (triangle ?t) (position ?from) (position ?emp)
                 (adjacentl ?from ?emp) (at ?t ?from) (empty ?emp))
        :effect
            (and (not (at ?t ?from)) (not (empty ?emp))
                 (at ?t ?emp) (fill_triangle ?emp))
    )
    (:action triangle-draw-right
        :parameters (?t ?from ?emp)
        :precondition
            (and (triangle ?t) (position ?from) (position ?emp)
                 (adjacentr ?from ?emp) (at ?t ?from) (empty ?emp))
        :effect
            (and (not (at ?t ?from)) (not (empty ?emp))
                 (at ?t ?emp) (fill_triangle ?emp))
    )
    (:action triangle-draw-up
        :parameters (?t ?from ?emp)
        :precondition
            (and (triangle ?t) (position ?from) (position ?emp)
                 (adjacentu ?from ?emp) (at ?t ?from) (empty ?emp))
        :effect 
            (and (not (at ?t ?from)) (not (empty ?emp))
                 (at ?t ?emp) (fill_triangle ?emp))
    )
    (:action triangle-draw-down
        :parameters (?t ?from ?emp)
        :precondition 
            (and (triangle ?t) (position ?from) (position ?emp)
                 (adjacentd ?from ?emp) (at ?t ?from) (empty ?emp))
        :effect 
            (and (not (at ?t ?from)) (not (empty ?emp))
                 (at ?t ?emp) (fill_triangle ?emp))
    )
    
    (:action dot-draw-left
        :parameters (?d ?from ?emp)
        :precondition
            (and (dot ?d) (position ?from) (position ?emp)
                 (adjacentl ?from ?emp) (at ?d ?from) (empty ?emp))
        :effect
            (and (not (at ?d ?from)) (not (empty ?emp))
                 (at ?d ?emp) (fill_dot ?emp))
    )
    (:action dot-draw-right
        :parameters (?d ?from ?emp)
        :precondition
            (and (dot ?d) (position ?from) (position ?emp)
                 (adjacentr ?from ?emp) (at ?d ?from) (empty ?emp))
        :effect
            (and (not (at ?d ?from)) (not (empty ?emp))
                 (at ?d ?emp) (fill_dot ?emp))
    )
    (:action dot-draw-up
        :parameters (?d ?from ?emp)
        :precondition
            (and (dot ?d) (position ?from) (position ?emp)
                 (adjacentu ?from ?emp) (at ?d ?from) (empty ?emp))
        :effect 
            (and (not (at ?d ?from)) (not (empty ?emp))
                 (at ?d ?emp) (fill_dot ?emp))
    )
    (:action dot-draw-down
        :parameters (?d ?from ?emp)
        :precondition 
            (and (dot ?d) (position ?from) (position ?emp)
                 (adjacentd ?from ?emp) (at ?d ?from) (empty ?emp))
        :effect 
            (and (not (at ?d ?from)) (not (empty ?emp))
                 (at ?d ?emp) (fill_dot ?emp))
    )
    
)