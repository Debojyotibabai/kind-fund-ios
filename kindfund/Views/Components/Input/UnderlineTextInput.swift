import SwiftUI

struct UnderlineTextInput: View {
    @Binding var text: String
    let placeholder: String
    var backgroundColor: Color = .light
    var isDisabled: Bool = true
    
    var body: some View {
        VStack {
            TextField("",
                      text: $text,
                      prompt: Text(placeholder)
                .foregroundStyle(.textInputPlaceholder)
                .font(.custom(Fonts.regular, size: 16)))
            .padding()
            .background(backgroundColor)
            .overlay(VStack{Divider().background(.textInputPlaceholder).offset(x: 0, y: 26)})
            .disabled(isDisabled)
        }
    }
}

#Preview {
    UnderlineTextInput(text: .constant(""), placeholder: "Hello")
}
