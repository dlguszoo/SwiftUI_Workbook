//
//  ListNavigationStack.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI

struct ListNavigationStack: View {
    let items = ["Apple", "Banana", "Orange", "Pineapple"]
    
    var body: some View {
        NavigationStack {
            List(items, id: \.self) { item in
                NavigationLink(destination: DetailView(item: item)) {
                    Text(item)
                }
            }
        }
    }
    
    struct DetailView: View {
        let item: String
        
        var body: some View {
            Text("selected item: \(item)")
                .font(.largeTitle)
                .navigationTitle(item)
        }
    }
}

#Preview {
    ListNavigationStack()
}
