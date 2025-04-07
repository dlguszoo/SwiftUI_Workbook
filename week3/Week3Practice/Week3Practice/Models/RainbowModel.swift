//
//  RainbowModel.swift
//  Week3Practice
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI

enum RainbowModel: CaseIterable {
    case red
    case orange
    case yellow
    case grenn
    case blue
    case purple
    case pink
    
    /// case에 해당하는 색을 반환합니다.
    /// - Returns: 지정된 색 반환
    func returnColor() -> Color {
        switch self {
        case .red:
            return Color.ctred
        case .orange:
            return Color.ctorange
        case .yellow:
            return Color.ctyellow
        case .grenn:
            return Color.ctgreen
        case .blue:
            return Color.ctblue
        case .purple:
            return Color.ctpurple
        case .pink:
            return Color.ctpink
        }
    }
    
    func returnColorName() -> String {
        switch self {
        case .red:
            return "빨강"
        case .orange:
            return "오렌지"
        case .yellow:
            return "노랑"
        case .grenn:
            return "초록"
        case .blue:
            return "파랑"
        case .purple:
            return "보라"
        case .pink:
            return "핑크"
        }
    }
}
