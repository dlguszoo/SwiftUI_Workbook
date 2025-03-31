//
//  AppStoragePractice.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct AppStoragePractice: View {
    
    @AppStorage("username") private var username: String = "Ivy"
    @AppStorage("userAge") private var userAge: Int = 23
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello, \(username)!")
            Button("이름 변경") {
                username = "제옹교수님"
            }
            .padding()
            
            Text("Age: \(userAge)")
            Button(action: {
                userAge += 1
            }, label: {
                Text("나이 증가")
            })
            .padding()
            
            Toggle("Dark Mode", isOn: $isDarkMode)
                .frame(width: 150)
        }
    }
}

#Preview {
    AppStoragePractice()
}
