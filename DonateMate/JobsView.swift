//
//  JobsView.swift
//  DonateMate
//
//  Created by Sara Al Fahdawi on 24/2/2025.
//

import SwiftUI

struct JobsView: View {
    @State private var showThankYou = false // Controls the Thank You screen
    @EnvironmentObject var newPickups: NewPickup

    var body: some View {
   Text("Jobs")
        NavigationStack {
            ZStack {
                Color("lightPurple")
                    .ignoresSafeArea()
               
                VStack {
                    List {
                        
                        ForEach(newPickups.pickupArray, id: \.uuid) { pickup in

                            
                            
                            HStack {
                                // Image Placeholder
                                    pickup.image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .padding(.trailing, 8)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(pickup.name)
                                        .font(.title)
                                        .bold()
                                        .underline()
                                    
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Pick up Location")
                                                .font(.body)
                                                .bold()
                                            
                                            Text(pickup.address)
                                                .font(.caption)
                                                .foregroundColor(.green)
                                            
                                        }
                                        Spacer()
                                        VStack(alignment: .trailing) {
                                            
                                            
                                            Text("Recipient")
                                                .font(.body)
                                                .bold()
                                            
                                            Text(pickup.recipientName)
                                                .font(.caption)
                                                .foregroundColor(.green)
                                            
                                        }
                                    }
                                }
                            }
                            // 🔹 "Send Thank You" Button Below the Job
                            Button(action: {
                                showThankYou = true
                            }) {
                                Text("Send Thank You")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color("darkPurple")) // Use primary app color
                                    .cornerRadius(12)
                            }
                            .padding(.top,8)
                           
                        }
                        .padding(.vertical, 8)
                                
                            
                        }
                    }
                    .scrollContentBackground(.hidden)
                    
                }
            }
            .navigationTitle("Jobs")
            .onAppear {
                showThankYou = false
            }
            .fullScreenCover(isPresented: $showThankYou) {
                ThankYouView()
                
            
           
        }
    }
}


#Preview {
    let exampleTime = Calendar.current.date(from: DateComponents(hour: 9, minute: 0))!

    JobsView( )
        .environmentObject(NewPickup())
    
//    uuid: UUID().uuidString, name: "Couch", image: "couch", distance: "3km", description: "many many stains", address: "7 couchland", instructions: "instructions", selectedDate: "1 Jun 2025", time: exampleTime , recipientName: "Margaret Locke"

}
