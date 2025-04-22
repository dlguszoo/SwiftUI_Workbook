//
//  Week4SwiftDataApp.swift
//  Week4SwiftData
//
//  Created by 이현주 on 4/13/25.
//

import SwiftUI
import SwiftData

@main
struct Week4SwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task.self) //Task 모델 사용 선언
    }
}
