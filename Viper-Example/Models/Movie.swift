//
//  Movie.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 2.09.2022.
//

struct Movie: Codable {
    let adult: Bool?
    private let backdropPath: String?
    var backgroundImage: String { "https://image.tmdb.org/t/p/w500\(backdropPath ?? "")" }
    let genreIds: [Int]?
    let id: Int?
    let originalLanguage: String?
    let originalTitle: String?
    let overview: String?
    let popularity: Double?
    private let posterPath: String?
    var posterImage: String { "https://image.tmdb.org/t/p/w500\(posterPath ?? "")" }
    let releaseDate: String?
    let title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    
    enum CodingKeys: String, CodingKey {
        case adult, id, overview, popularity, title, video
        case backdropPath = "backdrop_path"
        case genreIds = "genre_ids"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
