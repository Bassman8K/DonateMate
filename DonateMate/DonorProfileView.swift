//
//  DonorProfileView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct DonorProfileView: View {
    var body: some View {
        ZStack {
            Color.lightPurple.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("My Profile")
                        .scaledToFit()
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(alignment: .topLeading)
                        .foregroundStyle(.darkPurple)
                    Spacer()
                    Image("cornerlogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding()
                        
                }
                .padding(.top, 10)
                Spacer()
                
                
            }
        }
    }
}

#Preview {
    DonorProfileView()
}
