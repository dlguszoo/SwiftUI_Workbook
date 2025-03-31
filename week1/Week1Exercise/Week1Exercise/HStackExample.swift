//
//  HStackExample.swift
//  Week1Exercise
//
//  Created by 이현주 on 3/20/25.
//

import SwiftUI

struct HStackExample: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: "star.fill")
            
            Spacer().frame(width: 100)
                //.padding()
            
            Text("즐겨찾기")
                .font(.headline)
        }
        .border(.red)
    }
}

#Preview {
    HStackExample()
}
