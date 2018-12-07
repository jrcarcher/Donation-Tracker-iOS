//
//  SelectedLocation.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/6/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import Foundation

struct SelectedLocation {
    static var location: Location? = nil
    
    static func set(location: Location) {
        self.location = location
    }
    
    static func get() -> Location {
        return location!
    }
}
