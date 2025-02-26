//
//  DonorStarView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct DonorStarView: View {
    var body: some View {
        ZStack {
            Color.lightPurple.edgesIgnoringSafeArea(.all)
            VStack {
                Image("horizontallogo")
                    .resizable()
                    .scaledToFit()
                Spacer()
                ZStack {
                   Image("checksymbol")
                        .resizable()
                        .scaledToFit()
                    Image("profileimage")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
            }
        }
    }
}

#Preview {
    DonorStarView()
}
