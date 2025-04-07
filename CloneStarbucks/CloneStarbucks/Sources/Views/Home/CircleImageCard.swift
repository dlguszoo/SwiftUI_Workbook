//
//  CircleImageCard.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/6/25.
//

import SwiftUI

struct CircleImageCard: View {
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
            VStack(spacing: 10) {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130, height: 130)
                
                Text(title)
                    .font(.PretendardSemiBold(size: 14))
                    .foregroundStyle(Color.black02)
            }
            .frame(width: 130, height: 160)
        }
    }
}

#Preview {
    CircleImageCard(title: "에스프레소 콘파나", image: Image(.coffee1)) {
        print("클릭")
    }
}
