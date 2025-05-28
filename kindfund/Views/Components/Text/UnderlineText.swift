import SwiftUI

struct UnderlineText: View {
    let text: String
    
    var body: some View {
        VStack {
            Text(text)
                .foregroundStyle(.dark)
                .font(.custom(Fonts.regular, size: 16))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.light)
                .overlay(
                    VStack {
                        Divider()
                            .background(Color.textInputPlaceholder)
                            .frame(height: 1)
                    },
                    alignment: .bottom
                )
        }
    }
}

#Preview {
    UnderlineText(text: "")
}
