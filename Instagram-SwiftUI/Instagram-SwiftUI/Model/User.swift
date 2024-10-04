//
//  User.swift
//  Instagram-SwiftUI
//
//  Created by Mykyta Yarovoi on 01.10.2024.
//

import Foundation
import FirebaseAuth

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Teddy", profileImageUrl: nil, fullname: "Teddy Iron", bio: "woof-woof", email: "teddy@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Viktor", profileImageUrl: nil, fullname: "Viktor Jun", bio: "wooooof", email: "v.jun@gmai.com"),
        .init(id: NSUUID().uuidString, username: "Julia", profileImageUrl: nil, fullname: "Julia Cute", bio: "Do you like me", email: "jul@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Sam", profileImageUrl: nil, fullname: "Sam Smith", bio: "Meyy", email: "Smith@gmail.com")
    ]
}
