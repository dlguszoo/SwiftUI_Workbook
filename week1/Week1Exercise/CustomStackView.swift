//
//  CustomStackView.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/20/25.
//

import SwiftUI

struct CustomStackView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.fill")
                Text("사용자 이름")
            }
            .padding()
            
            ZStack {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 300, height: 150)
                Text("ZStack 내부")
                    .font(.headline)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    CustomStackView()
}
