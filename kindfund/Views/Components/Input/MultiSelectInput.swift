import SwiftUI

struct MultiSelectInput: View {
    @Binding var selectedOption: [SelectInputModel]
    var options: [SelectInputModel] = []
    var backgroundColor: Color = .textInputBackground
    var width: CGFloat = .infinity
    
    var body: some View {
        VStack {
            Menu {
                ForEach(options) { option in
                    Button(option.label, action: {
                        if !selectedOption.contains(where: { $0.id == option.id }) {
                            selectedOption.append(option)
                        }
                    })
                }
            } label: {
                HStack {
                    Text("select")
                        .foregroundStyle(.textInputPlaceholder)
                    
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
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                ForEach(selectedOption, id: \.id) { option in
                    HStack {
                        HStack {
                            Spacer()
                            Text(option.label)
                                .font(.custom(Fonts.medium, size: 16))
                                .foregroundStyle(.light)
                            Spacer()
                        }
                        
                        Image(systemName: "xmark.circle")
                            .foregroundStyle(.light)
                            .onTapGesture {
                                selectedOption = selectedOption.filter { $0.id != option.id }
                            }
                    }
                    .padding(10)
                    .background(.secondaryBackground)
                    .clipShape(.capsule)
                }
            }
        }
    }
}

#Preview {
    MultiSelectInput(selectedOption: .constant([]))
}
