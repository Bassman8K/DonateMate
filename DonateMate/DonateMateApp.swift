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
            OnboardView()
                .environmentObject(NewDonation())
                .environmentObject(NewPickup())
                .environmentObject(NewThank())
            
            //                .environmentObject(NewDonation())
            
            /*  TabView {
             Tab {
             CharityDonationsView()
             } label: {
             
             Image(systemName: "truck.box.fill")
             Text("Jobs")
             
             }
             Tab {
             RecipientView()
             } label: {
             Image(systemName: "person.3")
             Text("Recipients")*/
        }
        
    }
    
}

