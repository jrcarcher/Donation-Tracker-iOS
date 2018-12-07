//
//  Location.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/6/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import Foundation

class Location {
    var name: String
    var type: String
    var longitude: String
    var latitude: String
    var address: String
    var phoneNumber: String
    
    init(name: String, type: String, longitude: String, latitude: String, address: String, phoneNumber: String) {
        self.name = name
        self.type = type
        self.longitude = longitude
        self.latitude = latitude
        self.address = address
        self.phoneNumber = phoneNumber
    }
    
}
