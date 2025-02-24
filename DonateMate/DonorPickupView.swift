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
                    Spacer()
                    VStack {
                        HStack(spacing: 0) {
                            Image("Vector 9")
                            
                                .rotationEffect(Angle(degrees: 20.86))
                                .background(Color.lightPurple)
                                .foregroundStyle(.lightPurple)
                                .font(.largeTitle)
                            Text("onate")
                                .font(
                                    Font.custom("Feather", size: 37.55211)
                                        .weight(.bold)
                                )
                                .foregroundColor(Color(red: 0.3, green: 0.13, blue: 0.7))
                            
                        }
                        HStack {
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
            }
        .frame(width: 402, height: 1221)
        .background(Color(red: 0.87, green: 0.87, blue: 1))
        }
        
    }

#Preview {
    DonorPickupView()
}
