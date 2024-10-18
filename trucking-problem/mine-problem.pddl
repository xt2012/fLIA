
(define (problem trucking-3-cities-2-packages)
    (:domain trucking)
    (:requirements :strips :typing)
    
    (:objects
        l1 l2 l3 - location
        p1 p2 p3 - package
    )
    
    (:init
        (road l1 l2)
        (road l2 l3)
        
        (truckAt l1)
        (packageAt p1 l1)
        (packageAt p2 l2)
        (packageAt p3 l3)
    )
    
    (:goal (and
        (packageAt p1 l3)
        (packageAt p2 l3)
        (packageAt p3 l2)
        )
    )

)
