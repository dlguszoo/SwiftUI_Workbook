//
//  UserListView.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/3/25.
//

import SwiftUI

struct UserListView: View {
//    @State private var users = [
//        User(name: "Alice", age: 24),
//        User(name: "Bob", age: 30),
//        User(name: "Charlie", age: 28),
//    ]
    @State private var userViewModel: UserViewModel = .init()
    
    @State private var selectedUser: User?
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userViewModel.users.indices, id: \.self) { index in
                    NavigationLink(destination: UserEditView(user: $userViewModel.users[index])) {
                        HStack {
                            Text(userViewModel.users[index].name)
                            Spacer()
                            Text("\(userViewModel.users[index].age) years old")
                        }
                    }
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    UserListView()
}
