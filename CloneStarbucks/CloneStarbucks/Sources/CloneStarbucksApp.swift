import SwiftUI
import SwiftData

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
        .modelContainer(for: [ReceiptModel.self, ReceiptImageModel.self])
    }
}
