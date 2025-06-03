import SwiftUI

struct EducatorSubmitPacketStack: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        NavigationStack(path: $appViewModel.educatorSubmitPacketStackNavigationPath) {
            SubmitPacketView()
        }
    }
}

#Preview {
    EducatorSubmitPacketStack()
        .environmentObject(AppViewModel())
}
