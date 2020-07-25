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
        
        //self.tabBarController?.tabBar.barStyle = .black


    }

//            locationManager.requestAlwaysAuthorization()
//            locationManager.requestWhenInUseAuthorization()
//            if CLLocationManager.locationServicesEnabled() {
//                locationManager.delegate = self
//                locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
//                //locationManager.startUpdatingLocation()
//                locationManager.requestLocation()
//                debugPrint("ppp")
//            }
        
  //  }
    

    
    
    @IBAction func swichAction(_ sender: Any) {
        if swichButton.isOn{
            switchtToDarkMode()
            //UINavigationBar.appearance().overrideUserInterfaceStyle = .dark

            //self.navigationController?.navigationBar.barStyle = .black
            //UserDefaults.standard.set(true, forKey: "Mode")

        }
        else{
            switchtToLightMode()
            //UINavigationBar.appearance().overrideUserInterfaceStyle = .light
            //self.navigationController?.navigationBar.barStyle = .default
            //UserDefaults.standard.set(false, forKey: "Mode")

        }
    }
    
    
}
    
//
//extension ViewController: CLLocationManagerDelegate{
//
//        func fetchCityAndCountry(from location: CLLocation, completion: @escaping (_ city: String?, _ country:  String?, _ error: Error?) -> ()) {
//            CLGeocoder().reverseGeocodeLocation(location) { placemarks, error in
//                completion(placemarks?.first?.locality,
//                           placemarks?.first?.country,
//                           error)
//            }
//        }
//
//
//
//        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
//            print("location manager authorization status changed")
//        }
//
//
//
////        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
////            debugPrint("ddsjkgd")
////            //guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
////
////            guard let location: CLLocation = manager.location else { return }
////
////            fetchCityAndCountry(from: location) { city, country, error in
////                guard let city = city, let _ = country, error == nil else { return }
////                self.label.text = "(\(city))"
////
////            }
////
////            //label.text = "(\(locValue.latitude)),  (\(locValue.longitude))"
////        }
////
////    func locationManager(_ manager: CLLocationManager, didFailWithError error: Swift.Error) {
////        print("error")
////
////    }
//
//
//
//
//}
//
//}
//


