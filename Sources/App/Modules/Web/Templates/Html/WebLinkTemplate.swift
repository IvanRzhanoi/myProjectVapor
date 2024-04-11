//
//  WebLinkTemplate.swift
//
//
//  Created by Ivan Rzhanoi on 2.4.2024.
//

import Vapor
import SwiftHtml

struct WebLinkTemplate: TemplateRepresentable {
    var context: WebLinkContext
    
    init(_ context: WebLinkContext) {
        self.context = context
    }
    
    @TagBuilder
    func render(_ req: Request) -> Tag {
        A(context.label)
        .href(context.url)   
    }
}
