//
//  ReceiptCellView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/16/25.
//

import SwiftUI

struct ReceiptCellView: View {
    let shopname: String
    let date: String
    let price: Int
    let action: () -> Void
    
    init(shopname: String, date: String, price: Int, action: @escaping () -> Void) {
        self.shopname = shopname
        self.date = date
        self.price = price
        self.action = action
    }
    
    var body: some View {
        VStack {
            HStack {
                titleView
                
                Spacer()
                
                Button(action: {
                    action()
                }) {
                    Image(.money)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16)
                }
            }
            
            Divider()
        }
    }
    
    private var titleView: some View {
        VStack(alignment: .leading, spacing: 9) {
            Text(shopname)
                .font(.PretendardSemiBold(size: 18))
                .foregroundStyle(Color.black)
            
            Text(date)
                .font(.PretendardMedium(size: 16))
                .foregroundStyle(Color.gray03)
            
            Text("\(price)원")
                .font(.PretendardSemiBold(size: 18))
                .foregroundStyle(Color.brown02)
        }
    }
}

#Preview {
    ReceiptCellView(shopname: "사당역", date: "2025.01.05 11:30", price: 6500) {
        print("클릭")
    }
}
