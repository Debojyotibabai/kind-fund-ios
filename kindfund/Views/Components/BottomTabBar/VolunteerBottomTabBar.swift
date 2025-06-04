import SwiftUI

struct VolunteerBottomTabBar: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        HStack {
            ForEach(VolunteerTabBarEnum.allCases, id: \.self) { item in
                HStack {
                    Spacer()
                    
                    Image(item.title == appViewModel.volunteerCurrentStack.title
                          ? item.fillIcon
                          : item.unFillIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .onTapGesture {
                        switch item {
                        case .packetStack:
                            appViewModel.volunteerCurrentStack = .packetStack
                        case .profileStack:
                            appViewModel.volunteerCurrentStack = .profileStack
                        case .notificationStack:
                            appViewModel.volunteerCurrentStack = .notificationStack
                        }
                    }
                    
                    Spacer()
                }
            }
        }
        .padding(20)
        .frame(minWidth: 0,
               maxWidth: .infinity)
        .background(.primaryBackground)
    }
}

#Preview {
    VolunteerBottomTabBar()
        .environmentObject(AppViewModel())
}
