//
//  LazyHGridExample.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI

struct LazyHGridExample: View { // 행 2개, 높이 설정
    let rows = Array(repeating: GridItem(.fixed(80)), count: 2)
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(1...15, id: \.self) { index in
                    Text("Item \(index)")
                        .frame(width: 80)
                        .frame(maxHeight: .infinity)
                        .background(Color.yellow)
                }
            }
        }
    }
}

#Preview {
    LazyHGridExample()
}
