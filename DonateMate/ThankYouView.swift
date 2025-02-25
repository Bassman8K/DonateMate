//
//  deliveredView.swift
//  DonateMate
//
//  Created by Sara Al Fahdawi on 24/2/2025.
//

import SwiftUI

struct ThankYouView: View {
    @State var text: String = "TextField Text"
    var body: some View {
        ZStack {
            Color("darkPurple")
                .ignoresSafeArea()
            Text("Thank you Donor")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundStyle(.lightPurple)
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
                
                //Section<Text, Any, EmptyView> (header: Text("Write a thank you message to your donor").font(.title) {
                   // TextField("Margaret thanks you for your generous donation", text: .constant(""))
            
                        
                
                         
                
                
            } .padding()
                
            
        }
    }
}

#Preview {
    ThankYouView()
}
