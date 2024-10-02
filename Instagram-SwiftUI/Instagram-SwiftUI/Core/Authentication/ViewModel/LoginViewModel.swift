//
//  LoginViewModel.swift
//  Instagram-SwiftUI
//
//  Created by Mykyta Yarovoi on 02.10.2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
