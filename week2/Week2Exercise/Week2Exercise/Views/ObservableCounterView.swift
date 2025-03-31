//
//  ObservableCounterView.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct ObservableCounterView: View {
    var viewModel: ObservableCounterViewModel = .init()
    
    var body: some View {
        VStack {
            Text("\(viewModel.count)")
            
            Button(action: {
                viewModel.count += 1
            }, label: {
                Text("카운트 증가합니다.")
            })
        }
        .padding()
    }
}

#Preview {
    ObservableCounterView()
}
