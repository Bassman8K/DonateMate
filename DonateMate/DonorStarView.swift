import SwiftUI

struct DonorStarView: View {
    @EnvironmentObject var newThanks: NewThank
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("lightPurple").ignoresSafeArea()
                
                // Scrollable container for entire content
                ScrollView {
                    VStack {
                        // Logo at the top
                        Image("horizontallogo")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 90)
                        
                        // Donation badge image
                        Image("donationbadge")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 450, height: 300)

                        // List of thank you messages
                        ForEach(newThanks.thankArray, id: \.uuid) { thank in
                            VStack(alignment: .center) {
                                // Image Placeholder
                                thank.imagePerson
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 150)
                                    .cornerRadius(10)
                                    .shadow(radius: 1)
                                    .padding(.trailing, 8)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(thank.message)
                                        .font(.title2)
                                        .bold()
                                        .foregroundStyle(.darkPurple)
                                        .padding(.top, 8) // Adds spacing for the message
                                }
                            }
                            .padding(.vertical, 8) // Padding between list items
                       //     .background(Color.white)
                       //     .cornerRadius(10)
                       //     .shadow(radius: 2)
                        }
                    }
                    .padding(.horizontal, 16)
                }
            }
        }
    }
}

#Preview {
    DonorStarView()
        .environmentObject(NewThank())
}
