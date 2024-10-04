//
//  FeedViewModel.swift
//  Instagram-SwiftUI
//
//  Created by Mykyta Yarovoi on 04.10.2024.
//

import Foundation
import FirebaseFirestore

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws {
        self.posts = try await PostService.fetchFeedPosts()
    }
}
