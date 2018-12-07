//
//  SelectedUser.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/7/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import Foundation

struct SelectedUser {
    static var user: User? = nil
    
    static func set(user: User) {
        self.user = user
    }
    
    static func get() -> User {
        return user!
    }
}
