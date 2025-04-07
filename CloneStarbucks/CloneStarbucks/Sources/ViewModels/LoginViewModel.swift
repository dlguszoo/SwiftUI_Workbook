//
//  LoginViewModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 3/24/25.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var loginModel: LoginModel
    @AppStorage("email") var email: String = ""
    @AppStorage("password") var password: String = ""
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    init(loginModel: LoginModel) {
        self.loginModel = loginModel
    }
}
