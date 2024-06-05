//
//  AsyncValidatorBuilder.swift
//
//
//  Created by Ivan Rzhanoi on 9.5.2024.
//

@resultBuilder
public enum AsyncValidatorBuilder {
    public static func buildBlock(_ components: AsyncValidator...) -> [AsyncValidator] {
        components
    }
}
