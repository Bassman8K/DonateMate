//
//  recipientsView.swift
//  app
//
//  Created by Patrick Ly on 23/2/2025.
//

import SwiftUI

struct RecipientView: View {
    let recipients = [
        Recipient(name: "Ava Johnson", needs: "Vacuum cleaner", address: "12 Collins Street, Melbourne, VIC 3000"),
        Recipient(name: "Leo Matthews", needs: "Toaster", address: "45 Fitzroy Street, St Kilda, VIC 3182"),
        Recipient(name: "Mia Harper", needs: "Chair", address: "89 Chapel Street, South Yarra, VIC 3141"),
        Recipient(name: "Ethan Brooks", needs: "Lamp", address: "101 Lonsdale Street, Melbourne, VIC 3000"),
        Recipient(name: "Olivia Carter", needs: "Microwave", address: "76 Swanston Street, Carlton, VIC 3053"),
        Recipient(name: "Lucas Davis", needs: "Cutting board", address: "58 Bridge Road, Richmond, VIC 3121"),
        Recipient(name: "Margaret Locke", needs: "Couch", address: "230 High Street, Prahran, VIC 3181"),
        Recipient(name: "Noah Anderson", needs: "Trash can", address: "300 Bourke Street, Melbourne, VIC 3000"),
        Recipient(name: "Isabella Turner", needs: "Iron", address: "10 Glenferrie Road, Malvern, VIC 3144"),
        Recipient(name: "Benjamin Gray", needs: "Fridge", address: "121 Queen Street, Fitzroy, VIC 3065")
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach (recipients, id: \.name) { recipient in
                    HStack {
                        NavigationLink(recipient.name){
                            recipientDetail(recipient: recipient)
                        }
                        .font(.title)
                    }
                    
                    
                }
            }
            .background(.lightPurple)

            .listStyle(.plain)
            .navigationTitle("Recipients")
            
        }
        .background(.lightPurple)

    }
}

#Preview {
    RecipientView()
}
