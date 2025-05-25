import SwiftUI

struct SearchInput: View {
    @Binding var text: String
    var placeholder: String = "Search"
    var backgroundColor: Color = .light
    
    var body: some View {
        HStack {
            TextField("",
                      text: $text,
                      prompt: Text(placeholder)
                .foregroundStyle(.textInputPlaceholder)
                .font(.custom(Fonts.regular, size: 16)))
            
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.textInputPlaceholder)
            
        }
        .padding()
        .border(.textInputBorder, width: 1)
        .background(backgroundColor)
    }
}

#Preview {
    SearchInput(text: .constant(""))
}
