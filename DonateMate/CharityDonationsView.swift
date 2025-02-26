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
    private let defaultDonations: [Donation]
    init() {
        let sampleDateComponents1 = Set([DateComponents(year: 2025, month: 6, day: 1)])
        let sampleDateComponents2 = Set([DateComponents(year: 2025, month: 6, day: 15)])
        let sampleDateComponents3 = Set([DateComponents(year: 2025, month: 7, day: 10)])
        
        let sampleFromTime = Date()
        let sampleToTime = Date().addingTimeInterval(3600)
        defaultDonations = [
            Donation(uuid: UUID().uuidString, name: "Vacuum cleaner", image: Image("vacuum"), distance: "3km", description: "A powerful vacuum cleaner", address: "123 Clean St", instructions: "Pick up after 5 PM", selectedDates: sampleDateComponents1, fromTime: sampleFromTime, toTime: sampleToTime),
            Donation(uuid: UUID().uuidString, name: "Toaster", image: Image("toaster"), distance: "4.2km", description: "Two-slice toaster", address: "456 Toast Rd", instructions: "Call before you come", selectedDates: sampleDateComponents2, fromTime: sampleFromTime, toTime: sampleToTime),
            Donation(uuid: UUID().uuidString, name: "Chair", image: Image("chair"), distance: "1.5km", description: "Comfortable office chair", address: "789 Sit Ave", instructions: "Must be picked up by end of the week", selectedDates: sampleDateComponents3, fromTime: sampleFromTime, toTime: sampleToTime),
            Donation(uuid: UUID().uuidString, name: "Lamp", image: Image("lamp"), distance: "5.3km", description: "Bright desk lamp", address: "101 Light Ln", instructions: "Ring the doorbell", selectedDates: sampleDateComponents1, fromTime: sampleFromTime, toTime: sampleToTime),
            Donation(uuid: UUID().uuidString, name: "Microwave", image: Image("microwave"), distance: "2km", description: "Compact microwave oven", address: "202 Heat Blvd", instructions: "Enter through the side gate", selectedDates: sampleDateComponents2, fromTime: sampleFromTime, toTime: sampleToTime),
            Donation(uuid: UUID().uuidString, name: "Cutting board", image: Image("cutting board"), distance: "3.8km", description: "Wooden cutting board", address: "303 Chop St", instructions: "Avoid wet conditions", selectedDates: sampleDateComponents3, fromTime: sampleFromTime, toTime: sampleToTime),
            Donation(uuid: UUID().uuidString, name: "Couch", image: Image("couch"), distance: "4.6km", description: "Leather couch", address: "404 Relax Rd", instructions: "Help needed for loading", selectedDates: sampleDateComponents1, fromTime: sampleFromTime, toTime: sampleToTime),
            Donation(uuid: UUID().uuidString, name: "Trash can", image: Image("trash can"), distance: "1.2km", description: "Large trash can", address: "505 Waste Way", instructions: "Pick up anytime", selectedDates: sampleDateComponents2, fromTime: sampleFromTime, toTime: sampleToTime),
            Donation(uuid: UUID().uuidString, name: "Iron", image: Image("iron"), distance: "2.7km", description: "Steam iron", address: "606 Smooth Ave", instructions: "Text before arrival", selectedDates: sampleDateComponents3, fromTime: sampleFromTime, toTime: sampleToTime),
            Donation(uuid: UUID().uuidString, name: "Fridge", image: Image("fridge"), distance: "5km", description: "Mini fridge", address: "707 Chill Blvd", instructions: "Bring a trolley", selectedDates: sampleDateComponents1, fromTime: sampleFromTime, toTime: sampleToTime)
        ]
    }

    
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
            
            
            NavigationView{
                
                    //makes the page scrollable
                    ScrollView {
                        //makes a grid for all the items using columns array abovec
                        LazyVGrid(columns: columns, spacing: 20) {
                            /*
                             generate default items by iterating through the tuple array
                             */
                            ForEach(defaultDonations, id: \.uuid) { donation in
                                VStack(alignment: .center, spacing: 0) {
                                        donation.image
                                        .resizable()
                                    //make navigation link that leads to itemDetails page
                                  //  Text(donation.name)

                                    NavigationLink(destination: ItemDetails(itemName: donation.name, itemImage: donation.image, itemDistance: donation.distance, description: donation.description, address: donation.address, instructions: donation.instructions, selectedDates: donation.selectedDates, fromTime: donation.fromTime, toTime: donation.toTime)) {
                                        Text(donation.name)
                                        
                                    }
                                    
                                    Text(donation.distance)
                                }
                                .frame(width: 100.60858, height: 133.57477, alignment: .center)
                                .padding(0)
                                //.background(.white)
                                .border(Color.gray)

                            }
                            
                            /*
                             generate additional items  through same method
                             */
                            ForEach(newDonations.donationArray, id: \.uuid) { donation in
                                VStack(alignment: .center, spacing: 0) {
                                        donation.image
                                        .resizable()
                                        NavigationLink(destination: ItemDetails(itemName: donation.name, itemImage: donation.image, itemDistance: donation.distance, description: donation.description, address: donation.address, instructions: donation.instructions, selectedDates: donation.selectedDates, fromTime: donation.fromTime, toTime: donation.toTime)) {
                                            Text(donation.name)
                                        }
                                    
                                    Text(donation.distance)
                                }
                                .padding(0)
                                .frame(width: 100.60858, height: 133.57477, alignment: .center)
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
