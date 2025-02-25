//
//  OnboardView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
// COMMENT

import SwiftUI

class NewDonation : ObservableObject {
    
    @Published var donationArray: [Donation] = []
}

struct OnboardView: View {
    
    @StateObject var newDonations  = NewDonation()
    
    var body: some View {
        VStack {
            
            Image("OnboardElements")
                .resizable()
                .aspectRatio(contentMode: .fit)

                .frame(width: 402, height: 874)
                .background(Color(red: 0.3, green: 0.13, blue: 0.7))
        }
        .padding()
        VStack{
            createListing()
            CharityDonationsView()
        }
        .environmentObject(newDonations)

    }
    
    
}

#Preview {
    OnboardView()
}
