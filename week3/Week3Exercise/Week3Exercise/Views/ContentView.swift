//
//  ContentView.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/3/25.
//

import SwiftUI

struct ContentView: View {
    let rows = Array(repeating: GridItem(.fixed(80)), count: 2)
    
    var body: some View {
//        ScrollView {
//            VStack {
//                ForEach(0..<50) { index in
//                    Text("Item \(index)")
//                        .frame(maxWidth: .infinity)
//                        .background(Color.blue.opacity(0.3))
//                }
//            }
//        }
        
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                ForEach(1..<30, id: \.self) { index in
                    Text("Row \(index)")
                        .frame(maxWidth: .infinity)
                        .background(Color.green.opacity(0.3))
                }
            }
        }
        .scrollIndicators(.visible, axes: .vertical)
        .contentMargins(.horizontal, 0, for: .scrollIndicators)
        
//        ScrollView(.horizontal) {
//            HStack(spacing: 15) {
//                ForEach(1..<10) { index in
//                    Text("Item \(index)")
//                        .frame(width: 100, height: 100)
//                        .background(Color.purple.opacity(0.3))
//                }
//            }
//        }
    }
}

#Preview {
    ContentView()
}
