//
//  recipientDetail.swift
//  app
//
//  Created by Patrick Ly on 23/2/2025.
//
import SwiftUI

struct recipientDetail: View {
    let recipient: Recipient
    
    var body: some View {
        ZStack {
            Color("lightPurple")
                .ignoresSafeArea()
            
            VStack {
                Form {
                    Section {
                        Text(recipient.name)
                            .font(.title)
                            .bold()
                            .foregroundStyle(.darkPurple)
                    }
                    Text("Needs")
                        .font(.headline)
                        .foregroundStyle(.darkPurple)
                    
                    Section {
                        Text(recipient.needs)
                            .font(.title)
                            .foregroundStyle(.darkPurple)
                            .bold()
                            .italic()
                    }
                    
                    Text(recipient.address)
                        .font(.subheadline)
                        .foregroundStyle(.darkPurple)
                }
                .scrollContentBackground(.hidden)
                .background(Color("lightPurple"))
            }
        }
    }
}

#Preview {
    recipientDetail(recipient: Recipient(name: "Margaret", needs: "Couch", address: "230 High Street, Prahran, VIC 3181"))
}
