//
//  BaseRepository.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/2/23.
//

import Combine
import CoreData
import Foundation

class BaseRepository<E: NSManagedObject, M>: RepositoryPattern, ObservableObject {
        
    private var context = PersistenceController.shared.container.newBackgroundContext()
    
    @Published var elements: [M] = []
    
    private var onSave: (()->())? = nil
    
    @objc func didSave(_ notification: Notification) {
        onSave?()
    }
        
    func setSaveHandler(onSave: (()->())?) {
        self.onSave = onSave
        let didSaveNotification = NSManagedObjectContext.didSaveObjectsNotification
        NotificationCenter.default.addObserver(self, selector: #selector(didSave),
                                               name: didSaveNotification, object: context)
    }
    
    private func save() {
        context.perform { [weak self] in
            guard let self = self else { return }
            do {
                if context.hasChanges {
                    try context.save()
                }
            } catch {
                debugPrint(error)
            }
            
        }
    }
    
    func createEntity() -> E {
        return E(context: context)
    }
    
    func add(element: M) {
        save()
    }
    
    func remove(element: M) {
        save()
    }
    
    func update(element: M) {
        save()
    }
    
    func pull() {
        fatalError()
    }
    
    func loadFromPersistence<T>(request: NSFetchRequest<T>, converter:  @escaping (([T])->([M]))) {
        Task {
            await context.perform { [weak self] in
                guard let self = self else { return }
                if let results = try? context.fetch(request) {
                    DispatchQueue.main.async {
                        self.elements =  converter(results)
                    }
                }
            }
        }
    }
    
}
