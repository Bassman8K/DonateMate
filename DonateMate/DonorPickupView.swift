//
//  DonorPickupView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct DonorPickupView: View {
    @EnvironmentObject var newPickups: NewPickup

    var body: some View {
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

                                             Spacer()
                                             VStack(alignment: .trailing) {
                                                 
                                                 
                                                 Text("Charity")
                                                     .font(.body)
                                                     .bold()
                                                 
                                                 Text("Salvation Army")
                                                     .font(.caption)
                                                     .foregroundColor(.green)
                                                 
                                             }
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
                 .navigationTitle("Pickups")
   
                 
                
             }
         }
    


#Preview {
    DonorPickupView()
        .environmentObject(NewPickup())
        .environmentObject(NewThank())


}
