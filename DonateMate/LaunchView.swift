//
//  LaunchView.swift
//  DonateMate
//
//  Created by Phan Le Hong Phuc on 24/2/2025.
//
import SwiftUI

struct LaunchView: View {
    var body: some View {
        NavigationStack {
            AutoScroller(imageNames: ["iron", "lamp", "fridge", "microwave"])
        }
    }
}
struct AutoScroller: View {
    @State private var message = ""
    var imageNames: [String]
    let timer = Timer.publish(every: 3.0, on: .main, in: .common).autoconnect()
    
    @State private var selectedImageIndex: Int = 0
    
    // Adjustable padding values
    private let sectionSpacing: CGFloat = 50
    private let dotSpacing: CGFloat = 10
    private let questionPadding: CGFloat = 15
    private let buttonPadding: CGFloat = -20

    var body: some View {
        GeometryReader { geometry in
            VStack {
                // Logo Section
                Image("logowithquote")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 30)
                
                // Carousel + Question + Buttons in one VStack
                VStack(spacing: sectionSpacing) {
                    ZStack {
                        // Image Carousel
                        TabView(selection: $selectedImageIndex) {
                            ForEach(0..<imageNames.count, id: \.self) { index in
                                Image("\(imageNames[index])")
                                    .resizable()
                                    .tag(index)
                                    .frame(width: 300, height: 350)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

                        // Navigation Dots
                        HStack(spacing: dotSpacing) {
                            ForEach(0..<imageNames.count, id: \.self) { index in
                                Capsule()
                                    .fill(Color.darkPurple.opacity(selectedImageIndex == index ? 1 : 0.33))
                                    .frame(width: 8, height: 8)
                                    .onTapGesture {
                                        selectedImageIndex = index
                                    }
                            }
                        }
                        .offset(y: 195)
                    }
                    .onReceive(timer) { _ in
                        withAnimation {
                            selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
                        }
                    }
                    // Question Text
                    Text("How do you identify yourself?")
                        .font(.system(size: 24, weight: .heavy))
                        .foregroundColor(.darkPurple)
                        .padding(-5)

                    // Buttons Section
                    HStack(spacing: buttonPadding) {
                        NavigationLink(destination: DonorSignInView()) {
                            Image("donatorButton")
                                .resizable()
                                .scaledToFit()
                        }
                        NavigationLink(destination: CharityDonationsView()) {
                            Image("charityButton")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                    .padding(-10)
                    .padding(.bottom, 5)
                    .padding(.top, -5)
                    .frame(height: 140)
                }
            }
            .background(Color.lightPurple.ignoresSafeArea())
        }
    }
}
#Preview {
    LaunchView()
}
