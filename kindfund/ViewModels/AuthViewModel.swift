import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var isLoggedIn: Bool = false
    
    @Published var authNavigationPath: [AuthScreensEnum] = []
}
