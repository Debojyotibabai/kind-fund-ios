import SwiftUI

struct OnlyBackHeader: View {
    var onBack: () -> Void = {}
    
    var body: some View {
        HStack {
            Image(systemName: "chevron.left")
                .foregroundColor(.darkBackgroundPrimary)
                .font(.system(size: 25, weight: .medium))
                .onTapGesture {
                    onBack()
                }
            
            Spacer()
        }
        .padding(20)
        .background(.primaryBackground)
    }
}

#Preview {
    OnlyBackHeader()
}
