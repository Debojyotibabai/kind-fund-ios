import SwiftUI

struct SecondaryInputLabel: View {
    let label: String
    var color: Color = .textInputPlaceholder
    
    var body: some View {
        Text(label)
            .font(.custom(Fonts.regular, size: 14))
            .foregroundStyle(color)
    }
}

#Preview {
    SecondaryInputLabel(label: "Hello")
}
