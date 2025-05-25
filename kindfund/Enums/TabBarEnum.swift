import SwiftUI

enum EducatorTabBarEnum: CaseIterable {
    case packet, submitPacket, notification
    
    var unFillIcon: ImageResource {
        switch self {
        case .packet:
            return .packetUnfill
        case .submitPacket:
            return .submitPacketUnfill
        case .notification:
            return .notificationUnfill
        }
    }
    
    var fillIcon: ImageResource {
        switch self {
        case .packet:
            return .packetFill
        case .submitPacket:
            return .submitPacketFill
        case .notification:
            return .notificationFill
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
