//
//  TemplateRepresentable.swift
//
//
//  Created by Ivan Rzhanoi on 1.4.2024.
//

import Vapor
import SwiftSgml


public protocol TemplateRepresentable {
    
    @TagBuilder
    func render(_ req: Request) -> Tag
}
