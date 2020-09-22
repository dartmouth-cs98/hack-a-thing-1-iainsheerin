//
//  HackAThingApp.swift
//  HackAThing
//
//  Created by Iain Sheerin on 9/16/20.
//

import SwiftUI
//Test
//Test2
@main
struct HackAThingApp: App {
    
    let context = PersistentCloudKitContainer.persistentContainer.viewContext // @Volker88 see PersistentCloudKitContainer
    
    var body: some Scene {
        WindowGroup {
            WorkoutList().environmentObject(UserData())
                .environment(\.managedObjectContext, context) // @Volker88 see PersistentCloudKitContainer
        }
    }
}
