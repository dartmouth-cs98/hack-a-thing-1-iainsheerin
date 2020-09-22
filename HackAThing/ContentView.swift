//
//  ContentView.swift
//  HackAThing
//
//  Created by Iain Sheerin on 9/16/20.
// From tutorial https://developer.apple.com/tutorials/swiftui/handling-user-input

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            MapView(coordinate: landmark.locationCoordinate)
//                .edgesIgnoringSafeArea(.top)
//                .frame(height: 300)

//            CircleImage()
//                .offset(y: -230)
//                .padding(.bottom, -120)
            LandmarkRow(landmark: landmarkData[0])
            VStack(alignment: .leading) {
                Text("Bench")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                HStack {
                    Text("Chest, arms")
                        .font(.subheadline)
                    Spacer()
                    Text("Upper Body")
                        .font(.subheadline)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
