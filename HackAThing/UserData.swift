//
//  UserData.swift
//  HackAThing
//
//  Created by Iain Sheerin on 9/19/20.
// From tutorial https://developer.apple.com/tutorials/swiftui/handling-user-input
// altered for workouts app

import Foundation
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly = false
    @Published var workouts = workoutData
}
