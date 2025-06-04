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
    case profileStack, packetStack, notificationStack, settingsStack
    
    var title: String {
        switch self {
        case .profileStack:
            return "Profile/Preferences"
        case .packetStack:
            return "My Packets"
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
        case .notificationStack:
            return .notificationDrawer
        case .settingsStack:
            return .settingsDrawer
        }
    }
}

enum VolunteerProfileStackScreensEnum: Hashable {
    case editProfile
}

enum VolunteerPacketStackScreensEnum: Hashable {
    case packetDetails
}

enum VolunteerNotificationStackScreensEnum: Hashable {}

enum VolunteerSettingsStackScreensEnum: Hashable {}
