import SwiftUI

struct VolunteerMainAppStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        ZStack {
            switch appViewModel.volunteerCurrentStack {
            case .profileStack:
                VolunteerProfileStack()
            case .packetStack:
                VolunteerPacketStack()
            case .notificationStack:
                VolunteerNotificationStack()
            case .settingsStack:
                VolunteerSettingsStack()
            }
            
            if(appViewModel.isDrawerOpened) {
                DrawerSideBar()
            }
        }
    }
}

#Preview {
    VolunteerMainAppStack()
        .environmentObject(AppViewModel())
}
