import SwiftUI

struct EducatorProfileStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        NavigationStack(path: $appViewModel.educatorProfileStackNavigationPath) {
            EducatorProfileView()
                .navigationDestination(for: EducatorProfileStackScreensEnum.self) { screen in
                    switch screen {
                    case .editProfile:
                        EducatorEditProfileView()
                    }
                }
        }
    }
}

#Preview {
    EducatorProfileStack()
        .environmentObject(AppViewModel())
}
