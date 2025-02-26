//
//  CharityTabNav.swift
//  DonateMate
//
//  Created by Sara Al Fahdawi on 24/2/2025.
//

import SwiftUI

struct CharityTabNav: View {
    var body: some View {
        TabView {
            NavigationStack {
                CharityDonationsView() // Home
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            NavigationStack {
                JobsView() // Jobs
            }
            .tabItem {
                Image(systemName: "truck.box.fill")
                Text("Jobs")
            }
            
            NavigationStack {
                RecipientView() // Recipients
            }
            .tabItem {
                Image(systemName: "person.3.fill")
                Text("Recipients")
            }
            
           
        }
        //.tint(Color.white) // Makes selected icons/text white
        .onAppear {
            setTabBarColor() // Call function to set color when the view appears
        }
    }
    
    // Function to set the tab bar color
    func setTabBarColor() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "darkPurple") // Uses the primary colour "darkPurple" from Assets
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
}

#Preview {
    CharityTabNav()
        .environmentObject(NewDonation())
        .environmentObject(NewPickup())
        .environmentObject(NewThank())


}
