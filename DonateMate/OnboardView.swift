//
//  OnboardView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
// COMMENT

import SwiftUI

struct OnboardView: View {
    @State private var isActive = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.3, green: 0.13, blue: 0.7)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    
                    Image("OnboardElements")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 402, height: 874)
                    
                    Spacer()
                }
                //Loading Indicator
                VStack {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(1.5)
                    
                    Text("Loading...")
                        .font(.system(size: 16, weight: .medium))
                        .opacity(0.7)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                }
                .padding(.top , 500)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    isActive = true
                }
            }
            .fullScreenCover(isPresented: $isActive) {
                LaunchView() // Replaces OnboardView completely after navigating
            }
        }
    }
}
#Preview {
    OnboardView()
}

