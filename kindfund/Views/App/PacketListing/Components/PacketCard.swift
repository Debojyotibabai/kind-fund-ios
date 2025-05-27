import SwiftUI

struct PacketCard: View {
    var body: some View {
        HStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    PrimarySubTitle(text: "#0123456789",
                                    color: .textInputLabel)
                    
                    Spacer().frame(height: 7)
                    
                    Text("Due by 04/28/2023")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundStyle(.textInputPlaceholder)
                }
                
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
