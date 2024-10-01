//
//  Post.swift
//  Instagram-SwiftUI
//
//  Created by Mykyta Yarovoi on 01.10.2024.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timeStamp: Data
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Some text for now 1",
              likes: 100,
              imageUrl: "images (1)",
              timeStamp: Data(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Some text for now 2",
              likes: 101,
              imageUrl: "images (2)",
              timeStamp: Data(),
              user: User.MOCK_USERS[1]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Some text for now 3",
              likes: 102,
              imageUrl: "images",
              timeStamp: Data(),
              user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "Some text for now 4",
              likes: 103,
              imageUrl: "ProfileImage",
              timeStamp: Data(),
              user: User.MOCK_USERS[3]
             )
    ]
}
