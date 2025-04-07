import SwiftUI

@main
struct CloneStarbucksApp: App {
    
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                BaseTabBarView()
            } else {
                LoginView()
            }
        }
    }
}
