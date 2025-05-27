import SwiftUI

struct SelectInput: View {
    @Binding var selectedOption: String
    var options: [SelectInputModel] = []
    var backgroundColor: Color = .textInputBackground
    var width: CGFloat = .infinity
    
    var body: some View {
        Menu {
            ForEach(options) { option in
                Button(option.label, action: {
                    selectedOption = option.value
                })
            }
        } label: {
            HStack {
                Text(selectedOption != "" ? selectedOption : "select")
                    .foregroundStyle(selectedOption != "" ? .dark : .textInputPlaceholder)
                
                Spacer()
                
                Image(systemName: "chevron.down")
                    .font(.system(size: 18))
                    .foregroundStyle(.textInputBorder)
            }
            .padding()
            .frame(minWidth: 0, maxWidth: width, alignment: .leading)
            .border(.textInputBorder, width: 1)
            .background(backgroundColor)
        }
    }
}

#Preview {
    SelectInput(selectedOption: .constant(""))
}
