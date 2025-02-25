//
//  JobsView.swift
//  DonateMate
//
//  Created by Sara Al Fahdawi on 24/2/2025.
//

import SwiftUI

struct JobsView: View {
    @State private var showThankYou = false // Controls the Thank You screen

    var body: some View {
   
        NavigationStack {
            ZStack {
                Color("lightPurple")
                    .ignoresSafeArea()
               
                VStack {
                    List {
                        
                        ForEach([
                            ("couch", "Couch", "Building 10", "Building 12"),
                            
                        ], id: \.1) { image, name, pickup, dropoff in
                            
                            
                            HStack {
                                // Image Placeholder
                                Image(image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .padding(.trailing, 8)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(name)
                                        .font(.title)
                                        .bold()
                                        .underline()
                                    
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Pick up Location")
                                                .font(.body)
                                                .bold()
                                            
                                            Text(pickup)
                                                .font(.caption)
                                                .foregroundColor(.green)
                                            
                                        }
                                        Spacer()
                                        VStack(alignment: .trailing) {
                                            
                                            
                                            Text("Drop off Location")
                                                .font(.body)
                                                .bold()
                                            
                                            Text(dropoff)
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
    JobsView()
}
