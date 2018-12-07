//
//  DonationViewController.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/7/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import UIKit

class DonationViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var short: UITextField!
    
    @IBOutlet weak var long: UITextField!
    
    @IBOutlet weak var value: UITextField!
    
    @IBOutlet weak var comments: UITextField!
    
    @IBOutlet weak var location: UIPickerView!
    
    @IBOutlet weak var donationType: UIPickerView!
    
    var donationTypeData: [String] = [String]()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows : Int = donationTypeData.count
        if pickerView == location {
            countrows = Locations.get().count
        }
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == donationType {
            let titleRow = donationTypeData[row]
            return titleRow
        } else if pickerView == location {
            let titleRow = Locations.get()[row]
            return titleRow.name
        }
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        donationTypeData = ["CLOTHING", "HAT", "KITCHEN", "ELECTRONICS", "HOUSEHOLD", "OTHER"]
        self.location.delegate = self
        self.location.dataSource = self
        self.donationType.delegate = self
        self.donationType.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        /*username.delegate = self
         password.delegate = self*/
    }
    
    @IBAction func addDonation(_ sender: UIButton) {
        Donations.add(donation: Donation.init(time: Date().description, location: Locations.get()[location.selectedRow(inComponent: 0)], shortDescription: short.text!, longDescription: long.text!, value: value.text!, donationCategory: donationTypeData[donationType.selectedRow(inComponent: 0)], comments: comments.text!, iD: Donations.get().count.description))
    }
    
    @IBAction func back(_ sender: UIButton) {
        self.performSegue(withIdentifier: "donationToMain", sender: self);
    }
    
}
