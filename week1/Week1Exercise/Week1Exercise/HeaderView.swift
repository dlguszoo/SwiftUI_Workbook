//
//  HeaderView.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/20/25.
//

import SwiftUI

struct HeaderView: View {
    let text: String
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .foregroundColor(.red)
    }
}
