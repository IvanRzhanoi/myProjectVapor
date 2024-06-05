//
//  UserLoginContext.swift
//
//
//  Created by Ivan Rzhanoi on 30.4.2024.
//

struct UserLoginContext {
    
    let icon: String
    let title: String
    let message: String
    let form: TemplateRepresentable
    
    init(
        icon: String,
        title: String,
        message: String,
        form: TemplateRepresentable) {
            self.icon = icon
            self.title = title
            self.message = message
            self.form = form
    }
}
