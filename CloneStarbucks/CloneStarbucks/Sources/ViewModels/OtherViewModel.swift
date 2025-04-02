//
//  OtherViewModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import Foundation
import SwiftUI

class OtherViewModel {
    @AppStorage("nickName") var nickname: String = ""
    
    public func getNickName() -> String {
        return nickname.isEmpty ? "(작성한 닉네임)" : nickname
    }
}
