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
                
            }
            
        }
    }
}

#Preview {
    DonorInputView()
}
