//
//  ReturnView.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/20/25.
//

import SwiftUI

struct ReturnView: View {
    
    var isLoggedIn: Bool = true
    
    var body: some View {
        if isLoggedIn {
            return VStack {
                Text("환영합니다!")
                    .font(.title)
                Text("SwiftUI 앱에 로그인되었습니다.")
            }
        } else {
            return VStack {
                Text("로그인이 필요합니다.")
                    .font(.title)
                Text("로그인하기")
            }
        }
    }
}

#Preview {
    ReturnView()
}
