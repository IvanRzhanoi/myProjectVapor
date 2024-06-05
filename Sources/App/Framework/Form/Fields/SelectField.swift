//
//  SelectField.swift
//
//
//  Created by Ivan Rzhanoi on 4.6.2024.
//

import Vapor


public final class SelectField: AbstractFormField<String, SelectFieldTemplate> {
    
    public convenience init(key: String) {
        self.init(key: key, input: "", output: .init(.init(key: key)))
    }
    
    public override func process(req: Request) async throws {
        try await super.process(req: req)
        output.context.value = input
    }
    
    public override func render(req: Request) -> TemplateRepresentable {
        output.context.error = error
        return super.render(req: req)
    }
}
