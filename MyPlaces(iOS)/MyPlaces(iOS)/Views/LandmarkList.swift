//
//  LandmarkList.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/23/23.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            
            
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites Only")
                })
                
                ForEach(filteredLandmarks) {
                    thisLandmark in
                    NavigationLink(
                        destination: LandmarkDetail(landmark: thisLandmark)) {
                            LandmarkRow(landmark: thisLandmark)
                        }
                }
                .navigationTitle("My Places")
                
            }
            
        }
    }
    
    struct LandmarkList_Previews: PreviewProvider {
        static var previews: some View {
            LandmarkList()
        }
    }
}
