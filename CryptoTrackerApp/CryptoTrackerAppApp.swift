//
//  CryptoTrackerAppApp.swift
//  CryptoTrackerApp
//
//  Created by Андрей Коваленко on 17.09.2023.
//

import SwiftUI

@main
struct CryptoTrackerAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .toolbar(.hidden, for: .navigationBar)
            }
        }
    }
}
