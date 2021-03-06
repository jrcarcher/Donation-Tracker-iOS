//
//  ViewController.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/3/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import UIKit

class LocationDetailViewController: UIViewController {
    
    @IBOutlet weak var detail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detail.text = "Name - " + SelectedLocation.get().name + "\nType - " + SelectedLocation.get().type + "\nLongitude - " + SelectedLocation.get().longitude + "\nLatitude - " + SelectedLocation.get().latitude + "\nAddress - " + SelectedLocation.get().address + "\nPhone Number - " + SelectedLocation.get().phoneNumber
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func back(_ sender: UIButton) {
        self.performSegue(withIdentifier: "locationDetailToLocationData", sender: self);
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        self.performSegue(withIdentifier: "locationDetailToWelcome", sender: self);
    }
    
    @IBAction func donations(_ sender: UIButton) {
        if (SelectedLocation.get().name.elementsEqual(SelectedUser.get().location.name)) {
            detail.text = detail.text! + " \nDonations\n"
            for i in 0 ..< Donations.get().count {
                if (Donations.donations![i].location.name.elementsEqual(SelectedLocation.get().name)) {
                    detail.text = detail.text! + Donations.donations![i].time + " " + Donations.donations![i].shortDescription + " "
                    detail!.text = detail!.text! + Donations.donations![i].longDescription + " " + Donations.donations![i].value + " " + Donations.donations![i].donationCategory + "\n"
                }
            }
        }
    }
    
    /*@IBAction func login(_ sender: UIButton) {
     self.performSegue(withIdentifier: "login", sender: self);
     }*/
}


