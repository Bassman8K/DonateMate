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
                Form {
                    HStack {
                        Image(systemName: "person.fill")
                            .frame(width: 42.02667, height: 42.02667)
                        Text("My profile")
                    }
                    .padding(.top, 10)
                    
                    HStack {
                        Image(systemName: "gearshape.fill")
                            .frame(width: 42.02667, height: 42.02667)
                        Text("Settings")
                    }
                    
                    HStack {
                        Image(systemName: "ellipsis.message.fill")
                            .frame(width: 42.02667, height: 42.02667)
                        Text("Help")
                    }
                    HStack {
                        Image(systemName: "text.page.fill")
                            .frame(width: 42.02667, height: 42.02667)
                        Text("Privacy Policy")
                    }
                    HStack {
                        Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                            .frame(width: 42.02667, height: 42.02667)
                        Text("Log out")
                    }
                    Spacer()
                    Spacer()
                }
                .foregroundStyle(.darkPurple)
                
            }
            .frame(alignment: .topLeading)
        }
    }
}

#Preview {
    DonorProfileView()
}
