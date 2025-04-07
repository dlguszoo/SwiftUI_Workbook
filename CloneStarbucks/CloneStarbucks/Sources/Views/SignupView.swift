//
//  SignupView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 4/1/25.
//

import SwiftUI

struct SignupView: View {
    
    enum Field: Hashable {
        case nickname
        case email
        case pw
    }
    
    @State private var nickname: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    private var signupViewModel: SignupViewModel = .init()
    @FocusState private var focusedField: Field?
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            CustomNavigationBar(title: "가입하기")

            VStack {
                Group {
                    textfieldGroup
                    
                    Spacer()
                    
                    Button(action: {
                        if nickname.trimmingCharacters(in: .whitespaces).count > 0 &&
                            email.trimmingCharacters(in: .whitespaces).count > 0 &&
                            password.trimmingCharacters(in: .whitespaces).count > 0  { // 앞뒤 공백 제거용
                            signupViewModel.storeUserInfo(nickName: nickname, email: email, password: password)
                            dismiss() //로그인 화면으로 다시 가기
                        } else {
                            print("계정 생성에 실패했습니다.")
                        }
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
            .safeAreaPadding(EdgeInsets(top: 130, leading: 0, bottom: 72, trailing: 0))
        }
    }
    
    private var textfieldGroup: some View {
        VStack(spacing: 49) {
            CustomTextField(spaceholder: "닉네임", text: $nickname, field: .nickname, focusedField: $focusedField)
            
            CustomTextField(spaceholder: "이메일", text: $email, field: .email, focusedField: $focusedField)
            
            CustomTextField(spaceholder: "비밀번호", text: $password, field: .pw, focusedField: $focusedField)
        }
    }
}

#Preview {
    SignupView()
}
