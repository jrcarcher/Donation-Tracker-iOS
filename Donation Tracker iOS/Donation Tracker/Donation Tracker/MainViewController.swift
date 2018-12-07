//
//  ViewController.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/3/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func addDonation(_ sender: UIButton) {
        self.performSegue(withIdentifier: "mainToDonation", sender: self);
    }
    
    @IBAction func cancelMain(_ sender: UIButton) {
        self.performSegue(withIdentifier: "mainToWelcome", sender: self);
    }
    
    @IBAction func toLocation(_ sender: UIButton) {
        self.performSegue(withIdentifier: "mainToLocationData", sender: self);
    }
    
}

