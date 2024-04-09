//
//  File.swift
//  
//
//  Created by Халимка on 09.04.2024.
//

import Foundation
import Fluent
import Vapor

final class Movie: Model, Content {
    // Устанавливаем имя таблицы movies
    static let schema: String = "movies"
    
    // Создаем id
    @ID(key: .id)
    var id: UUID?
     
    // Создаем столбец title
    @Field(key: "title")
    var title: String
    
    init() {}
    
    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }
    
}
