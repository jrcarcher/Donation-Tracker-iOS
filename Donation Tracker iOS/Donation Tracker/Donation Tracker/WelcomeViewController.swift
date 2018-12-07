//
//  ViewController.swift
//  Donation Tracker
//
//  Created by James Crowley on 12/3/18.
//  Copyright © 2018 James Crowley. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    func cleanRows(file:String)->String{
        var cleanFile = file
        cleanFile = cleanFile.replacingOccurrences(of: "\r", with: "\n")
        cleanFile = cleanFile.replacingOccurrences(of: "\n\n", with: "\n")
        //        cleanFile = cleanFile.replacingOccurrences(of: ";;", with: "")
        //        cleanFile = cleanFile.replacingOccurrences(of: ";\n", with: "")
        return cleanFile
    }
    
    func csv(data: String) -> [[String]] {
        var result: [[String]] = []
        let rows = data.components(separatedBy: "\n")
        for row in rows {
            let columns = row.components(separatedBy: ",")
            result.append(columns)
        }
        return result
    }
    
    override func viewDidLoad() {
        do {
            //let url = Bundle.main.path(forResource: "LocationData", ofType: "csv")
            var read = try String(contentsOf: URL(fileURLWithPath: "/Users/jamescrowley/Documents/GitHub/Donation-Tracker-iOS/Donation Tracker iOS/Donation Tracker/Donation Tracker/LocationData.csv"))
            read = cleanRows(file: read)
            var temp = csv(data: read)
        
            Locations.set(locations: [Location.init(name: temp[1][1], type: temp[1][8], longitude: temp[1][3], latitude: temp[1][2], address: temp[1][4], phoneNumber: temp[1][9])])
            for i in 2..<temp.count {
                Locations.add(location: Location.init(name: temp[i][1], type: temp[i][8], longitude: temp[i][3], latitude: temp[i][2], address: temp[i][4], phoneNumber: temp[i][9]))
            }
        
        } catch is Error {
            Error.self
        }
        
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
