//
//  BaseTabBarView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import SwiftUI

struct BaseTabBarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", image: selectedTab == 0 ? "homeSelected" : "home", value: 0) {
                HomeView()
            }
            
            Tab("Pay", image: selectedTab == 1 ? "paySelected" : "pay", value: 1) {
                PayView()
            }
            
            Tab("Order", image: selectedTab == 2 ? "orderSelected" : "order", value: 2) {
                OrderView()
            }
            
            Tab("Shop", image: selectedTab == 3 ? "shopSelected" : "shop", value: 3) {
                ShopView()
            }
            
            Tab("Other", image: selectedTab == 4 ? "otherSelected" : "other", value: 4) {
                OtherView()
            }
        }
        .tint(Color.green02)
    }
}

#Preview {
    BaseTabBarView()
}
