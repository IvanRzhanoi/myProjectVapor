//
//  ModuleInterface.swift
//  
//
//  Created by Ivan Rzhanoi on 19.4.2024.
//

import Vapor


public protocol ModuleInterface {
    
    static var identifier: String { get }
    
    func boot(_ app: Application) throws
}


public extension ModuleInterface {
    
    func boot(_ app: Application) throws { }
    
    static var identifier: String {
        String(describing: self).dropLast(6).lowercased()
    }
}
