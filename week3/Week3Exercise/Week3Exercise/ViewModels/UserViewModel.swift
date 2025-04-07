//
//  UserViewModel.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/3/25.
//

import Foundation

@Observable
class UserViewModel {
    var users = [
        User(name: "Alice", age: 24),
        User(name: "Bob", age: 30),
        User(name: "Charlie", age: 28)
    ]
}
