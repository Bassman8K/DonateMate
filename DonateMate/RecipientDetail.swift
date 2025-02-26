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
          
            VStack {
                Form {
                    Section {
                        Text(recipient.name)
                            .font(.title)
                    }
                    Text("Needs")
                    Section{
                        Text(recipient.needs)
                    }
                    Text(recipient.address)
                    
                }
               


            }
            

        }
       


    }
}

#Preview {
    recipientDetail(recipient: Recipient(name: "Margaret", needs: "Couch", address: "230 High Street, Prahran, VIC 3181"))
}
