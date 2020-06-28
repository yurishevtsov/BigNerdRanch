//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Yuri Shevtsov on 6/21/20.
//  Copyright © 2020 Yuri Shevtsov. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        // MARK: Create a map view
        mapView = MKMapView()
        
        // MARK: Set it as THE view of this view controller
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(segmentedControl)
        
        let topConstrain = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        
        let margins = view.layoutMarginsGuide
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstrain = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        topConstrain.isActive = true
        leadingConstraint.isActive = true
        trailingConstrain.isActive = true
        
        let poiLabel = UILabel()
        poiLabel.text = "Points of Interest"
        
        poiLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(poiLabel)
        
        let labelTopConstrain = poiLabel.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 25)
        let labelLeadingConstrain = poiLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        
        labelTopConstrain.isActive = true
        labelLeadingConstrain.isActive = true
        
        let poiSwitch = UISwitch()
        
        poiSwitch.addTarget(self, action: #selector(pointsOfInterestFilter(_:)), for: .valueChanged)
        
        poiSwitch.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(poiSwitch)
        
        let switchTopConstrain = poiSwitch.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 25)
        let switchLeadingConstrain = poiSwitch.leadingAnchor.constraint(equalTo: poiLabel.trailingAnchor, constant: 25)
        
        switchTopConstrain.isActive = true
        switchLeadingConstrain.isActive = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        mapView.pointOfInterestFilter = .excludingAll
        print("MapViewController loaded its view.")
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
 // MARK: test
    @objc func pointsOfInterestFilter(_ switchControl: UISwitch) {
        if (switchControl.isOn) {
            print("PoI enabled")
//            mapView.showsPointsOfInterest = true
            mapView.pointOfInterestFilter = .includingAll
//            mapView.pointOfInterestFilter?.includes(.airport)
            
        } else {
            print("PoI disabled")
//            mapView.showsPointsOfInterest = false
            mapView.pointOfInterestFilter = .excludingAll
        }
    }

    
}
