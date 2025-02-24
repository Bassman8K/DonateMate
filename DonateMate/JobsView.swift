//
//  JobsView.swift
//  DonateMate
//
//  Created by Sara Al Fahdawi on 24/2/2025.
//

import SwiftUI

struct JobsView: View {
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
                                        .font(.headline)
                                        .bold()
                                        .underline()
                                    
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Pick up Location")
                                                .font(.caption)
                                                .bold()
                                            Text(pickup)
                                                .font(.caption)
                                                .foregroundColor(.gray)
                                            
                                        }
                                        Spacer()
                                        VStack(alignment: .trailing) {
                                            
                                            
                                            Text("Drop off Location")
                                                .font(.caption)
                                                .bold()
                                            Text(dropoff)
                                                .font(.caption)
                                                .foregroundColor(.gray)
                                        }
                                    }
                                }
                            }
                            .padding(.vertical, 8)
                        }
                    }
                    .scrollContentBackground(.hidden)
                }
            }
            .navigationTitle("Jobs")
           
        }
    }
}

#Preview {
    JobsView()
}
