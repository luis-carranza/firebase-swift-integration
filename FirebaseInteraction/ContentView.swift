//
//  ContentView.swift
//  FirebaseInteraction
//
//  Created by Luis Javier Carranza on 25/03/21.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @ObservedObject private var userModel = UserController()
    
    var body: some View {
        NavigationView {
            List(userModel.users) { user in
                VStack(alignment: .leading) {
                    Text(user.name).font(.title)
                    Text(String(user.active)).font(.subheadline)
                }
            }.navigationBarTitle("Users")
            .onAppear() {
                self.userModel.getUsers()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {

    
    static var previews: some View {
        ContentView()
    }
}
