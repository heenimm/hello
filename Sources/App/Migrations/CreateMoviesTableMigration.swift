//
//  File.swift
//  
//
//  Created by Халимка on 09.04.2024.
//

import Foundation
import Fluent

struct CreateMoviesTableMigration: AsyncMigration {
    
    func prepare(on database: FluentKit.Database) async throws {
        try await database.schema("movies")
            .id()
            .field("title", .string, .required)
            .create()
    }
    
    func revert(on database: FluentKit.Database) async throws {
        try await database.schema("movies")
            .delete()
    }
    
}
