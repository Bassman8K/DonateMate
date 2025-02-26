//
//  DonorPickupView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct DonorPickupView: View {
    let listing: Listing
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Pickups")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    List {
                    }
                    
                }
                
            }
        }
        .frame(width: 800, height: 1221)
        .background(Color(red: 0.87, green: 0.87, blue: 1))
    }
    
}

#Preview {
    DonorPickupView(listing: )
}
