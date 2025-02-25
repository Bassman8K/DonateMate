//
//  deliveredView.swift
//  DonateMate
//
//  Created by Sara Al Fahdawi on 24/2/2025.
//
import PhotosUI
import SwiftUI

struct ThankYouView: View {
    @State private var messageText: String = "Thank you for your donation!"
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var selectedImageData: Data? = nil
    
    var body: some View {
        ZStack {
            
            Color("lightPurple")
                .ignoresSafeArea()
            VStack {
                // Logo (Top Right)
                HStack {
                    Spacer()
                    Image("cornerlogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .padding(.trailing)
                }
                .padding(.top, 10)
                
                // Title
                Text("Thank You Message")
                    .font(.largeTitle).bold()
                    .foregroundColor(Color("darkPurple"))
                    .padding(.top, 10)
                //  Added Form to organize sections
                Form {
                    // Section for Image Picker
                    Section(header: Text("Select an Image").font(.headline)) {
                        PhotosPicker(selection: $selectedItem, matching: .images) {
                            Image(uiImage: selectedImageData.flatMap { UIImage(data: $0) } ?? UIImage(named: "Insert-Image")!)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 280, height: 190)
                                .cornerRadius(20)
                                .padding()
                        }
                        .onChange(of: selectedItem) { oldItem, newItem in
                            Task { selectedImageData = try? await newItem?.loadTransferable(type: Data.self) }
                        }
                    }
                    
                    // Section for Message Input
                    Section(header: Text("Your Message").font(.headline)) {
                        TextEditor(text: $messageText)
                            .frame(height: 40)
                            .foregroundStyle(.secondary)
                            .italic()
                            .padding()
                            .background(Color("secondaryPurple"))
                            .cornerRadius(10)
                    }
                } .scrollContentBackground(.hidden) //  Keeps the background styling clean
                // Section for Send Button
                Button(action: sendMessage) {
                    Text("Send")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("darkPurple"))
                        .cornerRadius(10)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal)
                .padding(.top, -100)
                
                
                
            }
            .padding()
        }
    }
    
    func sendMessage() {
        //  Haptic Feedback when sending
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}

#Preview {
    ThankYouView()
}
