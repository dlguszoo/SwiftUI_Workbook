//
//  CustomSubView1.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/20/25.
//

import SwiftUI

struct CustomSubView1: View {
    var body: some View {
        VStack {
            headerView
            Spacer()
            messageView
            Spacer()
            actionButton
        }
    }
    
    private var headerView: some View {
        Text("hello swiftUI")
            .font(.title)
            .foregroundStyle(Color.red)
    }
    
    private var messageView: some View {
        Text("이제 하위 뷰를 만들어보자")
            .font(.title)
            .foregroundStyle(Color.gray)
    }
    
    private var actionButton: some View {
        Button(action: {
            print("버튼을 누르셨어요~")
        }, label: {
            Text("이것은 버튼입니다.")
        })
    }
}

#Preview {
    CustomSubView1()
}
