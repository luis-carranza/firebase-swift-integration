//
//  FirebaseInteractionApp.swift
//  FirebaseInteraction
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI
import Firebase

@main
struct FirebaseInteractionApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
