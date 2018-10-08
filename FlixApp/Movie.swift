//
//  Movie.swift
//  FlixApp
//
//  Created by Isaac on 10/8/18.
//  Copyright © 2018 Isaac. All rights reserved.
//

import Foundation

class Movie{
    
    var title: String
    var overview: String
    var releaseDate: String
    var posterUrl: URL?
    var backdropUrl: URL?
    
    let baseURLString = "https://image.tmdb.org/t/p/w500"
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No overview"
        releaseDate = dictionary["release_date"] as? String ?? "No release date"
        posterUrl = URL(string: baseURLString + (dictionary["poster_path"] as! String))
        backdropUrl = URL(string: baseURLString + (dictionary["backdrop_path"] as! String))
    }
 
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }

    
}
