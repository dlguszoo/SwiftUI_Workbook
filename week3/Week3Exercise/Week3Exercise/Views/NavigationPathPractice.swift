//
//  NavigationPathPractice.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI

struct NavigationPathPractice: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Go to Detail") {
                    path.append("Detail")
                }
            }
            .navigationDestination(for: String.self) { value in
                DetailView()
            }
            .navigationTitle("Home")
        }
    }
    
    struct DetailView: View {
        @Environment(\.dismiss) var dismiss //environment 변수

        var body: some View {
            VStack {
                Text("Detail Page")
                Button("Go Back") {
                    dismiss() // 현재 화면을 닫고 이전 화면으로 돌아감
                }
            }
            .navigationTitle("Detail")
        }
    }
}

#Preview {
    NavigationPathPractice()
}
