import SwiftUI

struct EducatorAppMainStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        ZStack {
            switch appViewModel.educatorCurrentStack {
            case .profileStack:
                EducatorProfileStack()
            case .packetStack:
                EducatorPacketStack()
            case .submitPacketStack:
                EducatorSubmitPacketStack()
            case .notificationStack:
                EducatorNotificationStack()
            case .settingsStack:
                EducatorSettingsStack()
            }
            
            if(appViewModel.isDrawerOpened) {
                DrawerSideBar()
            }
        }
    }
}

#Preview {
    EducatorAppMainStack()
        .environmentObject(AppViewModel())
}
