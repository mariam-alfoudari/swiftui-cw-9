//
//  ContentView.swift
//  MOVIE-APP-PT2
//
//  Created by mariam alfoudari on 02/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List (movies) { movie in
            NavigationLink(
                destination: MovieDetailView(movie: movie), label: {
                    MovieRow(Movie: movie)
                })
    
            }
        .navigationTitle("Movies")
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
struct MovieRow: View {
    let Movie: Movie
    var body: some View{
        HStack(alignment: .center){
            Image(Movie.name)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(Rectangle())
            VStack(alignment: .leading) {
                Text(Movie.name)
                .font(.largeTitle)
                Text(Movie.Characters
                        .joined(separator: ", "))
                
            }
        }
    }
}
