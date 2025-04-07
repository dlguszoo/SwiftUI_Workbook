//
//  SimpleListView.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/3/25.
//

import SwiftUI

struct SimpleListView: View {
    var body: some View {
        List {
            Text("🍎 Apple")
            Text("🍌 Banana")
            Text("🍒 Cherry")
        }
    }
}

#Preview {
    SimpleListView()
}
