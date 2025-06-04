import SwiftUI

struct VolunteerProfileStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        NavigationStack(path: $appViewModel.volunteerProfileStackNavigationPath) {
            VolunteerProfileView()
                .navigationDestination(for: VolunteerProfileStackScreensEnum.self) { screen in
                    switch screen {
                    case .editProfile:
                        VolunteerEditProfileView()
                    }
                }
        }
    }
}

#Preview {
    VolunteerProfileStack()
        .environmentObject(AppViewModel())
}
