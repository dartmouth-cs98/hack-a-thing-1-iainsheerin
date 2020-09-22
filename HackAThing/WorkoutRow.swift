//
//  WorkoutRow.swift
//  HackAThing
//
//  Created by Iain Sheerin on 9/20/20.
//

import SwiftUI

struct WorkoutRow: View {
    var workout: Workout
    var body: some View {
        HStack {
            workout.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(workout.name)
            Spacer()
            
            if workout.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct WorkoutRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WorkoutRow(workout: workoutData[0])
            WorkoutRow(workout: workoutData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
