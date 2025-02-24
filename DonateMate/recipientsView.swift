//
//  recipientsView.swift
//  app
//
//  Created by Patrick Ly on 23/2/2025.
//

import SwiftUI

struct recipientsView: View {
    let recipients = [
        "Ava Johnson",
        "Leo Matthews",
        "Mia Harper",
        "Ethan Brooks",
        "Olivia Carter",
        "Lucas Davis",
        "Margaret Locke",
        "Noah Anderson",
        "Isabella Turner",
        "Benjamin Gray"
    ]
    var body: some View {
        NavigationStack {
            List {
                ForEach (recipients, id: \.self) { name in
                    HStack {
                        NavigationLink(name){
                            recipientDetail(recipient: name)
                        }
                        .font(.title)
                    }
                    
                }
            }
            .listStyle(.plain)
            .navigationTitle("Recipients")
            
        }
    }
}

#Preview {
    recipientsView()
}
