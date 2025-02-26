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
   // @State private var selectedImageData: Data? = nil
    @Binding var showThankYou : Bool
    @State private var donationItem: PhotosPickerItem?
    @State private var itemImage: Image?
    @EnvironmentObject var newThanks: NewThank

    
    var body: some View {
        ZStack {
            Color("lightPurple")
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    Image("horizontallogo")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal, 50)
                }
                .padding(.top, 10)
                
                Image("thankMessage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 320, height: 103)
                //  Added Form to organize sections
                Form {
                    // Section for Image Picker
                    Section(header: Text("Select an Image").font(.headline)) {
                        VStack {
                            PhotosPicker("Select image", selection: $donationItem, matching: .images)
                            
                            itemImage?
                                .resizable()
                                .scaledToFit()
                                //.frame(width: 300, height: 300)
                        }
                        .onChange(of: donationItem) {
                            Task {
                                if let loaded = try? await donationItem?.loadTransferable(type: Image.self) {
                                    itemImage = loaded
                                } else {
                                    print("Failed")
                                }
                            }
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
//                Button(action: showThankYou = false) {
//                    Text("Send")
                       
//                }
                
                Button("Send") {
                    showThankYou = false
                    
                    let newThank = ThankYou(uuid: UUID().uuidString, imagePerson: itemImage ?? Image("couch"), message: messageText)
                    
                    newThanks.thankArray.append(newThank)
                    
                
                }
                .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("darkPurple"))
                    .cornerRadius(10)
                
                    .buttonStyle(.borderless)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal)
               // .padding(.top, -100)
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
    ThankYouView(showThankYou: .constant(false))
        .environmentObject(NewPickup())
        .environmentObject(NewThank())


}
