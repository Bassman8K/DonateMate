//
//  createListing.swift
//  DonateMate
//
//  Created by Patrick Ly on 24/2/2025.
//

import SwiftUI
import PhotosUI


struct createListing: View {
    @State var selectedItems: [UIImage] = []
    @State var itemName: String = ""
    @State var descriptionInput: String = ""
    @State var address: String = ""
    @State var instructions: String = ""

    @State var selectedDates: Set<DateComponents> = []
    @State var selectedDate = Date()
    @State var fromTime = Date()
    @State var toTime = Date()

    
    @State private var donationItem: PhotosPickerItem?
    @State private var itemImage: Image?
    @EnvironmentObject var newDonations: NewDonation

    var body: some View {
        VStack {
            
            Text("List an item")
                .font(.title)
            
            Form {
                Section(header: Text("Item Image")){
                    VStack {
                        PhotosPicker("Select image", selection: $donationItem, matching: .images)
                        
                        itemImage?
                            .resizable()
                            .scaledToFit()
                            //.frame(width: 300, height: 300)
                    }
                    .onChange(of: donationItem) {
                        Task {
                            if let loaded = try? await donationItem?.loadTransferable(type: Image.self) {
                                itemImage = loaded
                            } else {
                                print("Failed")
                            }
                        }
                    }
                    
                }
                Section(header: Text("Item name")){
                    TextField("Couch", text: $itemName)
                }
                Section(header: Text("Description")){
                    TextField("Slightly used", text: $descriptionInput)
                }
                Section(header: Text("Address")){
                    TextField("123 Fake Street", text: $address)
                }
                Section(header: Text("Pickup Instructions (optional)")){
                    TextField("By the mailbox", text: $instructions)
                }
                Section(header: Text("Select Available Dates for Pickup")){
                    MultiDatePicker("Select Dates", selection: $selectedDates)
                    
                }
                Section(header: Text("Select Available Times")){
                    DatePicker("From", selection: $fromTime, displayedComponents: .hourAndMinute)
                        .datePickerStyle(.compact)
                        .padding()
                    DatePicker("To", selection: $toTime, displayedComponents: .hourAndMinute)
                        .datePickerStyle(.compact)
                        .padding()
                }
                
            }
            .background(Color.clear)
            

            Button("List") {
                //            numItems += 1
                //            print(numItems)
                //            print("hi")
                let newDonation = Donation(uuid: UUID().uuidString, name: itemName, image: itemImage!, distance: "3km", description: descriptionInput, address: address, instructions: instructions, selectedDates: selectedDates, fromTime: fromTime, toTime: toTime)
                
                
                newDonations.donationArray.append(newDonation)
                
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color("darkPurple")) // Use primary app color
            .cornerRadius(12)
            
         
        }
        .background(Color.lightPurple)

    }
}

#Preview {
    
    createListing()
        .environmentObject(NewDonation())
}
