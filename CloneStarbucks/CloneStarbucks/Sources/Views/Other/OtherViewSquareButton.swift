//
//  OtherViewSquareButton.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import SwiftUI

struct OtherViewSquareButton: View {
    let title: String
    let image: Image
    let action: () -> Void
    
    init(title: String, image: Image, action: @escaping () -> Void) {
        self.title = title
        self.image = image
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48)
                
                Text(title)
                    .font(.PretendardSemiBold(size: 16))
                    .foregroundStyle(Color.black03)
            }
            .frame(width: 102, height: 108)
            .background {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 0)
            }
        }
    }
}

#Preview {
    OtherViewSquareButton(title: "별 히스토리", image: Image(.star)) {
        print("별 히스토리")
    }
}
