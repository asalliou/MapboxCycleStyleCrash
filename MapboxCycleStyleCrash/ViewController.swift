//
//  ViewController.swift
//  MapboxCycleStyleCrash
//
//  Created by Antoine on 30/01/2018.
//  Copyright © 2018 Antoine. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController, MGLMapViewDelegate {
    
    @IBOutlet weak var mapView: MGLMapView!
    @IBOutlet weak var switchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        mapView.styleURL = URL(string: "mapbox://styles/asalliou/cj7rci3vidn2u2spdpgthstap")
        switchButton.isHidden = true
        
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
    
    func mapView(_ mapView: MGLMapView, didFinishLoading style: MGLStyle) {
        print("didFinishLoading")
        
        switchButton.isHidden = false
    }
    
}

