//
//  CustomTextView.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/19/25.
//

import SwiftUI

struct CustomTextView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle) //글자 크기이고 기기마다 상대적으로 변함
            .foregroundColor(Color.red) //글자 색상
            .underline() //글자 밑에 밑줄
            .strikethrough(true, color: Color.black) //글자 중간을 관통하는 줄
            .lineLimit(nil) //뷰에서 최대 나타낼 수 있는 텍스트의 라인 수, nil이므로 제한 없음
            .kerning(1.5) //문자간의 간격
            .lineSpacing(2.5) //문자열이 2줄 이상이 될 때, 이 두 줄 사이의 간격
            .padding() //텍스트와 아래의 컴포넌트 간에 여유값을 준다
            .overlay(content: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.clear)
                    .stroke(Color.black, style: .init(lineWidth: 1))
            }) //둥근 모서리 사각형을 글자 위로 덮는다. 단, clear로 채우고 두께가 1인 선을 가진다
            .dynamicTypeSize(.large) //글자의 최대 크기 제한 (large 이하)
    }
}

#Preview {
    CustomTextView()
}
