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
        NavigationStack {
            ZStack {
                Color("lightPurple").ignoresSafeArea() // Ensures full background coverage
                
                ScrollView {
                    VStack(alignment: .leading) {
                        // Header with title and logo
                        HStack {
                            Text("Jobs")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color("darkPurple"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Image("cornerlogo")
                                .resizable()
                                .frame(width: 110, height: 60)
                        }
                        .padding(.horizontal)
                        
                        // List of jobs (Replacing `List` with `ForEach`)
                        ForEach(newPickups.pickupArray, id: \.uuid) { pickup in
                            VStack(alignment: .leading, spacing: 8) {
                                HStack {
                                    pickup.image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                        .padding(.trailing, 8)
                                    
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text(pickup.name)
                                            .font(.title)
                                            .bold()
                                            .shadow(radius: 1)
                                        
                                        HStack {
                                            VStack(alignment: .leading) {
                                                Text("Pick up Location")
                                                    .font(.body)
                                                    .foregroundColor(Color("darkPurple"))
                                                    .bold()
                                                
                                                Text(pickup.address)
                                                    .font(.caption)
                                                    .foregroundColor(Color("darkPurple"))
                                                    .foregroundColor(.green)
                                            }
                                            Spacer()
                                            VStack(alignment: .trailing) {
                                                Text("Recipient")
                                                    .font(.body)
                                                    .foregroundColor(Color("darkPurple"))
                                                    .bold()
                                                
                                                Text(pickup.recipientName)
                                                    .font(.caption)
                                                    .foregroundColor(Color("darkPurple"))
                                                    .foregroundColor(.green)
                                            }
                                        }
                                    }
                                }
                                
                                Button(action: {
                                    showThankYou = true
                                }) {
                                    Text("Send Thank You")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 250, height: 50)
                                        .background(Color("darkPurple"))
                                        .cornerRadius(20)
                                        .shadow(radius: 3)
                                }
                                .padding(.top, 8)
                            }
                            .padding()
                            .background(Color.white.opacity(0.5)) // Slight card effect
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                    }
                    .padding(.top, 16)
                }
            }
        }
        .onAppear {
            showThankYou = false
        }
        .fullScreenCover(isPresented: $showThankYou) {
            ThankYouView(showThankYou: $showThankYou)
        }
    }
}
#Preview {
    JobsView()
        .environmentObject(NewPickup())
        .environmentObject(NewThank())
}
