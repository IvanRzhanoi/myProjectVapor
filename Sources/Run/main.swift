//
//  main.swift
//
//
//  Created by Ivan Rzhanoi on 1.4.2024.
//

import App
import Vapor

var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)
let app = Application(env)
defer { app.shutdown() }
try configure(app)
try app.run()
