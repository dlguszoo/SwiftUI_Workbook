//
//  CustomTextField.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import SwiftUI

struct CustomTextField: View {
    let spaceholder: String
    @Binding var text: String
    let field: SignupView.Field
    var focusedField: FocusState<SignupView.Field?>.Binding //FocusState는 **자체적으로 특수한 타입 FocusState<...>**을 갖고 있어서, 그냥 일반 @Binding처럼 넘김 X
    
    var body: some View {
        VStack(spacing: 9) {
            TextField(
                "",
                text: $text,
                prompt: Text(spaceholder)
                    .font(.PretendardRegular(size: 18))
                    .foregroundStyle(Color.gray00)
            )
            .frame(height: 16)
            .tint(Color.green01)
            .focused(focusedField, equals: field)
            Divider()
                .background(focusedField.wrappedValue == field ? Color.green01 : Color.gray00)
        }
    }
}
