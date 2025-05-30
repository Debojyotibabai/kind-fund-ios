import SwiftUI

struct RadioButtonInput: View {
    var isSelected: Bool
    var title: String
    var onSelected: () -> Void = {}
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: isSelected ? "circle.circle.fill" : "circle")
                .foregroundColor(.textInputPlaceholder)
                .font(.system(size: 20))
            
            PrimarySubTitle(text: title)
        }
        .onTapGesture {
            onSelected()
        }
    }
}

#Preview {
    RadioButtonInput(isSelected: false, title: "Hello world")
}
