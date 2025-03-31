//
//  UserViewModel.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/19/25.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var userModel: UserModel
    
    init(userModel: UserModel) {
        self.userModel = userModel
    }
    
    func increaseAge() {
        self.userModel.age += 1
    }
    
    func decreaseAge() {
        self.userModel.age -= 1
    }
}
