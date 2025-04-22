//
//  ReceiptImageModel.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/16/25.
//

import SwiftUI
import SwiftData

@Model
class ReceiptImageModel {
    
    @Attribute(.unique) var id: UUID
    @Attribute(.externalStorage)
    var data: Data
    
    init(data: Data) {
        self.id = UUID()
        self.data = data
    }
}

