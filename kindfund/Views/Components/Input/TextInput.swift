import SwiftUI

struct TextInput: View {
    @Binding var text: String
    let placeholder: String
    var backgroundColor: Color = .textInputBackground
    var isDisabled: Bool = false
    var validationError: String = ""
    var lineLimit: ClosedRange = 0...1
    
    var body: some View {
        VStack(alignment: .leading) {
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
            .disabled(isDisabled)
            .autocapitalization(.none)
            
            if(validationError != "" && text != "") {
                Text(validationError)
                    .foregroundStyle(.error)
                    .font(.custom(Fonts.regular, size: 15))
            }
        }
    }
}

#Preview {
    TextInput(text: .constant(""), placeholder: "Hello")
}
