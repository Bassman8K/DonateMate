//
//  ContentView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI
import Observation



struct CharityDonationsView: View {
    @State private var numItems : Int = 0
    let columns = [ //each row will have 3 items
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    let defaultDonations = [
        Donation(name: "Vacuum cleaner", image: "vacuum", distance: "3km"),
        Donation(name: "Toaster", image: "toaster", distance: "4.2km"),
        Donation(name: "Chair", image: "chair", distance: "1.5km"),
        Donation(name: "Lamp", image: "lamp", distance: "5.3km"),
        Donation(name: "Microwave", image: "microwave", distance: "2km"),
        Donation(name: "Cutting board", image: "cutting board", distance: "3.8km"),
        Donation(name: "Couch", image: "couch", distance: "4.6km"),
        Donation(name: "Trash can", image: "trash can", distance: "1.2km"),
        Donation(name: "Iron", image: "iron", distance: "2.7km"),
        Donation(name: "Fridge", image: "fridge", distance: "5km")
        
    ]

    
    @State private var defaultItemArrayIndex = 1
    @EnvironmentObject var newDonations: NewDonation

    var body: some View {
        VStack (alignment: .leading){
            
            Text("Pickups")
                .font(
                    Font.custom("SF Pro Display", size: 30)
                        .weight(.bold)
                )
                .kerning(0.6)
                .foregroundColor(Color(red: 0.3, green: 0.13, blue: 0.7))
                .frame(width: 136, alignment: .topLeading)
            
            
            NavigationStack{
                
                    //makes the page scrollable
                    ScrollView {
                        //makes a grid for all the items using columns array abovec
                        LazyVGrid(columns: columns, spacing: 20) {
                            /*
                             generate default items by iterating through the tuple array
                             */
                            ForEach(defaultDonations, id: \.name) { donation in
                                VStack(alignment: .center, spacing: 0) {
                                    Image(donation.image)
                                        .resizable()
                                    //make navigation link that leads to itemDetails page
                                    NavigationLink(donation.name) {
                                        ItemDetails(itemName: donation.name, itemImage: donation.image, itemDistance: donation.distance)
                                    }
                                    Text(donation.distance)
                                }
                                
                            }
                            
                            /*
                             generate additional items  through same method
                             */
                            ForEach(newDonations.donationArray, id: \.name) { donation in
                                VStack(alignment: .center, spacing: 0) {
                                    Image(donation.image)
                                        .resizable()
                                    NavigationLink(donation.name) {
                                        ItemDetails(itemName: donation.name, itemImage: donation.image, itemDistance: donation.distance)
                                    }
                                    Text(donation.distance)
                                }
                                .padding(0)
                                .frame(width: 118.60858, height: 163.57477, alignment: .center)
                                .background(.white)

                                
                                
                                .border(Color.gray)
                                
                            }
                            
                        }
                        .padding()
                        
                        .background(Color(red: 0.87, green: 0.87, blue: 1))
                        
                    }
                    .background(.lightPurple)
                    
                
                
            }
        }
        .padding()
        
        .background(Color(red: 0.87, green: 0.87, blue: 1))
       // createListing(numItems: $numItems)
    }
    
}

#Preview {
    CharityDonationsView()
        .environmentObject(NewDonation())

}
