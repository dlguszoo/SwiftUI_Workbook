//
//  UserEditView.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/3/25.
//

import SwiftUI

struct UserEditView: View {
    @Binding var user: User //상위 뷰에서 전달받은 데이터
    
    var body: some View {
        Form {
            TextField("Name", text: $user.name)
            Stepper("Age: \(user.age)", value: $user.age)
        }
    }
}
