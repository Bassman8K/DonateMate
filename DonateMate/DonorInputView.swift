//
//  DonorInputView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 25/02/2025.
//
import PhotosUI
import SwiftUI

struct DonorInputView: View {
    
    var body: some View {
        VStack {
            Text("Go back")
                .navigationTitle(Text("Donor Input"))
                .navigationBarBackButtonHidden(false)
            HStack {
                NavigationStack {
                }
            }
        }
        
    }
}

#Preview {
    DonorInputView()
}
