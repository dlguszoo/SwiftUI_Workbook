//
//  TextViewModel.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

class TextViewModel: ObservableObject {
    @Published var inputText: String = ""
    
    init() {
        print("🌿새로운 TextViewModel 인스턴스 생성됨.")
    }
}
