import SwiftUI

struct AuthCheckView: View {
    @StateObject var authViewModel: AuthViewModel = AuthViewModel()
    @StateObject var appViewModel: AppViewModel = AppViewModel()
    
    var body: some View {
        if(!authViewModel.isLoggedIn) {
            UserSelectionView()
                .environmentObject(authViewModel)
                .environmentObject(appViewModel)
        } else {
            
        }
    }
}

#Preview {
    AuthCheckView()
}
