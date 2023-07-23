//
//  LandmarkList.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/23/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            
            List(landmarks){
                thisLandmark in
                    NavigationLink(destination: LandmarkDetail(landmark: thisLandmark)) {
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
