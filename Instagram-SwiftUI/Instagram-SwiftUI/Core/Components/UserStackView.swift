//
//  UserStackView.swift
//  Instagram-SwiftUI
//
//  Created by Mykyta Yarovoi on 26.09.2024.
//

import SwiftUI

struct UserStackView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)    }
}

#Preview {
    UserStackView(value: 12, title: "Posts")
}
