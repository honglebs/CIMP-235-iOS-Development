//
//  ContentView.swift
//  FirstProject
//
//  Created by Hong Le on 6/20/23.
//

import SwiftUI

struct ContentView: View {
    @State var isTextVisible = true
    var body: some View {
        VStack {
            Image(systemName: "eraser")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            if isTextVisible {
                Text("Hello world from \n Hong Le!")
                    .multilineTextAlignment(.center)
            } else {
                Text("")
            }
            
            Button("Erase") {
                isTextVisible.toggle()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
