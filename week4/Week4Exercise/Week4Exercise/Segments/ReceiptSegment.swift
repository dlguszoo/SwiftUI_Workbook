//
//  ReceiptSegment.swift
//  Week4Exercise
//
//  Created by 이현주 on 4/12/25.
//

import Foundation

enum ReceiptSegment: Int, CaseIterable, Identifiable { // 세그먼트를 위한 Enum
    case first
    case second
    
    var id: Int { rawValue }
    
    var title: String {
        switch self {
        case .first:
            return "첫 번째"
        case .second:
            return "두 번째"
        }
    }
    
    var imageName: String {
        switch self {
        case .first:
            return "r1"
        case .second:
            return "r2"
        }
    }
}
