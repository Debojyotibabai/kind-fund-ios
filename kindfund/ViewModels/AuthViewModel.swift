import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var isLoggedIn: Bool = true
    @Published var userType: UserTypeEnum = .volunteer
    
    @Published var authNavigationPath: [AuthScreensEnum] = []
}
