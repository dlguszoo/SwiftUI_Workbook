//
//  CheckStateView.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct CheckStateView: View {
    @State private var isClicked: Bool = false
    var body: some View {
        VStack {
            Text("현재 State 변수 값: \(isClicked)")
            CustomButton(isClicked: $isClicked)
        }
    }
}

#Preview {
    CheckStateView()
}
