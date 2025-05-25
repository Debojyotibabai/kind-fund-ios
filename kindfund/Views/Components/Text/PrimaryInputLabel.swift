import SwiftUI

struct PrimaryInputLabel: View {
    let label: String
    var color: Color = .textInputLabel
    
    var body: some View {
        Text(label)
            .font(.custom(Fonts.regular, size: 15))
            .foregroundStyle(color)
    }
}

#Preview {
    PrimaryInputLabel(label: "Hello")
}
