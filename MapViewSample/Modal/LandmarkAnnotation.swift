//
//  LandmarkAnnotation.swift
//  MapViewSample
//
//  Created by Gauravkumar Thummar on 2021-08-06.
//

import Foundation
import MapKit
class LandmarkAnnotation: NSObject, MKAnnotation {
    let name: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    
    init(name: String?,
     subtitle: String?,
     coordinate: CLLocationCoordinate2D) {
        self.name = name
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}
