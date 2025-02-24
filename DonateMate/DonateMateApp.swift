//
//  DonateMateApp.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

@main
struct DonateMateApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab {
                    CharityDonationsView()
                } label: {
                    
                    Image(systemName: "truck.box.fill")
                    Text("Jobs")
                    
                }
                Tab {
                    recipientsView()
                } label: {
                    Image(systemName: "person.3")
                    Text("Recipients")
                    
                }
                
                
                
                
            }
            
        }

    }
}

