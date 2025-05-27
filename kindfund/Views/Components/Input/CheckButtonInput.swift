import SwiftUI

struct CheckButtonInput: View {
    var isSelected: Bool
    var title: String
    var onSelected: () -> Void = {}
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: isSelected ? "checkmark.square.fill" : "square")
                .foregroundColor(.textInputLabel)
                .font(.system(size: 20))
            
            PrimarySubTitle(text: title)
        }
        .onTapGesture {
            onSelected()
        }
    }
}

#Preview {
    CheckButtonInput(isSelected: false, title: "Hello world")
}
