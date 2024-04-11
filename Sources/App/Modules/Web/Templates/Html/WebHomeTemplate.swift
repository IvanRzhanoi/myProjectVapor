//
//  WebHomeTemplate.swift
//
//
//  Created by Ivan Rzhanoi on 2.4.2024.
//

import Vapor
import SwiftHtml

struct WebHomeTemplate: TemplateRepresentable {
    
    var context: WebHomeContext
    
    init(_ context: WebHomeContext) {
        self.context = context
    }
    
    @TagBuilder
    func render(_ req: Request) -> Tag {
        WebIndexTemplate(
            .init(title: context.title)
        ) {
            Div {      
                Section {
                    P(context.icon)
                    H1(context.title)
                    P(context.message)
                }
                .class("lead")
                
                for paragraph in context.paragraphs {
                    P(paragraph)
                }
                
                WebLinkTemplate(context.link)
                    .render(req)
            }
            .id("home")
            .class("container")
        }
        .render(req)
    }
}
