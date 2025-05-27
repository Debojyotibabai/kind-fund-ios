enum VolunteerTimingEnum: CaseIterable {
    case weekly, biweekly, monthly, quarterly, yearly, once
    
    var title: String {
        switch self {
        case .weekly:
            return "Weekly"
        case .biweekly:
            return "Bi-Weekly"
        case .monthly:
            return "Monthly"
        case .quarterly:
            return "Quarterly"
        case .yearly:
            return "Yearly"
        case .once:
            return "Once"
            
        }
    }
}
