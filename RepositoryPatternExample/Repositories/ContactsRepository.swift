//
//  ContactsRepository.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/2/23.
//

import Foundation

class ContactsRepository: BaseRepository<ContactEntity, Contact> {
    
    override init() {
        super.init()
        super.setSaveHandler(onSave: pull)
    }
        
    override func add(element: Contact) {
        let entity = createEntity()
        entity.id = element.id
        super.add(element: element)
    }
    
    override func pull() {        
        super.loadFromPersistence(request: ContactEntity.fetchRequest(),
                                  converter: { results in
            return results.compactMap({$0.toModel()})
        })
    }
  
}
