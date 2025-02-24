//
//  listItem.swift
//  app
//
//<<<<<<< HEAD:DonateMate/ContentView.swift
//  Created by Jonathan Edwin on 24/02/2025.
// COMMENT
//=======
//  Created by Patrick Ly on 23/2/2025.
//
//>>>>>>> dev:DonateMate/listItem.swift

import SwiftUI

struct listItem: View {
    
    var body: some View {
        NavigationStack {

        VStack (alignment: .leading){
            Text("List Item")
                .font(.title)
            NavigationLink(destination: createListing(numItems: .constant(0))) {
                    Image("plus")
                    
                        .resizable()
                        .scaledToFit()
                        .padding(100)

                    
                }
            
            
            Text("Your Listings")
                .font(.title2)
            Spacer()
                .background(Color.lightPurple)
                
            }
        .padding()
        .background(Color.lightPurple)

        }
        

        
    }
}

#Preview {
    listItem()
}
