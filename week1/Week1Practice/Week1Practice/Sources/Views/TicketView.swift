//
//  TicketView.swift
//  Week1Practice
//
//  Created by 이현주 on 3/22/25.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        ZStack {
            Image(.ticketBG)
            
            VStack {
                Spacer().frame(height: 111)
                
                mainTitleGroup
                
                Spacer().frame(height: 134)
                
                maintButtonGroup
            }
        }
        .padding()
    }
    
    private var mainTitleGroup: some View {
        VStack {
            Group {
                Text("30,100원")
                    .font(.PretendardBold24)
                Text("마이펫의 이중 생활2")
                    .font(.PretendardBold30)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                Text("본인 + 동반 1인")
                    .font(.PretendardLight16)
            }
            .foregroundStyle(Color.white)
        }
        .frame(height: 84)
    }
    
    private var maintButtonGroup: some View {
        Button(action: {
            print("Hello")
        }, label: {
            VStack {
                Group {
                    Image(systemName: "chevron.up")
                        .resizable()
                        .frame(width: 18, height: 12)
                    Text("예매하기")
                        .font(.PretendardSemiBold18)
                }
                .foregroundStyle(Color.white).opacity(0.4)
            }
        })
        .frame(width: 63, height: 40)
    }
}

#Preview {
    TicketView()
}
