//
//  FormContext.swift
//  
//
//  Created by Ivan Rzhanoi on 3.5.2024.
//

public struct FormContext {
    public var action: FormAction
    public var fields: [TemplateRepresentable]
    public var error: String?
    public var submit: String?
}
