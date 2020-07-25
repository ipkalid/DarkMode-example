//
//  ViewController.swift
//  dummy
//
//  Created by Khalid Alhazmi on 24/07/2020.
//  Copyright © 2020 Khalid Alhazmi. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    
    

    @IBOutlet weak var swichButton: UISwitch!

    let locationManager = CLLocationManager()

     override func viewDidLoad() {
            super.viewDidLoad()
      
        
        if UserDefaults.standard.bool(forKey: "Mode"){
            swichButton.setOn(true, animated: false)
        }else{
            swichButton.setOn(false, animated: false)
        }
        
                SwitchViewMode()
    }
    override func viewWillAppear(_ animated: Bool) {
                SwitchViewMode()
        


    }


    

    
    
    @IBAction func swichAction(_ sender: Any) {
        if swichButton.isOn{
            switchtToDarkMode()


        }
        else{
            switchtToLightMode()
  

        }
    }
    
    
}
