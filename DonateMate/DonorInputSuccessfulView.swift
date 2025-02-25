//
//  DonorInputSuccessfulView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 26/02/2025.
//

import SwiftUI

struct DonorInputSuccessfulView: View {
    var body: some View {
        VStack {
            Color.lightPurple.ignoresSafeArea(edges: .all)
            HStack(alignment: .center, spacing: 0) {
                Image("Vector 9")
                    .background(Color.lightPurple)
                    .foregroundStyle(.lightPurple)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("onate")
                    .font(
                        Font.custom("Feather", size: 37.55211)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.3, green: 0.13, blue: 0.7))
                
                Image("Vector 8")
                
                    .rotationEffect(Angle(degrees: 6.25))
                Text("ate")
                    .font(
                        Font.custom("Feather", size: 37.55211)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.2, green: 0.78, blue: 0.35))
            }
        }
        
    }
}

#Preview {
    DonorInputSuccessfulView()
}
