//
//  User.swift
//  Instagram-SwiftUI
//
//  Created by Mykyta Yarovoi on 01.10.2024.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Teddy", profileImageUrl: "images (1)", fullname: "Teddy Iron", bio: "woof-woof", email: "teddy@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Viktor", profileImageUrl: "images (2)", fullname: "Viktor Jun", bio: "wooooof", email: "v.jun@gmai.com"),
        .init(id: NSUUID().uuidString, username: "Julia", profileImageUrl: "images", fullname: "Julia Cute", bio: "Do you like me", email: "jul@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Sem", profileImageUrl: "ProfileImage", fullname: "Sem Smith", bio: "Meyy", email: "Smith@gmail.com")
    ]
}
