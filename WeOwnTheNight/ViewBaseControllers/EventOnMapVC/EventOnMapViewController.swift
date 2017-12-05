//
//  EventOnMapViewController.swift
//  WeOwnTheNight
//
//  Created by Ramandeep Singh on 06/11/17.
//  Copyright © 2017 Ramandeep Singh. All rights reserved.
//

import UIKit
import MapKit

class EventOnMapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named:"top_bar"), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.isTranslucent = false
        
        self.setNavigationBar(title: "EVENT ON MAP",leftButton: "nav")
        // Do any additional setup after loading the view.
        self.navigationItem.leftBarButtonItem?.action = #selector(self.toggleSideMenuBtn)

        
        mapView.delegate = self
        mapView.showsUserLocation = true
   
        locationManager.delegate = self
        //Check for Location Services
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
        //    locationManager.requestAlwaysAuthorization()
            locationManager.requestWhenInUseAuthorization()
        }
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
        }
   
        
        DispatchQueue.main.async {
            self.locationManager.startUpdatingLocation()
        }
    
    }
    //MARK: - side menu open and close
    @IBAction func toggleSideMenuBtn(_ sender: UIBarButtonItem) {
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        appDelegate.drawerContainer!.toggle(MMDrawerSide.left, animated: true, completion: nil)
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])  {
        let location = locations.last as! CLLocation
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        var region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        region.center = mapView.userLocation.coordinate
        mapView.setRegion(region, animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
