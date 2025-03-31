//
//  BindingCounterView.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI
import Observation

@Observable
class Counter {
    var count = 0
}

struct BindingCounterView: View {
    private var counter = Counter()
    
    var body: some View {
        VStack {
            Text("Count: \(counter.count)")
            Button("Increment") {
                counter.count += 1
            }
            ChildView(counter: counter)
        }
    }
}

struct ChildView: View {
    @Bindable var counter: Counter
    
    var body: some View {
        Button("Child Increment") {
            counter.count += 1
        }
    }
}

#Preview {
    BindingCounterView()
}
