//
//  ContentView.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    var body: some View {
        Text("카운트: \(count)")
            .font(.largeTitle)
        
        Button("증가") {
            count += 1
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
