//
//  Repository.swift
//  RepositoryPatternExample
//
//  Created by Stephen Brooks on 12/2/23.
//

import CoreData
import Foundation

protocol RepositoryPattern {
    
    associatedtype E where E == NSManagedObject
    associatedtype M
    
    var elements: [M] { get }
    
    func add(element: M)
    func remove(element: M)
    func update(element: M)
    
    func pull()
    func loadFromPersistence(request: NSFetchRequest<E>, converter:  @escaping (([E])->([M])))
}
