//
//  SignupViewModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import Foundation
import SwiftUI

class SignupViewModel {
    @AppStorage("nickName") var nickname: String = ""
    @AppStorage("email") var email: String = ""
    @AppStorage("password") var password: String = ""
    
    public func storeUserInfo(nickName: String, email: String, password: String) {
        self.nickname = nickName
        self.email = email
        self.password = password
    }
}
