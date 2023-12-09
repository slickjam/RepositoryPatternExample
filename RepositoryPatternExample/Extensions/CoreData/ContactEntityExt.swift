//
//  ContactEntityExt.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/2/23.
//

import Foundation

extension ContactEntity {
    func toModel() -> Contact {
        return Contact(id: self.id,
                       firstName: self.firstName,
                       lastName: self.lastName,
                       phoneNumber: self.phoneNumber,
                       email: self.email)
    }
}
