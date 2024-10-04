//
//  ProfileView.swift
//  Instagram-SwiftUI
//
//  Created by Mykyta Yarovoi on 26.09.2024.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    
    var body: some View {
        ScrollView {
            ProfileHeaderView(user: user)
            
            PostGridView(user: user)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
