//
//  ScrollPositionPractice.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI

struct ScrollPositionPractice: View {
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                LazyVStack {
                    ForEach(1...50, id: \.self) { index in
                        Text("Item \(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .padding() //위아래 패딩
                            .background(Color.blue.opacity(0.2))
                            .padding(.horizontal)
                            .id(index) //각 아이템에 ID를 부여해야 scrollTo가 동작!
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // 화면이 나타나고 2초 후에 애니메이션 실행
                    withAnimation {
                        proxy.scrollTo(25, anchor: .center) //25번 아이템으로 이동
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollPositionPractice()
}
