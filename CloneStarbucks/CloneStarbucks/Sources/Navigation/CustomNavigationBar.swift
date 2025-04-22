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
    let rightIcon: String
    let rightAction: () -> Void
    
    init(title: String, rightIcon: String = "", rightAction: @escaping () -> Void = {} ) {
        self.title = title
        self.rightIcon = rightIcon
        self.rightAction = rightAction
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
            
            Button(action: {
                rightAction()
            }, label: {
                Image(systemName: rightIcon)
            })
            .frame(width: 24, height: 24)
        }
        .padding()
        .tint(Color.black)
    }
}

#Preview {
    CustomNavigationBar(title: "전자영수증", rightIcon: "plus") {
        print("클릭")
    }
}
