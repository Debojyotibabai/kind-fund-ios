enum PacketStatusEnum: CaseIterable {
    case accept, reject, shopComplete, deliveredToSchoolOffice
    
    var title: String {
        switch self {
        case .accept:
            return "Packet Accepted"
        case .reject:
            return "Packet Rejected"
        case .shopComplete:
            return "Shop Completed"
        case .deliveredToSchoolOffice:
            return "Delivered to School Office"
        }
    }
    
    var id: Int {
        switch self {
        case .accept:
            return 1
        case .reject:
            return 2
        case .shopComplete:
            return 3
        case .deliveredToSchoolOffice:
            return 4
        }
    }
}
