enum StudentAgeType {
    case youth, adult
    
    var title: String {
        switch self {
        case .youth:
            return "Youth"
        case .adult:
            return "Adult"
        }
    }
}
