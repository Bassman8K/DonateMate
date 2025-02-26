//
//  DonorStarView.swift
//  DonateMate
//
//  Created by Jonathan Edwin on 24/02/2025.
//

import SwiftUI

struct DonorStarView: View {
    @EnvironmentObject var newThanks: NewThank

    
    var body: some View {
//        ZStack {
//            Color.lightPurple.edgesIgnoringSafeArea(.all)
//            VStack {
//                Image("horizontallogo")
//                    .resizable()
//                    .scaledToFit()
//                Spacer()
//                ZStack {
//                   Image("")
//                }
//            }
//        }
        NavigationStack {
            ZStack {
                Color("lightPurple")
                    .ignoresSafeArea()
               
                VStack {
                    List {
                        
                        ForEach(newThanks.thankArray, id: \.uuid) { thank in

                            
                            
                            VStack(alignment: .center) {
                                // Image Placeholder
                                    thank.imagePerson
                                    .resizable()
                                    .scaledToFit()
                                    
                                    .frame(height: 200.19385)                                    .padding(.trailing, 8)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(thank.message)
                                        .font(.title)
                                        .bold()
                                    
                                    
                                }
                            }

                        }
                        .padding(.vertical, 8)
                                
                            
                        }
                    }
                    .scrollContentBackground(.hidden)
                    
                }
            }
            .navigationTitle("Thanks")

            
           
        }
    }


#Preview {
    DonorStarView()
        .environmentObject(NewThank())

}
