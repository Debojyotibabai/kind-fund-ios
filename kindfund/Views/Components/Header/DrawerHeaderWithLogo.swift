import SwiftUI

struct DrawerHeaderWithLogo: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: "line.3.horizontal")
                    .foregroundColor(.darkBackgroundPrimary)
                    .font(.system(size: 30, weight: .medium))
                    .onTapGesture {
                        appViewModel.openDrawer()
                    }
                
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
        .environmentObject(AppViewModel())
}
