//
//  recipientsView.swift
//  app
//
//  Created by Patrick Ly on 23/2/2025.
//

import SwiftUI

struct recipientsView: View {
    let recipients = [
        "Patrick", "Trivesh", "Mansib", "Aryan", "Anushka", "Zhilin", "Linda", "Tanay", "Elly", "Noor", "Oscar", "Lucy", "Steve", "Allwin", "Abhijeet", "Amogh", "Yana", "Tilly", "Donovan", "Kerlyn", "Mira", "David", "Annie", "Sara", "Jonathan", "Akansha"
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
