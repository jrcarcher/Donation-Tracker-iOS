//
//  User.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/6/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import Foundation

class User {
    var username: String
    var password: String
    var userType: String
    var location: Location
    
    init(username: String, password: String, userType: String, location: Location) {
        self.username = username
        self.password = password
        self.userType = userType
        self.location = location
    }
    
}
