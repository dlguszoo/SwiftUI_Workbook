//
//  Route.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI

enum Route: Hashable {
    case home
    case detail(title: String)
    case profile(userID: Int)
}
