//
//  ViewController.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/3/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import UIKit

class LocationDataViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var locations: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nibs
        self.locations.delegate = self
        self.locations.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return Locations.get().count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let titleRow = Locations.locations![row]
            return titleRow.name
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        self.performSegue(withIdentifier: "locationDataToWelcome", sender: self);
    }
    
    @IBAction func selectLocation(_ sender: UIButton) {
        SelectedLocation.set(location: Locations.locations![locations.selectedRow(inComponent: 0)])
        self.performSegue(withIdentifier: "locationDataToLocationDetail", sender: self);
    }

}


