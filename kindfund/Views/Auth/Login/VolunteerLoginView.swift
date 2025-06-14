import SwiftUI

struct VolunteerLoginView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    
    @State var emailAddress: String = ""
    @State var password: String = ""
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                VStack(alignment: .leading) {
                    VStack {
                        Spacer().frame(height: 15)
                        
                        HStack {
                            Spacer()
                            Text("Volunteer Login")
                                .font(.custom(Fonts.bold, size: 32))
                                .foregroundStyle(.primaryBackground)
                            Spacer()
                        }
                        
                        Spacer().frame(height: 40)
                    }
                    
                    ScrollView {
                        VStack(alignment: .leading) {
                            PrimaryInputLabel(label: "Email Address")
                            
                            TextInput(text: $emailAddress,
                                      placeholder: "email@example.com")
                            
                            Spacer().frame(height: 20)
                            
                            PrimaryInputLabel(label: "Password")
                            
                            TextInput(text: $password,
                                      placeholder: "password")
                            
                            Spacer().frame(height: 15)
                            
                            HStack {
                                Spacer()
                                
                                Text("Forgot password?")
                                    .font(.custom(Fonts.medium, size: 15))
                                    .foregroundStyle(.primaryBackground)
                                    .onTapGesture {
                                        authViewModel.authNavigationPath.append(.forgotPassword)
                                    }
                            }
                        }
                    }
                    
                    HStack {
                        Spacer()
                        SolidButton(title: "Login",
                                    width: geo.size.width * 0.4,
                        )
                        Spacer()
                    }
                    
                    Spacer().frame(height: 30)
                    
                    HStack {
                        Spacer()
                        (Text("Don't have an account?")
                            .font(.custom(Fonts.regular, size: 15))
                            .foregroundStyle(.textInputPlaceholder) + Text(" Sign Up")
                            .font(.custom(Fonts.medium, size: 15))
                            .foregroundStyle(.primaryBackground))
                        .multilineTextAlignment(.center)
                        .onTapGesture {
                            authViewModel.authNavigationPath.append(.volunteerSignup)
                        }
                        
                        Spacer()
                    }
                    
                    Spacer().frame(height: 15)
                }
                .padding(20)
                .frame(width: geo.size.width * 0.9,
                       height: geo.size.height * 0.65,
                       alignment: .topLeading)
                .background(.light)
            }
            .frame(minWidth: 0,
                   maxWidth: geo.size.width,
                   minHeight: 0,
                   maxHeight: geo.size.height,
                   alignment: .center)
            .background(.primaryBackground)
        }
    }
}

#Preview {
    VolunteerLoginView()
        .environmentObject(AuthViewModel())
}
