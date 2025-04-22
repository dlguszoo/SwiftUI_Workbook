//
//  whatsNewCard.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/6/25.
//

import SwiftUI

struct whatsNewCard: View {
    
    let title: String
    let contents: String
    let image: Image
    let action: () -> Void
    
    init(title: String, contents: String, image: Image, action: @escaping () -> Void) {
        self.title = title
        self.contents = contents
        self.image = image
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 9) {
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 242, height: 160)
                    .padding(.bottom, 7)
                
                Text(title)
                    .font(.PretendardSemiBold(size: 18))
                    .foregroundColor(Color.black02)
                
                Text(contents.split(separator: "").joined(separator: "\u{200B}")) //글자 단위로 줄바꿈
                    .font(.PretendardSemiBold(size: 13))
                    .foregroundStyle(Color.gray03)
                    .multilineTextAlignment(.leading)
            }
            .frame(width: 242, height: 249)
            //frame을 주더라도 max만 줘야함!!
        }
    }
}

#Preview {
    whatsNewCard(title: "25년 3월 일회용컵 없는 날 캠페..", contents: "매월 10일은 일회용컵 없는 날! 스타벅스 에모매장에서 개인컵 및 다회용 컵을 이용하세요.", image: Image(.new1)) {
        print("클릭")
    }
}
