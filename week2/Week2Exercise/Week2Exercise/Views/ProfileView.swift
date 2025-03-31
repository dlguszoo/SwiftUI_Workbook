//
//  ProfileView.swift
//  Week2Exercise
//
//  Created by 이현주 on 3/30/25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        VStack {
            Text("프로필 화면")
                .font(.largeTitle)
            
            Text("사용자 이름: \(userViewModel.username)")
                .font(.largeTitle)
            
            Button("이름 변경") {
                userViewModel.username = "새로운 사용자"
            }
            .padding()
            .background(Color.blue)
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(UserViewModel())
}
