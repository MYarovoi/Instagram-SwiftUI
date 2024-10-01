//
//  ContentView.swift
//  Instagram-SwiftUI
//
//  Created by Mykyta Yarovoi on 26.09.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else {
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
