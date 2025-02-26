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
            Color("darkPurple")
                .ignoresSafeArea()
            Text("Thank you Donor")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundStyle(.green)
                .padding()
                .frame(width: 300, height: 100)
                .position(x: 200, y: 90)
            VStack {
                
                
                Image(systemName: "photo.badge.plus.fill")
                    .font(.system(size: 100))
                    .foregroundStyle(.white)
                    .padding()
                Text(
                    "Add up to two photos"
                ).font(.caption)
                    .foregroundStyle(.white)
                    .padding()
                    .fontWeight(.bold)
                    .italic()
                    
                
                
                
            } .padding()
                
            
        }
    }
}

#Preview {
    ThankYouView()
}
