import Vapor

func routes(_ app: Application) throws {
    app.get("movies1") { req async in
        [Movie(title: "Batman")]
    }
    
    app.post("movies") { req async throws in
        let movie = try req.content.decode(Movie.self)
        try await movie.save(on: req.db)
        return movie
    }
//    
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    app.get("hotels") { req async throws in
        let hotelQuery = try req.query.decode(HotelsQuery.self)
        return hotelQuery
    }
}
