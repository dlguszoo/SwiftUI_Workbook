//
//  ShopViewModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/13/25.
//

import SwiftUI

@Observable
class ShopViewModel {
    var shopBanner = [Image(.shopBanner1), Image(.shopBanner2), Image(.shopBanner3)]
    
    var allProducts: [ShopGoodsModel] = [
        ShopGoodsModel(id: 0, name: "텀블러", image: Image(.product1)),
        ShopGoodsModel(id: 1, name: "커피 용품", image: Image(.product2)),
        ShopGoodsModel(id: 2, name: "선물 세트", image: Image(.product3)),
        ShopGoodsModel(id: 3, name: "보온병", image: Image(.product4)),
        ShopGoodsModel(id: 4, name: "머그/컵", image: Image(.product5)),
        ShopGoodsModel(id: 5, name: "라이프스타일", image: Image(.product6))
    ]
    
    var BestItems: [ShopGoodsModel] = [
        ShopGoodsModel(id: 0, name: "그린 사이렌 슬리브 머그 355ml", image: Image(.item1)),
        ShopGoodsModel(id: 1, name: "그린 사이렌 클래식 머그 355ml", image: Image(.item2)),
        ShopGoodsModel(id: 2, name: "사이렌 머그 앤 우드 소서", image: Image(.item3)),
        ShopGoodsModel(id: 3, name: "리저브 골드 테일 머그 355ml", image: Image(.item4)),
        ShopGoodsModel(id: 4, name: "블랙 앤 골드 머그 473ml", image: Image(.item5)),
        ShopGoodsModel(id: 5, name: "블랙 링 머그 355ml", image: Image(.item6)),
        ShopGoodsModel(id: 6, name: "북청사자놀음 데미머그", image: Image(.item7)),
        ShopGoodsModel(id: 7, name: "서울 제주 데미머그 세트", image: Image(.item8))
    ]
    
    var NewProducts: [ShopGoodsModel] = [
        ShopGoodsModel(id: 0, name: "그린 사이렌 도트 머그 237ml", image: Image(.item9)),
        ShopGoodsModel(id: 1, name: "그린 사이렌 도트 머그 355ml", image: Image(.item10)),
        ShopGoodsModel(id: 2, name: "홈 카페 미니 머그 세트", image: Image(.item11)),
        ShopGoodsModel(id: 3, name: "홈 카페 글라스 세트", image: Image(.item12)),
    ]
}
