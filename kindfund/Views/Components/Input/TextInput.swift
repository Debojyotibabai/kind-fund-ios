import SwiftUI

struct TextInput: View {
    @Binding var text: String
    let placeholder: String
    var backgroundColor: Color = .textInputBackground
    var lineLimit: ClosedRange = 0...1
    
    var body: some View {
        TextField("",
                  text: $text,
                  prompt: Text(placeholder)
            .foregroundStyle(.textInputPlaceholder)
            .font(.custom(Fonts.regular, size: 16)),
                  axis: .vertical)
        .lineLimit(lineLimit)
        .padding()
        .border(.textInputBorder, width: 1)
        .background(backgroundColor)
    }
}

#Preview {
    TextInput(text: .constant(""), placeholder: "Hello")
}
