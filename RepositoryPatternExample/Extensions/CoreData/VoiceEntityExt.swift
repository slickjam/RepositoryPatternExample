//
//  VoiceEntityExt.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/9/23.
//

import Foundation

extension VoiceEntity {
    func toModel() -> VoiceLog {
        return VoiceLog(id: self.id,
                        title: self.title,
                        direction: self.direction,
                        duration: self.duration)
    }
}
