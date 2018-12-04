//
//  ViewController.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/3/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func register(_ sender: UIButton) {
        self.performSegue(withIdentifier: "registerToLogin", sender: self);
    }
    
    @IBAction func cancelRegister(_ sender: UIButton) {
        self.performSegue(withIdentifier: "registerToWelcome", sender: self);
    }
    
}

