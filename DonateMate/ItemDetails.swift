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
    
    @EnvironmentObject var newPickups: NewPickup
    @State private var date = Date()
    
    @State private var chosenDate: String = "UNSELECTED"
   
    var body: some View {
        
        
        let dateRange: ClosedRange<Date> = {
            let calendar = Calendar.current
            let startComponents = Calendar.current.dateComponents([.hour, .minute], from: fromTime)
            let endComponents = Calendar.current.dateComponents([.hour, .minute], from: toTime)
            return Calendar.current.date(from: startComponents)!
            ...
                calendar.date(from:endComponents)!
        }()
        ScrollView {
            itemImage
                .resizable()
                .scaledToFit()
                .frame(width: 245.48798, height: 249.19385)
            VStack (alignment: .leading){
                Color("lightPurple")
                    .ignoresSafeArea()
                
                
                VStack (alignment: .leading, spacing: 20){
                    Text(itemName)
                        .font(.largeTitle)
                    
                    Text(itemDistance)
                        .font(.title2)
                    
                    
                    Text("Description")
                        .font(.title3)
                    Text(description)
                    
                    
                    Text("Address")
                        .font(.title3)
                    Text(address)
                    
                    Text("Instructions")
                        .font(.title3)
                    Text(instructions)
                    
                    
                    Text("Select an available date:")
                        .font(.title3)
                    Menu("Available Dates") {
                        ForEach(Array(selectedDates), id: \.self) { dateComponent in
                            let date = Calendar.current.date(from: dateComponent)
                            //                            Text(dateFormatter.string(from: date!))
                            Button("\(dateFormatter.string(from: date!))") {
                                print("Do something")
                                chosenDate = dateFormatter.string(from: date!)
                            }
                        }
                
                        
                    }
                    Text("Chosen Date: \(chosenDate)")
                    
                    VStack {
                       
                        
                        Text("From:")
                            .font(.title3)
                        
                        Text(timeFormatter.string(from: fromTime))
                        
                        Text("To:")
                            .font(.title3)
                        
                        Text(timeFormatter.string(from: toTime))
                    }
                    
                    .background(.white)
                    .frame(width:300 , height: 100)
                    DatePicker(
                            "Choose an available time",
                             selection: $date,
                             in: dateRange,
                             displayedComponents: [.hourAndMinute]
                        )
                }
                .padding()
                
                VStack (alignment: .center){
                    Text("Choose a recipient")
                    Picker("Choose a recipient", selection: $recipient) {
                        ForEach(recipients, id: \.self) { recipient in
                            Text(recipient)
                        }
                        
                    }
                    
                }
                 .padding()
                
                .pickerStyle(MenuPickerStyle())
                
                //Spacer()
            }
            .background(Color(red: 0.87, green: 0.87, blue: 1))

            VStack (alignment: .center) {
                Button("Pickup") {
                    let newPickup = Pickup(uuid: UUID().uuidString, name: itemName, image: itemImage, distance: "3km", description: description, address: address, instructions: instructions, selectedDate: chosenDate, time: date, recipientName: recipient )
                    newPickups.pickupArray.append(newPickup)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color("darkPurple")) // Use primary app color
                .cornerRadius(12)
            }
            // .padding()
            
            
            
        }
    }
    
}

#Preview {
    let exampleDateComponents = Set<DateComponents>([
                DateComponents(year: 2025, month: 3, day: 1)
            ])
            
    let exampleFromTime = Calendar.current.date(from: DateComponents(hour: 9, minute: 0))!
    let exampleToTime = Calendar.current.date(from: DateComponents(hour: 17, minute: 0))!
    ItemDetails(itemName: "Couch", itemImage: Image("couch"), itemDistance: "3km",description: "It has 50 stains", address: "123 Hello Town", instructions: "It will be on the porch", selectedDates: exampleDateComponents, fromTime: exampleFromTime, toTime: exampleToTime )
        .environmentObject(NewPickup())

}
