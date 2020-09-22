//
//  CircleImage.swift
//  HackAThing
//
//  Created by Iain Sheerin on 9/18/20.
// From tutorial https://developer.apple.com/tutorials/swiftui/handling-user-input
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
