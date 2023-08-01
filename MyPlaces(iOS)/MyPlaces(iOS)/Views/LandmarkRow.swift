//
//  LandmarkRow.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/23/23.
//

import SwiftUI

struct LandmarkRow: View {
    //require a type to send
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width:58, height:50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        //sending the first value
        LandmarkRow(landmark: landmarks[0])
    }
}
