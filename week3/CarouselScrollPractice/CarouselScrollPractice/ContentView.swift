//
//  ContentView.swift
//  CarouselScrollPractice
//
//  Created by 이현주 on 4/3/25.
//

import SwiftUI

struct ContentView: View {
    /// Since my model ID Type is UUID
    @State private var activeID: UUID?
    var body: some View {
        NavigationStack {
            VStack {
                CustomCarousel(config: .init(hasOpacity: true, hasSacle: true, cardWidth: 200, minimumCardWidth: 30), selection: $activeID, data: images) { item in
                    Image(item.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(height: 100)
            }
            .navigationTitle("Cover Carousel")
        }
    }
}

#Preview {
    ContentView()
}
