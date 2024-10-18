; With the new day comes new strength and new thoughts.
(define (domain trucking)
    (:requirements  :strips :typing)
    (:types 
        location - object
        package - object
        )
   


(:predicates
    (road ?l1 - location ?l2 - location)
    (packageAt ?p - package ?l - location)
    (inTruck ?p - package)
    (truckAt ?l - location)
)

(:action loadPackage
    :parameters (?l - location ?p - package)
    
    :precondition (and
        (packageAt ?p ?l)
        (truckAt ?l)
            )
    
    :effect (and
        (not (packageAt ?p ?l))
        (inTruck ?p)
            
    )   
)

(:action unloadPackage
    :parameters(?l - location ?p - package)
    
    :precondition (and
        (truckAt ?l)
        (inTruck ?p)
    )

    :effect (and
        (not(inTruck ?p))
        (packageAt ?p ?l)
            
    )
)

(:action driveTo
    :parameters(?l1 ?l2 - location)
    
    :precondition (and
    
        (road ?l1 ?l2)
        (or (truckAt ?l1) (truckAt ?l2))
      
    )
    
    :effect (and
        (when (truckAt ?l1)
            (and (not (truckAt ?l1)) (truckAt ?l2))
        )
        (when (truckAt ?l2)
            (and(not (truckAt ?l2)) (truckAt ?l1))
        )
            
        )
    )   
    
) 

 
   




