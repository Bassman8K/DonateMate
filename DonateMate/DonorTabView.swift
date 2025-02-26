//
//  DonateMateTabView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct DonorTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                ListItem() // Home
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            NavigationStack {
                DonorPickupView() // Pickup view
            }
            .tabItem {
                Image(systemName: "paperplane.fill")
                Text("Pickups")
            }
            NavigationStack {
                DonorStarView()
            }
            .tabItem {
                Image(systemName: "star.fill")
                Text("Thank Yous")
            }
            NavigationStack {
                DonorProfileView()
            }
            .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
        }
        .tint(Color.white) // Makes selected icons/text white
        .onAppear {
            setTabBarColor() // Call function to set color when the view appears
        }
    }
}
func setTabBarColor() {
    let appearance = UITabBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = UIColor(named: "darkPurple") // Uses the primary colour "darkPurple" from Assets
    UITabBar.appearance().standardAppearance = appearance
    UITabBar.appearance().scrollEdgeAppearance = appearance
}

#Preview {
    DonorTabView()
        .environmentObject(NewDonation())
        .environmentObject(NewPickup())
        .environmentObject(NewThank())
}
