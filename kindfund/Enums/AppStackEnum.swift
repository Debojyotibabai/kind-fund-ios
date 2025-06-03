import SwiftUI

enum EducatorAppStacksEnum: Int, CaseIterable {
    case profileStack, packetStack, submitPacketStack, notificationStack, settingsStack
    
    var title: String {
        switch self {
        case .profileStack:
            return "Profile"
        case .packetStack:
            return "Packets"
        case .submitPacketStack:
            return "Submit a Request"
        case .notificationStack:
            return "Notifications"
        case .settingsStack:
            return "Settings"
        }
    }
    
    var icon: ImageResource {
        switch self {
        case .profileStack:
            return .profileDrawer
        case .packetStack:
            return .packetDrawer
        case .submitPacketStack:
            return .submitPacketDrawer
        case .notificationStack:
            return .notificationDrawer
        case .settingsStack:
            return .settingsDrawer
        }
    }
}

enum EducatorProfileStackScreensEnum: Hashable {
    case editProfile
}

enum EducatorPacketStackScreensEnum: Hashable {
    case packetDetails, editPacket
}

enum EducatorSubmitPacketStackScreensEnum: Hashable {}

enum EducatorNotificationStackScreensEnum: Hashable {}

enum EducatorSettingsStackScreensEnum: Hashable {}

enum VolunteerAppStacksEnum: Int, CaseIterable {
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
