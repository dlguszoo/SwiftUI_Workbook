//
//  SignupView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import SwiftUI

struct SignupView: View {
    
    @State private var nickname: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    private var signupViewModel: SignupViewModel = .init()
    
    var body: some View {
        VStack {
            Group {
                textfieldGroup
                
                Spacer()
                
                Button(action: {
                    signupViewModel.storeUserInfo(nickName: nickname, email: email, password: password)
                }, label: {
                    Text("생성하기")
                        .font(.PretendardMedium(size: 18))
                        .foregroundStyle(Color.white01)
                        .padding(.horizontal, 24)
                })
                .frame(height: 58)
                .frame(maxWidth: .infinity)
                .background(Color.green01)
                .cornerRadius(20)
            }
            .padding(.horizontal, 19)
        }
        .safeAreaPadding(EdgeInsets(top: 172, leading: 0, bottom: 72, trailing: 0))
    }
    
    private var textfieldGroup: some View {
        VStack(spacing: 49) {
            CustomTextField(spaceholder: "닉네임", text: $nickname)
            
            CustomTextField(spaceholder: "이메일", text: $email)
            
            CustomTextField(spaceholder: "비밀번호", text: $password)
        }
    }
}

#Preview {
    SignupView()
}
