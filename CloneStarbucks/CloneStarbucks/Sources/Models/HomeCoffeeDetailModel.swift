//
//  HomeCoffeeDetailModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/7/25.
//

import SwiftUI

struct CoffeeDetail: Identifiable {
    let id: Int
    var image: Image
    var koTitle: String
    var enTitle: String
    var content: String
    var price: String
    var info: Info
}

enum Info {
    case hot
    case ice
    case both
}
