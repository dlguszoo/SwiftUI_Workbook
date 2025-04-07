//
//  ScrollViewReaderPractice.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI

struct ScrollViewReaderPractice: View {
    @State private var scrollToIndex: Int = 0
    
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack {
                        ForEach(0..<50, id: \.self) { index in
                            Text("Item \(index)")
                                .frame(maxWidth: .infinity)
                                .background(Color.blue.opacity(0.3))
                                .id(index) // 각 항목에 ID 부여
                                .padding()
                        }
                    }
                }
                .onChange(of: scrollToIndex) { oldIndex, newIndex in
                    withAnimation {
                        proxy.scrollTo(newIndex, anchor: .top) // 지정된 index로 스크롤 이동
                    }
                }
            }
            
            HStack {
                Button("Top") { scrollToIndex = 0 }
                Button("Middle") { scrollToIndex = 25 }
                Button("Bottom") { scrollToIndex = 49 }
            }
        }
    }
}

#Preview {
    ScrollViewReaderPractice()
}
