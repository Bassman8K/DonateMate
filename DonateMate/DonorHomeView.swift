//
//  DonorHomeView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct DonorHomeView: View {
    @State var user: String = "Sally"
    var body: some View {
        ZStack() {
            Color.lightPurple.edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
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
                
                
                HStack {
                    Text("Hi \(user)")
                        .font(Font.custom("SF Pro Display", size: 33.09196))
                        .kerning(0.66184)
                        .foregroundColor(Color(red: 0.3, green: 0.13, blue: 0.7))
                        .frame(width: 133.94118, alignment: .topLeading)
                    ZStack {
                        Text("Let's support the vulnerable\nAustralian communities!")
                            .font(Font.custom("SF Pro Display", size: 14.28146))
                            .kerning(0.28563)
                            .foregroundColor(Color(red: 0.3, green: 0.13, blue: 0.7))
                            .frame(width: 181.50731, alignment: .topLeading)
                            .background(Color(red: 1, green: 0.8, blue: 0))
                        
                    }
                    .background(Color(red: 0.968627451, green: 0.968627451, blue: 0.968627451))
                    .frame(width: 206.16499, height: 52.38177)
                    .background(Color(red: 1, green: 0.8, blue: 0))
                    .cornerRadius(15.12154)
                    .shadow(color: Color(red: 0.3, green: 0.13, blue: 0.7).opacity(0.3), radius: 1.68017, x: 0, y: 3.36034)
                }
                
                
                
                
                
                
            }
        }
    }
}

#Preview {
    DonorHomeView()
}
