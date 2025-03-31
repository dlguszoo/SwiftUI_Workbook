//
//  CustomImageView.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/19/25.
//

import SwiftUI

struct CustomImageView: View {
    var body: some View {
        Image(systemName: "eraser.fill")
            .resizable() //해상도가 화면에 맞게끔 이미지 렌더링
            .frame(width: 300, height: 300) //사진의 크기
            .aspectRatio(contentMode: .fit) //fit: 원본 이미지 비율을 유지하면서 사용 가능한 공간 안에 크기를 맞춤, fill: 사용 가능한 모든 공간을 차지하도록 하며, 뷰의 범위를 넘어설 수 있음, 수정자 X: 지정된 프레임에 맞추어 변형될 수 있음
            .background() { //이미지 뒤에 원을 깐다
                Circle()
                    .fill(Color.green)
                    .frame(width: 250, height: 250)
                    .border(Color.black)
            }
            .border(Color.red) //이미지의 테두리 색상
            .clipShape(RoundedRectangle(cornerRadius: 100)) //이미지 내용을 지정된 모양으로 자름
            .foregroundStyle(Color.red) //이미지의 틴트컬러
    }
}

#Preview {
    CustomImageView()
}
