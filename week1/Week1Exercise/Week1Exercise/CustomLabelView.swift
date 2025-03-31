//
//  CustomLabelView.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/19/25.
//

import SwiftUI

struct CustomLabelView: View {
    var body: some View {
        Button(action: {
            print("레이블을 클릭했습니다.")
        }, label: {
            Label(title: {
                Text("레이블 내부 텍스트입니다.")
            }, icon: {Image(systemName: "rectangle.portrait.and.arrow.right")
                    .imageScale(.large)
            })
            .labelStyle(.titleAndIcon)
        })
    }
}

#Preview {
    CustomLabelView()
}
