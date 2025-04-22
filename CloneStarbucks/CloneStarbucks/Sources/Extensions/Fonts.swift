//
//  Fonts.swift
//  CloneStarbucks
//
//  Created by 이현주 on 3/24/25.
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
    
    public static func PretendardExtraBold(size: CGFloat) -> Font {
        return .pretend(type: .extraBold, size: size)
    }
    
    public static func PretendardBold(size: CGFloat) -> Font {
        return .pretend(type: .bold, size: size)
    }
    
    public static func PretendardSemiBold(size: CGFloat) -> Font {
        return .pretend(type: .semibold, size: size)
    }
    
    public static func PretendardMedium(size: CGFloat) -> Font {
        return .pretend(type: .medium, size: size)
    }
    
    public static func PretendardRegular(size: CGFloat) -> Font {
        return .pretend(type: .regular, size: size)
    }
    
    public static func PretendardLight(size: CGFloat) -> Font {
        return .pretend(type: .light, size: size)
    }
    
}
