//
//  HomeView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import SwiftUI
import Observation

struct HomeView: View {
    
    @State private var path = NavigationPath()
    
    @State private var homeViewModel: HomeViewModel = .init()
    
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView {
                LazyVStack(spacing: 20) {
                    topRewardView
                        .padding(.bottom, 3)
                    
                    Group {
                        Image(.banner1)
                            .resizable()
                    }
                    .padding(.horizontal, 7)
                    
                    reccomendedView
                    
                    Group {
                        Image(.banner2)
                            .resizable()
                        
                        Image(.banner3)
                            .resizable()
                    }
                    .padding(.horizontal, 7)
                    
                    whatsNewView
                    
                    Group {
                        VStack(spacing: 5) {
                            Image(.banner4)
                                .resizable()
                            
                            Image(.banner5)
                                .resizable()
                            
                            Image(.banner6)
                                .resizable()
                        }
                    }
                    .padding(.horizontal, 7)
                    
                    dessertsView
                    
                    Group {
                        VStack {
                            Image(.banner7)
                                .resizable()
                            
                            Image(.banner8)
                                .resizable()
                            
                            Image(.banner9)
                                .resizable()
                        }
                    }
                    .padding(.horizontal, 7)
                }
                .navigationDestination(for: Int.self) { value in
                    CoffeeDetailView(coffeeId: value)
                        .toolbar(.hidden) //CoffeeDetailView에서 네비게이션바 숨기기
                }
            }
            .ignoresSafeArea(edges: .top)
            .scrollIndicators(.hidden)
        }
    }
    
    private var topRewardView: some View {
        ZStack(alignment: .top) {
            Image("home_top")
                .resizable()
                .scaledToFit()
            
            VStack(alignment: .leading, spacing: 0) {
                Text("골든 미모사 그린 티와 함께\n행복한 새해의 축배를 들어요!")
                    .font(.PretendardSemiBold(size: 22))
                    .lineSpacing(12)
                    .kerning(-0.5)
                    .padding(.bottom, 11)
                
                toViewContentsBtn
                
                HStack {
                    nextRewardBarView
                    
                    Spacer()
                    
                    myStarView
                        .padding(.trailing, 30)
                        .padding(.top, 5)
                }
            }
            .padding(.leading, 28.16)
            .padding(.top, 110)
        }
        .ignoresSafeArea(edges: .top)
    }
    
    private var nextRewardBarView: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("11★ until next Reward")
                .foregroundStyle(Color.brown02)
                .font(.PretendardSemiBold(size: 16))
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    // 회색 트랙
                    Capsule()
                        .fill(Color.gray.opacity(0.3))
                        .frame(height: 8)
                    
                    // 실제 진행 바
                    Capsule()
                        .fill(Color.brown02)
                        .frame(width: geometry.size.width * 1/12, height: 8)
                }
            }
        }
        .frame(width: 230, height: 8)
    }
    
    private var toViewContentsBtn: some View {
        HStack {
            Spacer()
            
            Button(action: {}) {
                HStack(spacing: 4) {
                    Text("내용 보기")
                        .font(.PretendardRegular(size: 13))
                        .foregroundStyle(Color.gray06)
                    
                    Image("go_line")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .scaledToFit()
                }
            }
            .padding(.trailing, 20)
        }
    }
    
    private var myStarView: some View {
        HStack(spacing: 5) {
            Text("1")
                .font(.PretendardSemiBold(size: 38))
            
            Text(" / ")
                .font(.PretendardLight(size: 24))
                .foregroundStyle(Color.gray08)
            
            Text("12")
                .font(.PretendardSemiBold(size: 24))
                .foregroundStyle(Color.brown02)
            +
            
            Text("★")
                .font(.PretendardSemiBold(size: 14))
                .foregroundStyle(Color.brown02)
        }
    }
    
    private var reccomendedView: some View {
        VStack(alignment: .leading, spacing: 25) {
            (
                Text(homeViewModel.getNickName())
                    .font(.PretendardSemiBold(size: 24))
                    .foregroundStyle(Color.brown01)
                
                +
                
                Text("님을 위한 추천 메뉴")
                    .font(.PretendardSemiBold(size: 24))
            )
            .padding(.horizontal, 14)
            
            ScrollView(.horizontal, content: {
                LazyHStack(spacing: 16, content: {
                    ForEach(1...6, id: \.self) { index in
                        CircleImageCard(title: homeViewModel.coffees[index - 1].name, image: homeViewModel.coffees[index - 1].image) {
                            path.append(homeViewModel.coffees[index - 1].id)
                            print(homeViewModel.coffees[index - 1].name)
                        }
                    }
                })
            })
            .scrollIndicators(.hidden)
            .contentMargins(.horizontal, 14)
        }
    }
    
    private var whatsNewView: some View {
        VStack(alignment: .leading) {
            Text("What's New")
                .font(.PretendardSemiBold(size: 24))
                .padding(.horizontal, 7)
            
            ScrollView(.horizontal, content: {
                LazyHStack(spacing: 14, content: {
                    ForEach(1...3, id: \.self) { index in
                        whatsNewCard(title: homeViewModel.whatsNew[index - 1].title, contents: homeViewModel.whatsNew[index - 1].content, image: homeViewModel.whatsNew[index - 1].image) {
                            print("클릭!")
                        }
                    }
                })
            })
            .scrollIndicators(.hidden)
            .contentMargins(.horizontal, 7)
        }
    }
    
    private var dessertsView: some View {
        VStack(alignment: .leading) {
            Text("하루가 달콤해지는 디저트")
                .font(.PretendardSemiBold(size: 24))
                .padding(.horizontal, 7)
            
            ScrollView(.horizontal, content: {
                LazyHStack(spacing: 16, content: {
                    ForEach(1...5, id: \.self) { index in
                        CircleImageCard(title: homeViewModel.desserts[index - 1].name, image: homeViewModel.desserts[index - 1].image) {
                            print("클릭!")
                        }
                    }
                })
            })
            .scrollIndicators(.hidden)
            .contentMargins(.horizontal, 7)
        }
    }
}

#Preview {
    HomeView()
}
