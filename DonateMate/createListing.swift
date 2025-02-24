//
//  createListing.swift
//  DonateMate
//
//  Created by Patrick Ly on 24/2/2025.
//

import SwiftUI

struct createListing: View {
    @Binding var numItems: Int
    @State var selectedItems: [UIImage] = []
    var body: some View {
        
        Button("add") {
            numItems += 1
            print(numItems)
            print("hi")
        }
        
//        PhotosPicker(selection: $selectedItems,
//            matching: .images) {
//            Text("Select Multiple Photos")
//        }
        Text("hi")
    }
}

#Preview {
    
    createListing(numItems: .constant(3))
}
