import SwiftUI

struct PacketDetailsView: View {
    @EnvironmentObject var appViewModel: AppViewModel
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                DrawerHeaderWithLogo()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading) {
                        Spacer().frame(height: 20)
                        
                        HStack(alignment: .top) {
                            HStack {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 22, weight: .medium))
                                    .onTapGesture {
                                        if(authViewModel.userType == .educator) {
                                            appViewModel.educatorPacketStackNavigationPath.removeLast()
                                        } else {
                                            appViewModel.volunteerPacketStackNavigationPath.removeLast()
                                        }
                                    }
                                
                                Spacer().frame(width: 15)
                                
                                PrimaryTitle(text: "1234567890")
                            }
                            
                            Spacer()
                            
                            if (authViewModel.userType == .educator) {
                                HStack {
                                    (Text("Status:")
                                        .font(.custom(Fonts.medium, size: 15))
                                        .foregroundStyle(.textInputLabel) + Text(" delivered to school office".uppercased())
                                        .font(.custom(Fonts.medium, size: 14))
                                        .foregroundStyle(.primaryBackground))
                                    .multilineTextAlignment(.leading)
                                }
                            }
                        }
                        
                        Spacer().frame(height: 25)
                        
                        if (authViewModel.userType == .volunteer) {
                            PacketStatusChanger()
                        }
                        
                        Spacer().frame(height: 25)
                        
                        PacketInformations()
                        
                        Spacer().frame(height: 20)
                    }
                }
                .padding(.horizontal, 20)
                .frame(
                    minWidth: 0,
                    maxWidth: geo.size.width,
                    alignment: .topLeading
                )
                
                if (authViewModel.userType == .educator) {
                    EducatorBottomTabBar()
                } else {
                    VolunteerBottomTabBar()
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    PacketDetailsView()
        .environmentObject(AppViewModel())
        .environmentObject(AuthViewModel())
}
