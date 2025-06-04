import SwiftUI

struct VolunteerNotificationStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        NavigationStack(path: $appViewModel.volunteerNotificationStackNavigationPath) {
            NotificationView()
        }
    }
}

#Preview {
    VolunteerNotificationStack()
        .environmentObject(AppViewModel())
}
