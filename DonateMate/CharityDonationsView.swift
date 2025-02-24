//
//  ContentView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI




struct CharityDonationsView: View {
    @State private var numItems = 0
    let columns = [ //each row will have 3 items
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let defaultItems: [(String, String, String)] = [
        ("Vacuum cleaner", "vacuum", "3km"),
        ("Toaster", "toaster", "4.2km"),
        ("Chair", "chair", "1.5km"),
        ("Lamp", "lamp", "5.3km"),
        ("Microwave", "microwave", "2km"),
        ("Cutting board", "cutting board", "3.8km"),
        ("Couch", "couch", "4.6km"),
        ("Trash can", "trash can", "1.2km"),
        ("Iron", "iron", "2.7km"),
        ("Fridge", "fridge", "5km")
    ]
    
    @State private var defaultItemArrayIndex = 1
    var body: some View {
        VStack (alignment: .leading){
            
            Text("Pickups")
                .font(
                    Font.custom("SF Pro Display", size: 30)
                        .weight(.bold)
                )
                .kerning(0.6)
                .foregroundColor(Color(red: 0.3, green: 0.13, blue: 0.7))
                .frame(width: 136, alignment: .topLeading)
            
            
            NavigationStack{
                
                HStack {
                    ForEach(0..<numItems, id: \.self) { item in
                        VStack(alignment: .center, spacing: 0) { Image("couch")
                                .resizable()
                            NavigationLink("Couch") {
                                itemDetails(itemName: "Couch", itemImage: "couch", itemDistance: "3km")
                                
                                HStack {
                                    //makes the page scrollable
                                    ScrollView {
                                        //makes a grid for all the items using columns array abovec
                                        LazyVGrid(columns: columns, spacing: 20) {
                                            /*
                                             generate default items by iterating through the tuple array
                                             */
                                            ForEach(defaultItems, id: \.0) { item, image, distance in
                                                VStack(alignment: .center, spacing: 0) {
                                                    Image(image)
                                                        .resizable()
                                                    //make navigation link that leads to itemDetails page
                                                    NavigationLink(item) {
                                                        itemDetails(itemName: item, itemImage: image, itemDistance: distance)
                                                    }
                                                    Text(distance)
                                                }
                                                //frame of the item element
                                                .frame(width: 118.60858, height: 163.57477, alignment: .center)
                                                .background(.white)
                                                
                                                
                                                .border(Color.gray)
                                                
                                                
                                            }
                                            
                                            /*
                                             generate additional items  through same method
                                             */
                                            ForEach(0..<numItems, id: \.self) { item in
                                                VStack(alignment: .center, spacing: 0) { Image("couch")
                                                        .resizable()
                                                    NavigationLink("Couch") {
                                                        itemDetails(itemName: "Couch", itemImage: "couch", itemDistance: "3km")
                                                    }
                                                    Text("3km Away")
                                                }
                                                .padding(0)
                                                .frame(width: 118.60858, height: 163.57477, alignment: .center)
                                                .background(.lightPurple)
                                                
                                                
                                                .border(Color.gray)
                                                
                                            }
                                        }
                                    }
                                    .background(.lightPurple)
                                    
                                }
                                
                            }
                            
                            
                            
                            //temporary button for adding additional items
                            Button("add") {
                                numItems += 1
                                print(numItems)
                            }
                            
                        }
                        .padding()
                        
                        .background(Color(red: 0.87, green: 0.87, blue: 1))
                        
                    }
                }
            }
        }
    }
}
