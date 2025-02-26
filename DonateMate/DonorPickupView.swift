//
//  DonorPickupView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct DonorPickupView: View {
    @EnvironmentObject var newPickups: NewPickup

    var body: some View {
        NavigationStack {
            ZStack {
                Color("lightPurple").ignoresSafeArea()

                VStack(alignment: .leading, spacing: 8) {
                    // Title and Logo
                    HStack {
                        Text("Pickups")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("darkPurple"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Image("cornerlogo")
                            .resizable()
                            .frame(width: 110, height: 60)
                    }
                    .padding(.horizontal)
                    .padding(.top, 16) // Adjusts spacing from top

                    Spacer(minLength: 4) // Adds a little gap before the list

                    // Pickup List
                    List {
                        ForEach(newPickups.pickupArray, id: \.uuid) { pickup in
                            HStack(spacing: 12) {
                                pickup.image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 90, height: 80)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .shadow(radius: 2)
                                
                                VStack(alignment: .leading, spacing: 6) {
                                    Text(pickup.name)
                                        .font(.title.bold())
                                        .foregroundColor(Color("darkPurple"))
                                    
                                    Text("Charity: Salvation Army")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .italic(true)
                                }
                                .padding(.vertical, 1)
                                
                                Spacer()
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(radius: 1))
                        }
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                    }
                    .scrollContentBackground(.hidden)
                    .padding(.horizontal, 1)
                }
            }
        }
    }
}

#Preview {
    DonorPickupView()
        .environmentObject(NewPickup())
        .environmentObject(NewThank())
}
