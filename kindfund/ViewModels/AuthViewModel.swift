import SwiftUI

@MainActor
class AuthViewModel: ObservableObject {
    @Published var isLoggedIn: Bool = false
    @Published var userType: UserTypeEnum = .educator
    
    @Published var authNavigationPath: [AuthScreensEnum] = []
}
