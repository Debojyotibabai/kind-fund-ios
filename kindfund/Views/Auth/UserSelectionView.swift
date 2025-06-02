import SwiftUI

struct UserSelectionView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @EnvironmentObject var appViewModel: AppViewModel
    
    let UserType: [String] = ["EDUCATOR", "VOLUNTEER", "DONOR"]
    
    var body: some View {
        NavigationStack(path: $authViewModel.authNavigationPath) {
            GeometryReader { geo in
                VStack {
                    Spacer().frame(height: geo.size.height * 0.1)
                    
                    HStack {
                        Spacer()
                        Image(.logo)
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width * 0.35)
                        Spacer()
                    }
                    
                    Spacer().frame(height: 50)
                    
                    VStack {
                        Text("Welcome to KIND!")
                            .font(.custom(Fonts.bold, size: 32))
                            .foregroundStyle(.primaryBackground)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Choose your path")
                            .font(.custom(Fonts.regular, size: 14))
                            .foregroundStyle(.textInputPlaceholder)
                        
                        Spacer().frame(height: 30)
                        
                        ForEach(UserType, id: \.self) { item in
                            VStack {
                                Button {
                                    switch item {
                                    case "EDUCATOR":
                                        authViewModel.authNavigationPath.append(.educatorLogin)
                                    case "VOLUNTEER":
                                        authViewModel.authNavigationPath.append(.volunteerLogin)
                                    case "DONOR":
                                        break
                                    default:
                                        break
                                    }
                                } label: {
                                    Text(item)
                                        .font(.custom(Fonts.bold, size: 20))
                                        .foregroundStyle(.light)
                                        .padding()
                                        .frame(width: geo.size.width * 0.7)
                                        .background(.darkBackgroundPrimary)
                                        .clipShape(.capsule)
                                }
                                
                                Spacer().frame(height: 15)
                            }
                        }
                    }
                    .padding(30)
                    .background(.light)
                }
                .frame(minWidth: 0,
                       maxWidth: geo.size.width,
                       minHeight: 0,
                       maxHeight: geo.size.height,
                       alignment: .topLeading)
                .background(.primaryBackground)
            }
            .navigationDestination(for: AuthScreensEnum.self) { screen in
                switch screen {
                case .educatorLogin:
                    EducatorLoginView()
                        .navigationBarBackButtonHidden()
                case .volunteerLogin:
                    VolunteerLoginView()
                        .navigationBarBackButtonHidden()
                case .educatorSignup:
                    EducatorSignupView()
                        .navigationBarBackButtonHidden()
                case .volunteerSignup:
                    VolunteerSignupView()
                        .navigationBarBackButtonHidden()
                case .verifyEmail:
                    VerifyEmailView()
                        .navigationBarBackButtonHidden()
                case .forgotPassword:
                    ForgotPasswordView()
                        .navigationBarBackButtonHidden()
                case .createNewPassword:
                    CreateNewPasswordView()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    UserSelectionView()
        .environmentObject(AuthViewModel())
        .environmentObject(AppViewModel())
}
