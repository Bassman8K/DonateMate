//
//  DonorInputSuccessfulView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 26/02/2025.
//

import SwiftUI

struct DonorInputSuccessfulView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Image("horizontallogo")
                    .resizable()
                    .scaledToFit()
                    .padding(.top, 10)
                
                Spacer()
                Image("checksymbol")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Spacer()
                Text("Your donated item have been\nsuccessfully uploaded")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.darkPurple)
                NavigationStack {
                    NavigationLink(destination: DonorTabView()) {
                        Text("Go back home")
                    }
                    .buttonStyle(.borderedProminent)
                    .foregroundStyle(.lightPurple)
                    .background(.lightPurple)
                    
                }
            }
        }
        
    }
}

#Preview {
    DonorInputSuccessfulView()
}
