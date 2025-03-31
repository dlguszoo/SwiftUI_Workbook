//
//  SettingsView.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        VStack {
            Text("설정 화면")
                .font(.largeTitle)
            
            TextField("사용자 이름 변경", text: $userViewModel.username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(UserViewModel())
}
