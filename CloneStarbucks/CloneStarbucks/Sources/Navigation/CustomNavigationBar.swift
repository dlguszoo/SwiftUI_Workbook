//
//  CustomNavigationBar.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/7/25.
//

import SwiftUI

struct CustomNavigationBar: View {
    @Environment(\.presentationMode) var presentationMode
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        HStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.backward")
            })
            .frame(width: 24, height: 24)
            Spacer()
            
            Text(title)
                .font(.PretendardMedium(size: 16))
            
            Spacer()
            
            Color.clear
                .frame(width: 24, height: 24)
        }
        .padding()
        .tint(Color.black)
    }
}

#Preview {
    CustomNavigationBar(title: "가입하기")
}
