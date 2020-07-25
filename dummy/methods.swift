//
//  methods.swift
//  dummy
//
//  Created by Khalid Alhazmi on 24/07/2020.
//  Copyright © 2020 Khalid Alhazmi. All rights reserved.
//

import Foundation
import MapKit
import CoreLocation



extension UIViewController{
    
    
    func SwitchViewMode() {
        if (UserDefaults.standard.bool(forKey: "Mode")){
            switchtToDarkMode()
        }else{
            switchtToLightMode()
        }
    }
    
    func switchtToDarkMode() {
        
         overrideUserInterfaceStyle = .dark
         self.tabBarController?.tabBar.overrideUserInterfaceStyle = .dark
         self.navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        
//        var preferredStatusBarStyle: UIStatusBarStyle {
//                return .darkContent
//        }
         
        //self.navigationController? = .dark
        self.setNeedsStatusBarAppearanceUpdate()


         UserDefaults.standard.set(true, forKey: "Mode")

    }
    
    func switchtToLightMode() {
         overrideUserInterfaceStyle = .light
         self.tabBarController?.tabBar.overrideUserInterfaceStyle = .light
         self.navigationController?.navigationBar.overrideUserInterfaceStyle = .light
        
        //self.navigationController?.childForStatusBarStyle?.overrideUserInterfaceStyle = .light
//        
//        var preferredStatusBarStyle: UIStatusBarStyle {
//                return .lightContent
//        }
        
        self.setNeedsStatusBarAppearanceUpdate()

         
         UserDefaults.standard.set(false, forKey: "Mode")

    }
    
    
 
}











extension UIViewController: CLLocationManagerDelegate{
    
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
          debugPrint("ddsjkgd")
          guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
          
          
          print("(\(locValue.latitude)),  (\(locValue.longitude))")
      }
      
    public func locationManager(_ manager: CLLocationManager, didFailWithError error: Swift.Error) {
          print("error in location")
          
      }
    
}

