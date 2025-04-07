//
//  HomeWhatsNewModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/6/25.
//

import SwiftUI

struct WhatsNewModel: Identifiable {
    let id = UUID()
    var image: Image
    var title: String
    var content: String
}
