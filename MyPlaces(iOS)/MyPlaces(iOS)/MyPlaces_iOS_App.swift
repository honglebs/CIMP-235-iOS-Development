//
//  MyPlaces_iOS_App.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/3/23.
//

import SwiftUI

@main
struct MyPlaces_iOS_App: App {
    // body is inherited from the scene
    // scene is a group of windows that can be managed by the OS
    // ContentView is an object (another box called struct)
    
    @StateObject private var landmarksVM = LandmarksViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(landmarksVM)
        }
    }
}
