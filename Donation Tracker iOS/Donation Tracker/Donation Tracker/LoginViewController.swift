//
//  ViewController.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/3/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController/*, UITextFieldDelegate*/ {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*username.delegate = self
        password.delegate = self*/
    }
    
/*    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
        return true
    }*/
    
    @IBAction func cancelLogin(_ sender: UIButton) {
        self.performSegue(withIdentifier: "loginToWelcome", sender: self);
    }
    
    @IBAction func login(_ sender: UIButton) {
        var noRan = true
        for i in 0..<Users.get().count {
            if (Users.get()[i].username.elementsEqual(username.text!) && Users.get()[i].password.elementsEqual(password.text!)) {
                SelectedUser.set(user: Users.get()[i])
             self.performSegue(withIdentifier: "loginToMain", sender: self);
                noRan = false
            }
        }
        if (noRan) {
            username.setMarkedText("Error", selectedRange: NSRange.init())
            password.setMarkedText("Error", selectedRange: NSRange.init())
        }
    }
    
}
