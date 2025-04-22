//
//  CoffeeDetailView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/6/25.
//

import SwiftUI

struct CoffeeDetailView: View {
    
    let coffeeId: Int
    
    @State private var isHotSelected: Bool = true
    @State private var coffeeViewModel: CoffeDetailViewModel = .init()
    @Environment(\.dismiss) var dismiss
    
    // 연산 프로퍼티로 만들어 다른 모든 private view애서 홈뷰에서 넘어오는 커피 id에 해당하는 detail에 접근할 수 있도록 한다.
    private var detail: CoffeeDetail {
        guard let coffeeDetail = coffeeViewModel.getCoffeeDetail(for: coffeeId) else {
            fatalError("해당 커피를 찾을 수 없습니다.")
        }
        return coffeeDetail
    }

    
    var body: some View {
        ZStack(alignment: .top) {
            VStack(spacing: 20) {
                
                detail.image
                    .resizable()
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    titleView
                    
                    Spacer()
                    
                    contentView
                    
                    Spacer()
                    
                    choiceView
                }
                .frame(height: 256)
                .padding(.horizontal, 10)
                
                Spacer()
                
                orderButtonView
            }
            .ignoresSafeArea(edges: .top)
            
            naviTopView
                .padding(.horizontal, 8)
        }
    }
    
    private var naviTopView: some View {
        HStack {
            Button(action: {
                dismiss()
            }, label: {
                Image(.back)
                    .resizable()
                    .frame(width: 32, height: 32)
            })
            
            Spacer()
            
            Button(action: {
                print("클릭")
            }, label: {
                Image(.share)
                    .resizable()
                    .frame(width: 32, height: 32)
            })
        }
    }
    
    private var titleView: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 4) {
                Text(detail.koTitle)
                    .font(.PretendardSemiBold(size: 24))
                
                Image(.new)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 14)
            }
            
            Text(detail.enTitle)
                .font(.PretendardSemiBold(size: 14))
                .foregroundStyle(Color.gray01)
        }
    }
    
    private var contentView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(detail.content)
                .font(.PretendardSemiBold(size: 14))
                .foregroundStyle(Color.gray06)
            
            Text(detail.price)
                .font(.PretendardRegular(size: 24))
                .foregroundStyle(Color.black03)
        }
    }
    
    private var choiceView: some View {
        Group {
            switch detail.info {
            case .both:
                bothView
            case .hot:
                hotView
            case .ice:
                iceView
            }
        }
    }
    
    private var bothView: some View {
        GeometryReader { geometry in
            let totalWidth = geometry.size.width
            let capsuleWidth = totalWidth * 0.5
            
            ZStack(alignment: .leading) {
                Capsule()
                    .fill(Color.gray07)
                
                Capsule()
                    .fill(Color.white)
                    .frame(width: capsuleWidth)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                    .offset(x: isHotSelected ? 0 : capsuleWidth)
                    .animation(.easeInOut(duration: 0.25), value: isHotSelected)
                
                HStack(spacing: 0) {
                    Button(action: {
                        isHotSelected = true
                    }) {
                        Text("HOT")
                            .frame(width: capsuleWidth, height: 36)
                            .font(.PretendardSemiBold(size: 18))
                            .foregroundStyle(isHotSelected ? Color.red01 : Color.gray02)
                    }
                    
                    Button(action: {
                        isHotSelected = false
                    }) {
                        Text("ICE")
                            .frame(width: capsuleWidth, height: 36)
                            .font(.PretendardSemiBold(size: 18))
                            .foregroundStyle(!isHotSelected ? Color.blue01 : Color.gray02)
                    }
                }
            }
        }
        .frame(height: 36)
    }
    
    private var hotView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.clear)
                .stroke(Color.gray02)
                .frame(maxWidth: .infinity)
                .frame(height: 36)
            
            Text("HOT ONLY")
                .font(.PretendardBold(size: 15))
                .foregroundStyle(Color.red01)
        }
    }
    
    private var iceView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .fill(Color.clear)
                .stroke(Color.gray02)
                .frame(maxWidth: .infinity)
                .frame(height: 36)
            
            Text("ICE ONLY")
                .font(.PretendardBold(size: 15))
                .foregroundStyle(Color.blue01)
        }
    }
    
    private var orderButtonView: some View {
        Button(action: {
            print("주문하기")
        }, label: {
            Text("주문하기")
                .frame(height: 43)
                .frame(maxWidth: .infinity)
                .font(.PretendardMedium(size: 16))
                .foregroundStyle(Color.white)
                .background(Color.green01)
                .cornerRadius(21.5)
        })
        .padding(.horizontal, 28)
        .padding(.vertical, 15)
        .background(
            Rectangle()
                .fill(Color.white)
                .shadow(color: .black.opacity(0.04), radius: 2, x: 0, y: -3)
        )
    }
}

#Preview {
    CoffeeDetailView(coffeeId: 1)
}
