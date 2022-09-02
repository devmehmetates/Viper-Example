//
//  NetworkManager.swift
//  Viper-Example
//
//  Created by Mehmet Ateş on 2.09.2022.
//

import Foundation

final class NetworkManager {
    
    static func sendApiRequest(with endpoint: String, completion: @escaping (Result<[Movie], RequestErrors>) -> Void) {
        guard let requestURL: URL = URL(string: endpoint) else { return completion(.failure(.unknowedError)) }
        URLSession.shared.dataTask(with: requestURL) { data, response, error in
            guard error == nil, let data = data else { return completion(.failure(.unknowedError)) }
            guard let movies = try? JSONDecoder().decode(Movies.self, from: data) else { return completion(.failure(.unknowedError)) }
            return completion(.success(movies.results ?? []))
        }.resume()
    }
}

enum RequestErrors: Error {
    case unknowedError
}

enum NetworkEndpoints: String {
    case baseUrl = "https://api.themoviedb.org/3/movie/top_rated?api_key=11459cff1c1ce00e3202addab99f3a91&language=en-us&page=1"
}
