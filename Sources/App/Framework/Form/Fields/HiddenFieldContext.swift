//
//  HiddenFieldContext.swift
//
//
//  Created by Ivan Rzhanoi on 4.6.2024.
//


public struct HiddenFieldContext {
    public let key: String
    public var value: String?
    
    public init(key: String, value: String? = nil) {
        self.key = key
        self.value = value
    }
}
