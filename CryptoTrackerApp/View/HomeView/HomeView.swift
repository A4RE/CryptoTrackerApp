//
//  HomeView.swift
//  CryptoTrackerApp
//
//  Created by Андрей Коваленко on 17.09.2023.
//

import SwiftUI

struct HomeView: View {
    @State private var isProfileViewShow: Bool = false
    var body: some View {
        ZStack {
            Color.theme.backgroundColor
                .ignoresSafeArea()
            VStack {
                header
                .font(.title2)
                .padding(.horizontal, 10)
                Spacer(minLength: 0)
            }
        }
    }
    
    var header: some View {
        HStack {
            CircleButton(imageName: isProfileViewShow ? "chevron.left" : "info")
            Spacer()
            Text(isProfileViewShow ? "Profile" : "Today Prices")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.theme.mainColor)
            Spacer()
            CircleButton(imageName: isProfileViewShow ? "plus" : "person.fill")
                .onTapGesture {
                    withAnimation(.spring()) {
                        isProfileViewShow.toggle()
                    }
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView()
                .toolbar(.hidden, for: .navigationBar)
        }
    }
}
