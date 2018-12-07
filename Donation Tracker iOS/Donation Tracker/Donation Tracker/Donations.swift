//
//  Donations.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/6/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import Foundation

struct Donations {
    static var donations: [Donation]? = []
    
    static func set(donations: [Donation]) {
        self.donations = donations
    }
    
    static func add(donation: Donation) {
        donations?.append(donation)
    }
    
    static func get() -> [Donation] {
        return donations!
    }
}
