//
//  VoiceRepository.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/9/23.
//

import Foundation

class VoiceRepository: BaseRepository<VoiceEntity, VoiceLog> {
    
    override init() {
        super.init()
        super.setSaveHandler(onSave: pull)
    }
        
    override func add(element: VoiceLog) {
        let entity = createEntity()
        entity.id = element.id
        super.add(element: element)
    }
    
    override func pull() {
        super.loadFromPersistence(request: VoiceEntity.fetchRequest(),
                                  converter: { results in
            return results.compactMap({$0.toModel()})
        })
    }
}
