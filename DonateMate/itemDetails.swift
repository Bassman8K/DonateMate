//
//  itemDetails.swift
//  app
//
//  Created by Patrick Ly on 23/2/2025.
//

import SwiftUI

struct itemDetails: View {
    
    let itemName: String
    let itemImage: String
    let itemDistance: String
    var body: some View {
        Form {
            Section {
                Image(itemImage)
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            
            Text(itemName)
                .font(.title)
            Text(itemDistance)
        }
        
    }
}

#Preview {
    itemDetails(itemName: "Couch", itemImage: "couch", itemDistance: "3km")
}
