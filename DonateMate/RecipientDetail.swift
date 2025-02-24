//
//  recipientDetail.swift
//  app
//
//  Created by Patrick Ly on 23/2/2025.
//

import SwiftUI

struct RecipientDetail: View {
    let recipient :String
    var body: some View {
        Form {
            Section {
                Text(recipient)
                    .font(.title)
            }
            Text("Needs")
            Section{
                Text("Couch")
            }
            
        }
    }
}

#Preview {
    RecipientDetail(recipient: "Margaret")
}
