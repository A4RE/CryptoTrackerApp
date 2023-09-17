//
//  ContentView.swift
//  CryptoTrackerApp
//
//  Created by Андрей Коваленко on 17.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.backgroundColor
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Main Color")
                    .foregroundColor(Color.theme.mainColor)
                Text("Green Color")
                    .foregroundColor(Color.theme.greenColor)
                Text("Red Color")
                    .foregroundColor(Color.theme.redColor)
                Text("Secondary Color")
                    .foregroundColor(Color.theme.secondaryColor)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
