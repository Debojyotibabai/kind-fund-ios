import SwiftUI

struct EducatorSettingsStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        NavigationStack(path: $appViewModel.educatorSettingsStackNavigationPath) {
            SettingsView()
        }
    }
}

#Preview {
    EducatorSettingsStack()
        .environmentObject(AppViewModel())
}
