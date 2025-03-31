//
//  GeometryReaderPractice.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct GeometryReaderPractice: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("뷰 너비: \(geometry.size.width)")
                Text("뷰 높이: \(geometry.size.height)")
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.blue.opacity(0.3))
            .border(Color.red)
        }
    }
}

#Preview {
    GeometryReaderPractice()
}
