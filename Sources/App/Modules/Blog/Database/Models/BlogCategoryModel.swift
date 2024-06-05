//
//  BlogCategoryModel.swift
//
//
//  Created by Ivan Rzhanoi on 11.4.2024.
//

import Vapor
import Fluent


final class BlogCategoryModel: DatabaseModelInterface {
    
    typealias Module = BlogModule
    
    static let identifier: String = "categories"
    
    static let schema = "blog_categories"
    
    struct FieldKeys {
        struct v1 {
            static var title: FieldKey { "title" }
        }
    }
    
    @ID() var id: UUID?
    @Field(key: FieldKeys.v1.title) var title: String
    @Children(for: \.$category) var posts: [BlogPostModel]
    
    init() { }
    
    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }
}
