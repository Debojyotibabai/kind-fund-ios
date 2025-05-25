import SwiftUI

struct PacketCard: View {
    var body: some View {
        HStack {
            HStack(alignment: .top) {
                PrimarySubTitle(text: "#0123456789",
                                color: .textInputLabel)
                
                Spacer()
                
                Text("Group")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.textInputPlaceholder)
                
                Spacer()
                
                Text("Delivered To School")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(.purchasedItemBackground)
            }
            
            Spacer().frame(width: 15)
            
            Image(systemName: "chevron.right")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.textInputBorder)
        }
        .padding()
        .padding(.vertical, 10)
        .frame(
            minWidth: 0,
            maxWidth: .infinity
        )
        .background(.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .padding(.bottom, 5)
    }
}

#Preview {
    PacketCard()
}
