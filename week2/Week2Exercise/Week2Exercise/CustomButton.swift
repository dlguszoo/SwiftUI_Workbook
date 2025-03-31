//
//  CustomButton.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct CustomButton: View {
    @Binding var isClicked: Bool
    
    init(isClicked: Binding<Bool>) {
        self._isClicked = isClicked
    }
    
    var body: some View {
        Button(action: {
            isClicked.toggle()
            print("하위 뷰에서 클릭해서 값 변경함")
        }, label: {
            Text("상위 뷰의 값을 State 값 변경")
        })
    }
}
