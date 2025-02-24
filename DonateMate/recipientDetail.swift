//
//  recipientDetail.swift
//  app
//
//  Created by Patrick Ly on 23/2/2025.
//

import SwiftUI

struct recipientDetail: View {
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
    recipientDetail(recipient: "Margaret")
}
