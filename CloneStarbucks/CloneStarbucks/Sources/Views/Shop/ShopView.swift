//
//  ShopView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import SwiftUI

struct ShopView: View {
    
    @Bindable private var viewModel: ShopViewModel = .init()
    @State private var currentPage: Int? = 0
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 50) {
                bannerView
                
                allProductsView
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("New Products")
                        .foregroundStyle(Color.black03)
                        .font(.PretendardSemiBold(size: 22))
                        .lineSpacing(8)
                        .padding(.horizontal, 16)
                    
                    bestItemsView
                }
                
                newProductsView
            }
        }
        .background(Color.white01)
        .scrollIndicators(.hidden)
    }
    
    private var bannerView: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Starbucks Online Store")
                .font(.PretendardBold(size: 24))
                .lineSpacing(12)
                .padding(.horizontal, 16)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 28, content: {
                    ForEach(1...viewModel.shopBanner.count, id: \.self) { index in
                        viewModel.shopBanner[index - 1]
                            .resizable()
                            .scaledToFit()
                            .frame(width: 270)
                    }
                })
            }
            .scrollIndicators(.hidden)
            .contentMargins(.horizontal, 16)
        }
    }
    
    private var allProductsView: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("All Products")
                .foregroundStyle(Color.black03)
                .font(.PretendardSemiBold(size: 22))
                .lineSpacing(8)
                .padding(.horizontal, 16)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 17, content: {
                    ForEach(1...viewModel.allProducts.count, id: \.self) { index in
                        CircleImageCard(title: viewModel.allProducts[index - 1].name, image: viewModel.allProducts[index - 1].image) {
                            print("클릭!")
                        }
                    }
                })
            }
            .scrollIndicators(.hidden)
            .contentMargins(.horizontal, 16)
        }
    }
    
    let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 65), count: 2)
    
    private var bestItemsView: some View {
        VStack(spacing: 31) {
            ScrollView(.horizontal) {
                LazyHStack(spacing: 0) {
                    ForEach(0..<2) { page in
                        LazyVGrid(columns: columns, spacing: 40) {
                            ForEach(0..<4) { localIndex in
                                let index = page * 4 + localIndex
                                SquareImageView(
                                    title: viewModel.BestItems[index].name,
                                    image: viewModel.BestItems[index].image) {
                                    print("클릭: \(index)")
                                }
                                .frame(height: 210)
                            }
                        }
                        .padding(.horizontal, 15)
                        .frame(width: UIScreen.main.bounds.width)
                        .id(page)
                    }
                }
                .scrollTargetLayout()
            }
            .scrollIndicators(.hidden)
            .scrollTargetBehavior(.paging)
            .scrollPosition(id: $currentPage)
            
            HStack(spacing: 8) {
                ForEach(0..<2, id: \.self) { i in
                    Circle()
                        .fill(i == currentPage ? Color.black03 : Color.clear)
                        .stroke(i == currentPage ? Color.black03 : Color.gray02, style: .init(lineWidth: 1))
                        .frame(width: 8, height: 8)
                }
            }
        }
    }
    
    private var newProductsView: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("New Products")
                .foregroundStyle(Color.black03)
                .font(.PretendardSemiBold(size: 22))
                .lineSpacing(8)
            
            LazyVGrid(columns: columns, spacing: 40) {
                ForEach(1...4, id: \.self) { index in
                    SquareImageView(title: viewModel.NewProducts[index - 1].name, image: viewModel.NewProducts[index - 1].image, action: {
                        print("클릭!")
                    })
                    .frame(height: 210)
                }
            }
            .padding(.horizontal, 15)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    ShopView()
}
