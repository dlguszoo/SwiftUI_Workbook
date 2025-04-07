//
//  HomeViewModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/6/25.
//

import SwiftUI

class HomeViewModel {
    
    @AppStorage("nickName") var nickname: String?
    
    var coffees = [
        CoffeeModel(id: 0, image: Image(.coffee1), name: "에스프레소 콘파나"),
        CoffeeModel(id: 1, image: Image(.coffee2), name: "에스프레소 마키아또"),
        CoffeeModel(id: 2, image: Image(.coffee3), name: "아이스 카페 아메리카노"),
        CoffeeModel(id: 3, image: Image(.coffee4), name: "카페 아메리카노"),
        CoffeeModel(id: 4, image: Image(.coffee5), name: "아이스 카라멜 마키아또"),
        CoffeeModel(id: 5, image: Image(.coffee6), name: "카라멜 마키아또")
    ]
    
    var whatsNew = [
        WhatsNewModel(image: Image(.new1), title: "25년 3월 일회용컵 없는 날 캠페인에 참여하세요", content: "매월 10일은 일회용컵 없는 날! 스타벅스 데모매장에서 개인컵 및 다회용 컵을 이용하세요."),
        WhatsNewModel(image: Image(.new2), title: "스타벅스 ooo점을 찾습니다", content: "스타벅스 커뮤니티 스토어 파트너를 운영할 기관을 공모합니다."),
        WhatsNewModel(image: Image(.new3), title: "2월 8일, 리저브 스프링 신규 커피 판매 실시!", content: "산뜻하고 달콤한 풍미가 가득한 리저브를 맛보세요!")
    ]
    
    var desserts = [
        DessertModel(image: Image(.bread1), name: "너티 크루아상"),
        DessertModel(image: Image(.bread2), name: "매콤 소시지 불고기"),
        DessertModel(image: Image(.bread3), name: "미니 리프 파이"),
        DessertModel(image: Image(.bread4), name: "뺑 오 쇼콜라"),
        DessertModel(image: Image(.bread5), name: "소시지&올리브 파이")
    ]
    
    public func getNickName() -> String {
        if let nickname = nickname {
            return nickname
        } else {
            return "(설정 닉네임)"
        }
    }
}
