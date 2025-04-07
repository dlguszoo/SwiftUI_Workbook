//
//  OtherViewMenuButton.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/2/25.
//

import SwiftUI

struct OtherViewMenuButton: View {
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
            HStack(spacing: 4) {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                
                Text(title)
                    .font(.PretendardSemiBold(size: 16))
                    .foregroundStyle(Color.black02)
            }
            .frame(maxWidth: .infinity, alignment: .leading) // HStack에서 왼쪽 정렬
        }
        .frame(width: 157, height: 32)
    }
}

#Preview {
    OtherViewMenuButton(title: "스타벅스 카드 등록", image: Image(.card)) {
        print("눌림")
    }
}
