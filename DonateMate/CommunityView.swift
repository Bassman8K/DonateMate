//
//  CommunityView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        ZStack {
            Color.lightPurple.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    
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
    CommunityView()
}
