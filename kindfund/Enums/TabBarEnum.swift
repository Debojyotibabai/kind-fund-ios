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
    case packet, profile, notification
    
    var unFillIcon: ImageResource {
        switch self {
        case .packet:
            return .packetUnfill
        case .profile:
            return .profileUnfill
        case .notification:
            return .notificationUnfill
        }
    }
    
    var fillIcon: ImageResource {
        switch self {
        case .packet:
            return .packetFill
        case .profile:
            return .profileFill
        case .notification:
            return .notificationFill
        }
    }
}
