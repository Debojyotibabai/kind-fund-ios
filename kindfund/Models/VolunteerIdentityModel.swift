import SwiftUI

struct VolunteerIdentityModel: Identifiable {
    var id: UUID = UUID()
    let title: String
    var isSelected: Bool = false
}
