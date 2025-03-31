//
//  CounterView.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct CounterView: View {
    @StateObject var viewModel: CounterViewModel = .init()
    
    var body: some View {
        VStack {
            Text("\(viewModel.count)")
            
            Button(action: {
                viewModel.count += 1
            }, label: {
                Text("카운트 증가 버튼")
            })
            
            Button (action: {
                viewModel.count = 0
            }, label: {
                Text("카운트 초기화 버튼")
                    .foregroundStyle(Color.red)
            })
        }
    }
}

#Preview {
    CounterView()
}
