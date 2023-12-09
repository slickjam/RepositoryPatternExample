//
//  RepositoryPatternExampleApp.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/2/23.
//

import SwiftUI

@main
struct RepositoryPatternExampleApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var contactRepository = ContactsRepository()
    
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(contactRepository)
        }
    }
}
