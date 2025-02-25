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
           // ScrollView {
            
            Text("List Item")
                .font(.title)
                VStack (alignment: .center){
                   
                    NavigationLink(destination: createListing()) {
                        Image("plus")
                        
                            .resizable()
                            .scaledToFit()
                            .padding(70)
                        
                        
                    }
                    
                    
                    Text("Your Listings")
                        .font(.title2)
                    VStack {
                        List {

                        ForEach(newDonations.donationArray, id: \.uuid) { donation in
                                HStack {
                                    donation.image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                    Text(donation.name)
                                }
                                
                            }
                        }
                    }
                        
//                        VStack {
//                            
//                            List {
//                                HStack {
//                                    Image("couch")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 50, height: 50)
//                                    Text("Couch")
//                                    
//                                }
//                                
//                                
//                                
//                            }
//                            
//                        }
                    
                    
                    Spacer()
                }
                
                .padding()
                .background(Color.lightPurple)

            }

        }
            
            
        //}
    
}

#Preview {
    ListItem()
        .environmentObject(NewDonation())
}
