//
//  ContentView.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView(text: "헤더입니다.")
            MessageView(message: "메시지입니다.")
        }
    }
}

#Preview {
    ContentView()
}
