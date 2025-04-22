//
//  SquareImageView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/16/25.
//

import SwiftUI

struct SquareImageView: View {
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
            VStack(alignment: .leading, spacing: 12) {
                image
                    .resizable()
                    .scaledToFit()
                
                Text(title)
                    .font(.PretendardSemiBold(size: 14))
                    .foregroundStyle(Color.black02)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

#Preview {
    SquareImageView(title: "그린 사이렌 슬리브 머그 355ml", image: Image(.item1)) {
        print("클릭")
    }
}
