import SwiftUI

struct EducatorBottomTabBar: View {
    @EnvironmentObject var appViewModel: AppViewModel
    
    var body: some View {
        HStack {
            ForEach(EducatorTabBarEnum.allCases, id: \.self) { item in
                HStack {
                    Spacer()
                    
                    Image(item.title == appViewModel.educatorCurrentStack.title
                          ? item.fillIcon
                          : item.unFillIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .onTapGesture {
                        switch item {
                        case .packetStack:
                            appViewModel.educatorCurrentStack = .packetStack
                        case .submitPacketStack:
                            appViewModel.educatorCurrentStack = .submitPacketStack
                        case .notificationStack:
                            appViewModel.educatorCurrentStack = .notificationStack
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
    EducatorBottomTabBar()
        .environmentObject(AppViewModel())
}
