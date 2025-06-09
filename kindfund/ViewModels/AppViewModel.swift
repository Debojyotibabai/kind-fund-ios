import SwiftUI

@MainActor
class AppViewModel: ObservableObject {
    @Published var educatorCurrentStack: EducatorAppStacksEnum = .packetStack
    
    @Published var educatorProfileStackNavigationPath: [EducatorProfileStackScreensEnum] = []
    @Published var educatorPacketStackNavigationPath: [EducatorPacketStackScreensEnum] = []
    @Published var educatorSubmitPacketStackNavigationPath: [EducatorSubmitPacketStackScreensEnum] = []
    @Published var educatorNotificationStackNavigationPath: [EducatorNotificationStackScreensEnum] = []
    @Published var educatorSettingsStackNavigationPath: [EducatorSettingsStackScreensEnum] = []
    
    @Published var volunteerCurrentStack: VolunteerAppStacksEnum = .packetStack
    
    @Published var volunteerProfileStackNavigationPath: [VolunteerProfileStackScreensEnum] = []
    @Published var volunteerPacketStackNavigationPath: [VolunteerPacketStackScreensEnum] = []
    @Published var volunteerNotificationStackNavigationPath: [VolunteerNotificationStackScreensEnum] = []
    @Published var volunteerSettingsStackNavigationPath: [VolunteerSettingsStackScreensEnum] = []
    
    @Published var isDrawerOpened: Bool = false
    
    func openDrawer() {
        isDrawerOpened = true
    }
    
    func closeDrawer() {
        isDrawerOpened = false
    }
}
