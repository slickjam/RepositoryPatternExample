//
//  VoiceEntity+CoreDataProperties.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/9/23.
//
//

import Foundation
import CoreData


extension VoiceEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VoiceEntity> {
        return NSFetchRequest<VoiceEntity>(entityName: "VoiceEntity")
    }

    @NSManaged public var id: String
    @NSManaged public var title: String
    @NSManaged public var direction: String
    @NSManaged public var duration: String

}

extension VoiceEntity : Identifiable {

}
