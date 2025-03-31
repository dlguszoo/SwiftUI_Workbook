//
//  MessageView.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/20/25.
//

import SwiftUI

struct MessageView: View {
    let message: String
    
    init(message: String) {
        self.message = message
    }
    
    var body: some View {
        Text(message)
            .font(.title)
            .foregroundStyle(.green)
    }
}
