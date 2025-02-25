//
//  DonorPickupView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct DonorPickupView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Pickups")
                        .font(
                            Font.custom("SF Pro Display", size: 30)
                                .weight(.bold)
                        )
                        .kerning(0.6)
                        .foregroundColor(Color(red: 0.3, green: 0.13, blue: 0.7))
                        .frame(width: 136, alignment: .topLeading)
                    Image("cornerlogo")
                        .frame(maxWidth: 50, maxHeight: 50)
                    
                }
                
            }
        }
        .frame(width: 800, height: 1221)
        .background(Color(red: 0.87, green: 0.87, blue: 1))
    }
    
}

#Preview {
    DonorPickupView()
}
