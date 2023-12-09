//
//  ContactEntity+CoreDataProperties.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/9/23.
//
//

import Foundation
import CoreData


extension ContactEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ContactEntity> {
        return NSFetchRequest<ContactEntity>(entityName: "ContactEntity")
    }

    @NSManaged public var id: String
    @NSManaged public var firstName: String
    @NSManaged public var lastName: String?
    @NSManaged public var phoneNumber: String
    @NSManaged public var email: String?

}

extension ContactEntity : Identifiable {

}
