//
//  listItem.swift
//  HEAD:DonateMate/listItem.swift
////
//HEAD:DonateMate/ContentView.swift
////  Created by Jonathan Edwin on 24/02/2025.
//// COMMENT
//=======
////  Created by Patrick Ly on 23/2/2025.
////

//
//<<<<<<< HEAD:DonateMate/ContentView.swift
//  Created by Jonathan Edwin on 24/02/2025.
// COMMENT
//=======
//  Created by Patrick Ly on 23/2/2025.
//
// dev:DonateMate/ListItem.swift
//>>>>>>> dev:DonateMate/listItem.swift

import SwiftUI

struct ListItem: View {
    @EnvironmentObject var newDonations: NewDonation
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("lightPurple") // Set background color
                    .ignoresSafeArea()
                
                VStack {
                    Image("horizontallogo")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 40)
                        .padding(.bottom, 80) // Reduce spacing
                    
                    NavigationLink(destination: createListing()) {
                        Image("Add Button")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180, height: 180) // Adjust size
                    }
                    
                    Text("Your Listings")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("darkPurple"))
                        .padding(.top, 5) // Reduce gap
                        .padding(.bottom, 10) // Reduce gap
                    
                    // List of items with light purple background
                    ScrollView {
                        VStack(spacing: 10) {
                            ForEach(newDonations.donationArray, id: \.uuid) { donation in
                                HStack {
                                    donation.image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                    
                                    Text(donation.name)
                                        .font(.body)
                                        .foregroundColor(.black)
                                        .padding(.leading, 8)
                                    
                                    Spacer()
                                }
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.white.opacity(0.5)) // Light purple with white opacity
                                .cornerRadius(12)
                                .padding(.horizontal)
                            }
                        }
                    }
                    .padding(.top, 10) // Add small spacing
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ListItem()
        .environmentObject(NewDonation())
        .environmentObject(NewPickup())
        .environmentObject(NewThank())
}
