//
//  ViewController.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/3/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func cancelLogin(_ sender: UIButton) {
        self.performSegue(withIdentifier: "loginToWelcome", sender: self);
    }
    
    @IBAction func login(_ sender: UIButton) {
        self.performSegue(withIdentifier: "loginToMain", sender: self);
    }
    
}

