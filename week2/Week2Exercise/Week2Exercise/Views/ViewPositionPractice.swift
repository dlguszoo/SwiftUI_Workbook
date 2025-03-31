//
//  ViewPositionPractice.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct ViewPositionPractice: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("뷰의 X 좌표: \(geometry.frame(in: .global).origin.x)")
                Text("뷰의 Y 좌표: \(geometry.frame(in: .global).origin.y)")
            }
            .frame(width: 200, height: 100)
            .background(Color.orange.opacity(0.5))
            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
        }
    }
}

#Preview {
    ViewPositionPractice()
}
