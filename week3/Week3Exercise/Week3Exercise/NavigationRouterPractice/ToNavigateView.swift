//
//  ToNavigateView.swift
//  Week3Exercise
//
//  Created by 이현주 on 4/5/25.
//

import SwiftUI

struct ToNavigateView: View {
    @State private var router = NavigationRouter()
    
    var body: some View {
        NavigationStack(path: $router.path) {
            VStack {
                Button("Go to Home") {
                    router.push(.home)
                }
                
                Button("Go to Detail") {
                    router.push(.detail(title: "SwiftUI Navigation"))
                }
                
                Button("Go to Profile") {
                    router.push(.profile(userID: 123))
                }
                
                Button("Reset Navigation") {
                    router.reset()
                }
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .home:
                    HomeView()
                case .detail(let title):
                    DetailView(title: title)
                case .profile(let userID):
                    ProfileView(userID: userID)
                }
            }
            .navigationTitle("Home")
        }
    }
    
    struct HomeView: View {
        var body: some View {
            VStack {
                Text("my home!!!")
            }
        }
    }


    struct DetailView: View {
        let title: String

        var body: some View {
            VStack {
                Text("This is \(title) View")
                    .font(.largeTitle)
            }
            .navigationTitle(title)
        }
    }

    struct ProfileView: View {
        let userID: Int

        var body: some View {
            VStack {
                Text("User ID: \(userID)")
                    .font(.largeTitle)
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ToNavigateView()
}
