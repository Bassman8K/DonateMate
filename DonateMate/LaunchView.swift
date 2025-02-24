//
//  LaunchView.swift
//  DonateMate
//
//  Created by Phan Le Hong Phuc on 24/2/2025.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        ZStack {
            Image("logowithquote")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
        }
        .foregroundStyle(Color(red: 0.87, green: 0.87, blue: 1))
    }
}

#Preview {
    LaunchView()
}
