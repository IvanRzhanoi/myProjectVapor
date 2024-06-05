//
//  AsyncValidator.swift
//
//
//  Created by Ivan Rzhanoi on 9.5.2024.
//

import Vapor


public protocol AsyncValidator {
    var key: String { get }
    var message: String { get }
    
    func validate(_ req: Request) async throws -> ValidationErrorDetail?
}


extension AsyncValidator {
    var error: ValidationErrorDetail {
        .init(key: key, message: message)
    }
}
