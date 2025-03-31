//
//  UserModel.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/19/25.
//

import Foundation

struct UserModel {
    var name: String
    var age: Int
    
    mutating func increaseAge() {
        self.age += 1
    }
    
    mutating func decreaseAge() {
        self.age -= 1
    }
}
