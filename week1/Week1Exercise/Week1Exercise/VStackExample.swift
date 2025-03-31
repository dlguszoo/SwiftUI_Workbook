//
//  VStackExample.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/20/25.
//

import SwiftUI

struct VStackExample: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("첫 번째 요소")
                .font(.title)
            Spacer()
            Text("두 번째 요소")
            Spacer()
                .font(.headline)
            Text("세 번째 요소")
                .font(.subheadline)
        }
    }
}

#Preview {
    VStackExample()
}
