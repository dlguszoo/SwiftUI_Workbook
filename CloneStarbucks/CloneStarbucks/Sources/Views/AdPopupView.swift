//
//  AdPopupView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import SwiftUI

struct AdPopupView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        VStack {
            Image(.adImg)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 720)
            
            Spacer()
            
            VStack(spacing: 19) {
                Group {
                    Button(action: {
                        print("자세히 보기")
                    }, label: {
                        Text("자세히 보기")
                            .font(.PretendardMedium(size: 18))
                            .foregroundStyle(Color.white01)
                            .padding(.horizontal, 24)
                    })
                    .frame(height: 58)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 18)
                    .background(Color.green01)
                    .cornerRadius(20)
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            dismiss()
                        }, label: {
                            Text("X 닫기")
                                .font(.PretendardLight(size: 14))
                                .foregroundStyle(Color.gray05)
                        })
                        .padding(.trailing, 19)
                    }
                }
                .padding(.horizontal, 18)
            }
            .padding(.bottom, 36)
        }
    }
}

#Preview {
    AdPopupView()
}
