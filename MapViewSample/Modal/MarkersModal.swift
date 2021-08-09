//
//  MarkersModal.swift
//  MapViewSample
//
//  Created by Gauravkumar Thummar on 2021-08-06.
//

import Foundation
struct MarkersModal: Hashable, Codable {
    var lat: Double
    var lon: Double
    var name: String
    var description: String
    var color: String
}
