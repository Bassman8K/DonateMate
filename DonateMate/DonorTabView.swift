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
            Tab("Home", systemImage: "house.fill") {
                DonorHomeView()
            }
            Tab("PickMe", systemImage: "paperplane.fill") {
                DonorPickupView()
            }
            Tab("Connect", systemImage: "globe.americas.fill") {
                CommunityView()
            }
            Tab("Stars", systemImage: "star.fill") {
                DonorStarView()
                
            }
            Tab("Profile", systemImage: "person.fill") {
                DonorProfileView()
                
            }
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
}
