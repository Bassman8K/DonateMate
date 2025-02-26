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
    @State private var navigateToDonorInputSuccessfulView = false  // State to control navigation
    @EnvironmentObject var newDonations: NewDonation

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("List an Item")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("darkPurple"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Image("cornerlogo")
                        .resizable()
                        .frame(width: 110, height: 60)
                }
                .padding(.horizontal, 30)

                Form {
                    Section(header: Text("Item Image")) {
                        VStack {
                            PhotosPicker("Select image", selection: $donationItem, matching: .images)
                            itemImage?
                                .resizable()
                                .scaledToFit()
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
                    Section(header: Text("Item name")) {
                        TextField("Couch", text: $itemName)
                    }
                    Section(header: Text("Description")) {
                        TextField("Slightly used", text: $descriptionInput)
                    }
                    Section(header: Text("Address")) {
                        TextField("123 Fake Street", text: $address)
                    }
                    Section(header: Text("Pickup Instructions (optional)")) {
                        TextField("By the mailbox", text: $instructions)
                    }
                    Section(header: Text("Select Available Dates for Pickup")) {
                        MultiDatePicker("Select Dates", selection: $selectedDates)
                    }
                    Section(header: Text("Select Available Times")) {
                        DatePicker("From", selection: $fromTime, displayedComponents: .hourAndMinute)
                            .datePickerStyle(.compact)
                            .padding()
                        DatePicker("To", selection: $toTime, displayedComponents: .hourAndMinute)
                            .datePickerStyle(.compact)
                            .padding()
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color("lightPurple"))

                Button("List") {
                    let newDonation = Donation(
                        uuid: UUID().uuidString,
                        name: itemName,
                        image: itemImage!,
                        distance: "3km",
                        description: descriptionInput,
                        address: address,
                        instructions: instructions,
                        selectedDates: selectedDates,
                        fromTime: fromTime,
                        toTime: toTime
                    )
                    newDonations.donationArray.append(newDonation)

                    // Trigger navigation
                    navigateToDonorInputSuccessfulView = true
                }
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .frame(width: 90, height: 45)
                .background(Color("darkPurple"))
                .cornerRadius(10)
                .shadow(radius: 5)
                // NavigationLink that triggers when `navigateToDonorView` becomes true
                NavigationLink(
                    destination: DonorInputSuccessfulView(),
                    isActive: $navigateToDonorInputSuccessfulView,
                    label: { EmptyView() }
                )
            }
            .background(Color("lightPurple"))
        }
    }
}
#Preview {
    createListing()
        .environmentObject(NewDonation())
        .environmentObject(NewPickup())
        .environmentObject(NewThank())
}
