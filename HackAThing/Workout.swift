//
//  Workout.swift
//  HackAThing
//
//  Created by Iain Sheerin on 9/19/20.
//

import SwiftUI

struct Workout: Hashable, Decodable, Identifiable {
    var id: Int
    var name: String
    var primaryMuscle: String
    var secondaryMuscles: [String]
    var equipment: String
    fileprivate var imageName: String
    var isFavorite: Bool
    
}

extension Workout {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Workout_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
