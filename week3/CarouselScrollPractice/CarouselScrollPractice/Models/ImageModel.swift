//
//  ImageModel.swift
//  CarouselScrollPractice
//
//  Created by 이현주 on 4/3/25.
//

import SwiftUI

struct ImageModel: Identifiable {
    var id: UUID = .init()
    var image: String
}

var images: [ImageModel] = (1...6).compactMap({ ImageModel(image: "\($0)")})
