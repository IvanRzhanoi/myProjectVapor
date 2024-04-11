//
//  WebRouter.swift
//
//
//  Created by Ivan Rzhanoi on 2.4.2024.
//

import Vapor

struct WebRouter: RouteCollection {
    
    let frontendController = WebFrontendController()
    
    func boot(routes: RoutesBuilder) throws {
        routes.get(use: frontendController.homeView)
    }
}
