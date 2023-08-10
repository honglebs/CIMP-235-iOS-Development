//
//  LandmarkDetail.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/23/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var landmarksVM: LandmarksViewModel
    var landmark: Landmark
    
    var landmarkIndex: Int {
        landmarksVM.landmarks.firstIndex(where:{ $0.id == landmark.id})!
    }
    
    var body: some View {
        VStack {
            MapView(coodrinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            CirclePic(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $landmarksVM.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                } //hstack
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
            }//vstack for text
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        } //vstack for map
        
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
            
    } //body
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: LandmarksViewModel().landmarks[0])
    }
}
