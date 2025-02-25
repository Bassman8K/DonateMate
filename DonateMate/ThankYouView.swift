//
//  deliveredView.swift
//  DonateMate
//
//  Created by Sara Al Fahdawi on 24/2/2025.
//

import SwiftUI

struct ThankYouView: View {
    var body: some View {
        ZStack {
            Color("lightPurple")
                .ignoresSafeArea()
            Text("Thank you Donor")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundStyle(.white)
                
        }
    }
}

#Preview {
    ThankYouView()
}
