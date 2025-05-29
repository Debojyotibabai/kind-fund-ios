import SwiftUI

struct PrimaryTitle: View {
    let text: String
    var color: Color = .dark
    var font: String = Fonts.medium
    var multilineTextAlignment: TextAlignment = .leading
    
    var body: some View {
        Text(text)
            .font(.custom(font, size: 20))
            .foregroundStyle(color)
            .multilineTextAlignment(multilineTextAlignment)
    }
}
