import SwiftUI

struct EducatorNotificationStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        NavigationStack(path: $appViewModel.educatorNotificationStackNavigationPath) {
            NotificationView()
        }
    }
}

#Preview {
    EducatorNotificationStack()
        .environmentObject(AppViewModel())
}
