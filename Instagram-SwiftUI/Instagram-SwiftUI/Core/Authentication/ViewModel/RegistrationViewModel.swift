//
//  RegistrationViewModel.swift
//  Instagram-SwiftUI
//
//  Created by Mykyta Yarovoi on 02.10.2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, username: username)
    }
}
