//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Missy Allan on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Coordinate {
    
    var latitude: Double
    var longitude: Double
    
    init(latitude: Double, longitude: Double){
        self.latitude = latitude
        self.longitude = longitude
    }
    
    // Computed Properties // 
    
    var isInNorthernHemisphere: Bool {
        get{
        if latitude > 0.0 {
            return true
        }else{
            return false
        }
    }
}
    
    
    var isInSoutherHemisphere: Bool {
        get{
        if latitude < 0.0 {
            return true
        }else{
            return false
            }
        }
 
    }
    
    var isInWesternHemisphere: Bool {
        get{
        if longitude > 0.0 {
            return true
        }else{
            return false
        }
        
    }
}
    
    var isInEasternHemisphere: Bool {
        get{
        if longitude < 0.0 {
            return true
        }else{
           return false
    }
    
    }
}

    
    func distance(to coordinate: Coordinate) -> Double {
        var distance : Double
        
        distance = acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude-coordinate.longitude.radians)) * (6371000 / 1000)
    
        return distance
     }

}
    
// An extension extends the ability of soemthing. This extension is available to all Doubles in the entire project
extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}










