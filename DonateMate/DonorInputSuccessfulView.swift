//
//  DonorInputSuccessfulView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 26/02/2025.
//

import SwiftUI

struct DonorInputSuccessfulView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("horizontallogo")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 50)
            Spacer()
            Image("checksymbol")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
            Spacer()
            VStack(alignment: .center, spacing: 10) {
                Text("Your donated item has been successfully uploaded.")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color("darkPurple"))
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text("Sit and relax while your item is being worked on.")
                    .font(.subheadline)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(.horizontal, 30)
            Spacer()
            NavigationLink(destination: DonorTabView()) {
                Text("Go back to home")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 250, height: 50)
                    .background(Color("darkPurple"))
                    .cornerRadius(20)
                    .shadow(radius: 3)
            }
            Spacer()
        }
        .padding(.vertical, 30)
        .background(Color(red: 0.87, green: 0.87, blue: 1))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
#Preview {
    DonorInputSuccessfulView()
}
