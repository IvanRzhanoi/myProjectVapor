//
//  BlogRouter.swift
//
//
//  Created by Ivan Rzhanoi on 5.4.2024.
//

import Vapor


struct BlogRouter: RouteCollection {
    
    let controller = BlogFrontendController()
    
    func boot(routes: RoutesBuilder) throws {
        routes.get("blog", use: controller.blogView)
        routes.get(.anything, use: controller.postView)
    }
}
