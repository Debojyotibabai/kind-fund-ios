import SwiftUI

struct VolunteerPacketStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        NavigationStack(path: $appViewModel.volunteerPacketStackNavigationPath) {
            VolunteerPacketListingView()
                .navigationDestination(for: VolunteerPacketStackScreensEnum.self) { screen in
                    switch screen {
                    case .packetDetails:
                        PacketDetailsView()
                    }
                }
        }
    }
}

#Preview {
    VolunteerPacketStack()
        .environmentObject(AppViewModel())
}
