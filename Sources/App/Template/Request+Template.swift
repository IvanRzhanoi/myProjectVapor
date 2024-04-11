//
//  Request+Template.swift
//
//
//  Created by Ivan Rzhanoi on 1.4.2024.
//

import Vapor

public extension Request {
    var templates: TemplateRenderer { .init(self) }
}
