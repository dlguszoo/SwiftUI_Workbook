//
//  User.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/3/25.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    var name: String
    var age: Int
}
