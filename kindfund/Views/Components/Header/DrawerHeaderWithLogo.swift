import SwiftUI

struct DrawerHeaderWithLogo: View {
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: "line.3.horizontal")
                    .foregroundColor(.darkBackgroundPrimary)
                    .font(.system(size: 30, weight: .medium))
                
                Spacer()
            }
            
            Image(.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 60)
        }
        .padding(20)
        .background(.primaryBackground)
    }
}

#Preview {
    DrawerHeaderWithLogo()
}
