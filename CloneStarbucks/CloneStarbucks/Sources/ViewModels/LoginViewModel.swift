//
//  LoginViewModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 3/24/25.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var loginModel: LoginModel
    
    init(loginModel: LoginModel) {
        self.loginModel = loginModel
    }
}
