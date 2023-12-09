//
//  ContactView.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/9/23.
//

import SwiftUI

struct ContactView: View {
    @EnvironmentObject var contactRepo: ContactsRepository
    
    var body: some View {
        VStack {
            
            ForEach(contactRepo.elements) { element in
                Text(element.id)
            }
            
            Button(action: {
                contactRepo.add(element: Contact(id: "Contact \(contactRepo.elements.count + 1)"))
            }, label: {
                Text("Add")
            })

        }.onAppear {
            contactRepo.pull()
        }
    }
}

#Preview {
    ContactView()
}
