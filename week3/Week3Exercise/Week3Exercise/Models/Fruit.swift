//
//  Fruit.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/3/25.
//

import Foundation

struct Fruit: Identifiable {
    let id = UUID() //고유한 ID 생성⭐️
    let name: String
    let emoji: String
}
