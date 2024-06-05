//
//  FormComponentBuilder.swift
//
//
//  Created by Ivan Rzhanoi on 5.5.2024.
//

@resultBuilder
public enum FormComponentBuilder {
    public static func buildBlock(_ components: FormComponent...) -> [FormComponent] {
        components
    }
}
