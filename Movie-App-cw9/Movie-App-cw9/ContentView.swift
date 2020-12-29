//
//  ContentView.swift
//  Movie-App-cw9
//
//  Created by mariam alfoudari on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    
    var body: some View {
        Form{
            MovieRaw(MovieName: "Harry Potter and the Philosopher's Stone", MovieCharacters: ["Harry Potter", "Lord Voldemort", "Hermione Granger"])
            MovieRaw(MovieName: "Harry Potter and the Chamber of Secrets", MovieCharacters: ["Harry Potter", "Ron Weasley", "Sirius Black"])
            MovieRaw(MovieName: "Harry Potter and the Prisoner of Azkaban", MovieCharacters: ["Harry Potter", "Lord Voldemort", "Albus Dumbledore"])
            MovieRaw(MovieName: "Harry Potter and the Goblet of Fire", MovieCharacters: ["Harry Potter", "Lord Voldemort", "Cedric Diggory"])
            MovieRaw(MovieName: "Harry Potter and the Order of the Phoenix", MovieCharacters: ["Harry Potter", "Lord Voldemort", "Dolores Umbridge"])
            MovieRaw(MovieName: "Harry Potter and the Half-Blood Prince", MovieCharacters: ["Harry Potter", "Ron Weasley", "Severus Snape"])
            MovieRaw(MovieName: "Harry Potter And The Deathly Hallows", MovieCharacters: ["Harry Potter", "Lord Voldemort", "Bellatrix Lestrange"])
            MovieRaw(MovieName: "Harry Potter and the Deathly Hallows – Part 2", MovieCharacters: ["Harry Potter", "Lord Voldemort", "Ginny Weasley"])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct MovieRaw: View {
    let MovieName: String
    let MovieCharacters: [String]
    var body: some View{
        HStack(alignment: .center){
            Image(MovieName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(Rectangle())
            VStack(alignment: .leading) {
            Text(MovieName)
                .font(.largeTitle)
                Text(MovieCharacters
                        .joined(separator: ", "))
                
            }
        }
    }
}
