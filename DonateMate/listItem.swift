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
    
    var body: some View {
        NavigationStack {

        VStack (alignment: .leading){
            Text("List Item")
                .font(.title)
            NavigationLink(destination: createListing()) {
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
    ListItem()
}
