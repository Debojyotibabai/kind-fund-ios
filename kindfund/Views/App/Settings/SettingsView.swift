import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var appViewModel: AppViewModel
    @EnvironmentObject var authViewModel: AuthViewModel
    
    let settings: [String] = [
        "Payout Information",
        "Terms and Conditions",
        "Privacy Policy",
        "Contact Us",
        "Rate App"
    ]
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                DrawerHeaderWithLogo()
                
                VStack(alignment: .leading) {
                    HStack {
                        //                        Image(systemName: "chevron.left")
                        //                            .font(.system(size: 22, weight: .medium))
                        //
                        //                        Spacer().frame(width: 15)
                        
                        PrimaryTitle(text: "Settings")
                    }
                    
                    Spacer().frame(height: 25)
                    
                    ScrollView(showsIndicators: false) {
                        LazyVStack(alignment: .leading) {
                            ForEach(settings, id: \.self) { item in
                                VStack {
                                    HStack {
                                        PrimarySubTitle(text: item,
                                                        color: .textInputLabel,
                                                        font: Fonts.semiBold)
                                        
                                        Spacer()
                                        
                                        Image(systemName: "chevron.right")
                                            .font(.system(size: 18))
                                            .foregroundStyle(.textInputLabel)
                                    }
                                    .padding()
                                    
                                    Divider()
                                }
                            }
                        }
                    }
                    .frame(minWidth: 0,
                           maxWidth: geo.size.width,
                           alignment: .leading)
                    
                    Spacer().frame(height: 20)
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .frame(
                    minWidth: 0,
                    maxWidth: geo.size.width,
                    minHeight: 0,
                    maxHeight: geo.size.height,
                    alignment: .topLeading
                )
                
                if (authViewModel.userType == .educator) {
                    EducatorBottomTabBar()
                } else {
                    VolunteerBottomTabBar()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(AppViewModel())
        .environmentObject(AuthViewModel())
}
