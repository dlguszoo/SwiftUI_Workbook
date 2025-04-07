//
//  ForEachRangeView.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/3/25.
//

import SwiftUI

struct ForEachRangeView: View {
    var body: some View {
        VStack {
            ForEach(1..<6) { index in
                Text("항목 \(index)")
                    .font(.headline)
            }
        }
    }
}

#Preview {
    ForEachRangeView()
}
