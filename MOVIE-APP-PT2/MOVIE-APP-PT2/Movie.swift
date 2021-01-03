//
//  Movie.swift
//  MOVIE-APP-PT2
//
//  Created by mariam alfoudari on 02/01/2021.
//

import Foundation
 
struct Movie: Hashable, Identifiable{
    let name: String
    let Characters: [String]
    let id = UUID()
}

let movies = [
    Movie(name: "Harry Potter and the Philosopher's Stone", Characters: ["Harry Potter", "Lord Voldemort", "Hermione Granger"]),
    Movie(name: "Harry Potter and the Chamber of Secrets", Characters: ["Harry Potter", "Ron Weasley", "Sirius"]),
    Movie(name: "Harry Potter and the Prisoner of Azkaban", Characters: ["Harry Potter", "Lord Voldemort", "Albus Dumbledore"]),
    Movie(name:  "Harry Potter and the Goblet of Fire" ,    Characters: ["Harry Potter", "Lord Voldemort", "Cedric Diggory"]),
    Movie(name: "Harry Potter and the Order of the Phoenix", Characters:  ["Harry Potter", "Lord Voldemort", "Dolores Umbridge"]),
    Movie(name: "Harry Potter and the Half-Blood Prince", Characters: ["Harry Potter", "Ron Weasley", "Severus Snape"]),
    Movie(name: "Harry Potter And The Deathly Hallows", Characters: ["Harry Potter", "Lord Voldemort", "Bellatrix Lestrange"]),
    Movie(name: "Harry Potter and the Deathly Hallows – Part 2", Characters: ["Harry Potter", "Lord Voldemort", "Ginny Weasley"]),
]
