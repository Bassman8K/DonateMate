//
//  DonorSignUpView.swift
//  DonateMate
//
//  Created by Phan Le Hong Phuc on 25/2/2025.
//

import SwiftUI

struct DonorSignUpView: View {
    @State private var userName: String = ""
    @State private var eMail: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""

    var body: some View {
        ZStack {
            Color(red: 0.87, green: 0.87, blue: 1)
                .ignoresSafeArea()
            
            VStack {
                // Home Button
                HStack {
                    NavigationLink(destination: LaunchView()) {
                        Image(systemName: "house.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.darkPurple)
                            .frame(width: 24, height: 24)
                            .padding()
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(radius: 3)
                    }
                    .padding(40)
                    
                    Spacer()
                }
                .padding(.top, 10)
                
                Spacer()
            }

            // Top-right Logo
            VStack {
                HStack {
                    Spacer()
                    Image("cornerlogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .padding()
                }
                .padding(.top, 10)
                Spacer()
            }

            // Login Form
            VStack(spacing: 10) {
                Text("Sign In Your Account")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(Color.darkPurple)
                    .frame(width: 350, height: 40, alignment: .top)
                    .padding(.top, -50)

                // Username Field
                TextField("Username", text: $userName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                    .cornerRadius(10)
                    .padding(5)
                
                // Email
                TextField("Email", text: $eMail)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                    .cornerRadius(10)
                    .padding(5)

                // Password Field
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                    .cornerRadius(10)
                    .padding(5)
                
                // Confirm Password Field
                SecureField("Confirm Password", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                    .cornerRadius(10)
                    .padding(5)

                // Sign In Button
                NavigationLink(destination: LaunchView()) {
                    Text("Sign In")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 120)
                        .background(Color.darkPurple)
                        .cornerRadius(20)
                        .shadow(radius: 3)
                }
                .padding(.top, 10)
            
                Text("Have an account?")
                    .opacity(0.5)
                    .padding(.top, 10)

                NavigationLink(destination: DonorSignInView()) {
                    Text("Sign In")
                        .foregroundColor(Color.darkPurple)
                        .font(.title3)
                        .fontWeight(.medium)
                }
            }
        }
        .frame(width: 402, height: 874)
    }
}
#Preview {
    DonorSignUpView()
}
