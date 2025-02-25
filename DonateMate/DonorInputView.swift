//
//  DonorInputView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 25/02/2025.
//
import PhotosUI
import SwiftUI

struct DonorInputView: View {
    @State private var imageItem: PhotosPickerItem?
    var body: some View {
        VStack {
            PhotosPicker(selection: $imageItem,
                         matching: .images) {
                Image("Add Item")
                    .frame(width: 119, height: 119)
                    .shadow(color: Color(red: 0.3, green: 0.13, blue: 0.7).opacity(0.2), radius: 2.27099, x: -2.72519, y: 4.54198)
            }
            
        }
    }
}

#Preview {
    DonorInputView()
}
