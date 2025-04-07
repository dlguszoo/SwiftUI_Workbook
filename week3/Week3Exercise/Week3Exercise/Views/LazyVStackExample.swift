//
//  LazyVStackExample.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI

struct LazyVStackExample: View {
    var body: some View {
        ScrollView(.vertical, content: {
            LazyVStack(spacing: 15, content: {
                ForEach(1...50, id: \.self) { index in
                    Text("아이템: \(index)")
                        .background(Color.green)
                        .frame(width: 100, height: 100)
                }
            })
        })
    }
}

#Preview {
    LazyVStackExample()
}
