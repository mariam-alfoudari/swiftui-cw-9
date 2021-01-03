//
//  MovieDetailView.swift
//  MOVIE-APP-PT2
//
//  Created by mariam alfoudari on 02/01/2021.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    var body: some View {
        ZStack {
            Group {
                Image(movie.name)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.4)
            }.ignoresSafeArea()
            
            VStack(alignment: .center) {
                Image(movie.name)
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .background(Color.black)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,lineWidth: 6))
                
                Text(movie.name)
                    .font(.system(size: 20))
                    .font(.largeTitle)
                    
                
                Text(movie.Characters.joined(separator: ", "))
                    .font(.subheadline)
                
                Spacer()
                
            }
            .padding()
            .foregroundColor(.white)
            .shadow(radius: 5)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
       MovieDetailView(movie: movies[0])
    }
}
