//
//  Landmark.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/23/23.
//

import Foundation
import SwiftUI
import CoreLocation

//defining a cookie cutter (model)
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    //defining a mini model inside cookie cutter
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    //represent a placeholder?
    private var coordinates: Coordinates
    
    //represents location coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }

    
    
    
}
