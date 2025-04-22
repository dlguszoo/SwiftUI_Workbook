//
//  Task.swift
//  Week4SwiftData
//
//  Created by 이현주 on 4/13/25.
//

import Foundation
import SwiftUI
import SwiftData

@Model
class Task {
    @Attribute(.unique) var title: String
    var isDone: Bool
    var createdAt: Date
    
    @Transient var isBeingEdited: Bool = false //현재 편집 중인지 나타내는 임시 상태 변수 생성
    
    init(title: String, isDone: Bool = false, createdAt: Date = .now) {
        self.title = title
        self.isDone = isDone
        self.createdAt = createdAt
    }
}
