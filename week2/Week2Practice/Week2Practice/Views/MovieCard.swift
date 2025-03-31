//
//  MovieCard.swift
//  Week2Practice
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct MovieCard: View {
    let movieInfo: MovieModel
    
    init(movieInfo: MovieModel) {
        self.movieInfo = movieInfo
    }
    
    var body: some View {
        VStack(spacing: 5) {
            movieInfo.movieImage
            
            Text(movieInfo.movieName)
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(Color.black)
            
            HStack {
                movieLike
                
                Spacer()
                
                Text("예매율 \(String(format: "%.1f", movieInfo.movieReserCount))%")
                    .font(.system(size: 9, weight: .regular))
                    .foregroundStyle(Color.black)
            }
        }
        .frame(width: 120, height: 216)
    }
    
    private var movieLike: some View {
        HStack(spacing: 6) {
            Image(systemName: "heart.fill")
                .foregroundStyle(Color.red)
                .frame(width: 15, height: 14)
            
            Text("\(movieInfo.movieLike)")
                .font(.system(size: 9, weight: .regular))
                .foregroundStyle(Color.black)
        }
    }
}

#Preview {
    MovieCard(movieInfo: .init(movieImage: .init(.mickey17), movieName: "미키17", movieLike: 972, movieReserCount: 30.8))
}
