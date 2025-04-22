//
//  SplashView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 3/24/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image("StarbucksLogo")
                .resizable()
                .frame(width: 168, height: 168)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green01)
    }
}

#Preview {
    SplashView()
}
