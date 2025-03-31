//
//  Fonts.swift
//  Week1Practice
//
//  Created by 이현주 on 3/22/25.
//

import Foundation
import SwiftUI

extension Font {
    enum Pretend {
        case extraBold
        case bold
        case semibold
        case medium
        case regular
        case light
        
        var value: String {
            switch self {
            case .extraBold:
                return "Pretendard-ExtraBold"
            case .bold:
                return "Pretendard-Bold"
            case .semibold:
                return "Pretendard-SemiBold"
            case .medium:
                return "Pretendard-Medium"
            case .regular:
                return "Pretendard-Regular"
            case .light:
                return "Pretendard-Light"
            }
        }
    }
    
    static func pretend(type: Pretend, size: CGFloat) -> Font {
        return .custom(type.value, size: size)
    }
    
    public static var PretendardBold30: Font {
        return .pretend(type: .bold, size: 30)
    }
    
    public static var PretendardLight16: Font {
        return .pretend(type: .light, size: 16)
    }
    
    public static var PretendardBold24: Font {
        return .pretend(type: .bold, size: 24)
    }
    
    public static var PretendardSemiBold18: Font {
        return .pretend(type: .semibold, size: 18)
    }
    
}
