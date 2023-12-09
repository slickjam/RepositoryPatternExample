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
        NavigationStack {
            VStack {
                ForEach(contactRepo.elements) { element in
                    ContactRow(contact: element)
                }
            }.onAppear {
                contactRepo.pull()
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        let id = contactRepo.elements.count + 1
                        let contact = Contact(id: String(id), firstName: "Contact", phoneNumber: String(id))
                        contactRepo.add(element: contact)
                    }, label: {
                        Text("Add")
                    })
                }
            }
        }
    }
}

#Preview {
    ContactView()
}
