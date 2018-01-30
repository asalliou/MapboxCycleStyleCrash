//
//  ViewController.swift
//  MapboxCycleStyleCrash
//
//  Created by Antoine on 30/01/2018.
//  Copyright © 2018 Antoine. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MGLMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.styleURL = URL(string: "mapbox://styles/asalliou/cj7rci3vidn2u2spdpgthstap")
        
        // Tint the ℹ️ button and the user location annotation.
        mapView.tintColor = .darkGray
        
        // Set the map’s center coordinate and zoom level.
        mapView.setCenter(CLLocationCoordinate2D(latitude: 51.50713,
                                                 longitude: -0.10957),
                          zoomLevel: 13, animated: false)
    }
    
    @IBAction func switchStyle(_ sender: Any) {
        mapView.styleURL = URL(string: "mapbox://styles/asalliou/cjd02pgzg15th2rmi52xtwovh")
    }
    
}

