//
//  CustomButtonView.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/19/25.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        Button(action: {
            print("Button Clicked!")
        }) {
            Text("Tap Here")
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    CustomButtonView()
}
