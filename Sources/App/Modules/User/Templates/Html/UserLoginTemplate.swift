//
//  UserLoginTemplate.swift
//
//
//  Created by Ivan Rzhanoi on 30.4.2024.
//

import Vapor
import SwiftHtml


struct UserLoginTemplate: TemplateRepresentable {
    
    var context: UserLoginContext
    
    init(_ context: UserLoginContext) {
        self.context = context
    }
    
    @TagBuilder
    func render(_ req: Request) -> Tag {
        WebIndexTemplate(.init(title: context.title)) {
            Div {
                Section {
                    P(context.icon)
                    H1(context.title)
                    P(context.message)
                }
                .class("lead")
                
                context.form.render(req)
            }
            .id("user-login")
            .class("container")
        }
        .render(req)
    }
}
