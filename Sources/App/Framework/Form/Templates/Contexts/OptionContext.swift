//
//  OptionContext.swift
//
//
//  Created by Ivan Rzhanoi on 4.6.2024.
//

public struct OptionContext {
    public let key: String
    public var label: String
    
    public init(key: String, label: String) {
        self.key = key
        self.label = label
    }
}


extension OptionContext {
    
    static func yesNo() -> [OptionContext] {
        ["yes", "no"].map {
            .init(key: $0, label: $0.capitalized)
        }
    }
    
    static func trueFalse() -> [OptionContext] {
        [true, false].map {
            .init(key: String($0), label: String($0).capitalized)
        }
    }
    
    static func numbers(_ numbers: [Int]) -> [OptionContext] {
        numbers.map {
            .init(key: String($0), label: String($0))
        }
    }
}
