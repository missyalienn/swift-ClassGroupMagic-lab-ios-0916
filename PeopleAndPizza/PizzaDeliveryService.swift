//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Missy Allan on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable: Int


    
    
    init(location:Coordinate) {
        self.location = location
        self.pizzasAvailable = 10
    }

    func isInRange(destination: Coordinate) -> Bool {
        if destination.distance(to: self.location) > 5000 {
            return true
        }
      return false
    }
    
    
    func deliverPizza(to destination: Coordinate) -> Bool {
        if isInRange(destination: destination) {
            self.pizzasAvailable  = 1
            return true
        }else {
            return false
        }
    }
    
    
    
}
