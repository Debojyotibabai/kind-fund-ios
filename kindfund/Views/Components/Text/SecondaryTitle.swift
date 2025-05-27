import SwiftUI

struct SecondaryTitle: View {
    let text: String
    var color: Color = .dark
    var font: String = Fonts.medium
    
    var body: some View {
        Text(text)
            .font(.custom(font, size: 18))
            .foregroundStyle(color)
            .multilineTextAlignment(.leading)
    }
}
