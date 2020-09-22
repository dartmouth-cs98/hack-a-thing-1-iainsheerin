//
//  WorkoutDetail.swift
//  HackAThing
//
//  Created by Iain Sheerin on 9/20/20.
//

import SwiftUI

struct WorkoutDetail: View {
    @EnvironmentObject var userData: UserData
    var workout: Workout
    
    var workoutIndex: Int {
        userData.workouts.firstIndex(where: { $0.id == workout.id })!
    }
    
    var body: some View {
        VStack {

            CircleImage(image: workout.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(workout.name)
                        .font(.title)
                    
                    Button(action: {
                        self.userData.workouts[self.workoutIndex]
                            .isFavorite.toggle()
                    })  {
                        if self.userData.workouts[self.workoutIndex]
                            .isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }

                HStack(alignment: .top) {
                    
                    
                    Text(workout.primaryMuscle)
                        .font(.subheadline)
                    Spacer()
                    Text(workout.equipment)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct WorkoutDetail_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetail(workout: workoutData[0])
            .environmentObject(UserData())
    }
}
