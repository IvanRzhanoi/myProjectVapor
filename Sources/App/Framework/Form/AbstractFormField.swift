//
//  AbstractFormField.swift
//
//
//  Created by Ivan Rzhanoi on 3.5.2024.
//

import Vapor


open class AbstractFormField<Input: Decodable, Output: TemplateRepresentable>: FormComponent {
    
    public var key: String
    public var input: Input
    public var output: Output
    public var error: String?
    
    // MARK: - event blocks
    public typealias FormFieldBlock = (Request, AbstractFormField<Input, Output>) async throws -> Void
    public typealias FormFieldValidatorsBlock = ((Request, AbstractFormField<Input, Output>) -> [AsyncValidator])
    
    private var readBlock: FormFieldBlock?
    private var writeBlock: FormFieldBlock?
    private var loadBlock: FormFieldBlock?
    private var saveBlock: FormFieldBlock?
    private var validatorsBlock: FormFieldValidatorsBlock?
    
    // MARK: - init & config
    
    public init(key: String, input: Input, output: Output, error: String? = nil) {
        self.key = key
        self.input = input
        self.output = output
        self.error = error
    }
    
    open func config(_ block: (AbstractFormField<Input, Output>) -> Void) -> Self {
        block(self)
        return self
    }
    
    // MARK: - Block setters
    
    open func read(_ block: @escaping FormFieldBlock) -> Self {
        readBlock = block
        return self
    }
    
    open func write(_ block: @escaping FormFieldBlock) -> Self {
        writeBlock = block
        return self
    }
    
    open func load(_ block: @escaping FormFieldBlock) -> Self {
        loadBlock = block
        return self
    }
    
    open func save(_ block: @escaping FormFieldBlock) -> Self {
        saveBlock = block
        return self
    }
    
    open func validators(@AsyncValidatorBuilder _ block: @escaping FormFieldValidatorsBlock) -> Self {
        validatorsBlock = block
        return self
    }
    
    // MARK: - FormComponent
    
    public func process(req: Vapor.Request) async throws {
        if let value = try? req.content.get(Input.self, at: key) {
            input = value
        }
    }
    
    public func validate(req: Vapor.Request) async throws -> Bool {
        guard let validators = validatorsBlock else { return true }
        return await RequestValidator(validators(req, self)).isValid(req)
    }
    
    public func read(req: Vapor.Request) async throws {
        try await readBlock?(req, self)
    }
    
    public func write(req: Vapor.Request) async throws {
        try await writeBlock?(req, self)
    }
    
    public func load(req: Vapor.Request) async throws {
        try await loadBlock?(req, self)
    }
    
    public func save(req: Vapor.Request) async throws {
        try await saveBlock?(req, self)
    }
    
    public func render(req: Vapor.Request) -> any TemplateRepresentable {
        output
    }
}
