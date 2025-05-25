import SwiftUI

struct SelectPhoneCountryCode: View {
    @Binding var selectedOption: String
    var backgroundColor: Color = .textInputBackground
    var width: CGFloat = .infinity
    
    var body: some View {
        Menu {
            ForEach(phoneCountryCodeData, id: \.id) { item in
                Button("(\(item.dialCode)) \(item.code)", action: {})
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
    SelectPhoneCountryCode(selectedOption: .constant(""))
}
