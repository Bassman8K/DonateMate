import SwiftUI

struct DonorProfileView: View {
    @Environment(\.presentationMode) var presentationMode // For dismissing the current view
    @State private var isLoggedOut = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("lightPurple").edgesIgnoringSafeArea(.all) // Background for the entire screen
                
                VStack {
                    HStack {
                        Text("My Profile")
                            .scaledToFit()
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(alignment: .topLeading)
                            .foregroundColor(Color("darkPurple"))
                        Spacer()
                        Image("cornerlogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding()
                    }
                    .padding(.horizontal, 20)
                    
                    Spacer()
                    
                    Form {
                        VStack {
                            Image("sallyprofile")
                                .resizable()
                                .frame(width: 160, height: 160)
                        }
                        
                        HStack {
                            Image(systemName: "person.fill")
                                .frame(width: 42, height: 42)
                            Text("My profile")
                        }
                        .padding(.top, 10)
                        
                        HStack {
                            Image(systemName: "gearshape.fill")
                                .frame(width: 42, height: 42)
                            Text("Settings")
                        }
                        
                        HStack {
                            Image(systemName: "ellipsis.message.fill")
                                .frame(width: 42, height: 42)
                            Text("Help")
                        }
                        
                        Button(action: {
                            // Navigate back to HomeView
                            isLoggedOut = true
                        }) {
                            HStack {
                                Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                                    .frame(width: 42, height: 42)
                                Text("Log out")
                            }
                        }
                    }
                    .scrollContentBackground(.hidden) // Remove default form background
                    .background(Color("lightPurple")) // Ensure form blends with screen background
                    .foregroundColor(Color("darkPurple"))
                }
            }
            .background(
            NavigationLink(
                    destination: LaunchView(),
                    isActive: $isLoggedOut,
                    label: { EmptyView() }
                )
            )
        }
    }
}

#Preview {
    DonorProfileView()
}
