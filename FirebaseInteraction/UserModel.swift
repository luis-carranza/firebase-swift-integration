//
//  UserModel.swift
//  FirebaseInteraction
//
//  Created by Luis Javier Carranza on 31/03/21.
//

import Foundation

struct User: Identifiable, Hashable {
    
    var id: UUID
    
    var name: String
    var active: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}
