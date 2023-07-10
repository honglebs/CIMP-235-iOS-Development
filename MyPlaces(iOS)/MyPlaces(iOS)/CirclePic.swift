//
//  CirclePic.swift
//  MyPlaces(iOS)
//
//  Created by Hong Le on 7/3/23.
//

import SwiftUI

struct CirclePic: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay((Circle().stroke(Color.white, lineWidth: 4)))
            .shadow(radius: 8)
    }
}

struct CirclePic_Previews: PreviewProvider {
    static var previews: some View {
        CirclePic()
    }
}
