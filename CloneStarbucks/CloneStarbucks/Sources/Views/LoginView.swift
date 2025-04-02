//
//  LoginView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 3/24/25.
//

import SwiftUI

struct LoginView: View {
    
    enum Field: Hashable {
        case id
        case pw
    }
    
    @ObservedObject var viewModel: LoginViewModel
    @FocusState private var focusedField: Field?
    
    init() {
        self._viewModel = .init(wrappedValue: .init(loginModel: .init(id: "", pwd: "")))
    }
    
    var body: some View {
        VStack {
            topTitleGroup
                .padding(.leading, 19)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer().frame(height: 90)
            
            middleLoginGroup
                .padding(.horizontal, 19)
                .frame(maxWidth: .infinity, alignment: .center)
            
            Spacer().frame(height: 90)
            
            bottomSocialLoginGroup
        }
    }
    
    private var topTitleGroup: some View {
        VStack(alignment: .leading, spacing: 19) {
            Image("StarbucksLogo")
                .resizable()
                .frame(width: 97, height: 95)
                .padding(.bottom, 9)
            
            Text("안녕하세요.\n스타벅스입니다.")
                .font(.PretendardExtraBold(size: 24))
                .foregroundStyle(Color.black03)
                .kerning(2)
            
            Text("회원 서비스 이용을 위해 로그인 해주세요")
                .font(.PretendardMedium(size: 16))
                .foregroundStyle(Color.gray01)
        }
    }
    
    private var middleLoginGroup: some View {
        VStack(spacing: 47) {
            VStack {
                TextField(
                    "id",
                    text: $viewModel.loginModel.id,
                    prompt: Text("아이디")
                        .font(.PretendardRegular(size: 13))
                        .foregroundStyle(Color.black01)
                )
                .frame(height: 16)
                .tint(Color.green01)
                .focused($focusedField, equals: .id)
                Divider()
                    .background(focusedField == .id ? Color.green01 : Color.gray00)
            }
            
            VStack {
                SecureField(
                    "pw",
                    text: $viewModel.loginModel.pwd,
                    prompt: Text("비밀번호")
                        .font(.PretendardRegular(size: 13))
                        .foregroundStyle(Color.black01)
                )
                .frame(height: 16)
                .tint(Color.green01)
                .focused($focusedField, equals: .pw)
                Divider()
                    .background(focusedField == .pw ? Color.green01 : Color.gray00)
            }
            
            Button(action: {
                print("로그인버튼 눌림")
            }, label: {
                Text("로그인하기")
                    .frame(height: 46)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 19)
                    .font(.PretendardMedium(size: 16))
                    .foregroundStyle(Color.white)
                    .background(Color.green01)
                    .cornerRadius(20)
            })
        }
    }
    
    private var bottomSocialLoginGroup: some View {
        VStack(spacing: 19) { // Spacing을 주는 것보다 spacing:19 이런식으로 주는 것이 나은 것 같음.
            Text("이메일로 회원가입하기")
                .font(.PretendardRegular(size: 12))
                .foregroundStyle(Color.gray04)
                .underline()
            
            Image("kakaoLogin")
            
            Image("appleLogin")
        }
    }
}

struct LoginView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro Max"]
    static var previews: some View {
        ForEach(devices, id: \.self) { device in
            LoginView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
