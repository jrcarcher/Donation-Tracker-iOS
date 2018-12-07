//
//  SelectedDonation.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/6/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import Foundation

struct SelectedDonation {
    static var donation: Donation? = nil
    
    static func set(donation: Donation) {
        self.donation = donation
    }
    
    static func get() -> Donation {
        return donation!
    }
}
