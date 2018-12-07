//
//  Users.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/6/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import Foundation

struct Users {
    static var users: [User]? = [User.init(username: "User", password: "Pass", userType: "User", location: Location.init(name: "", type: "", longitude: "", latitude: "", address: "", phoneNumber: ""))]
    
    static func set(users: [User]) {
        self.users = users
    }
    
    static func add(user: User) {
        users?.append(user)
    }
    
    static func get() -> [User] {
        return users!
    }
    
}
