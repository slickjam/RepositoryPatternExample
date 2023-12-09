//
//  ContactEntity+CoreDataProperties.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/2/23.
//
//

import Foundation
import CoreData


extension ContactEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ContactEntity> {
        return NSFetchRequest<ContactEntity>(entityName: "ContactEntity")
    }

    @NSManaged public var id: String

}

extension ContactEntity : Identifiable {

}
