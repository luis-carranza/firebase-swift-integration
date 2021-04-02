//
//  UserVireController.swift
//  FirebaseInteraction
//
//  Created by Luis Javier Carranza on 31/03/21.
//

import Foundation
import FirebaseFirestore

class UserController: ObservableObject {
    
    @Published var users = [User]()
    
    var db = Firestore.firestore()
    
    func getUsers() {
        db.collection("Users").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.users = documents.map { (queryDocumentSnapshot) -> User in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                let active = data["active"] as? Bool ?? true
                let id = data["id"] as? UUID ?? UUID()
                return User(id: id, name: name, active: active)
            }
        }
    }
    
}
