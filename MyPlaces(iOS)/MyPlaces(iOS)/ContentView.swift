//
//  ContentView.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
        }//vstack
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
    } //body
} //contentview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
