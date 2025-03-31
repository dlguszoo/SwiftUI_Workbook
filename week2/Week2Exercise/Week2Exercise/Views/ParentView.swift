//
//  ParentView.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct ParentView: View {
    @StateObject var userViewModel: UserViewModel = .init()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("현재 사용자: \(userViewModel.username)")
                .font(.title)
                
                NavigationLink("프로필 화면으로 이동", destination: ProfileView().environmentObject(userViewModel))
                NavigationLink("설정 화면으로 이동", destination: SettingsView().environmentObject(userViewModel))
            }
        }
    }
}

#Preview {
    ParentView()
}
