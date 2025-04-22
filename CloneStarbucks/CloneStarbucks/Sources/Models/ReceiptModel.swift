//
//  ReceiptModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/16/25.
//

import SwiftUI
import SwiftData

@Model
class ReceiptModel {
    
    //@Attribute(.unique) var id: UUID
    @Relationship(.unique) var photoData: ReceiptImageModel
    
    var shopname: String
    var date: String
    var price: Int
    
    init(photoData: ReceiptImageModel, shopname: String, date: String, price: Int) {
        //self.id = UUID()
        self.photoData = photoData
        self.shopname = shopname
        self.date = date
        self.price = price
    }
}
