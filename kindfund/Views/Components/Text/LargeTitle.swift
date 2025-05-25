import SwiftUI

struct LargeTitle: View {
    let label: String
    let color: Color
    
    var body: some View {
        Text(label)
            .font(.custom(Fonts.semiBold, size: 30))
            .foregroundStyle(color)
    }
}

#Preview {
    LargeTitle(label: "Hello", color: .dark)
}

