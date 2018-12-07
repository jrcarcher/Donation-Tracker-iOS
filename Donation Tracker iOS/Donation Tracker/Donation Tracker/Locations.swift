//
//  Locations.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/6/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import Foundation

struct Locations {
    static var locations: [Location]? = [Location.init(name: "Shop", type: "Store", longitude: "1", latitude: "1", address: "n/a", phoneNumber: "7030000000")]
    
    static func set(locations: [Location]) {
        self.locations = locations
    }
    
    static func add(location: Location) {
        locations?.append(location)
    }
    
    static func get() -> [Location] {
        return locations!
    }
    
    static func get(name: String) -> Location {
        for i in 0..<locations!.count {
            if (get()[i].name.elementsEqual(name)) {
                return get()[i]
            }
        }
        return Location.init(name: "", type: "", longitude: "", latitude: "", address: "", phoneNumber: "")
    }
}
