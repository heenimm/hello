import Vapor
import Fluent
import FluentPostgresDriver

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    // register routes
    app.databases.use(.postgres(hostname: "ruby.db.elephantsql.com", username: "jrfvsndq", password: "8l1vl3drkGNbqook_7PEYfC4sOV6dYS-", database: "jrfvsndq"), as: .psql)
    
    app.migrations.add(CreateMoviesTableMigration())
    
    try routes(app)
}
