//
//  ContactRow.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/9/23.
//

import SwiftUI

struct ContactRow: View {
    let contact: Contact
    var body: some View {
        VStack {
            Text("Name: \(contact.firstName) \(contact.lastName ?? "")")
            Text("Number: \(contact.phoneNumber)").font(.caption)
        }
    }
}

#Preview {
    ContactRow(contact: Contact(id: "0", firstName: "Test", phoneNumber: "555-555-5555"))
}
