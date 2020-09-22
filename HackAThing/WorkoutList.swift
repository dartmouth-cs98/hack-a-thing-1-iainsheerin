//
//  WorkoutList.swift
//  HackAThing
//
//  Created by Iain Sheerin on 9/20/20.
//

import SwiftUI

struct WorkoutList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(userData.workouts) { workout in
                    if !self.userData.showFavoritesOnly || workout.isFavorite {
                NavigationLink(destination: WorkoutDetail(workout: workout)) {
                    WorkoutRow(workout: workout)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Exercises"))
        }
    }
}

struct WorkoutList_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutList()
    }
}
