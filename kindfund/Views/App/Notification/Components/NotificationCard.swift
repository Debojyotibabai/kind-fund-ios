import SwiftUI

struct NotificationCard: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                PrimarySubTitle(text: "10123456 status changed to Request Accepted",
                                color: .textInputLabel)
                
                Spacer().frame(height: 8)
                
                Text("Tap here to view the request")
                    .font(.system(size: 14))
                    .foregroundStyle(.textInputPlaceholder)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.textInputBorder)
        }
        .padding()
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
    NotificationCard()
}
