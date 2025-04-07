//
//  OtherView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import SwiftUI

struct OtherView: View {
    
    private var viewModel: OtherViewModel = .init()
    
    var body: some View {
        VStack {
            HStack { //LabeledContent 사용해보기!
                Text("Other")
                    .font(.PretendardExtraBold(size: 24))
                
                Spacer()
                
                Button(action: {
                    viewModel.isLoggedIn = false
                }, label: {
                    Image("logout")
                })
            }
            .padding(.horizontal, 23.5)
            .padding(.bottom, 10)
            
            VStack {
                Spacer()
                
                myMenuView
                
                Spacer()
                
                payMenuView
                
                Spacer()
                
                clientSupportMenuView
                
                Spacer()
            }
            .background(Color.white01)
        }
    }
    
    private var myMenuView: some View {
        VStack {
            (
                Text(viewModel.getNickName())
                    .font(.PretendardSemiBold(size: 24))
                    .foregroundStyle(Color.green01)
                +
                Text(" 님\n환영합니다! 🙌🏻")
                    .font(.PretendardSemiBold(size: 24))
                    .foregroundStyle(Color.black02)
            )
            .lineSpacing(12) //36-24
            .kerning(-0.5)
            
            HStack(spacing: 10.5) {
                OtherViewSquareButton(title: "별 히스토리", image: Image(.star)) {
                    print("별 히스토리")
                }
                
                OtherViewSquareButton(title: "전자 영수증", image: Image(.receipt)) {
                    print("전자 영수증")
                }
                
                OtherViewSquareButton(title: "나만의 메뉴", image: Image(.my)) {
                    print("나만의 메뉴")
                }
            }
            .padding(.top, 20) // padding 대신 전체 VStack의 spacing으로!
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: .infinity)
    }
    
    // 수평 스택뷰 함수화
    @ViewBuilder
    func OtherMenuSectionView(
        leftTitle: String,
        leftImage: Image,
        leftAction: @escaping () -> Void,
        rightTitle: String,
        rightImage: Image,
        rightAction: @escaping () -> Void
    ) -> some View {
        VStack {
            HStack {
                OtherViewMenuButton(title: leftTitle, image: leftImage, action: leftAction)
                
                Spacer()
                
                OtherViewMenuButton(title: rightTitle, image: rightImage, action: rightAction)
            }
        }
        .padding(.vertical, 10)
    }
    
    private var payMenuView: some View {
        VStack(alignment: .leading) {
            Text("Pay")
                .font(.PretendardSemiBold(size: 18))
                .frame(alignment: .leading)
            
            OtherMenuSectionView(
                leftTitle: "스타벅스 카드 등록",
                leftImage: Image(.card),
                leftAction: {
                    print("스타벅스 카드 등록")
                },
                rightTitle: "카드 교환권 등록",
                rightImage: Image(.cardChange),
                rightAction: {
                    print("카드 교환권 등록")
                }
            )
            
            OtherMenuSectionView(
                leftTitle: "쿠폰 등록",
                leftImage: Image(.coupon),
                leftAction: {
                    print("쿠폰 등록")
                },
                rightTitle: "쿠폰 히스토리",
                rightImage: Image(.conponHistory),
                rightAction: {
                    print("쿠폰 히스토리")
                }
            )
            
            Divider()
        }
        .padding(.horizontal, 10)
    }
    
    private var clientSupportMenuView: some View {
        VStack(alignment: .leading) {
            Text("고객지원")
                .font(.PretendardSemiBold(size: 18))
                .frame(alignment: .leading)
            
            OtherMenuSectionView(
                leftTitle: "스토어 케어",
                leftImage: Image(.storeCare),
                leftAction: {
                    print("스토어 케어")
                },
                rightTitle: "고객의 소리",
                rightImage: Image(.customer),
                rightAction: {
                    print("고객의 소리")
                }
            )
            
            OtherMenuSectionView(
                leftTitle: "매장 정보",
                leftImage: Image(.storeInfo),
                leftAction: {
                    print("매장 정보")
                },
                rightTitle: "반납기 정보",
                rightImage: Image(.returnInfo),
                rightAction: {
                    print("반납기 정보")
                }
            )
            
            VStack {
                OtherViewMenuButton(title: "마이 스타벅스 리뷰", image: Image(.myReview)) {
                    print("마이 스타벅스 리뷰")
                }
            }
            .padding(.vertical, 10)
        }
        .padding(.horizontal, 10)
    }
}

struct OtherView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro Max"]
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            OtherView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
