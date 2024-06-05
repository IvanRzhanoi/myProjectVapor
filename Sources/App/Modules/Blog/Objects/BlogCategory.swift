//
//  BlogCategory.swift
//
//
//  Created by Ivan Rzhanoi on 19.4.2024.
//

import Foundation


extension Blog.Category {
    
    struct List: Codable {
        let id: UUID
        let title: String
    }
}
