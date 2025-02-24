//
//  DonateMateTabView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct DonateMateTabView: View {
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
            Tab("Stars", systemImage: "stars.fill") {
                
            }
        }
    }
}

#Preview {
    DonateMateTabView()
}
