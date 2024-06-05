//
//  InputFieldTemplate.swift
//
//
//  Created by Ivan Rzhanoi on 3.5.2024.
//

import Vapor
import SwiftHtml


public struct InputFieldTemplate: TemplateRepresentable {
    
    public var context: InputFieldContext
    
    init(_ context: InputFieldContext) {
        self.context = context
    }
    
    @TagBuilder
    public func render(_ req: Request) -> Tag {
        LabelTemplate(context.label).render(req)
        
        Input()
            .type(context.type)
            .key(context.key)
            .placeholder(context.placeholder)
            .value(context.value)
            .class("field")
        if let error = context.error {
            Span(error)
                .class("error")
        }
    }
}
