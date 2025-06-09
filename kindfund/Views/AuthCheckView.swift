import SwiftUI

struct AuthCheckView: View {
    @StateObject var authViewModel: AuthViewModel = AuthViewModel()
    @StateObject var appViewModel: AppViewModel = AppViewModel()
    
    @StateObject var signupViewModel: SignupViewModel = SignupViewModel()
    
    var body: some View {
        if(!authViewModel.isLoggedIn) {
            UserSelectionView()
                .environmentObject(authViewModel)
                .environmentObject(appViewModel)
                .environmentObject(signupViewModel)
        } else if(authViewModel.isLoggedIn &&
                  authViewModel.userType == .educator) {
            EducatorAppMainStack()
                .environmentObject(authViewModel)
                .environmentObject(appViewModel)
        } else if (authViewModel.isLoggedIn &&
                   authViewModel.userType == .volunteer) {
            VolunteerMainAppStack()
                .environmentObject(authViewModel)
                .environmentObject(appViewModel)
        }
    }
}

#Preview {
    AuthCheckView()
}
