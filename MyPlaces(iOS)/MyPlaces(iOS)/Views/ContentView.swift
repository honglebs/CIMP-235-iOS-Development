//
//  ContentView.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
    
} //contentview

struct ContentView_Previews: PreviewProvider { 
    static var previews: some View {
        Group {
            ContentView().environmentObject(LandmarksViewModel())
        }
        
    }
}
