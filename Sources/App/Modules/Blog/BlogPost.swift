//
//  BlogPost.swift
//
//
//  Created by Ivan Rzhanoi on 2.4.2024.
//

import Foundation


struct BlogPost: Codable {
    let title: String
    let slug: String
    let image: String
    let excerpt: String
    let date: Date
    let category: String?
    let content: String
}


