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
            Divider()
                .background(Color.gray00)
        }
    }
}
