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
    
    @State private var recipient = "Ava Johnson"
    let recipients  = [
        "Ava Johnson",
        "Leo Matthews",
        "Mia Harper",
        "Ethan Brooks",
        "Olivia Carter",
        "Lucas Davis",
        "Margaret Locke",
        "Noah Anderson",
        "Isabella Turner",
        "Benjamin Gray"
    ]
    var body: some View {
        VStack {
            VStack (alignment: .leading){
                Image(itemImage)
                    .resizable()
                    .scaledToFit()
                
                
                Text(itemName)
                    .font(.largeTitle)
                Text(itemDistance)
                    .font(.title2)
                VStack (alignment: .center){
                    Text("Choose a recipient")
                    Picker("Choose a recipient", selection: $recipient) {
                        ForEach(recipients, id: \.self) { recipient in
                            Text(recipient)
                        }
                        
                    }
                    
                }
                .padding()
                .background(.white)
                
                .pickerStyle(MenuPickerStyle())


                Spacer()
            }
            
            .padding()

        }
        .background(Color(red: 0.87, green: 0.87, blue: 1))

    }
    
}

#Preview {
    itemDetails(itemName: "Couch", itemImage: "couch", itemDistance: "3km")
}
