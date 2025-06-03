import SwiftUI

class AuthViewModel: ObservableObject {
    @Published var isLoggedIn: Bool = true
    @Published var userType: UserTypeEnum = .educator
    
    @Published var authNavigationPath: [AuthScreensEnum] = []
}
