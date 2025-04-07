//
//  BasicNavigationStack.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI
import Observation

struct BasicNavigationStack: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go to Detail", destination: DetailView())
        }
    }
    
    fileprivate struct DetailView: View {
        var body: some View {
            Text("hello")
                .navigationTitle("hello Navi")
        }
    }
}

#Preview {
    BasicNavigationStack()
}
