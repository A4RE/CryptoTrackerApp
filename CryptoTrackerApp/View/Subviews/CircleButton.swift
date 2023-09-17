//
//  CircleButton.swift
//  CryptoTrackerApp
//
//  Created by Андрей Коваленко on 17.09.2023.
//

import SwiftUI

struct CircleButton: View {
    
    let imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .font(.headline)
            .foregroundColor(Color.theme.mainColor)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.backgroundColor)
            )
            .shadow(color: Color.theme.mainColor.opacity(0.3),
                    radius: 10,
                    x: 0, y: 0)
            .padding()
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleButton(imageName: "info")
                .previewLayout(.sizeThatFits)
            CircleButton(imageName: "plus")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
