//
//  ContentViewModel.swift
//  Instagram-SwiftUI
//
//  Created by Mykyta Yarovoi on 01.10.2024.
//

import Foundation
import Firebase
import FirebaseAuth
import Combine

class ContentViewModel: ObservableObject {
    private let service = AuthService.shared
    private var cancelables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers() {
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancelables)
        
        service.$currentUser.sink { [weak self] currentUser in
            self?.currentUser = currentUser
        }
        .store(in: &cancelables)
    }
}
