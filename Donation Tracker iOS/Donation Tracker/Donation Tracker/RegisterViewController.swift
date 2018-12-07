//
//  ViewController.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/3/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var passwordConfirm: UITextField!
    
    @IBOutlet weak var userType: UIPickerView!
    
    var userTypeData: [String] = [String]()
    
    @IBOutlet weak var location: UIPickerView!
    
    var locationData: [Location] = [Location]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userTypeData = ["User", "Employee", "Manager", "Admin"]
        locationData = Locations.get()
        
        self.userType.delegate = self
        self.userType.dataSource = self
        self.location.delegate = self
        self.location.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows : Int = userTypeData.count
        if pickerView == location {
            countrows = locationData.count
        }
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == userType {
            let titleRow = userTypeData[row]
            return titleRow
        } else if pickerView == location {
            let titleRow = locationData[row]
            return titleRow.name
        }
        return ""
    }
    
    /*func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == userType {
            self.textbox1.text = self.userTypeData[row]
        } else if pickerView == location {
            self.textbox2.text = self.locationData[row]
        }
    }*/
    
    @IBAction func register(_ sender: UIButton) {
        if (password.text!.elementsEqual(passwordConfirm.text!)) {
            var users = Users.get()
            users.append(User.init(username: email.text!, password: password.text!, userType: userTypeData[userType.selectedRow(inComponent: 0)], location: locationData[location.selectedRow(inComponent: 0)]))
            Users.set(users: users)
            
            self.performSegue(withIdentifier: "registerToLogin", sender: self);
        }
    }
    
    @IBAction func cancelRegister(_ sender: UIButton) {
        self.performSegue(withIdentifier: "registerToWelcome", sender: self);
    }
    
}

