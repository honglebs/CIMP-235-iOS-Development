//
//  MapView.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/10/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coodrinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.01153678507717, longitude: -116.16671623476682),
        span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear(){
                setRegion(coodrinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coodrinate: CLLocationCoordinate2D(latitude: 34.01153678507717, longitude: -116.16671623476682))
    }
}

