//
//  LazyVGridExample.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI

struct LazyVGridExample: View { // 열 3개, 너비 설정
    let columns = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(1...20, id: \.self) { index in
                    Text("Item \(index)")
                        .frame(height: 80)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.7))
                }
            }
        }
    }
}

#Preview {
    LazyVGridExample()
}
