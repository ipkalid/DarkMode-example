//
//  ViewController2.swift
//  dummy
//
//  Created by Khalid Alhazmi on 25/07/2020.
//  Copyright © 2020 Khalid Alhazmi. All rights reserved.
//

import Foundation
import MapKit
import CoreLocation

class ViewController2: UIViewController {
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
            SwitchViewMode()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {

            SwitchViewMode()

    }
    
    
}
