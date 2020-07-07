//
//  ViewController.swift
//  MapTrack
//
//  Created by Константин Киски on 07.07.2020.
//  Copyright © 2020 Константин Киски. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController, MGLMapViewDelegate {
    
    // MARK: - UI Elements
    
    @IBOutlet weak var mapView: MGLMapView!
    
    // MARK: - Variables

    private let locationManager = CLLocationManager()
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getLocation()
        setMapbox()

    }
    
    // MARK: - Set content
    
    private func setMapbox() {
        mapView.styleURL = MGLStyle.darkStyleURL
    }
    
    // MARK: - Get location
    
    private func getLocation() {
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            mapView.showsUserLocation = true
            mapView.userTrackingMode = .followWithHeading
            mapView.showsUserHeadingIndicator = true
        }
    }

}

