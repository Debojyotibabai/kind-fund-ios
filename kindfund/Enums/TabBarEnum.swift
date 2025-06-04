import SwiftUI

enum EducatorTabBarEnum: CaseIterable {
    case packetStack, submitPacketStack, notificationStack
    
    var unFillIcon: ImageResource {
        switch self {
        case .packetStack:
            return .packetUnfill
        case .submitPacketStack:
            return .submitPacketUnfill
        case .notificationStack:
            return .notificationUnfill
        }
    }
    
    var fillIcon: ImageResource {
        switch self {
        case .packetStack:
            return .packetFill
        case .submitPacketStack:
            return .submitPacketFill
        case .notificationStack:
            return .notificationFill
        }
    }
    
    var title: String {
        switch self {
        case .packetStack:
            return "Packets"
        case .submitPacketStack:
            return "Submit a Request"
        case .notificationStack:
            return "Notifications"
        }
    }
}


enum VolunteerTabBarEnum: CaseIterable {
    case packetStack, profileStack, notificationStack
    
    var unFillIcon: ImageResource {
        switch self {
        case .packetStack:
            return .packetUnfill
        case .profileStack:
            return .profileUnfill
        case .notificationStack:
            return .notificationUnfill
        }
    }
    
    var fillIcon: ImageResource {
        switch self {
        case .packetStack:
            return .packetFill
        case .profileStack:
            return .profileFill
        case .notificationStack:
            return .notificationFill
        }
    }
    
    var title: String {
        switch self {
        case .packetStack:
            return "My Packets"
        case .profileStack:
            return "Profile/Preferences"
        case .notificationStack:
            return "Notifications"
        }
    }
}
