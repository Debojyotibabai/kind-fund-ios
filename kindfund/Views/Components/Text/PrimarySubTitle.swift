import SwiftUI

struct PrimarySubTitle: View {
    let text: String
    var color: Color = .dark
    var font: String = Fonts.regular
    var multilineTextAlignment: TextAlignment  = .leading
    
    var body: some View {
        Text(text)
            .font(.custom(font, size: 16))
            .foregroundStyle(color)
            .multilineTextAlignment(multilineTextAlignment)
    }
}
