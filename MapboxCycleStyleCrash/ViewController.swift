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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapView = MGLMapView(frame: view.bounds,
                                 styleURL: MGLStyle.outdoorsStyleURL())
        
        // Tint the ℹ️ button and the user location annotation.
        mapView.tintColor = .darkGray
        
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Set the map’s center coordinate and zoom level.
        mapView.setCenter(CLLocationCoordinate2D(latitude: 51.50713,
                                                 longitude: -0.10957),
                          zoomLevel: 13, animated: false)
        view.addSubview(mapView)
        
    }
}

