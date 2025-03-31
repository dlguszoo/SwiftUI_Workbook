//
//  ZStackExample.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/20/25.
//

import SwiftUI

struct ZStackExample: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
            Text("중앙 텍스트")
                .font(.title)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ZStackExample()
}
