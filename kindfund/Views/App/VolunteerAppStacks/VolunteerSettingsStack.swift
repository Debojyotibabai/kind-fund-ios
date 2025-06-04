import SwiftUI

struct VolunteerSettingsStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        NavigationStack(path: $appViewModel.volunteerSettingsStackNavigationPath) {
            SettingsView()
        }
    }
}

#Preview {
    VolunteerSettingsStack()
        .environmentObject(AppViewModel())
}
