//
//  Donation.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/6/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import Foundation

class Donation {
    var time: String
    var location: Location
    var shortDescription: String
    var longDescription: String
    var value: String
    var donationCategory: String
    var comments: String
    var iD: String
    
    init(time: String, location: Location, shortDescription: String, longDescription: String, value: String, donationCategory: String, comments: String, iD: String) {
        self.time = time
        self.location = location
        self.shortDescription = shortDescription
        self.longDescription = longDescription
        self.value = value
        self.donationCategory = donationCategory
        self.comments = comments
        self.iD = iD
    }
}
