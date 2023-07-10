//
//  ContentView.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea([.top])
                .frame(height:300)
            CirclePic()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                } //hstack
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("The massive formation is located across from the parking lot from the enterance into Real Hidden Valley area in Joshua Tree National Park.")
                
            }//vstack for text
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
        } //vstack for map
            
    } //body
} //contentview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
                .previewDisplayName("dark")
            ContentView()
                .preferredColorScheme(.light)
                .previewDisplayName("light large")
                .environment(\.sizeCategory, .extraLarge)
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                .previewDisplayName("iPhone 12")
        }
    }
}
