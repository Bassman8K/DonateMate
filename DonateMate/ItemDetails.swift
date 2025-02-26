//
//  itemDetails.swift
//  app
//
//  Created by Patrick Ly on 23/2/2025.
//

import SwiftUI

struct ItemDetails: View {
    
    let itemName: String
    let itemImage: Image
    let itemDistance: String
    let description: String
    let address: String
    let instructions: String
    let selectedDates: Set<DateComponents>
    let fromTime: Date
    let toTime: Date
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()
    
    let timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter
    }()
    
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
        ScrollView {
            itemImage
                .resizable()
                .scaledToFit()
                .frame(height: 249.19385)
                .cornerRadius(5)
            VStack (alignment: .leading, spacing: 10){
                Color("lightPurple")
                    .ignoresSafeArea()
                
                VStack (alignment: .leading, spacing: 20){
                    Text(itemName)
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .foregroundColor(Color.darkPurple)
                    
                    HStack {
                        Image(systemName: "location.fill")
                            .foregroundColor(Color.darkPurple)
                        Text(itemDistance)
                            .font(.title2)
                            .foregroundColor(Color.darkPurple)
                            .italic()
                    }
                    .frame(width: 100, height: 50)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 2)
                    
                    Text("Description")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.darkPurple)
                    Text(description)
                        .opacity(0.5)
                    
                    
                    Text("Address")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.darkPurple)
                    Text(address)
                        .opacity(0.5)
                    
                    Text("Instructions")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.darkPurple)
                    Text(instructions)
                        .opacity(0.5)
                    
                    Text("Selected Dates:")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.darkPurple)
                    
                    ForEach(Array(selectedDates), id: \.self) { dateComponent in
                        let date = Calendar.current.date(from: dateComponent)
                        Text(dateFormatter.string(from: date!))
                            .opacity(0.5)
                        
                    }
                    HStack {
                        VStack{
                            Text("From:")
                                .font(.title3)
                                .bold()
                                .italic()
                                .foregroundColor(Color.darkPurple)
                            
                            Text(timeFormatter.string(from: fromTime))
                                .foregroundColor(Color.black)
                                .opacity(0.5)
                        }
                        .padding(.horizontal, 20)
                        
                        VStack{
                            Text("To:")
                                .font(.title3)
                                .bold()
                                .italic()
                                .foregroundColor(Color.darkPurple)
                            
                            Text(timeFormatter.string(from: toTime))
                                .foregroundColor(Color.black)
                                .opacity(0.5)

                        }
                    }
                }
                .padding()
                
                VStack (alignment: .center){
                    Text("Choose a recipient")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color.darkPurple)
                    Picker("Choose a recipient", selection: $recipient) {
                        ForEach(recipients, id: \.self) { recipient in
                            Text(recipient)
                        }
                        
                    }
                    
                }
                // .padding()
                
                .pickerStyle(MenuPickerStyle())
                
                
                //Spacer()
            }
            
            .padding(.horizontal, 20)
            
            .background(Color(red: 0.87, green: 0.87, blue: 1))
            
        }
        .background(Color(red: 0.87, green: 0.87, blue: 1))
    }
    
}

#Preview {
    let exampleDateComponents = Set<DateComponents>([
        DateComponents(year: 2025, month: 3, day: 1)
    ])
    
    let exampleFromTime = Calendar.current.date(from: DateComponents(hour: 9, minute: 0))!
    let exampleToTime = Calendar.current.date(from: DateComponents(hour: 17, minute: 0))!
    ItemDetails(itemName: "Couch", itemImage: Image("couch"), itemDistance: "3km",description: "It has 50 stains", address: "123 Hello Town", instructions: "It will be on the porch", selectedDates: exampleDateComponents, fromTime: exampleFromTime, toTime: exampleToTime )
}
