//
//  OnboardView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
// COMMENT

import SwiftUI

struct OnboardView: View {
    var body: some View {
        VStack {
            
            Image("OnboardElements")
                .resizable()
                .aspectRatio(contentMode: .fit)

                .frame(width: 402, height: 874)
                .background(Color(red: 0.3, green: 0.13, blue: 0.7))
        }
        .padding()
    }
}

#Preview {
    OnboardView()
}
