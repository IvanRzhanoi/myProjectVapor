//
//  TextareaFieldTemplate.swift
//
//
//  Created by Ivan Rzhanoi on 4.6.2024.
//

import Vapor
import SwiftHtml


public struct TextareaFieldTemplate: TemplateRepresentable {
    
    public var context: TextareaFieldContext
    
    init(_ context: TextareaFieldContext) {
        self.context = context
    }
    
    @TagBuilder
    public func render(_ req: Request) -> Tag {
        LabelTemplate(context.label).render(req)
        
        Textarea(context.value)
            .placeholder(context.placeholder)
            .name(context.key)
        
        if let error = context.error {
            Span(error)
                .class("error")
        }
    }
}
