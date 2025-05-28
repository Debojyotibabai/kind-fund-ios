import SwiftUI

enum EducatorAppStacks: Int, CaseIterable {
    case profileStack, packetStack, submitRequestStack, notificationStack, settingsStack, logoutStack
    
    var title: String {
        switch self {
        case .profileStack:
            return "Profile"
        case .packetStack:
            return "Packets"
        case .submitRequestStack:
            return "Submit a Request"
        case .notificationStack:
            return "Notifications"
        case .settingsStack:
            return "Settings"
        case .logoutStack:
            return "Logout"
        }
    }
    
    var icon: ImageResource {
        switch self {
        case .profileStack:
            return .profileDrawer
        case .packetStack:
            return .packetDrawer
        case .submitRequestStack:
            return .submitPacketDrawer
        case .notificationStack:
            return .notificationDrawer
        case .settingsStack:
            return .settingsDrawer
        case .logoutStack:
            return .logoutDrawer
        }
    }
}

enum VolunteerAppStacks: Int, CaseIterable {
    case profileStack, myPacketStack, notificationStack, settingsStack, logoutStack
    
    var title: String {
        switch self {
        case .profileStack:
            return "Profile/Preferences"
        case .myPacketStack:
            return "My Packets"
        case .notificationStack:
            return "Notifications"
        case .settingsStack:
            return "Settings"
        case .logoutStack:
            return "Logout"
        }
    }
    
    var icon: ImageResource {
        switch self {
        case .profileStack:
            return .profileDrawer
        case .myPacketStack:
            return .packetDrawer
        case .notificationStack:
            return .notificationDrawer
        case .settingsStack:
            return .settingsDrawer
        case .logoutStack:
            return .logoutDrawer
        }
    }
}
