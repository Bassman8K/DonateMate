//
//  createListing.swift
//  DonateMate
//
//  Created by Patrick Ly on 24/2/2025.
//

import SwiftUI



struct createListing: View {
    @State var selectedItems: [UIImage] = []
    
    @EnvironmentObject var newDonations: NewDonation
    var body: some View {
        let donation = Donation(name: "Couch", image: "couch", distance: "3km")
        
        Button("add") {
//            numItems += 1
//            print(numItems)
//            print("hi")
            
            newDonations.donationArray.append(donation)
            
        }
        
//        PhotosPicker(selection: $selectedItems,
//            matching: .images) {
//            Text("Select Multiple Photos")
//        }
        Text("hi")
    }
}

#Preview {
    
    createListing()
        .environmentObject(NewDonation())
}
