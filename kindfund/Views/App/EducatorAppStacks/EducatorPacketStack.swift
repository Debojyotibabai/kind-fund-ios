import SwiftUI

struct EducatorPacketStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        NavigationStack(path: $appViewModel.educatorPacketStackNavigationPath) {
            EducatorPacketListingView()
                .navigationDestination(for: EducatorPacketStackScreensEnum.self) { screen in
                    switch screen {
                    case .packetDetails:
                        PacketDetailsView()
                    case .editPacket:
                        EditPacketView()
                    }
                }
        }
    }
}

#Preview {
    EducatorPacketStack()
        .environmentObject(AppViewModel())
}
