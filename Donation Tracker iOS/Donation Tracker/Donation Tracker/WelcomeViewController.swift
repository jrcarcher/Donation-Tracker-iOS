//
//  ViewController.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/3/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func toRegister(_ sender: UIButton) {
        self.performSegue(withIdentifier: "welcomeToRegister", sender: self);
    }
    
    @IBAction func toLogin(_ sender: UIButton) {
        self.performSegue(withIdentifier: "welcomeToLogin", sender: self);
    }
}
