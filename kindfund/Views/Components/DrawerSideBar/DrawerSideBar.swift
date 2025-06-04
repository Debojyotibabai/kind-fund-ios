import SwiftUI

struct DrawerSideBar: View {
    @EnvironmentObject var appViewModel: AppViewModel
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(.black.opacity(0.5))
                .onTapGesture {
                    appViewModel.closeDrawer()
                }
            
            VStack {
                Spacer().frame(height: 25)
                
                HStack {
                    Spacer()
                    
                    Button {
                        appViewModel.closeDrawer()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.light)
                            .fontWeight(.medium)
                    }
                    
                    Spacer().frame(width: 30)
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    if authViewModel.userType == .educator {
                        ForEach(EducatorAppStacksEnum.allCases, id: \.self.rawValue) { item in
                            Button {
                                appViewModel.educatorCurrentStack = item
                                appViewModel.closeDrawer()
                            } label: {
                                HStack(spacing: 15) {
                                    Image(item.icon)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)
                                        .foregroundStyle(.light)
                                    
                                    Text(item.title)
                                        .font(.system(size: 20, weight: .medium))
                                        .foregroundStyle(.light)
                                }
                                .padding()
                            }
                        }
                    } else {
                        ForEach(VolunteerAppStacksEnum.allCases, id: \.self.rawValue) { item in
                            Button {
                                appViewModel.volunteerCurrentStack = item
                                appViewModel.closeDrawer()
                            } label: {
                                HStack(spacing: 15) {
                                    Image(item.icon)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)
                                        .foregroundStyle(.light)
                                    
                                    Text(item.title)
                                        .font(.system(size: 20, weight: .medium))
                                        .foregroundStyle(.light)
                                }
                                .padding()
                            }
                        }
                    }
                    
                    Button {
                    } label: {
                        HStack(spacing: 15) {
                            Image(.logoutDrawer)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .foregroundStyle(.light)
                            
                            Text("Logout")
                                .font(.system(size: 20, weight: .medium))
                                .foregroundStyle(.light)
                        }
                        .padding()
                    }
                }
                
                
                Spacer()
            }
            .frame(width: 300)
            .background(.primaryBackground)
        }
    }
}

#Preview {
    DrawerSideBar()
        .environmentObject(AppViewModel())
        .environmentObject(AuthViewModel())
}
