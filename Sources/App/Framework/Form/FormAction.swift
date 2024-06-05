//
//  FormAction.swift
//
//
//  Created by Ivan Rzhanoi on 3.5.2024.
//

import SwiftHtml


public struct FormAction {
    
    public var method: SwiftHtml.Method
    public var url: String?
    public var enctype: SwiftHtml.Enctype?
    
    public init(method: SwiftHtml.Method = .post, url: String? = nil, enctype: SwiftHtml.Enctype? = nil) {
        self.method = method
        self.url = url
        self.enctype = enctype
    }
}
