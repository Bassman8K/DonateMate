//
//  ContentView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI




struct CharityDonationsView: View {
    @State var numItems = 3
    
    var body: some View {
        ZStack {
          
                
            Text("Home")
              .font(
                Font.custom("Work Sans", size: 24)
                  .weight(.bold)
              )
              .kerning(0.16)
              .foregroundColor(Color(red: 0.1, green: 0.1, blue: 0.1))

            
            NavigationStack{

            HStack {
                ForEach(0..<numItems) { item in
                    VStack(alignment: .center, spacing: 0) { Image("couch")
                            .resizable()
                        NavigationLink("Couch") {
                            itemDetails(itemName: "Couch", itemImage: "couch", itemDistance: "3km")
                        }
                        Text("3km Away")
                    }
                    .padding(0)
                    .frame(width: 118.60858, height: 123.57477, alignment: .center)
                    .background(Color(red: 0.94, green: 0.94, blue: 0.94))
                    .cornerRadius(8)
                    .overlay(
                    RoundedRectangle(cornerRadius: 8)
                    .inset(by: 1)
                    .stroke(Color(red: 0.69, green: 0.69, blue: 0.71), lineWidth: 2)
                    )
                    
                    .frame(width: 120, height: 80, alignment: .topLeading)
                    .border(Color.gray)

                    }
                }
            }
        }
        .frame(width: 393, height: 852)
        .background(.white)
        
                
        Button("add") {
            numItems += 1
            print(numItems)
        }
        
        
        .padding()
    }
}

#Preview {
    CharityDonationsView()
}
