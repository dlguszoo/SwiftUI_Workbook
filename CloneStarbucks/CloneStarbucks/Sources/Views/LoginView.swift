//
//  LoginView.swift
//  CloneStarbucks
//
//  Created by 이현주 on 3/24/25.
//

import SwiftUI

struct LoginView: View {
    @State private var id = ""
    @State private var pw = ""
    
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
        VStack(alignment: .leading) {
            Image("StarbucksLogo")
                .resizable()
                .frame(width: 97, height: 95)
            
            Spacer().frame(height: 28)
            
            Text("안녕하세요.\n스타벅스입니다.")
                .font(.PretendardExtraBold(size: 24))
                .foregroundStyle(Color.black03)
                .kerning(2)
            
            Spacer().frame(height: 19)
            
            Text("회원 서비스 이용을 위해 로그인 해주세요")
                .font(.PretendardMedium(size: 16))
                .foregroundStyle(Color.gray01)
        }
    }
    
    private var middleLoginGroup: some View {
        VStack {
            TextField(
                "id",
                text: $id,
                prompt: Text("아이디")
                    .font(.PretendardRegular(size: 13))
                    .foregroundStyle(Color.black01)
            )
            .frame(height: 16)
            .tint(Color.green01)
            Divider()
                .foregroundStyle(Color.gray00)
            
            Spacer().frame(height: 47)
            
            SecureField(
                "pw",
                text: $pw,
                prompt: Text("비밀번호")
                    .font(.PretendardRegular(size: 13))
                    .foregroundStyle(Color.black01)
            )
            .frame(height: 16)
            .tint(Color.green01)
            Divider()
                .foregroundStyle(Color.gray00)
            
            Spacer().frame(height: 47)
            
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
        VStack { // Spacing을 주는 것보다 spacing:19 이런식으로 주는 것이 나은 것 같음.
            Text("이메일로 회원가입하기")
                .font(.PretendardRegular(size: 12))
                .foregroundStyle(Color.gray04)
                .underline()
            
            Spacer().frame(height: 19)
            
            Image("kakaoLogin")
            
            Spacer().frame(height: 19)
            
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
